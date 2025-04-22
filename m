Return-Path: <denisova.olga.k@yandex.ru>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1176C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 16:58:57 +0000 (UTC)
Received: from forward103a.mail.yandex.net (forward103a.mail.yandex.net [178.154.239.86])
 by mx.groups.io with SMTP id smtpd.web11.45452.1745341127388285219
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 09:58:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@yandex.ru header.s=mail header.b=YBU8HFh0;
 spf=pass (domain: yandex.ru, ip: 178.154.239.86, mailfrom: denisova.olga.k@yandex.ru)
Received: from mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net [IPv6:2a02:6b8:c15:2ea0:0:640:5268:0])
	by forward103a.mail.yandex.net (Yandex) with ESMTPS id 78B7760AE2;
	Tue, 22 Apr 2025 19:58:45 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VwRdYq5LjCg0-jS3vcn1T;
	Tue, 22 Apr 2025 19:58:45 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
	t=1745341125; bh=3hZfiQ028AkvO3VCKWB5CiLDjqcarfPcnykh+9VaPt4=;
	h=Message-Id:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=YBU8HFh0BcOanBgezfXa/nHJcVTQNzAQ81N8faKKZF7IXf7fKMrnqHi8XowwoBI6D
	 /QI72yiF1gzGyMsuSybSiT2tFHqFpipPvqrp+nrJDuPdCmBiBf/IVXG6A22fc46+OJ
	 nzs1zlmkZnylRo314TbsDdU/ghLu3UQr71ubhNQM=
Authentication-Results: mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
From: denisova-ok <denisova.olga.k@yandex.ru>
To: yocto@lists.yoctoproject.org
Cc: gavrilov.andrew1999@yandex.ru,
	tinyakovx@gmail.com,
	sider123456789101112131415@gmail.com,
	Olga Denisova <denisova.olga.k@yandex.ru>
Subject: [bitbake][PATCH 2/3] runqueue: initialize collection and forwarding of cache distribution from SSTATE_MIRRORS
Date: Tue, 22 Apr 2025 19:58:21 +0300
Message-Id: <20250422165822.92784-3-denisova.olga.k@yandex.ru>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
References: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 16:58:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65228

From: Olga Denisova <denisova.olga.k@yandex.ru>

This change is part of the patchset that introduces index file support fo=
r SSTATE_MIRRORS. Specifically in runqueue, this commit implements logic =
to call the function specified in BB_COMPOSE_INDEXES_FUNCTION. This funct=
ion collects information about available cache files on all configured SS=
TATE_MIRRORS based on their index files.

The gathered metadata is then passed to the function defined in
BB_HASHCHECK_FUNCTION, which constructs the file_mirror_map structure. Th=
is structure describes which cache mirror contains which sstate cache fil=
e needed for the current build.

After BB_HASHCHECK_FUNCTION completes, file_mirror_map is read in runqueu=
e and passed to bitbake-worker as part of the task execution context. Thi=
s information is used downstream during sstate artifact retrieval to redu=
ce redundant mirror requests and improve performance in configurations wi=
th multiple SSTATE_MIRRORS.

Signed-off-by: denisova-ok <denisova.olga.k@yandex.ru>
---
 lib/bb/runqueue.py | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/lib/bb/runqueue.py b/lib/bb/runqueue.py
index 8fadc8338e..cf937e7c6d 100644
--- a/lib/bb/runqueue.py
+++ b/lib/bb/runqueue.py
@@ -1336,6 +1336,7 @@ class RunQueue:
=20
         self.hashvalidate =3D cfgData.getVar("BB_HASHCHECK_FUNCTION") or=
 None
         self.depvalidate =3D cfgData.getVar("BB_SETSCENE_DEPVALID") or N=
