Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B08E7E0B6
	for <webhook@archiver.kernel.org>; Mon,  9 Feb 2026 09:43:27 +0000 (UTC)
Subject: File permissions not correctly set when using custom FILESYSTEM_PERMS_TABLES
To: yocto@lists.yoctoproject.org
From: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
X-Originating-Location: Stuttgart, Baden-Wurttemberg, DE (194.39.218.19)
X-Originating-Platform: Windows Edge 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Feb 2026 01:43:24 -0800
Message-ID: <2Gom.1770630204428680865.GsER@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 09:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66231

Hello,

I=E2=80=99m trying to use FILESYSTEM_PERMS_TABLES with a custom file system=
 permission file which includes the following line:=20

${localstatedir}/foo 0777 root root true 0777 root root

But when I package the following recipe (after cleaning):=20

FILES:${PN} =3D "${localstatedir}/foo/test"

do_install () {
  mkdir -p ${D}${localstatedir}/foo
  echo "test" > ${D}${localstatedir}/foo/test
}

the test file ends up with wrong permissions (missing the write for group a=
nd others) for some reason:=20

$ ls -l /home/user/workspace/deployment/yocto/build/tmp-glibc/work/corei7-6=
4-oe-linux/var-test/1.0-r0/package/var/foo/
total 4.0K
-rwxr-xr-x 2 user user 5 Feb  9 09:48 test

I also enabled some debug logs in package.bbclass and it seems that my perm=
ission table file is correctly read:=20
NOTE: Fixup Perms: /var/foo: /var/foo 0777 0 0 true 0777 0 0

Did someone else experience a similar issue?

I=E2=80=99m using kirkstone branch with poky distribution.=20

Best regards,

Fabian Hanke

--------------------
Bosch Rexroth AG

