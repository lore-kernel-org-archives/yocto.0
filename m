Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C40DAE00C93; Fri,  9 Dec 2016 04:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72367E00C5B
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 04:21:18 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id m48so1804359qta.2
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 04:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1DgtUuDtTBjZOFPUBqhDH2DoWQUD6dBAV/zvtmu13tM=;
	b=QY39i9/UcGdn70kv+4V9cpjSgMZmLgU07hkwIMYbI0mbrQlYJmfF4kplJraWNDg0K5
	tMS80ARatiiDwZbIE6nHrRXqS7TqPKKwRyr0ZXSxAU3xuWPQ85tifx6nEUySKJyhQQVm
	eHBV/ULRxc51KUdpKOQPG8+JUnESNk0ba5kU9zs3I3EA28yrMsPZb5jRSd5FMnLuVmsR
	HxttBRgJ99bau8KvjxblanAbvpKOndLpU0INJSeWMmFe2t0W86nq05m6JeSRrqoqNgoV
	0+/t8zAkH2qI6vJHQZT7AafCRIJPE6qwmqhC6ZwWyd81qVIBg2REnOx3UmYiOjfCmLB2
	lhVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1DgtUuDtTBjZOFPUBqhDH2DoWQUD6dBAV/zvtmu13tM=;
	b=DxOh5lyYFGeE1LuJHBkXNp3M73BaoJL1FyR3VTU0Nz4JdI2dH4G7Xw1yfQv2eFX1DL
	QXmOKEGGdGvE/3N4MPifyRyO/A44CyAYGEkdXUC3CSsET/O8hsBLxp5Q5MA3qhuLxtJq
	5NN/JlpV82bqcMqTo/2Z9qquJigjICo2FRBE11HIcGmJxKdlqvXAz7tAIQdOB6yvKTqr
	bPuewTRpJmzoZt0GbKst38miVjg61fcnyRNmdE7kO2PbxjOx3Qz28o4djZ4m6Ca4Ixe5
	FlVWXraBzdOsptI9TfTWz7rkYRBMLViV2QVgPicJSznDR51CNVPCPNQhQSn6mvDeQViv
	8iKQ==
X-Gm-Message-State: AKaTC005uNlc4jVGY+qHKHSJNd/1KV87i227xMpskvm4HHcZGN1p9Z2Fv0XS+UUgujzyMwmJKh1mLiz/pP+f2g==
X-Received: by 10.237.36.12 with SMTP id r12mr70844181qtc.97.1481286078151;
	Fri, 09 Dec 2016 04:21:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Fri, 9 Dec 2016 04:21:17 -0800 (PST)
In-Reply-To: <20161209090521.637a191f@nuc.betafive.co.uk>
References: <1481234419-30578-1-git-send-email-mirza.krak@gmail.com>
	<20161209090521.637a191f@nuc.betafive.co.uk>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Fri, 9 Dec 2016 13:21:17 +0100
