Return-Path: <rashmipisal@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D96CFC433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 15:51:29 +0000 (UTC)
Subject: Unable to fetch repository from GitLab. Checksum mismatch
To: yocto@lists.yoctoproject.org
From: "rashmi pisal" <rashmipisal@yahoo.com>
X-Originating-Location: Pepperell, Massachusetts, US (47.14.57.210)
X-Originating-Platform: Linux Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Jul 2022 08:51:26 -0700
Message-ID: <umVt.1657036286562889638.nKpX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="79zmiKTTu8l08BKVz1Pa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 15:51:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57456

--79zmiKTTu8l08BKVz1Pa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am building a software image and it fails when fetching a repository form=
 GitLab. https://github.com/ajstarks/openvg

Initially I was using git:// protocol to fetch the files but due to the GIt=
Lab ended support of git:// I am using https:// protocol. I am getting foll=
owing error. Any help is appreciated. Thank you.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
NOTE: Running task 2097 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/m=
eta-openembedded/meta-oe/recipes-graphics/gphoto2/libgphoto2_2.5.8.bb:do_pa=
tch)
NOTE: recipe libgphoto2-2.5.8-r0: task do_patch: Started
NOTE: recipe libgphoto2-2.5.8-r0: task do_patch: Succeeded
NOTE: Running task 2098 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/m=
eta-openembedded/meta-oe/recipes-support/glog/glog_0.3.4.bb:do_patch)
NOTE: recipe glog-0.3.4-r0: task do_patch: Started
NOTE: recipe glog-0.3.4-r0: task do_patch: Succeeded
NOTE: Running task 2099 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/m=
eta/recipes-devtools/perl/perl_5.24.1.bb:do_packagedata)
NOTE: recipe perl-5.24.1-r0: task do_packagedata: Started
NOTE: recipe perl-5.24.1-r0: task do_packagedata: Succeeded
NOTE: Running task 2100 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/m=
eta-rebound/recipes-bsp/openvg/openvg.bb:do_fetch)
NOTE: recipe openvg-1.0-r0: task do_fetch: Started
WARNING: openvg-1.0-r0 do_fetch: Checksum mismatch for local file /var/lib/=
jenkins/workspace/yocto-rebound/build/downloads/openvg
Cleaning and trying again.
WARNING: openvg-1.0-r0 do_fetch: Renaming /var/lib/jenkins/workspace/yocto-=
rebound/build/downloads/openvg to /var/lib/jenkins/workspace/yocto-rebound/=
build/downloads/openvg_bad-checksum_ddfeecef70433040e18ee9e68481e7f3
WARNING: openvg-1.0-r0 do_fetch: Checksum failure encountered with download=
 of https://github.com/ajstarks/openvg - will attempt other sources if avai=
lable
ERROR: openvg-1.0-r0 do_fetch: Fetcher failure for URL: 'https://github.com=
/ajstarks/openvg'. Checksum mismatch!
File: '/var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg' has=
 md5 checksum ddfeecef70433040e18ee9e68481e7f3 when a8b34f242afbf3cac74fc7d=
34a496b24 was expected
If this change is expected (e.g. you have upgraded to a new version without=
 updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "ddfeecef70433040e18ee9e68481e7f3"
SRC_URI[sha256sum] =3D "7c67772c69b23d5b4cd298c7ddbf02938c3d11de04747c32434=
35e1463169669"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: openvg-1.0-r0 do_fetch: Fetcher failure for URL: 'https://github.com=
/ajstarks/openvg'. Unable to fetch URL from any source.
ERROR: openvg-1.0-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/yocto-rebou=
nd/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/openvg/1.0-r0/te=
mp/log.do_fetch.30930
NOTE: recipe openvg-1.0-r0: task do_fetch: Failed
ERROR: Task (/var/lib/jenkins/workspace/yocto-rebound/meta-rebound/recipes-=
bsp/openvg/openvg.bb:do_fetch) failed with exit code '1'
NOTE: Running task 2101 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/m=
eta-gplv2/recipes-extended/gawk/gawk_3.1.5.bb:do_prepare_recipe_sysroot)
NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sysroot: Started
NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sysroot: Succeeded
NOTE: recipe opencv-3.3+gitAUTOINC+87c27a074d_2a9d1b22ed_a62e20676a_34e4206=
aef_fccf7cd6a4-r0: task do_fetch: Succeeded
NOTE: Tasks Summary: Attempted 2101 tasks of which 0 didn't need to be reru=
n and 1 failed.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--79zmiKTTu8l08BKVz1Pa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am building a software image and it fails when fetching=
 a repository form GitLab.&nbsp; <a href=3D"https://github.com/ajstarks/ope=
