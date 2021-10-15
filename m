Return-Path: <patrick.boettcher@posteo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95D7C433FE
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 20:03:57 +0000 (UTC)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by mx.groups.io with SMTP id smtpd.web12.2340.1634328236026347925
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Oct 2021 13:03:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@posteo.de header.s=2017 header.b=Ut9kVkBM;
 spf=pass (domain: posteo.de, ip: 185.67.36.65,
 mailfrom: patrick.boettcher@posteo.de)
Received: from submission (posteo.de [89.146.220.130])
	by mout01.posteo.de (Postfix) with ESMTPS id 49C3224002A
	for <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 22:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1634328234; bh=Rc70Osfnnkj/fyW7BvDnmK761TlbhUxc/kIEzAsioyw=;
	h=Date:From:To:Subject:From;
	b=Ut9kVkBMolw+dLdRWct9TYr6okdRPfZRaw+Q5VZBBiFr+dPfUzoK92vgqxdSURBd5
	 bDn06rUuUGQI94DM8FHpAPuUeByHUh/zduwsNxKXvY/Gh5Q/Q2Gj2mJvcUVe4lxePy
	 +eoShOjqq6+chHyxUV1o5Rd6h8JAyUp3CBCcB2XSVAnJUxXlTl11N8uNJU+n1Q4qWX
	 SSyyHy8duG+77aMLhRE7TRwxgD42pvZTr7kcIKtkgujx7gnjVmDy3T+C2n/DJ+Lg6a
	 txSdq/yX3gLtf4GsumNKmISubupBgsRxKk7MOm3I57Nd3LXO0tYIWoIWninl2K503Y
	 zqxlpAdFaKwOg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4HWHK53RW4z6tmF;
	Fri, 15 Oct 2021 22:03:53 +0200 (CEST)
Date: Fri, 15 Oct 2021 20:03:52 +0000
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: yocto@lists.yoctoproject.org, Christophe Blaess <Christophe@Blaess.fr>
Subject: Dunfell: problem with kernel-module install and libkmod.so
Message-ID: <20211015220352.2c4becd1@yaise-pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 20:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55086

Hi list,

I'm facing an issue with a BSP I created using dunfell (up-to-date on
poky and oe). I'm using a stable kernel and u-boot 2021.07 from denx's
mainline-stable-layer.

I stripped down my machine.conf and basically the boot is working fine.
Was working fine.

When finally I created a functional defconfig (one which didn't strip
down the kernel next to nothing - thanks to KCONFIG_MODE="alldefconfig"
). I started to create fragments to remove unused parts.

The very first fragment I created was leading to rootfs which crashed
at the moment when /sbin/init was invoked, with the strangest errors
I've ever seen:

  /sbin/init: error while loading shared libraries: libkmod.so.2:
  cannot open shared object file: No such file or directory

Of course libkmod.so.2 (and its target) is present.

Then I realized that no modules where installed in the rootfs. (modules
are there if I don't have the fragment)

So I added kernel-modules to IMAGE_INSTALL:append .

The modules appeared, but the panic still occurred.

What can I do to understand what's going on? I diff'ed the rootfs, the
only difference I could was in ldconfig's aux-cache.

Thanks for any help in advance,
--
Patrick.