Message-ID: <CALw8SCV2Mj-gpTRhssPfGbR97GUyAR3HJHCndRhkmwvMxrH_gg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] u-boot: drop patch to include lowlevel_init
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
X-List-Received-Date: Fri, 09 Dec 2016 12:21:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2016-12-09 10:05 GMT+01:00 Paul Barker <paul@paulbarker.me.uk>:
> On Thu,  8 Dec 2016 23:00:19 +0100
> Mirza Krak <mirza.krak@gmail.com> wrote:
>
>> From: Mirza Krak <mirza.krak@gmail.com>
>>
>> U-boot has been updated to 2016.11 in OE-core Which means that we can
>> use the upstream patches instead of the backports and no need for the th=
ird
>> patch which causes a build error when used with 2016.11.
>>
>> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
>> ---
>>  ...0001-arm-add-save_boot_params-for-ARM1176.patch |  4 +---
>>  ...through-of-the-firmware-provided-FDT-blob.patch |  7 ++----
>>  .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ---------------=
-------
>>  recipes-bsp/u-boot/u-boot_%.bbappend               |  1 -
>>  4 files changed, 3 insertions(+), 34 deletions(-)
>>  delete mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.=
o-for-rpi2.patch
>>
>> diff --git a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-=
ARM1176.patch b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-=
ARM1176.patch
>> index a5ebff5..97a4144 100644
>> --- a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176=
.patch
>> +++ b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176=
.patch
>> @@ -1,7 +1,7 @@
>>  From 3e10fcde3f3c24a488866dd33fa3f5d46ff3d7a3 Mon Sep 17 00:00:00 2001
>>  From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
>>  Date: Fri, 11 Nov 2016 11:59:06 +0100
>> -Subject: [PATCH] arm: add save_boot_params for ARM1176
>> +Subject: [PATCH 1/1] arm: add save_boot_params for ARM1176
>>  MIME-Version: 1.0
>>  Content-Type: text/plain; charset=3DUTF-8
>>  Content-Transfer-Encoding: 8bit
>> @@ -13,8 +13,6 @@ feature mirrors the equivalent ARMv7 feature.
>>
>>  Signed-off-by: C=C3=A9dric Schieli <cschieli@gmail.com>
>>  Acked-by: Stephen Warren <swarren@nvidia.com>
>> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>> -Upstream-status: Backport
>>  ---
>>   arch/arm/cpu/arm1176/start.S | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>> diff --git a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmwa=
re-provided-FDT-blob.patch b/recipes-bsp/u-boot/files/0002-rpi-passthrough-=
of-the-firmware-provided-FDT-blob.patch
>> index 323b7ab..95ad94c 100644
>> --- a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-prov=
ided-FDT-blob.patch
>> +++ b/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-prov=
ided-FDT-blob.patch
>> @@ -1,7 +1,7 @@
>>  From ade243a211d62327e9ebadce27bbbff7981e37f0 Mon Sep 17 00:00:00 2001
>>  From: =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Schieli?=3D <cschieli@gmail.com>
>>  Date: Fri, 11 Nov 2016 11:59:07 +0100
>> -Subject: [PATCH] rpi: passthrough of the firmware provided FDT blob
>> +Subject: [PATCH 1/1] rpi: passthrough of the firmware provided FDT blob
>>  MIME-Version: 1.0
>>  Content-Type: text/plain; charset=3DUTF-8
>>  Content-Transfer-Encoding: 8bit
>> @@ -34,11 +34,8 @@ ${fdt_addr} and pass it to the kernel.
>>
>>  [1] https://www.raspberrypi.org/forums//viewtopic.php?f=3D107&t=3D13401=
8
>>
>> -Upstream-Status: Backport
>> -
>>  Signed-off-by: C=C3=A9dric Schieli <cschieli@gmail.com>
>>  Acked-by: Stephen Warren <swarren@nvidia.com>
>> -Signed-off-by: Jonathan Liu <net147@gmail.com>
>>  ---
>>   board/raspberrypi/rpi/Makefile        |  1 +
>>   board/raspberrypi/rpi/lowlevel_init.S | 36 +++++++++++++++++++++++++++=
++++++++
>> @@ -152,5 +149,5 @@ index 6245b36..ffd6d31 100644
>>       set_usbethaddr();
>>   #ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
>>  --
>> -2.10.2
>> +2.1.4
>>
>
> A 'backport' means the patch was already applied upstream, it's a
> 'backport' whether we need to change the patch or not. We also like to
> have the sign-off from whoever brought the patch into the metadata
> layer.
>
> See the following link for more details:
> http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_He=
ader_Recommendations

Understood.

>
>> diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-r=
pi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.=
patch
>> deleted file mode 100644
>> index ce0273f..0000000
>> --- a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.pat=
ch
>> +++ /dev/null
>> @@ -1,25 +0,0 @@
>> -From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
>> -From: Paul Barker <paul@paulbarker.me.uk>
>> -Date: Tue, 29 Nov 2016 19:47:49 +0000
>> -Subject: [PATCH] Include lowlevel_init.o for rpi2
>> -
>> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>> -Upstream-status: Inappropriate
>> -    (not needed upstream as rpi_2 board directory is removed in latest
>> -    version)
>> ----
>> - board/raspberrypi/rpi_2/Makefile | 1 +
>> - 1 file changed, 1 insertion(+)
>> -
>> -diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2=
/Makefile
>> -index d82cd21..9f865c5 100644
>> ---- a/board/raspberrypi/rpi_2/Makefile
>> -+++ b/board/raspberrypi/rpi_2/Makefile
>> -@@ -5,3 +5,4 @@
>> - #
>> -
>> - obj-y       :=3D ../rpi/rpi.o
>> -+obj-y       +=3D ../rpi/lowlevel_init.o
>> ---
>> -2.1.4
>> -
>> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u=
-boot_%.bbappend
>> index a4545f0..0edc8dc 100644
>> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
>> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
>> @@ -3,5 +3,4 @@ RDEPENDS_${PN}_append_rpi =3D " rpi-u-boot-scr"
>>  SRC_URI_append_rpi =3D " \
>>      file://0001-arm-add-save_boot_params-for-ARM1176.patch \
>>      file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch=
 \
>> -    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
>>      "
>> --
>> 2.1.4
>>
>
> I think the removal of the 0003-Include-lowlevel_init.o-for-rpi2.patch
> file and the removal from SRC_URI_append_rpi are all that are needed
> here.

Understood. Have sent V2. Thank you for your review.

Best Regards
Mirza

