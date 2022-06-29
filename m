Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E97AC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 16:27:45 +0000 (UTC)
Subject: Re: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jun 2022 09:27:40 -0700
References: <2031.1656511328602121732@lists.yoctoproject.org>
In-Reply-To: <2031.1656511328602121732@lists.yoctoproject.org>
Message-ID: <2031.1656520060769510317@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KznggTfj8Shkgxj9O0dD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 16:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57425

--KznggTfj8Shkgxj9O0dD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I believe I have solved the issue. the key for me was needing to pass the `=
--sysroot` flag to TARGET_*FLAGS variables since the sysroot flag being pas=
sed to CC/CPP/CXX variables were being replaced during compilation for some=
 reason. Also including `--prefix=3D${RECIPE_SYSROOT}${prefix}` in the=C2=
=A0EXTRA_OECONF variable ensured the appropriate include/lib paths were acc=
essible. I think this was a strange project because some of the other autoc=
onf projects "just worked".

--KznggTfj8Shkgxj9O0dD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I believe I have solved the issue. the key for me was needing to pass the `=
--sysroot` flag to TARGET_*FLAGS variables since the sysroot flag being pas=
sed to CC/CPP/CXX variables were being replaced during compilation for some=
 reason. Also including `--prefix=3D${RECIPE_SYSROOT}${prefix}` in the&nbsp=
;EXTRA_OECONF variable ensured the appropriate include/lib paths were acces=
sible. I think this was a strange project because some of the other autocon=
f projects "just worked".

--KznggTfj8Shkgxj9O0dD--

