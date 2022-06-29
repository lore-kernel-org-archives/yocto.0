Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E14C43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 14:02:14 +0000 (UTC)
Subject: Re: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jun 2022 07:02:08 -0700
References: <7356.1656510817315479506@lists.yoctoproject.org>
In-Reply-To: <7356.1656510817315479506@lists.yoctoproject.org>
Message-ID: <2031.1656511328602121732@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O0cSHwl6Y45gSYJOrWtM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 14:02:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57423

--O0cSHwl6Y45gSYJOrWtM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Not sure how i missed this but the `--sysroot` is wrong. somehow its pullin=
g the sysroot for a different package. it should be `--sysroot=3D/home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
 *opal/3.18-beta9-r0* `

--O0cSHwl6Y45gSYJOrWtM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Not sure how i missed this but the `--sysroot` is wrong. somehow its pullin=
g the sysroot for a different package. it should be `--sysroot=3D/home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
<strong>opal/3.18-beta9-r0</strong>`

--O0cSHwl6Y45gSYJOrWtM--

