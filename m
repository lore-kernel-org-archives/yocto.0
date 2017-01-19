Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92B71E00B6C; Thu, 19 Jan 2017 06:11:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18768E00ACE
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:11:45 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id r126so12294257wmr.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FN74GIM+ff0jl0xbUVjGbjpcAR88UfIVWl9X5c/ji+o=;
	b=SPkARmJ9esW4/EH8EyNpRGu5vHmu2WB8HMDIK/7gP3xNvXRPeYtMVgHuAw7yyQ8GTl
	2YuQ4PIyo1Ulim4HJSt0tkbrANrQll23YvKaLQSo9J7hjjva3NNNJnOG60GC64XBg8oR
	8LbaImU6SVgsiLGsQXjp/hdn1U0h9BuDc1JQGy0VHGk5pg1G+XnAakZS/bAL1rfWwPxz
	SjLLOCMBA6Ke74pMP/rLpjmNlfcqjK6EurcCnynRpH0/hnIDQtlMKFSFMGE8rmTSsufT
	14saKudgQu0tHtgAsykecgewVZO9xxcTfA4vZA9FCP6lqwwnO7ALll8LTX4/UoaUJm0h
	TXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FN74GIM+ff0jl0xbUVjGbjpcAR88UfIVWl9X5c/ji+o=;
	b=qeGyZlN4ViCAQ6wePQTw9C/eGyKmKeQauPu2VLjTXXFCC3Oc1wQRBfE0PqlfebNWKI
	5Qg8QLhopWo65A9IXHSh7vYkKVBNgRzHGQODJ38zv1GGRM3tvsMKGvuKomdrXSLLvI8c
	PU+7E60kGSgi/7euFTa7QvqGrr0tKMqu/KuNnlppFR4qgsDUEECDhm9QKh0ZyZvx26Vs
	NXB4El/Yl5JM8t+cFzGRq0GLpS85RxCGIlZPk3d+3AD8x/BVrfrGjTZDUnBKbE5G3iKU
	WM3glv0rBADyTMTvZRxNRH5elixAbm150k+3HBUqTrJpAc1R8Mb+y9lQSptsDaBgVbbd
	s3vA==
X-Gm-Message-State: AIkVDXLzzq1M9+55wAqgk9WX4BhQp9uHUoHiKmomlCza3RkmOMIqzIzjiD2I0+2jqyeUIQR2uplQK6ffclICsw==
X-Received: by 10.28.62.204 with SMTP id l195mr16935067wma.88.1484835104403;
	Thu, 19 Jan 2017 06:11:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.157.230 with HTTP; Thu, 19 Jan 2017 06:11:43 -0800 (PST)
In-Reply-To: <CAFLEztRa6rDCz-3P74Jd6wnETBarOBKxKvn1sCu93ugj+bjHiQ@mail.gmail.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<CAJTo0Lb_vK5H7xNArruXy_vJSg4Hunut0O615LcaDF-dJM-t5w@mail.gmail.com>
	<79b41a93-ab66-cafe-69e4-4bbad827cb26@mlbassoc.com>
	<CAFLEztRa6rDCz-3P74Jd6wnETBarOBKxKvn1sCu93ugj+bjHiQ@mail.gmail.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Thu, 19 Jan 2017 22:11:43 +0800
Message-ID: <CAFLEztSDg2Mys9XMgf_WuKpNyye0zfg5ny6oFoAqXsbicrdrjw@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Jan 2017 14:11:49 -0000
Content-Type: text/plain; charset=UTF-8

Sorry for bothring : ).....

