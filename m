Return-Path: <denisova.olga.k@yandex.ru>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2DBC369D3
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 06:02:16 +0000 (UTC)
Received: from forward100b.mail.yandex.net (forward100b.mail.yandex.net [178.154.239.147])
 by mx.groups.io with SMTP id smtpd.web10.1243.1745560929997452393
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 23:02:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@yandex.ru header.s=mail header.b=ot+K9HEj;
 spf=pass (domain: yandex.ru, ip: 178.154.239.147, mailfrom: denisova.olga.k@yandex.ru)
Received: from mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net [IPv6:2a02:6b8:c37:f37c:0:640:1e45:0])
	by forward100b.mail.yandex.net (Yandex) with ESMTPS id 76A5460E5E;
	Fri, 25 Apr 2025 09:02:08 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id u1KCLB8LoKo0-J8DDp1yw;
	Fri, 25 Apr 2025 09:02:08 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
	t=1745560928; bh=egG1U0KY81bw4cAdDmOu3Vi8QR9la1tcwmmi63tQsiU=;
	h=Message-Id:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=ot+K9HEjlyvTMbHqHWVFaKs7NF3oWf747AAA/XRGUdyI4EckRHsBlikecl4XfBIlW
	 JkCGW+r5FHD22ZP6tBoWuXk4VXrsAhPt7G99hHWv805uk5k3oDQ3L81lq4NtO3ZMTf
	 Cb6ukBwFC2uzkDe3aHQRAs2YSsQJ3DT7ipeEJ6dM=
Authentication-Results: mail-nwsmtp-smtp-production-main-73.sas.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
From: denisova-ok <denisova.olga.k@yandex.ru>
To: yocto@lists.yoctoproject.org
Cc: gavrilov.andrew1999@yandex.ru,
	tinyakovx@gmail.com,
	sider123456789101112131415@gmail.com,
	Olga Denisova <denisova.olga.k@yandex.ru>
Subject: [meta][PATCH 3/3] sstate.bbclass: collect and process index file data, update fetch logic
Date: Fri, 25 Apr 2025 09:01:19 +0300
Message-Id: <20250425060119.5092-4-denisova.olga.k@yandex.ru>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
References: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 06:02:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65249

From: Olga Denisova <denisova.olga.k@yandex.ru>

This change is part of a patchset introducing support for index files in =
SSTATE_MIRRORS.

In this file, the function referenced by BB_COMPOSE_INDEXES_FUNCTION is d=
efined. It fetches index files from SSTATE_MIRRORS and collects informati=
on about which cache files are present on each mirror. This data is then =
passed to the function specified in BB_HASHCHECK_FUNCTION.

Inside BB_HASHCHECK_FUNCTION, using the received data and the current tas=
klist,
the file_mirror_map structure is constructed. This structure maps require=
d
sstate cache files to the specific mirrors where they are located, allowi=
ng
targeted cache retrieval for the current build.

Additionally, the pstaging_fetch function is modified to read the
file_mirror_map. If information about a file's location is available,
pstaging_fetch attempts to download the cache file directly from the
corresponding mirror, improving efficiency and reducing unnecessary reque=
sts.

Signed-off-by: denisova-ok <denisova.olga.k@yandex.ru>
---
 classes-global/sstate.bbclass | 135 ++++++++++++++++++++++++++++++----
 1 file changed, 120 insertions(+), 15 deletions(-)

diff --git a/classes-global/sstate.bbclass b/classes-global/sstate.bbclas=
s
index 2c259a6657..3f25860551 100644
--- a/classes-global/sstate.bbclass
+++ b/classes-global/sstate.bbclass
@@ -168,6 +168,7 @@ python () {
         d.setVarFlag(task + "_setscene", 'network', '1')
 }
=20
+
 def sstate_init(task, d):
     ss =3D {}
     ss['task'] =3D task
