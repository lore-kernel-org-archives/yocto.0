Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDF26C61DD3
	for <webhook@archiver.kernel.org>; Thu,  3 Sep 2026 12:20:16 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.24])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6283.1788438002949594396
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Sep 2026 05:20:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=DiaKDase;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.24, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xgGR0DAhd12FgwGY55fO8gh+AL1c+Jew4Tk+JzVOZws=; b=DiaKDasecTQfmsLQf9FvmzTJCe
	fYTc1trs4czD/GfJ+zoOMO/foTPIOKKufDo2cBQskL9PiRRtOKW8qS7M1Q3HGvuTjlETDhmIVRCgz
	iKGDa/40Pt4U+JDayBivl/m4+Kskkj5i2awjXwt2XMdmvwzmf2GdZLei+36n0TPYrwtyqsF2zvKc6
	MOOYQv9yuj7Zyypozc6sPU1qf16g9WlXEXHvICtc/SeAw7cf+7BYB5r7bchzJVhu8M2EZKfiEkQLK
	WeSznzboXXv/evieGAr2x4RVQL9J0UiUintStqQHkWMLSquKKY7uMU+eMUbHrLIZJztOk4Wm3LlcR
	qjsKFDgQ==;
Received: from 62-78-237-218.bb.dnainternet.fi ([62.78.237.218] helo=smtpclient.apple)
	by mail.kapsi.fi with esmtpsa (Exim 4.96)
	(envelope-from <Anders.Montonen@iki.fi>)
		id 1x26QC-007gLK-0i
	for yocto@lists.yoctoproject.org;
	Thu, 03 Sep 2026 15:20:00 +0300
