Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8469E00E2F; Tue, 30 Jan 2018 23:23:06 -0800 (PST)
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
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17FAFE007B3
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:23:05 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id j23so8789090uak.13
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L/e68JGWJknMuX1G+UREyE0OKg6s62wJzW8kYCXsWGg=;
	b=gvBLolPb2b2P3psDb84m50devvX59GkMRbFVzQwjTQmsTQ/n+dgKak3arp663RB6Op
	y7Hz1HEtYxOOT79cfXSUkZjKyBm/jjrIZ4FSeiht14j+NIveA4okq6VjaNOI8tJVpkYb
	yDtd7Na7S6B+/N86br1M1qeZY7N8SqKKM3p5RE9CxCnjvUONUqkqMy3c8OmU02wukdvr
	bhFb14Dr1vWw0IzJ1lS6U4nyrArmg0rqO7d26/QterkWJgdEeQTzQfZPQM9GfKNlvjfj
	N9wsNFziLHBdOh/jYBrJj73MinWF4nm8703mKSMsKRmqajAP9y6kCQPLZdyMkg1F7r7U
	B82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L/e68JGWJknMuX1G+UREyE0OKg6s62wJzW8kYCXsWGg=;
	b=bteokFAfiFESuLhtvcPsnXvnBuJnRdFGpfvTXVKwRImPmHGmj5ajbhXcQleIaNj3Y4
	EgadMdUADy6J4Ca9J0hb/So8mmc6XF/jF59yJauNiCAUpJArurnubzXLMFgBhRDv5goJ
	Jg+OQ7jDx9BwMXEnMVx7LooVdf6NPEoQWarojAe1B8D4WkX4K4IPGznpzUA341H0L75t
	f+kcyPIn20UmmKNFOn6hhEZrU7XpZgzz2x2zmLoOjIUWhsnwTJ8BaZCeQ/aXyildJfJS
	Vfn0Jdhe32JzJpcG6W6An6Gzh3OhNhMod3R6g2AnE6dU9PqupHA8gr7sCs1h3dP/PTaH
	W3ew==
X-Gm-Message-State: AKwxyteke2RhtUkdm352yWhdXS15+5c/0+qImPtp19z7PN1NkqBbkpnS
	29tD1rYZbEUVsHzmmrgIwg8EAh7fexOTJ1Ll6OiPQQ==
X-Google-Smtp-Source: AH8x226Hz1KmLT3lpAkdSQNX1yua7OzW7PTudx5pOjRWVaCh4VEWGxjCu7d6XELT0JKHwhg4f2VE8/eV4Y/LUvB0C3U=
X-Received: by 10.176.83.76 with SMTP id y12mr27159104uay.109.1517383384688;
	Tue, 30 Jan 2018 23:23:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Tue, 30 Jan 2018 23:23:04 -0800 (PST)
In-Reply-To: <CAC+thW2mR1CX3c3ws1s9gMBME7rvrA3_bkoEAAQ6qBQayV9z7A@mail.gmail.com>
References: <20180130133100.1288-1-Martin.Jansa@gmail.com>
	<CAC+thW0L-wC2hcD=mu1jK1V3BLy2=BKWmKwzoqJnOuHCVn8Etw@mail.gmail.com>
	<CAC+thW2mR1CX3c3ws1s9gMBME7rvrA3_bkoEAAQ6qBQayV9z7A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 31 Jan 2018 08:23:04 +0100
Message-ID: <CAC+thW34WEVbuEYWTxWQQUO_jqjdSGqv94ALFD9iARBc2j_cdg@mail.gmail.com>
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
X-List-Received-Date: Wed, 31 Jan 2018 07:23:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 31, 2018 at 8:19 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> On Wed, Jan 31, 2018 at 8:05 AM, Andrea Galbusera <gizero@gmail.com> wrote:
>> Hi Martin,
>>
>> On Tue, Jan 30, 2018 at 2:31 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>>> ---
>>>  recipes-kernel/linux/linux-raspberrypi.inc | 6 +++---
>>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>>> index df3a3d7..a1c4e52 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>> @@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
>>>  CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>>>
>>>  # Add the kernel debugger over console kernel command line option if enabled
>>> -CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>>> +CMDLINE_append = ' ${@oe.utils.conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>>>
>>>  # Disable rpi logo on boot
>>> -CMDLINE_append += ' ${@base_conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
>>> +CMDLINE_append += ' ${@oe.utils.conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
>>>
>>>  # You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
>>>  # to enable kernel debugging.
>>> @@ -124,7 +124,7 @@ do_configure_prepend() {
>>>          kernel_configure_variable ROOT_NFS y
>>>          kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
>>>      fi
>>> -    if [ "${@base_conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
>>> +    if [ "${@oe.utils.conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
>>>          kernel_configure_variable BLK_DEV_INITRD y
>>>          kernel_configure_variable INITRAMFS_SOURCE ""
>>>          kernel_configure_variable RD_GZIP y
>>> --
>>> 2.15.1
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> Although it's trivial, this one doesn't look to apply neither to
>> current master nor to any object in the index of meta-raspberrypi
>> repo...
>>
>> $ git show df3a3d7
>> fatal: ambiguous argument 'df3a3d7': unknown revision or path not in
>> the working tree.
>
> Also consider that, according to [1] patches should be submitted as
> pull request on github, being the mailing list only a
>
> [1] https://github.com/agherzan/meta-raspberrypi/blob/master/docs/contributing.md#patches-and-pull-requests

Sorry! Hit "send" too early on my previous one... Well you know what I
meant: "...being the mailing list only an additional place for
discussion".