2017-01-19 21:55 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:
> Sorry for sending without prefix, and make you guys confused.
> This series patches is sending for meta-rockchip, not core meta data.
>
> I will resend it and add prefix.
>
> 2017-01-19 20:49 GMT+08:00 Gary Thomas <gary@mlbassoc.com>:
>> On 2017-01-19 12:30, Burton, Ross wrote:
>>>
>>> (CCing the layer maintainers as listed in the README to ensure this gets
>>> noticed)
>>>
>>
>> Shouldn't this have [meta-rockchip] (or some such) in the subject? - it's
>> certainly
>> not OE-core or even Poky AFAICT
>>
>>>
>>> On 19 January 2017 at 10:09, Jacob Chen <jacob-chen@iotwrt.com
>>> <mailto:jacob-chen@iotwrt.com>> wrote:
>>>
>>>     This series of patches add below features, will add more supports in
>>> the future(medias, more chips).
>>>
>>>     1. rockchip 4.4 kernel
>>>
>>>     Rockchip 4.4 kernel is currently the latest version of the rockchip
>>> offical kernel, will be an upstream tracking branch.
>>>     We regularly release the kernel through github. It support all
>>> rockchip 64-bit chips and a few 32-bit chips.
>>>
>>>     2. rockchip next-dev U-boot
>>>
>>>     Rockchip next-dev U-boot is the next generation of rockchip u-boot,
>>> will also be an upstream tracking branch.
>>>     At present, this branch is just a rebased upstream u-boot.
>>>
>>>     3. graphics
>>>
>>>     We have plans for the acceleration in wayland, x11 in the rockchip
>>> platform, but in this series of patches, we only
>>>     include the mali bianry support.
>>>
>>>     4. rockchip-next-image
>>>
>>>     Being different from the previous rk-u-boot which use parameter,
>>> next-dev u-boot use gpt partition, so it needs to
>>>     generate a different image.
>>>
>>>
>>>     Jacob Chen (7):
>>>       recipes-kernel: linux-rockchip: Add new recipe for 4.4
>>>       machine: Add machine file for the rk3288 linux Boards
>>>       machine: firefly: use linux-rockchip by default
>>>       recipes-graphics: Add support for mali-userspace
>>>       recipes-bsp: add u-boot-rockchip support
>>>       rk3288.inc: add some variables
>>>       rockchip-next-image: introduce image for rockchip next-dev u-boot
>>>
>>>      classes/rockchip-next-image.bbclass                | 130
>>> +++++++++++++++++++++
>>>      conf/machine/evb-rk3288.conf                       |  12 ++
>>>      conf/machine/fennec-rk3288.conf                    |  12 ++
>>>      conf/machine/firefly-rk3288.conf                   |   4 +
>>>      conf/machine/include/rk-linux.inc                  |  20 ++++
>>>      conf/machine/include/rk3288.inc                    |  10 +-
>>>      conf/machine/tinker-rk3288.conf                    |  13 +++
>>>      recipes-bsp/u-boot/u-boot-rockchip_next.bb
>>> <http://u-boot-rockchip_next.bb>         |  17 +++
>>>      recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
>>>      .../mali-userspace/mali-userspace_t76x.bb
>>> <http://mali-userspace_t76x.bb>          |  18 +++
>>>      recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
>>>      recipes-kernel/linux/linux-rockchip_4.4.bb
>>> <http://linux-rockchip_4.4.bb>         |  20 ++++
>>>      12 files changed, 321 insertions(+), 1 deletion(-)
>>>      create mode 100644 classes/rockchip-next-image.bbclass
>>>      create mode 100644 conf/machine/evb-rk3288.conf
>>>      create mode 100644 conf/machine/fennec-rk3288.conf
>>>      create mode 100644 conf/machine/include/rk-linux.inc
>>>      create mode 100644 conf/machine/tinker-rk3288.conf
>>>      create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>>> <http://u-boot-rockchip_next.bb>
>>>      create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>>>      create mode 100644
>>> recipes-graphics/mali-userspace/mali-userspace_t76x.bb
>>> <http://mali-userspace_t76x.bb>
>>>      create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>>>      create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb
>>> <http://linux-rockchip_4.4.bb>
>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

