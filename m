Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2355E009B9; Thu, 19 Jan 2017 05:55:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jacobchen110[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B7DE0095F
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:55:35 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r126so12192621wmr.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pb/VUbdQ0E+RClzDl7DeDVp7X+zcxJDFYxXuPrykFcE=;
	b=AHNgTcUA8rSg+ECqn+0j6co8taLZ0vPzvGWYVX4TmKqMi+8TkJyX7eM/hCsoIhtMfE
	jjTyHIuizUAB4TvEZ+zbeVdOhcTiMP0FOqHwZnPvmcnk7/pvymU59z2AyQIS4alHl6GM
	uZ7rE2yxEhpAGkejZ13II2nPVUprzEY7gn5cuSeA5Sx888e+FqkMYkmuoWGzukKyw1Wn
	PT06R0cepJbBaG2ntMkf2hGtQqvnlV3LdQsptsJ1agvCkyhm82TBZqr0lLJriKKWA4yV
	tQBjisebYyxpqBVVB+nI1iQlk+oIlPV72005jmSqVUrju/T52L6s7lCtTbgHaDoXJ3Ba
	9jIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pb/VUbdQ0E+RClzDl7DeDVp7X+zcxJDFYxXuPrykFcE=;
	b=AuSg5buV/Tf43/kNpkxcZDXf0MYcX1vr4FBzSRvOOXD4JzOzTUUcL8hZ/rVtMwB6qr
	Vwj4WpNwkHmNnr6IPOloaKBokwQOMqZBDaae/bQl3XzIbXGCBSKG3JkD37IQWzmAKCYG
	f7wxrGL7Lg52iwr6nGyicRDJ/wq67g1nyLXg2PHcHZPueGvd+/O1bhpKjWgbtqVUJPpm
	U+W3dFS1ThGXMB52vmpOGfYtOCUG5XHB7RUTzIXGh84/ZaqqXqtPtrEYDb0omqAPhJnb
	xBn/v+l4SVnqdSRXs6BhyF4pDiOvURbJhtY+Biovr69v7uQ0QU4NgmeYiMpUVjwCOBCm
	wzZQ==
X-Gm-Message-State: AIkVDXIN+4Vlc41XveaXloqXzUnHHJAKfvox0XV8iwXuvl4+oUUg2wZQo4wXv4MS/4CVmk7tYQSWbwgzAu3NVQ==
X-Received: by 10.223.164.151 with SMTP id g23mr7790890wrb.86.1484834134418;
	Thu, 19 Jan 2017 05:55:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.157.230 with HTTP; Thu, 19 Jan 2017 05:55:33 -0800 (PST)
In-Reply-To: <79b41a93-ab66-cafe-69e4-4bbad827cb26@mlbassoc.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<CAJTo0Lb_vK5H7xNArruXy_vJSg4Hunut0O615LcaDF-dJM-t5w@mail.gmail.com>
	<79b41a93-ab66-cafe-69e4-4bbad827cb26@mlbassoc.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Thu, 19 Jan 2017 21:55:33 +0800
Message-ID: <CAFLEztRa6rDCz-3P74Jd6wnETBarOBKxKvn1sCu93ugj+bjHiQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 13:55:39 -0000
Content-Type: text/plain; charset=UTF-8

Sorry for sending without prefix, and make you guys confused.
This series patches is sending for meta-rockchip, not core meta data.

I will resend it and add prefix.

2017-01-19 20:49 GMT+08:00 Gary Thomas <gary@mlbassoc.com>:
> On 2017-01-19 12:30, Burton, Ross wrote:
>>
>> (CCing the layer maintainers as listed in the README to ensure this gets
>> noticed)
>>
>
> Shouldn't this have [meta-rockchip] (or some such) in the subject? - it's
> certainly
> not OE-core or even Poky AFAICT
>
>>
>> On 19 January 2017 at 10:09, Jacob Chen <jacob-chen@iotwrt.com
>> <mailto:jacob-chen@iotwrt.com>> wrote:
>>
>>     This series of patches add below features, will add more supports in
>> the future(medias, more chips).
>>
>>     1. rockchip 4.4 kernel
>>
>>     Rockchip 4.4 kernel is currently the latest version of the rockchip
>> offical kernel, will be an upstream tracking branch.
>>     We regularly release the kernel through github. It support all
>> rockchip 64-bit chips and a few 32-bit chips.
>>
>>     2. rockchip next-dev U-boot
>>
>>     Rockchip next-dev U-boot is the next generation of rockchip u-boot,
>> will also be an upstream tracking branch.
>>     At present, this branch is just a rebased upstream u-boot.
>>
>>     3. graphics
>>
>>     We have plans for the acceleration in wayland, x11 in the rockchip
>> platform, but in this series of patches, we only
>>     include the mali bianry support.
>>
>>     4. rockchip-next-image
>>
>>     Being different from the previous rk-u-boot which use parameter,
>> next-dev u-boot use gpt partition, so it needs to
>>     generate a different image.
>>
>>
>>     Jacob Chen (7):
>>       recipes-kernel: linux-rockchip: Add new recipe for 4.4
>>       machine: Add machine file for the rk3288 linux Boards
>>       machine: firefly: use linux-rockchip by default
>>       recipes-graphics: Add support for mali-userspace
>>       recipes-bsp: add u-boot-rockchip support
>>       rk3288.inc: add some variables
>>       rockchip-next-image: introduce image for rockchip next-dev u-boot
>>
>>      classes/rockchip-next-image.bbclass                | 130
>> +++++++++++++++++++++
>>      conf/machine/evb-rk3288.conf                       |  12 ++
>>      conf/machine/fennec-rk3288.conf                    |  12 ++
>>      conf/machine/firefly-rk3288.conf                   |   4 +
>>      conf/machine/include/rk-linux.inc                  |  20 ++++
>>      conf/machine/include/rk3288.inc                    |  10 +-
>>      conf/machine/tinker-rk3288.conf                    |  13 +++
>>      recipes-bsp/u-boot/u-boot-rockchip_next.bb
>> <http://u-boot-rockchip_next.bb>         |  17 +++
>>      recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
>>      .../mali-userspace/mali-userspace_t76x.bb
>> <http://mali-userspace_t76x.bb>          |  18 +++
>>      recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
>>      recipes-kernel/linux/linux-rockchip_4.4.bb
>> <http://linux-rockchip_4.4.bb>         |  20 ++++
>>      12 files changed, 321 insertions(+), 1 deletion(-)
>>      create mode 100644 classes/rockchip-next-image.bbclass
>>      create mode 100644 conf/machine/evb-rk3288.conf
>>      create mode 100644 conf/machine/fennec-rk3288.conf
>>      create mode 100644 conf/machine/include/rk-linux.inc
>>      create mode 100644 conf/machine/tinker-rk3288.conf
>>      create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>> <http://u-boot-rockchip_next.bb>
>>      create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>>      create mode 100644
>> recipes-graphics/mali-userspace/mali-userspace_t76x.bb
>> <http://mali-userspace_t76x.bb>
>>      create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>>      create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb
>> <http://linux-rockchip_4.4.bb>
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