From: Anders Montonen <Anders.Montonen@iki.fi>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Issues generating SPDX3 SBOM w/ Scarthgap
Message-Id: <0EFC0546-2B08-422A-9CA0-BA7E61FF7028@iki.fi>
Date: Thu, 3 Sep 2026 15:19:49 +0300
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3864.700.51.1.1)
X-Rspam-Score: -2.6 (--)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_ALL(0.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_EQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: LOCAL_OUTBOUND(0.00)
 Symbol: TO_DN_NONE(0.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: MV_CASE(0.50)
 Symbol: MID_RHS_MATCH_FROM(0.00)
 Symbol: RCVD_VIA_SMTP_AUTH(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: RCVD_COUNT_ONE(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: RCPT_COUNT_ONE(0.00)
 X-Symbol: RCVD_TLS_ALL(0.00); All hops used encrypted transports
 X-Symbol: FROM_HAS_DN(0.00); From header has a display name
 X-Symbol: FROM_EQ_ENVFROM(0.00); From address is the same as the envelope
 X-Symbol: BAYES_HAM(-3.00); Message probably ham, probability:  [100.00%]
 X-Symbol: LOCAL_OUTBOUND(0.00); Mail from local to external domain
 X-Symbol: TO_DN_NONE(0.00); None of the recipients have display names
 X-Symbol: TO_MATCH_ENVRCPT_ALL(0.00); All of the recipients match the envelope
 X-Symbol: MIME_GOOD(-0.10); Known content-type [text/plain]
 X-Symbol: MV_CASE(0.50); Mime-Version .vs. MIME-Version
 X-Symbol: MID_RHS_MATCH_FROM(0.00); Message-ID RHS matches From domain
 X-Symbol: RCVD_VIA_SMTP_AUTH(0.00); Authenticated hand-off was seen in Received headers
 X-Symbol: ARC_NA(0.00); ARC signature absent
 X-Symbol: ASN(0.00) [asn:16086, ipnet:62.78.128.0/17, country:FI]
 X-Symbol: RCVD_COUNT_ONE(0.00); Message has one Received header [1]
 X-Symbol: MIME_TRACE(0.00) [0:+]
 X-Symbol: RCPT_COUNT_ONE(0.00); One recipient [1]
 Message-ID: 0EFC0546-2B08-422A-9CA0-BA7E61FF7028@iki.fi
 X-Milter-Del: X-Spam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Sep 2026 12:20:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66704

Hi,

I=E2=80=99m trying to generate an SPDX3 format SBOM for our project, and =
ran into a couple of issues. We=E2=80=99re using Scarthgap 5.0.19 with =
patches 9628ed0 and a8a3e88 applied.

The project has a =E2=80=9Cnopackages=E2=80=9D partition, created using =
a =E2=80=9Cnopackages=E2=80=9D recipe based on =
<https://lists.yoctoproject.org/g/linux-yocto/message/15646>. This =
causes an error where do_create_rootfs_spdx() can=E2=80=99t find the =
rootfs-packages.json file. Inheriting the nospdx class in the recipe =
didn=E2=80=99t help. Instead I had to manually make do_create_spdx(), =
do_create_image_spdx(), and do_create_image_sbom_spdx() into no-ops =
using prepends, even though these tasks are deleted by the nospdx class.

Finally, the documentation says the SPDX should be generated into =
tmp/deploy/images/MACHINE/, but that does not seem to be the case. =
Instead, they seem to be generated under =
tmp/deploy/spdx/3.0.1/MACHINE/rootfs. Is this a documentation bug, or =
did some step of the process not execute in my build?

ERROR: bootpart-1.0-r0 do_create_rootfs_spdx: Error executing a python =
function in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure =
was:
File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:do_create_rootfs_spdx(d)
     0003:
File: =
'/work/build/../poky/meta/classes-recipe/create-spdx-image-3.0.bbclass', =
lineno: 31, function: do_create_rootfs_spdx
     0027:ROOTFS_POSTUNINSTALL_COMMAND =3D+ =
"spdx_collect_rootfs_packages"
     0028:
     0029:python do_create_rootfs_spdx() {
     0030:    import oe.spdx30_tasks
 *** 0031:    oe.spdx30_tasks.create_rootfs_spdx(d)
     0032:}
     0033:addtask do_create_rootfs_spdx after do_rootfs before do_image
     0034:SSTATETASKS +=3D "do_create_rootfs_spdx"
     0035:do_create_rootfs_spdx[sstate-inputdirs] =3D =
"${SPDXROOTFSDEPLOY}"
File: '/work/build/../poky/meta/lib/oe/spdx30_tasks.py', lineno: 1081, =
function: create_rootfs_spdx
     1077:    image_basename =3D d.getVar("IMAGE_BASENAME")
     1078:    image_rootfs =3D d.getVar("IMAGE_ROOTFS")
     1079:    machine =3D d.getVar("MACHINE")
     1080:
 *** 1081:    with root_packages_file.open("r") as f:
     1082:        packages =3D json.load(f)
     1083:
     1084:    objset =3D oe.sbom30.ObjectSet.new_objset(
     1085:        d, "%s-%s-rootfs" % (image_basename, machine)
File: '/usr/lib/python3.11/pathlib.py', lineno: 1045, function: open
     1041:        the built-in open() function does.
     1042:        """
     1043:        if "b" not in mode:
     1044:            encoding =3D io.text_encoding(encoding)
 *** 1045:        return io.open(self, mode, buffering, encoding, =
errors, newline)
     1046:
     1047:    def read_bytes(self):
     1048:        """
     1049:        Open the file in bytes mode, read it, and close the =
file.
Exception: FileNotFoundError: [Errno 2] No such file or directory: =
'/work/build/tmp/work/MACHINE-fslc-linux/bootpart/1.0/spdx/3.0.1/rootfs-pa=
ckages.json'

ERROR: Logfile of failure stored in: =
/work/build/tmp/work/MACHINE-fslc-linux/bootpart/1.0/temp/log.do_create_ro=
otfs_spdx.3051178
ERROR: Task =
(/work/build/../../repo/layers/meta-productlayer/recipes-extended/images/b=
ootpart.bb:do_create_rootfs_spdx) failed with exit code =E2=80=981'

Regards,
Anders Montonen=