one
+        self.composeindex =3D cfgData.getVar("BB_COMPOSE_INDEXES_FUNCTIO=
N") or None
=20
         self.state =3D runQueuePrepare
=20
@@ -1351,6 +1352,7 @@ class RunQueue:
         self.rqexe =3D None
         self.worker =3D {}
         self.fakeworker =3D {}
+        self.file_mirror_map =3D None
=20
     @staticmethod
     def send_pickled_data(worker, data, name):
@@ -1522,7 +1524,18 @@ class RunQueue:
             cache[tid] =3D iscurrent
         return iscurrent
=20
-    def validate_hashes(self, tocheck, data, currentcount=3D0, siginfo=3D=
False, summary=3DTrue):
+    def compose_indexes(self, d):
+        indexfile =3D {}
+        if self.composeindex:
+            indexfile =3D self.compose_index(d)
+        return indexfile
+
+    def compose_index(self, d):
+        locs =3D {"d": d}
+        call =3D self.composeindex + "(d)"
+        return bb.utils.better_eval(call, locs)
+
+    def validate_hashes(self, tocheck, data, currentcount=3D0, siginfo=3D=
False, summary=3DTrue, cacheinfo=3DNone):
         valid =3D set()
         if self.hashvalidate:
             sq_data =3D {}
@@ -1535,15 +1548,16 @@ class RunQueue:
                 sq_data['hashfn'][tid] =3D self.rqdata.dataCaches[mc].ha=
shfn[taskfn]
                 sq_data['unihash'][tid] =3D self.rqdata.runtaskentries[t=
id].unihash
=20
-            valid =3D self.validate_hash(sq_data, data, siginfo, current=
count, summary)
+            valid =3D self.validate_hash(sq_data, data, siginfo, current=
count, summary, cacheinfo)
+            self.file_mirror_map =3D self.cfgData.getVar("FILE_MIRROR_MA=
P")
=20
         return valid
=20
-    def validate_hash(self, sq_data, d, siginfo, currentcount, summary):
-        locs =3D {"sq_data" : sq_data, "d" : d, "siginfo" : siginfo, "cu=
rrentcount" : currentcount, "summary" : summary}
+    def validate_hash(self, sq_data, d, siginfo, currentcount, summary, =
cacheinfo):
+        locs =3D {"sq_data" : sq_data, "d" : d, "siginfo" : siginfo, "cu=
rrentcount" : currentcount, "summary" : summary, "cacheinfo": cacheinfo}
=20
         # Metadata has **kwargs so args can be added, sq_data can also g=
ain new fields
-        call =3D self.hashvalidate + "(sq_data, d, siginfo=3Dsiginfo, cu=
rrentcount=3Dcurrentcount, summary=3Dsummary)"
+        call =3D self.hashvalidate + "(sq_data, d, siginfo=3Dsiginfo, cu=
rrentcount=3Dcurrentcount, summary=3Dsummary, cacheinfo=3Dcacheinfo)"
=20
         return bb.utils.better_eval(call, locs)
=20
@@ -2265,6 +2279,7 @@ class RunQueueExecute:
                         logger.debug2("Setscene task %s is unskippable" =
% nexttask)
                     task =3D nexttask
                     break
+
         if task is not None:
             (mc, fn, taskname, taskfn) =3D split_tid_mcfn(task)
             taskname =3D taskname + "_setscene"
@@ -2307,7 +2322,8 @@ class RunQueueExecute:
                 'taskdep': taskdep,
                 'fakerootenv' : self.rqdata.dataCaches[mc].fakerootenv[t=
askfn],
                 'fakerootdirs' : self.rqdata.dataCaches[mc].fakerootdirs=
[taskfn],
-                'fakerootnoenv' : self.rqdata.dataCaches[mc].fakerootnoe=
nv[taskfn]
+                'fakerootnoenv' : self.rqdata.dataCaches[mc].fakerootnoe=
nv[taskfn],
+                'filemirror': self.rq.file_mirror_map
             }
=20
             if 'fakeroot' in taskdep and taskname in taskdep['fakeroot']=
 and not self.cooker.configuration.dry_run:
@@ -3169,7 +3185,11 @@ def update_scenequeue_data(tids, sqdata, rqdata, r=
q, cooker, stampcache, sqrq, s
=20
         tocheck.add(tid)
=20
-    sqdata.valid |=3D rq.validate_hashes(tocheck, cooker.data, len(sqdat=
a.stamppresent), False, summary=3Dsummary)
+    cacheinfo =3D {}
+    if cooker.data.getVar("SSTATE_MIRRORS_INDEX_FILES") =3D=3D "1":
+        cacheinfo =3D rq.compose_indexes(cooker.data)
+    sqdata.valid |=3D rq.validate_hashes(tocheck, cooker.data, len(sqdat=
a.stamppresent), False, summary=3Dsummary, cacheinfo=3Dcacheinfo)
+
=20
     for tid in tids:
         if tid in sqdata.stamppresent:
--=20
2.34.1


