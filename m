Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31C433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 20:06:34 +0000 (UTC)
Subject: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 Jun 2022 13:06:25 -0700
Message-ID: <hCzM.1655928385036906321.hS1G@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GmIK1YvdCfbyNIliACIH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 20:06:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57377

--GmIK1YvdCfbyNIliACIH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello. Im trying to write a recipe for an autoconf based project. Ive manag=
ed to resolve most of the include and linker issues with the exception of t=
he subject error. The files in question exist at <sysroot>/usr/lib64 and <s=
ysroot>/usr/lib64/${TARGET_SYS}/10.3.1 and those paths appear to be on the =
file search path with sysroot set as expected. Any help would be appreciate=
d.

--GmIK1YvdCfbyNIliACIH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello. Im trying to write a recipe for an autoconf based project. Ive ma=
naged to resolve most of the include and linker issues with the exception o=
f the subject error. The files in question exist at &lt;sysroot&gt;/usr/lib=
64 and &lt;sysroot&gt;/usr/lib64/${TARGET_SYS}/10.3.1 and those paths appea=
r to be on the file search path with sysroot set as expected. Any help woul=
d be appreciated.</p>

--GmIK1YvdCfbyNIliACIH--

