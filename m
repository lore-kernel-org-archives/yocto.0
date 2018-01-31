Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 276E5E00E14; Tue, 30 Jan 2018 23:20:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA40E007B3
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:19:59 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id f5so8784861ual.8
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s0EO7fSAdjlU0a7kyliUUnfugBk3o+e6s9skIoYECRM=;
	b=pBXSX8/oes5x2cilS4Wk0yLKnt3jaIg0DUNyTfs1BNsp970NCC+TEiKkHYETzqmjs7
	X+FDJduXDumTHUsPqzGEqvjTLe/EM89XYmhPiOL4k2NObVtmNfj3NizFV6YdcuRRPHkV
	Wj+B3ZXRy18LKycZ2ENrXrHFZHJuklaF/8YLOuWySs5Nk0H1DKKtJqZdxs6lpz06MGTF
	4DBVkC2mq8o7E+9/flpLShS0/2hIlFddXJ/ytJIQb3c4rSotcMvuIhBUMR9F8d4CAIK+
	GPytYLFAN8gVzCPLPmcf1BRDlagPIZHX1KGwsWE5mzI6hnZoWH9wxyYb70uIGsQ/3YoO
	OOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s0EO7fSAdjlU0a7kyliUUnfugBk3o+e6s9skIoYECRM=;
	b=HYpQOYuBuZvUVJqvX/wLF98tRpZvGnUnNAK+9R9TPMKA15WkLBaBuN1UHrRh/dqROt
	JtkVbREpj13jMSwAUaxRZ+c6p0FDeMpySJmK69Umw/eEU5ouhaJolwvKJ6mk3Fp9+dlW
	sTeLtTF7RxTjNFBndqGK5XrHLyA9X/kY9TP9pLSOlSsuXFe0mw1dktiUn/iCG25nA9IN
	VQ/QdWuFalqx+r+V0kmnCNX2sww2dM1J1KwY9yR2csvOSC18HGpOmZUb/5X269fq+BDq
	dt4zO+VNCg4i4OMReSqAa54OaSpRlDqpKg2n4v/CMbhJdOOwRX8Z5UmRme5/Dbr7q2/n
	dJCg==
X-Gm-Message-State: AKwxytcTGAtK0L6UBU+pStOg6LhZfroCYf3QIJR6tQhfuVI0GzPjE0Dm
	0j8pvsVZCS4CB404DUGuBENM6/EUibnwWx8+0uI=
X-Google-Smtp-Source: AH8x225HdQtL/tTC11CeX7D6dAClKPxYoVvyOTeisSxQERKQygfpVSZUxvops+am8seMURwaZ4sd4zLhw11n4/GnXBY=
X-Received: by 10.159.52.81 with SMTP id s17mr4754369uab.203.1517383199047;
	Tue, 30 Jan 2018 23:19:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Tue, 30 Jan 2018 23:19:58 -0800 (PST)
In-Reply-To: <CAC+thW0L-wC2hcD=mu1jK1V3BLy2=BKWmKwzoqJnOuHCVn8Etw@mail.gmail.com>
References: <20180130133100.1288-1-Martin.Jansa@gmail.com>
	<CAC+thW0L-wC2hcD=mu1jK1V3BLy2=BKWmKwzoqJnOuHCVn8Etw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 31 Jan 2018 08:19:58 +0100
Message-ID: <CAC+thW2mR1CX3c3ws1s9gMBME7rvrA3_bkoEAAQ6qBQayV9z7A@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] recipes: use oe.utils.conditional instead of deprecated base_conditional
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
X-List-Received-Date: Wed, 31 Jan 2018 07:20:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 31, 2018 at 8:05 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi Martin,
>
> On Tue, Jan 30, 2018 at 2:31 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi.inc | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index df3a3d7..a1c4e52 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
>>  CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>>
>>  # Add the kernel debugger over console kernel command line option if enabled
>> -CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>> +CMDLINE_append = ' ${@oe.utils.conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>>
>>  # Disable rpi logo on boot
>> -CMDLINE_append += ' ${@base_conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
>> +CMDLINE_append += ' ${@oe.utils.conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
>>
>>  # You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
>>  # to enable kernel debugging.
>> @@ -124,7 +124,7 @@ do_configure_prepend() {
>>          kernel_configure_variable ROOT_NFS y
>>          kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
>>      fi
>> -    if [ "${@base_conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
>> +    if [ "${@oe.utils.conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
>>          kernel_configure_variable BLK_DEV_INITRD y
>>          kernel_configure_variable INITRAMFS_SOURCE ""
>>          kernel_configure_variable RD_GZIP y
>> --
>> 2.15.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Although it's trivial, this one doesn't look to apply neither to
> current master nor to any object in the index of meta-raspberrypi
> repo...
>
> $ git show df3a3d7
> fatal: ambiguous argument 'df3a3d7': unknown revision or path not in
> the working tree.

Also consider that, according to [1] patches should be submitted as
pull request on github, being the mailing list only a

[1] https://github.com/agherzan/meta-raspberrypi/blob/master/docs/contributing.md#patches-and-pull-requests

