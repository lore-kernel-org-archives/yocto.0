Return-Path: <desmond.correia@prolucid.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E56FE00571; Wed, 28 Dec 2016 11:16:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECC84E003DB
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2016 11:16:01 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id v2so38911418uac.2
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2016 11:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prolucid-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=uosQRgr7V5sHGSloIVXmhVDsSGVMRIYPPsoQpq00+n4=;
	b=i1MTV0MeISid4d858rkCHnqvz2KRYJHobhLuNNmAhZgPPextJOhwqTPQ49q1vUCQcV
	R84H3ILhVsgxO3U17VuZ4xVmW7qRgaKapUN9oF9WDdcxCPtMBWuh0zVkUNwA5Mp908zG
	uwHPYE633uqMdAdlX5QOZVMPE+eHllbpvZFNEK6W4SS4UM0zCTcf1rh1nTyhBFvJA5Mw
	gXce3+wpAnGLPzYnwDynfGl0Gm/du9HKoUZGRDOW5bJ5N0+SSBhWtp7mOVRKKuq3y0dI
	nnlN5RYMK5Jn/Dg9BE2SC6EWWAeMP+5ODPC9bGDpgBm1XDl10rxo5Pyc2PFtY86PTpl7
	iJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uosQRgr7V5sHGSloIVXmhVDsSGVMRIYPPsoQpq00+n4=;
	b=IOgjToBdqXwz5N0XPh5sS0BKpAbguTRip0GHK7Rux9RlSV1geT2DKTtOoftJYqxJ9b
	+5FSIgJ9OoD0yDiL4nE7WjSA0zB9KANllV6RY/stVmrb+kGE0ddFM471U/+Fj5xvxtAO
	pZCVGjyjuwp+4GdnyOKwcJLlC2R32f2oKdx6mSPlcKCm8QqSA0MKc2Ky2JVfI04bVEnR
	PLF6KY2/HR1eLdtMQCRX5UkOPYT9AViXIzgsWEpwTJ85TNBqQlfgML7l7BgpQNUyl+fz
	zQJWhExFN9kkVf3Nf3cE6HjikOOLx28ukdNZLErDp2bnJXjxMbu3vP55L/BfQbPHlt2+
	Q8zw==
X-Gm-Message-State: AIkVDXLEGd8aNIEmhkm98S3px8W3I+J4Fi0hI+qj4OCy8sMMo0MX1P/QJ4So8RmU4sLfIViRFeNW2MimgwVWdG+C
X-Received: by 10.176.64.3 with SMTP id h3mr28850552uad.176.1482952561170;
	Wed, 28 Dec 2016 11:16:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.85.134 with HTTP; Wed, 28 Dec 2016 11:15:20 -0800 (PST)
From: Desmond Correia <desmond.correia@prolucid.ca>
Date: Wed, 28 Dec 2016 14:15:20 -0500
Message-ID: <CAPNRg157=16-iL42mntUZnFDVTfQss0fXM8fgXddG9x9CBiQyQ@mail.gmail.com>
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 03 Jan 2017 08:02:57 -0800
Subject: [opkg-utils PATCH] Added support to generate index file with multiple version per package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Dec 2016 19:16:06 -0000
X-Groupsio-MsgNum: 33619
Content-Type: multipart/mixed; boundary=94eb2c123d1ca136520544bccc67

--94eb2c123d1ca136520544bccc67
Content-Type: multipart/alternative; boundary=94eb2c123d1ca1364c0544bccc65

--94eb2c123d1ca1364c0544bccc65
Content-Type: text/plain; charset=UTF-8

From aefa378d6a167124bdfb0b8d6c92aadb4c36fa46 Mon Sep 17 00:00:00 2001
From: Desmond <desmond.correia@prolucid.ca>
Date: Wed, 28 Dec 2016 13:16:48 -0500
Subject: [opkg-utils PATCH] Added support to generate index file with
multiple
 version per package
To: opkg-devel@googlegroups.com,
    yocto@yoctoproject.org

Using the -a option with opkg-make-index, you can now generate an index
file which will list multiple version of the same package. Added since opkg
now supports specifying version of package.
---
 opkg-make-index | 16 ++++++++++++----
 opkg.py         |  8 +++++++-
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 7897918..3f757f6 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -11,7 +11,7 @@ import re
 verbose = 0

 def usage():
-     sys.stderr.write("%s [-h] [-s] [-m] [-l Packages.filelist] [-p
Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
(sys.argv[0],))
+     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist] [-p
Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
(sys.argv[0],))
      sys.exit(-1)

 def to_morgue(filename):
