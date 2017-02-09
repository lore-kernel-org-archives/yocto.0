Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5348E009CD; Thu,  9 Feb 2017 00:20:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 314F6E006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:20:06 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id 11so21352264qkl.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 00:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=vL4p/xV2lwIfnBzfLRKM750zjPOFzwpoQkr0hRfGs9I=;
	b=Qm+snEcVUdl2KzhFRhXp4xmCKOxNDOjsHqHB9jZhYd2fa2h4NlfAbIzfdGzGzEnUoo
	UG/j5tOqGQ27NPUx0E1tkq4yBzaHhQUCPvbRUFepTDKZiGDa8QvUO2kg+3dW56QrlKks
	6/e34r/0q0QzyTZ5cO8L5eYbQJ4TMtOHIKc5u1qAEUE6sGPJ2ESSArYymiz2bvUf3ldQ
	qG9ufVIWKkhEaEIFq/mtBFMiO59z24tzdew1lgAvfpcghYPwoCE4WNh0+MProOrJozam
	JbGV166vnUGGZcejOxkqtrtwvz9gePw++rpN8zSfoXmm8P+KX7nUva9Vyj6BcUqL0+gt
	47ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=vL4p/xV2lwIfnBzfLRKM750zjPOFzwpoQkr0hRfGs9I=;
	b=W6MHq7tb3aZu+jFPHHEZP6BoZfw0w3EuisaUIaWA2tojuuauUpw7AU/SBCtFii3/9V
	R2n41mnYIF/pD2oy8Jr5ka2DO7CSeuFP+itKHKhUeP/TIM+ZoXIIWWSezARyBeZybsP0
	ZHAeCPx6hF8qb/gLZo4lt+GVS/x3b3cnW1OfHIqIHphkfKZLHJbLadfj4kYJKTnbTg5s
	eOOsNV8E5M9s4HU6srA8nOCPSps2yusSUGLQYQ9KRGKrwuSYY+zl5DXPjGRWLz8Foe6V
	5k2ADf8R/r4BhGlq80GG7P1mSzf/JPcTi9IF4Ysh+AcVE3keQgU79Z5NarfMXBDDz71z
	o8fg==
X-Gm-Message-State: AMke39lOxHVwQNi6gYKk/O8QlwujZhzYltwxuBzySODmLY/Nc0anpwRFMKkaeHL+h6E+k38dglidenoD//TjzQ==
X-Received: by 10.55.177.133 with SMTP id a127mr1596746qkf.301.1486628406088; 
	Thu, 09 Feb 2017 00:20:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.71 with HTTP; Thu, 9 Feb 2017 00:20:05 -0800 (PST)
In-Reply-To: <33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Thu, 9 Feb 2017 16:20:05 +0800
Message-ID: <CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
To: Jacob Chen <jacob2.chen@rock-chips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Eddie Cai <eddie.cai@rock-chips.com>, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Thu, 09 Feb 2017 08:20:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HI

2017-02-09 14:49 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:
> Hi
>
>
> Trevor Woerner wrote on 2017=E5=B9=B401=E6=9C=8828=E6=97=A5 03:41:
>
> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com>
> wrote:
>
> Could you:
> - Make one patch per new machine file and not one patch for all new added
> machine
>
> Agreed.
>
> Are all of these machines actual devices? The evb one doesn't sound real.
>
> Are all of these machines released and available for purchase? I've
> heard of the tinkerboard (although I can't seem to find one I can
> actually buy) but I haven't heard of the fennec.
>
>
> I think i should only leave tinker board here.
> We have a lot of boards which are not open to the public,  it's not suita=
ble
> to push them to the community.
>
> - Add a clear @DESCRIPTION for each board, see an example here:
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machin=
e/firefly-rk3288.conf
> - Write a clear and an understandable commit message for your new patches
>
> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
> either its name and what it contains.
>
> First off, I think it's really great to see people contributing to
> meta-rockchip! :-)
>
> This entire set of patches seems to be adding "official" support for
> the rockchip devices; in other words, these recipes will help you to
> create builds that use the official rockchip sources. That is great.
> But I think a good BSP gives a user all the possibilities but then
> leaves the final decision up to them.
>
>
> : ) That's the reason why we try to push patches to here, we want that
> "meta-rockchip" can
> build between vendor old kernel/new kernel/old u-boot/new u-boot and
> mainline kernel/u-boot
>  well.  Community people might help develop mainline things.
>
> So I agree with Romain, I think the name could use more work. It would
> be nice if this set of patches included something in the name that let
> the user know these build from official sources. Then the user could
> decide whether they want to use the official rockchip sources, or
> whether they want to build from upstream. So I'm not opposed to the
> idea of adding recipes for official sources, I'd like like to see them
> added in a way that leaves the decision with the user.
>
>
>
> I added rk-linux.inc because i need a place to set up verndor-BSP default
> settings.
> I want that the user can choose various combinations by change the includ=
e
> file in machine file.
> e.g:
>     rk-linux.inc for linux-rockchip 4.4 + u-boot-rockchip-nex-dev
>     rk-linux.inc + rk-uboot.inc for linux-rockchip + u-boot-rockchip
>
>     rk-linux.inc for linux-mainline + u-boot-mainline
>
> BTW, which name you think is better?
What about follow raspberrypi?
=E2=94=9C=E2=94=80=E2=94=80 include
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-base.inc
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-providers.inc
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-settings.inc
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-versions.inc
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 tune-arm1176jzf-s.inc
=E2=94=9C=E2=94=80=E2=94=80 raspberrypi0.conf
=E2=94=9C=E2=94=80=E2=94=80 raspberrypi2.conf
=E2=94=9C=E2=94=80=E2=94=80 raspberrypi3.conf
=E2=94=94=E2=94=80=E2=94=80 raspberrypi.conf


>
>
> That's it for now.
> Thanks for your patches
>
> +1 :-)
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