nvg" target=3D"_blank" rel=3D"noopener">https://github.com/ajstarks/openvg<=
/a><br /><br />Initially I was using git:// protocol to fetch the files but=
 due to the GItLab ended support of git:// I am using https:// protocol. I =
am getting following error. Any help is appreciated. Thank you.<br /><br />=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br />NOTE: Running task 20=
97 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta-openembedded/meta=
-oe/recipes-graphics/gphoto2/libgphoto2_2.5.8.bb:do_patch)<br />NOTE: recip=
e libgphoto2-2.5.8-r0: task do_patch: Started<br />NOTE: recipe libgphoto2-=
2.5.8-r0: task do_patch: Succeeded<br />NOTE: Running task 2098 of 5013 (/v=
ar/lib/jenkins/workspace/yocto-rebound/meta-openembedded/meta-oe/recipes-su=
pport/glog/glog_0.3.4.bb:do_patch)<br />NOTE: recipe glog-0.3.4-r0: task do=
_patch: Started<br />NOTE: recipe glog-0.3.4-r0: task do_patch: Succeeded<b=
r />NOTE: Running task 2099 of 5013 (/var/lib/jenkins/workspace/yocto-rebou=
nd/meta/recipes-devtools/perl/perl_5.24.1.bb:do_packagedata)<br />NOTE: rec=
ipe perl-5.24.1-r0: task do_packagedata: Started<br />NOTE: recipe perl-5.2=
4.1-r0: task do_packagedata: Succeeded<br />NOTE: Running task 2100 of 5013=
 (/var/lib/jenkins/workspace/yocto-rebound/meta-rebound/recipes-bsp/openvg/=
openvg.bb:do_fetch)<br />NOTE: recipe openvg-1.0-r0: task do_fetch: Started=
<br />WARNING: openvg-1.0-r0 do_fetch: Checksum mismatch for local file /va=
r/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg<br />Cleaning =
and trying again.<br />WARNING: openvg-1.0-r0 do_fetch: Renaming /var/lib/j=
enkins/workspace/yocto-rebound/build/downloads/openvg to /var/lib/jenkins/w=
orkspace/yocto-rebound/build/downloads/openvg_bad-checksum_ddfeecef70433040=
e18ee9e68481e7f3<br />WARNING: openvg-1.0-r0 do_fetch: Checksum failure enc=
ountered with download of https://github.com/ajstarks/openvg - will attempt=
 other sources if available<br />ERROR: openvg-1.0-r0 do_fetch: Fetcher fai=
lure for URL: 'https://github.com/ajstarks/openvg'. Checksum mismatch!<br /=
>File: '/var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg' ha=
s md5 checksum ddfeecef70433040e18ee9e68481e7f3 when a8b34f242afbf3cac74fc7=
d34a496b24 was expected<br />If this change is expected (e.g. you have upgr=
aded to a new version without updating the checksums) then you can use thes=
e lines within the recipe:<br />SRC_URI[md5sum] =3D "ddfeecef70433040e18ee9=
e68481e7f3"<br />SRC_URI[sha256sum] =3D "7c67772c69b23d5b4cd298c7ddbf02938c=
3d11de04747c3243435e1463169669"<br />Otherwise you should retry the downloa=
d and/or check with upstream to determine if the file has become corrupted =
or otherwise unexpectedly modified.<br /><br />ERROR: openvg-1.0-r0 do_fetc=
h: Fetcher failure for URL: 'https://github.com/ajstarks/openvg'. Unable to=
 fetch URL from any source.<br />ERROR: openvg-1.0-r0 do_fetch: Function fa=
iled: base_do_fetch<br />ERROR: Logfile of failure stored in: /var/lib/jenk=
ins/workspace/yocto-rebound/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux=
-gnueabi/openvg/1.0-r0/temp/log.do_fetch.30930<br />NOTE: recipe openvg-1.0=
-r0: task do_fetch: Failed<br />ERROR: Task (/var/lib/jenkins/workspace/yoc=
to-rebound/meta-rebound/recipes-bsp/openvg/openvg.bb:do_fetch) failed with =
exit code '1'<br />NOTE: Running task 2101 of 5013 (/var/lib/jenkins/worksp=
ace/yocto-rebound/meta-gplv2/recipes-extended/gawk/gawk_3.1.5.bb:do_prepare=
_recipe_sysroot)<br />NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sy=
sroot: Started<br />NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sysr=
oot: Succeeded<br />NOTE: recipe opencv-3.3+gitAUTOINC+87c27a074d_2a9d1b22e=
d_a62e20676a_34e4206aef_fccf7cd6a4-r0: task do_fetch: Succeeded<br />NOTE: =
Tasks Summary: Attempted 2101 tasks of which 0 didn't need to be rerun and =
1 failed.<br />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--79zmiKTTu8l08BKVz1Pa--