@@ -725,6 +726,12 @@ def pstaging_fetch(sstatefetch, d):
     # Copy the data object and override DL_DIR and SRC_URI
     localdata =3D bb.data.createCopy(d)
=20
+    file_mirror_map =3D d.getVar('FILE_MIRROR_MAP')
+    if file_mirror_map:
+        relevant_mirror =3D file_mirror_map[sstatefetch]
+        if relevant_mirror:
+            mirrors =3D 'file://.* ' + relevant_mirror + ' ' + mirrors
+
     dldir =3D localdata.expand("${SSTATE_DIR}")
     bb.utils.mkdirhier(dldir)
=20
@@ -933,13 +940,67 @@ sstate_unpack_package () {
 	[ ! -e ${SSTATE_PKG}.siginfo ] || touch --no-dereference ${SSTATE_PKG}.=
siginfo 2>/dev/null || true
 }
=20
+
+BB_COMPOSE_INDEXES_FUNCTION =3D "compose_index_files"
+
+def compose_index_files(d):
+    import requests
+    from ftplib import FTP
+
+    mirrors =3D d.getVar("SSTATE_MIRRORS")
+    if not mirrors:
+        return None
+
+    mirrors =3D (mirrors or '').replace('\n', ' ').split()
+    if len(mirrors) % 2 !=3D 0:
+        bb.warn('Invalid mirror data %s, should have paired members.' % =
mirrors)
+        return None
+
+    mirrors =3D [mirrors[i] for i in range(len(mirrors)) if i % 2]
+    mirrors_missed =3D mirrors.copy()
+
+    cache_tasks =3D {}
+
+    for mirror in mirrors:
+        if 'http' in mirror:
+            url =3D 'http://' +  str(str(mirror.split('//')[1]).split('/=
')[0]) + '/sstate-cache'
+            response =3D requests.get(f'{url}/index.txt')
+
+            if response.status_code =3D=3D 200:
+                cache_tasks.update({mirror: set(response.text.split('\n'=
))})
+                mirrors_missed.remove(mirror)
+
+
+        if 'ftp' in mirror:
+            try:
+                ftp =3D FTP()
+                ip, port =3D str(str(mirror.split('//')[1]).split('/')[0=
]).split(':')
+                port =3D int(port)
+                ftp.connect(ip, port)
+                ftp.login()
+
+                with open('index.txt', 'wb') as local_file:
+                    ftp.retrbinary('RETR /sstate-cache/index.txt', local=
_file.write)
+                ftp.quit()
+
+                with open('index.txt', 'r') as local_file:
+                    content =3D set(local_file.read().split('\n'))
+                    cache_tasks.update({mirror: content})
+                mirrors_missed.remove(mirror)
+
+            except:
+                pass
+    return {'mirrors_missed': mirrors_missed, 'cache_tasks': cache_tasks=
}
+
+
 BB_HASHCHECK_FUNCTION =3D "sstate_checkhashes"
=20
-def sstate_checkhashes(sq_data, d, siginfo=3DFalse, currentcount=3D0, su=
mmary=3DTrue, **kwargs):
+def sstate_checkhashes(sq_data, d, siginfo=3DFalse, currentcount=3D0, su=
mmary=3DTrue, cacheinfo=3DNone, **kwargs):
     import itertools
=20
     found =3D set()
     missed =3D set()
+    file_mirror_map =3D {}
=20
     def gethash(task):
         return sq_data['unihash'][task]
@@ -1041,9 +1102,8 @@ def sstate_checkhashes(sq_data, d, siginfo=3DFalse,=
 currentcount=3D0, summary=3DTrue,
             sstatefile =3D d.expand(getsstatefile(tid, siginfo, d))
             tasklist.append((tid, sstatefile))
=20
-        if tasklist:
-            nproc =3D min(int(d.getVar("BB_NUMBER_THREADS")), len(taskli=
st))
=20
+        if tasklist:
             ## thread-safe counter
             cnt_tasks_done =3D itertools.count(start =3D 1)
             progress =3D len(tasklist) >=3D 100
@@ -1051,18 +1111,63 @@ def sstate_checkhashes(sq_data, d, siginfo=3DFals=
e, currentcount=3D0, summary=3DTrue,
                 msg =3D "Checking sstate mirror object availability"
                 bb.event.fire(bb.event.ProcessStarted(msg, len(tasklist)=
), d)
=20
-            # Have to setup the fetcher environment here rather than in =
each thread as it would race
-            fetcherenv =3D bb.fetch2.get_fetcher_environment(d)
-            with bb.utils.environment(**fetcherenv):
-                bb.event.enable_threadlock()
-                import concurrent.futures
-                from queue import Queue
-                connection_cache_pool =3D Queue(nproc)
-                checkstatus_init()
-                with concurrent.futures.ThreadPoolExecutor(max_workers=3D=
nproc) as executor:
-                    executor.map(checkstatus, tasklist.copy())
-                checkstatus_end()
-                bb.event.disable_threadlock()
+            cache_tasks =3D {}
+
+            mirrors =3D (mirrors or '').replace('\n', ' ').split()
+            mirrors_copy =3D mirrors.copy()
+
+            if len(mirrors) % 2 !=3D 0:
+                bb.warn('Invalid mirror data %s, should have paired memb=
ers.' % mirrors)
+
+            mirrors =3D [mirrors[i] for i in range(len(mirrors)) if i % =
2]
+            mirrors_missed =3D mirrors.copy()
+
+            if cacheinfo:
+                cache_tasks =3D cacheinfo["cache_tasks"]
+                mirrors_missed =3D cacheinfo["mirrors_missed"]
+
+            tasklist_copy =3D tasklist.copy()
+            for arg in tasklist:
+                (tid, sstatefile) =3D arg
+                srcuri =3D sstatefile
+                for m, files in cache_tasks.items():
+                    if srcuri in files:
+                        found.add(tid)
+                        missed.remove(tid)
+                        file_mirror_map.update({srcuri: m})
+                        tasklist_copy.remove(arg)
+                        if progress:
+                            bb.event.fire(bb.event.ProcessProgress(msg, =
next(cnt_tasks_done)), d)
+
+            d.setVar("FILE_MIRROR_MAP", file_mirror_map)
+
+            if d.getVar("RELY_ON_INDEX_FILES") =3D=3D "1":
+                criteria =3D mirrors_missed
+                mirrors_new =3D ''
+                for i in range(len(mirrors_missed)):
+                    index =3D mirrors_copy.index(mirrors_missed[i])
+                    mirrors_new +=3D mirrors_copy[index - 1] + ' '
+                    mirrors_new +=3D mirrors_copy[index] + ' '
+            else:
+                criteria =3D missed
+                mirrors_new =3D d.getVar("SSTATE_MIRRORS") or ''
+
+            if criteria:
+                localdata.setVar('PREMIRRORS', mirrors_new)
+                nproc =3D min(int(d.getVar("BB_NUMBER_THREADS")), len(ta=
sklist_copy))
+
+                # Have to setup the fetcher environment here rather than=
 in each thread as it would race
+                fetcherenv =3D bb.fetch2.get_fetcher_environment(d)
+                with bb.utils.environment(**fetcherenv):
+                    bb.event.enable_threadlock()
+                    import concurrent.futures
+                    from queue import Queue
+                    connection_cache_pool =3D Queue(nproc)
+                    checkstatus_init()
+                    with concurrent.futures.ThreadPoolExecutor(max_worke=
rs=3Dnproc) as executor:
+                        executor.map(checkstatus, tasklist_copy.copy())
+                    checkstatus_end()
+                    bb.event.disable_threadlock()
=20
             if progress:
                 bb.event.fire(bb.event.ProcessFinished(msg), d)
--=20
2.34.1


