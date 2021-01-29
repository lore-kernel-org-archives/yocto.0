Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10468.1611931848496219766
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 06:50:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: lakka.kapsi.fi, ip: 198.145.29.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 28BA238C04C2
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 14:50:48 +0000 (UTC)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1l5V6j-00031J-Pl; Fri, 29 Jan 2021 16:50:46 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.92)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1l5V6j-0006CX-OO; Fri, 29 Jan 2021 16:50:45 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: openembedded-core@lists.openembedded.org
Cc: yocto@yoctoproject.org,
	Marek Belisko <marek.belisko@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Mikko Rapeli <mikko.rapeli@bmw.de>,
	Matt Hoosier <matt.hoosier@garmin.com>
Subject: [dunfell][PATCH v2 3/3] bitbake: fetch/git: download LFS content too during do_fetch
Date: Fri, 29 Jan 2021 16:50:29 +0200
Message-Id: <20210129145029.22924-3-mikko.rapeli@bmw.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210129145029.22924-1-mikko.rapeli@bmw.de>
References: <165EBB517110DB0B.25485@lists.openembedded.org>
 <20210129145029.22924-1-mikko.rapeli@bmw.de>
MIME-Version: 1.0
X-Rspam-Score: 3.8 (+++)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(2.50)
 Symbol: FREEMAIL_ENVRCPT(0.00)
 Symbol: TAGGED_RCPT(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: BROKEN_CONTENT_TYPE(1.50)
 Symbol: RCPT_COUNT_FIVE(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: R_SPF_NA(0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: SUSPICIOUS_RECIPS(1.50)
 Symbol: FREEMAIL_CC(0.00)
 Message-ID: 20210129145029.22924-3-mikko.rapeli@bmw.de
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Transfer-Encoding: quoted-printable

From: Matt Hoosier <matt.hoosier@garmin.com>

Insert an explicit pass to fetch all blobs needed by Git LFS, during the
fetch() function. This avoids the default behavior of Git LFS to wait
until 'git checkout' to begin downloading the blobs pointed to by LFS rec=
ords.
Network access is not allowed at that point in the recipe's lifecycle.

[YOCTO #14191]

(Bitbake rev: 0efac66043662e7a2027192f50e92e982db2ba1c)

Signed-off-by: Matt Hoosier <matt.hoosier@garmin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/git.py  | 44 ++++++++++++++++++++++++++++++++---
 bitbake/lib/bb/tests/fetch.py | 28 +++++++++++++++-------
 2 files changed, 61 insertions(+), 11 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index d255afeb36..7c32eba6c3 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -378,6 +378,35 @@ class Git(FetchMethod):
             if missing_rev:
                 raise bb.fetch2.FetchError("Unable to find revision %s e=
ven from upstream" % missing_rev)
=20
+        if self._contains_lfs(ud, d, ud.clonedir) and self._need_lfs(ud)=
:
+            # Unpack temporary working copy, use it to run 'git checkout=
' to force pre-fetching
+            # of all LFS blobs needed at the the srcrev.
+            #
+            # It would be nice to just do this inline here by running 'g=
it-lfs fetch'
+            # on the bare clonedir, but that operation requires a workin=
g copy on some
+            # releases of Git LFS.
+            tmpdir =3D tempfile.mkdtemp(dir=3Dd.getVar('DL_DIR'))
+            try:
+                # Do the checkout. This implicitly involves a Git LFS fe=
tch.
+                self.unpack(ud, tmpdir, d)
+
+                # Scoop up a copy of any stuff that Git LFS downloaded. =
Merge them into
+                # the bare clonedir.
+                #
+                # As this procedure is invoked repeatedly on incremental=
 fetches as
+                # a recipe's SRCREV is bumped throughout its lifetime, t=
his will
+                # result in a gradual accumulation of LFS blobs in <ud.c=
lonedir>/lfs
+                # corresponding to all the blobs reachable from the diff=
erent revs
+                # fetched across time.
+                #
+                # Only do this if the unpack resulted in a .git/lfs dire=
ctory being
+                # created; this only happens if at least one blob needed=
 to be
+                # downloaded.
+                if os.path.exists(os.path.join(tmpdir, "git", ".git", "l=
fs")):
+                    runfetchcmd("tar -cf - lfs | tar -xf - -C %s" % ud.c=
lonedir, d, workdir=3D"%s/git/.git" % tmpdir)
+            finally:
+                bb.utils.remove(tmpdir, recurse=3DTrue)
+
     def build_mirror_data(self, ud, d):
         if ud.shallow and ud.write_shallow_tarballs:
             if not os.path.exists(ud.fullshallow):
@@ -473,7 +502,7 @@ class Git(FetchMethod):
         if os.path.exists(destdir):
             bb.utils.prunedir(destdir)
=20
-        need_lfs =3D ud.parm.get("lfs", "1") =3D=3D "1"
+        need_lfs =3D self._need_lfs(ud)
=20
         if not need_lfs:
             ud.basecmd =3D "GIT_LFS_SKIP_SMUDGE=3D1 " + ud.basecmd
@@ -562,6 +591,9 @@ class Git(FetchMethod):
             raise bb.fetch2.FetchError("The command '%s' gave output wit=
h more then 1 line unexpectedly, output: '%s'" % (cmd, output))
         return output.split()[0] !=3D "0"
=20
+    def _need_lfs(self, ud):
+        return ud.parm.get("lfs", "1") =3D=3D "1"
+
     def _contains_lfs(self, ud, d, wd):
         """
         Check if the repository has 'lfs' (large file) content
@@ -572,8 +604,14 @@ class Git(FetchMethod):
         else:
             branchname =3D "master"
=20
-        cmd =3D "%s grep lfs origin/%s:.gitattributes | wc -l" % (
-            ud.basecmd, ud.branches[ud.names[0]])
+        # The bare clonedir doesn't use the remote names; it has the bra=
nch immediately.
+        if wd =3D=3D ud.clonedir:
+            refname =3D ud.branches[ud.names[0]]
+        else:
+            refname =3D "origin/%s" % ud.branches[ud.names[0]]
+
+        cmd =3D "%s grep lfs %s:.gitattributes | wc -l" % (
+            ud.basecmd, refname)
=20
         try:
             output =3D runfetchcmd(cmd, d, quiet=3DTrue, workdir=3Dwd)
diff --git a/bitbake/lib/bb/tests/fetch.py b/bitbake/lib/bb/tests/fetch.p=
y
index 4702c99a7e..9453c90d2b 100644
--- a/bitbake/lib/bb/tests/fetch.py
+++ b/bitbake/lib/bb/tests/fetch.py
@@ -2046,13 +2046,14 @@ class GitLfsTest(FetcherTest):
             cwd =3D self.gitdir
         return bb.process.run(cmd, cwd=3Dcwd)[0]
=20
-    def fetch(self, uri=3DNone):
+    def fetch(self, uri=3DNone, download=3DTrue):
         uris =3D self.d.getVar('SRC_URI').split()
         uri =3D uris[0]
         d =3D self.d
=20
         fetcher =3D bb.fetch2.Fetch(uris, d)
-        fetcher.download()
+        if download:
+            fetcher.download()
         ud =3D fetcher.ud[uri]
         return fetcher, ud
=20
@@ -2062,16 +2063,21 @@ class GitLfsTest(FetcherTest):
         uri =3D 'git://%s;protocol=3Dfile;subdir=3D${S};lfs=3D1' % self.=
srcdir
         self.d.setVar('SRC_URI', uri)
=20
-        fetcher, ud =3D self.fetch()
+        # Careful: suppress initial attempt at downloading until
+        # we know whether git-lfs is installed.
+        fetcher, ud =3D self.fetch(uri=3DNone, download=3DFalse)
         self.assertIsNotNone(ud.method._find_git_lfs)
=20
-        # If git-lfs can be found, the unpack should be successful
-        ud.method._find_git_lfs =3D lambda d: True
-        shutil.rmtree(self.gitdir, ignore_errors=3DTrue)
-        fetcher.unpack(self.d.getVar('WORKDIR'))
+        # If git-lfs can be found, the unpack should be successful. Only
+        # attempt this with the real live copy of git-lfs installed.
+        if ud.method._find_git_lfs(self.d):
+            fetcher.download()
+            shutil.rmtree(self.gitdir, ignore_errors=3DTrue)
+            fetcher.unpack(self.d.getVar('WORKDIR'))
=20
         # If git-lfs cannot be found, the unpack should throw an error
         with self.assertRaises(bb.fetch2.FetchError):
+            fetcher.download()
             ud.method._find_git_lfs =3D lambda d: False
             shutil.rmtree(self.gitdir, ignore_errors=3DTrue)
             fetcher.unpack(self.d.getVar('WORKDIR'))
@@ -2082,10 +2088,16 @@ class GitLfsTest(FetcherTest):
         uri =3D 'git://%s;protocol=3Dfile;subdir=3D${S};lfs=3D0' % self.=
srcdir
         self.d.setVar('SRC_URI', uri)
=20
+        # In contrast to test_lfs_enabled(), allow the implicit download
+        # done by self.fetch() to occur here. The point of this test cas=
e
+        # is to verify that the fetcher can survive even if the source
+        # repository has Git LFS usage configured.
         fetcher, ud =3D self.fetch()
         self.assertIsNotNone(ud.method._find_git_lfs)
=20
-        # If git-lfs can be found, the unpack should be successful
+        # If git-lfs can be found, the unpack should be successful. A
+        # live copy of git-lfs is not required for this case, so
+        # unconditionally forge its presence.
         ud.method._find_git_lfs =3D lambda d: True
         shutil.rmtree(self.gitdir, ignore_errors=3DTrue)
         fetcher.unpack(self.d.getVar('WORKDIR'))
--=20
2.20.1