@@ -42,7 +42,8 @@ filelist_filename = None
 stamplist_filename = "Packages.stamps"
 opt_s = 0
 opt_m = 0
-(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:")
+opt_a = 0
+(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
 for (optkey, optval) in opts:
      if optkey == '-h':
           usage()
@@ -61,6 +62,8 @@ for (optkey, optval) in opts:
           old_filename = optval
      if optkey == '-L':
           locales_dir = optval
+     if optkey == '-a':
+          opt_a = 1

 if ( not remaining_args ):
      usage()
@@ -120,12 +123,17 @@ for abspath in files:
           if (verbose):
                sys.stderr.write("Reading info for package %s\n" %
(filename,))
           pkg = opkg.Package(abspath, relpath=pkg_dir)
-     pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
+
+     if opt_a:
+          pkg_key = ("%s:%s:%s" % (pkg.package, pkg.architecture,
pkg.version))
+     else:
+         pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
+
      if (pkg_key in packages.packages):
           old_filename = packages.packages[pkg_key].filename
      else:
           old_filename = ""
-     s = packages.add_package(pkg)
+     s = packages.add_package(pkg, opt_a)
      pkgsStamps[filename] = fnameStat.st_mtime
      if s == 0:
           if old_filename:
diff --git a/opkg.py b/opkg.py
index b0d79a6..47473da 100644
--- a/opkg.py
+++ b/opkg.py
@@ -501,10 +501,16 @@ class Packages(object):
         self.packages = {}
         return

-    def add_package(self, pkg):
+    def add_package(self, pkg, opt_a=0):
         package = pkg.package
         arch = pkg.architecture
         name = ("%s:%s" % (package, arch))
+        ver = pkg.version
+        if opt_a:
+            name = ("%s:%s:%s" % (package, arch, ver))
+        else:
+            name = ("%s:%s" % (package, arch))
+
         if (name not in self.packages):
             self.packages[name] = pkg

-- 
2.7.4

--94eb2c123d1ca1364c0544bccc65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>From aefa378d6a167124bdfb0b8d6c92aadb4c36fa=
46 Mon Sep 17 00:00:00 2001</div><div>From: Desmond &lt;<a href=3D"mailto:d=
esmond.correia@prolucid.ca">desmond.correia@prolucid.ca</a>&gt;</div><div>D=
ate: Wed, 28 Dec 2016 13:16:48 -0500</div><div>Subject: [opkg-utils PATCH] =
Added support to generate index file with multiple</div><div>=C2=A0version =
per package</div><div>To: <a href=3D"mailto:opkg-devel@googlegroups.com">op=
kg-devel@googlegroups.com</a>,</div><div>=C2=A0 =C2=A0 <a href=3D"mailto:yo=
cto@yoctoproject.org">yocto@yoctoproject.org</a></div><div><br></div><div>U=
sing the -a option with opkg-make-index, you can now generate an index file=
 which will list multiple version of the same package. Added since opkg now=
 supports specifying version of package.</div><div>---</div><div>=C2=A0opkg=
-make-index | 16 ++++++++++++----</div><div>=C2=A0opkg.py =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | =C2=A08 +++++++-</div><div>=C2=A02 files changed, 19 insertion=
s(+), 5 deletions(-)</div><div><br></div><div>diff --git a/opkg-make-index =
b/opkg-make-index</div><div>index 7897918..3f757f6 100755</div><div>--- a/o=
pkg-make-index</div><div>+++ b/opkg-make-index</div><div>@@ -11,7 +11,7 @@ =
import re</div><div>=C2=A0verbose =3D 0</div><div>=C2=A0</div><div>=C2=A0de=
f usage():</div><div>- =C2=A0 =C2=A0 sys.stderr.write(&quot;%s [-h] [-s] [-=
m] [-l Packages.filelist] [-p Packages] [-r Packages.old] [-L localesdir] [=
-v] packagesdir\n&quot; % (sys.argv[0],))</div><div>+ =C2=A0 =C2=A0 sys.std=
err.write(&quot;%s [-h] [-s] [-m] [-a] [-l Packages.filelist] [-p Packages]=
 [-r Packages.old] [-L localesdir] [-v] packagesdir\n&quot; % (sys.argv[0],=
))</div><div>=C2=A0 =C2=A0 =C2=A0 sys.exit(-1)</div><div>=C2=A0</div><div>=
=C2=A0def to_morgue(filename):</div><div>@@ -42,7 +42,8 @@ filelist_filenam=
e =3D None</div><div>=C2=A0stamplist_filename =3D &quot;Packages.stamps&quo=
t;</div><div>=C2=A0opt_s =3D 0</div><div>=C2=A0opt_m =3D 0</div><div>-(opts=
, remaining_args) =3D getopt.getopt(sys.argv[1:], &quot;hl:p:vsmr:L:&quot;)=
</div><div>+opt_a =3D 0</div><div>+(opts, remaining_args) =3D getopt.getopt=
(sys.argv[1:], &quot;hl:p:vsmr:L:a&quot;)</div><div>=C2=A0for (optkey, optv=
al) in opts:</div><div>=C2=A0 =C2=A0 =C2=A0 if optkey =3D=3D &#39;-h&#39;:=
=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usage()</div><div=
>@@ -61,6 +62,8 @@ for (optkey, optval) in opts:</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0old_filename =3D optval</div><div>=C2=A0 =C2=A0 =
=C2=A0 if optkey =3D=3D &#39;-L&#39;:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0locales_dir =3D optval</div><div>+ =C2=A0 =C2=A0 if optkey =
=3D=3D &#39;-a&#39;:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opt_a =
=3D 1</div><div>=C2=A0</div><div>=C2=A0if ( not remaining_args ):</div><div=
>=C2=A0 =C2=A0 =C2=A0 usage()</div><div>@@ -120,12 +123,17 @@ for abspath i=
n files:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (verbose):</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.stderr=
.write(&quot;Reading info for package %s\n&quot; % (filename,))</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pkg =3D opkg.Package(abspath, relp=
ath=3Dpkg_dir)</div><div>- =C2=A0 =C2=A0 pkg_key =3D (&quot;%s:%s&quot; % (=
pkg.package, pkg.architecture))</div><div>+</div><div>+ =C2=A0 =C2=A0 if op=
t_a:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pkg_key =3D (&quot;%s:%s=
:%s&quot; % (pkg.package, pkg.architecture, pkg.version))</div><div>+ =C2=
=A0 =C2=A0 else:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkg_key =3D (&quot=
;%s:%s&quot; % (pkg.package, pkg.architecture))</div><div>+</div><div>=C2=
=A0 =C2=A0 =C2=A0 if (pkg_key in packages.packages):</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0old_filename =3D packages.packages[pkg_key].=
filename</div><div>=C2=A0 =C2=A0 =C2=A0 else:</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0old_filename =3D &quot;&quot;</div><div>- =C2=A0 =
=C2=A0 s =3D packages.add_package(pkg)</div><div>+ =C2=A0 =C2=A0 s =3D pack=
ages.add_package(pkg, opt_a)</div><div>=C2=A0 =C2=A0 =C2=A0 pkgsStamps[file=
name] =3D fnameStat.st_mtime</div><div>=C2=A0 =C2=A0 =C2=A0 if s =3D=3D 0:<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if old_filename:</div><d=
iv>diff --git a/opkg.py b/opkg.py</div><div>index b0d79a6..47473da 100644</=
div><div>--- a/opkg.py</div><div>+++ b/opkg.py</div><div>@@ -501,10 +501,16=
 @@ class Packages(object):</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sel=
f.packages =3D {}</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return</div><=
div>=C2=A0</div><div>- =C2=A0 =C2=A0def add_package(self, pkg):</div><div>+=
 =C2=A0 =C2=A0def add_package(self, pkg, opt_a=3D0):</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0package =3D pkg.package</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0arch =3D pkg.architecture</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0name =3D (&quot;%s:%s&quot; % (package, arch))</div><div>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0ver =3D pkg.version</div><div>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if opt_a:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0na=
me =3D (&quot;%s:%s:%s&quot; % (package, arch, ver))</div><div>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0else:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0name =3D (&quot;%s:%s&quot; % (package, arch))</div><div>+</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (name not in self.packages):</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.packages[name] =3D pkg=
</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>--=C2=A0</div><div>=
2.7.4</div><div><br></div></div></div><div>
</div></div>

--94eb2c123d1ca1364c0544bccc65--

--94eb2c123d1ca136520544bccc67
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-Added-support-to-generate-index-file-with-multiple-v.patch"
Content-Disposition: attachment; 
	filename="0001-Added-support-to-generate-index-file-with-multiple-v.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ix9bfiik0

RnJvbSBhZWZhMzc4ZDZhMTY3MTI0YmRmYjBiOGQ2YzkyYWFkYjRjMzZmYTQ2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEZXNtb25kIDxkZXNtb25kLmNvcnJlaWFAcHJvbHVjaWQuY2E+
CkRhdGU6IFdlZCwgMjggRGVjIDIwMTYgMTM6MTY6NDggLTA1MDAKU3ViamVjdDogW29wa2ctdXRp
bHMgUEFUQ0hdIEFkZGVkIHN1cHBvcnQgdG8gZ2VuZXJhdGUgaW5kZXggZmlsZSB3aXRoIG11bHRp
cGxlCiB2ZXJzaW9uIHBlciBwYWNrYWdlClRvOiBvcGtnLWRldmVsQGdvb2dsZWdyb3Vwcy5jb20s
CiAgICB5b2N0b0B5b2N0b3Byb2plY3Qub3JnCgpVc2luZyB0aGUgLWEgb3B0aW9uIHdpdGggb3Br
Zy1tYWtlLWluZGV4LCB5b3UgY2FuIG5vdyBnZW5lcmF0ZSBhbiBpbmRleCBmaWxlIHdoaWNoIHdp
bGwgbGlzdCBtdWx0aXBsZSB2ZXJzaW9uIG9mIHRoZSBzYW1lIHBhY2thZ2UuIEFkZGVkIHNpbmNl
IG9wa2cgbm93IHN1cHBvcnRzIHNwZWNpZnlpbmcgdmVyc2lvbiBvZiBwYWNrYWdlLgotLS0KIG9w
a2ctbWFrZS1pbmRleCB8IDE2ICsrKysrKysrKysrKy0tLS0KIG9wa2cucHkgICAgICAgICB8ICA4
ICsrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvb3BrZy1tYWtlLWluZGV4IGIvb3BrZy1tYWtlLWluZGV4CmluZGV4
IDc4OTc5MTguLjNmNzU3ZjYgMTAwNzU1Ci0tLSBhL29wa2ctbWFrZS1pbmRleAorKysgYi9vcGtn
LW1ha2UtaW5kZXgKQEAgLTExLDcgKzExLDcgQEAgaW1wb3J0IHJlCiB2ZXJib3NlID0gMAogCiBk
ZWYgdXNhZ2UoKToKLSAgICAgc3lzLnN0ZGVyci53cml0ZSgiJXMgWy1oXSBbLXNdIFstbV0gWy1s
IFBhY2thZ2VzLmZpbGVsaXN0XSBbLXAgUGFja2FnZXNdIFstciBQYWNrYWdlcy5vbGRdIFstTCBs
b2NhbGVzZGlyXSBbLXZdIHBhY2thZ2VzZGlyXG4iICUgKHN5cy5hcmd2WzBdLCkpCisgICAgIHN5
cy5zdGRlcnIud3JpdGUoIiVzIFstaF0gWy1zXSBbLW1dIFstYV0gWy1sIFBhY2thZ2VzLmZpbGVs
aXN0XSBbLXAgUGFja2FnZXNdIFstciBQYWNrYWdlcy5vbGRdIFstTCBsb2NhbGVzZGlyXSBbLXZd
IHBhY2thZ2VzZGlyXG4iICUgKHN5cy5hcmd2WzBdLCkpCiAgICAgIHN5cy5leGl0KC0xKQogCiBk
ZWYgdG9fbW9yZ3VlKGZpbGVuYW1lKToKQEAgLTQyLDcgKzQyLDggQEAgZmlsZWxpc3RfZmlsZW5h
bWUgPSBOb25lCiBzdGFtcGxpc3RfZmlsZW5hbWUgPSAiUGFja2FnZXMuc3RhbXBzIgogb3B0X3Mg
PSAwCiBvcHRfbSA9IDAKLShvcHRzLCByZW1haW5pbmdfYXJncykgPSBnZXRvcHQuZ2V0b3B0KHN5
cy5hcmd2WzE6XSwgImhsOnA6dnNtcjpMOiIpCitvcHRfYSA9IDAKKyhvcHRzLCByZW1haW5pbmdf
YXJncykgPSBnZXRvcHQuZ2V0b3B0KHN5cy5hcmd2WzE6XSwgImhsOnA6dnNtcjpMOmEiKQogZm9y
IChvcHRrZXksIG9wdHZhbCkgaW4gb3B0czoKICAgICAgaWYgb3B0a2V5ID09ICctaCc6IAogICAg
ICAgICAgIHVzYWdlKCkKQEAgLTYxLDYgKzYyLDggQEAgZm9yIChvcHRrZXksIG9wdHZhbCkgaW4g
b3B0czoKICAgICAgICAgICBvbGRfZmlsZW5hbWUgPSBvcHR2YWwKICAgICAgaWYgb3B0a2V5ID09
ICctTCc6CiAgICAgICAgICAgbG9jYWxlc19kaXIgPSBvcHR2YWwKKyAgICAgaWYgb3B0a2V5ID09
ICctYSc6CisgICAgICAgICAgb3B0X2EgPSAxCiAKIGlmICggbm90IHJlbWFpbmluZ19hcmdzICk6
CiAgICAgIHVzYWdlKCkKQEAgLTEyMCwxMiArMTIzLDE3IEBAIGZvciBhYnNwYXRoIGluIGZpbGVz
OgogICAgICAgICAgIGlmICh2ZXJib3NlKToKICAgICAgICAgICAgICAgIHN5cy5zdGRlcnIud3Jp
dGUoIlJlYWRpbmcgaW5mbyBmb3IgcGFja2FnZSAlc1xuIiAlIChmaWxlbmFtZSwpKQogICAgICAg
ICAgIHBrZyA9IG9wa2cuUGFja2FnZShhYnNwYXRoLCByZWxwYXRoPXBrZ19kaXIpCi0gICAgIHBr
Z19rZXkgPSAoIiVzOiVzIiAlIChwa2cucGFja2FnZSwgcGtnLmFyY2hpdGVjdHVyZSkpCisKKyAg
ICAgaWYgb3B0X2E6CisgICAgICAgICAgcGtnX2tleSA9ICgiJXM6JXM6JXMiICUgKHBrZy5wYWNr
YWdlLCBwa2cuYXJjaGl0ZWN0dXJlLCBwa2cudmVyc2lvbikpCisgICAgIGVsc2U6CisgICAgICAg
ICBwa2dfa2V5ID0gKCIlczolcyIgJSAocGtnLnBhY2thZ2UsIHBrZy5hcmNoaXRlY3R1cmUpKQor
CiAgICAgIGlmIChwa2dfa2V5IGluIHBhY2thZ2VzLnBhY2thZ2VzKToKICAgICAgICAgICBvbGRf
ZmlsZW5hbWUgPSBwYWNrYWdlcy5wYWNrYWdlc1twa2dfa2V5XS5maWxlbmFtZQogICAgICBlbHNl
OgogICAgICAgICAgIG9sZF9maWxlbmFtZSA9ICIiCi0gICAgIHMgPSBwYWNrYWdlcy5hZGRfcGFj
a2FnZShwa2cpCisgICAgIHMgPSBwYWNrYWdlcy5hZGRfcGFja2FnZShwa2csIG9wdF9hKQogICAg
ICBwa2dzU3RhbXBzW2ZpbGVuYW1lXSA9IGZuYW1lU3RhdC5zdF9tdGltZQogICAgICBpZiBzID09
IDA6CiAgICAgICAgICAgaWYgb2xkX2ZpbGVuYW1lOgpkaWZmIC0tZ2l0IGEvb3BrZy5weSBiL29w
a2cucHkKaW5kZXggYjBkNzlhNi4uNDc0NzNkYSAxMDA2NDQKLS0tIGEvb3BrZy5weQorKysgYi9v
cGtnLnB5CkBAIC01MDEsMTAgKzUwMSwxNiBAQCBjbGFzcyBQYWNrYWdlcyhvYmplY3QpOgogICAg
ICAgICBzZWxmLnBhY2thZ2VzID0ge30KICAgICAgICAgcmV0dXJuCiAKLSAgICBkZWYgYWRkX3Bh
Y2thZ2Uoc2VsZiwgcGtnKToKKyAgICBkZWYgYWRkX3BhY2thZ2Uoc2VsZiwgcGtnLCBvcHRfYT0w
KToKICAgICAgICAgcGFja2FnZSA9IHBrZy5wYWNrYWdlCiAgICAgICAgIGFyY2ggPSBwa2cuYXJj
aGl0ZWN0dXJlCiAgICAgICAgIG5hbWUgPSAoIiVzOiVzIiAlIChwYWNrYWdlLCBhcmNoKSkKKyAg
ICAgICAgdmVyID0gcGtnLnZlcnNpb24KKyAgICAgICAgaWYgb3B0X2E6CisgICAgICAgICAgICBu
YW1lID0gKCIlczolczolcyIgJSAocGFja2FnZSwgYXJjaCwgdmVyKSkKKyAgICAgICAgZWxzZToK
KyAgICAgICAgICAgIG5hbWUgPSAoIiVzOiVzIiAlIChwYWNrYWdlLCBhcmNoKSkKKwogICAgICAg
ICBpZiAobmFtZSBub3QgaW4gc2VsZi5wYWNrYWdlcyk6CiAgICAgICAgICAgICBzZWxmLnBhY2th
Z2VzW25hbWVdID0gcGtnCiAgICAgICAgIAotLSAKMi43LjQKCg==

--94eb2c123d1ca136520544bccc67--
