Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 056ABC433EF
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 09:51:46 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.8951.1651744305172364025
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 02:51:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=GDJj7Bh+;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 67DD8BD1C8;
	Thu,  5 May 2022 09:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 67DD8BD1C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651744303;
	bh=Yb7ASprBlHWW08kq+kCaWLbGVDZpm5y0wNzsH3w7EsY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GDJj7Bh+9dh24bwNxeegNoxgbLi2UHN68OIHFHsom+eh/rkai9rcGFetWrdR50/B/
	 reoInPu9gCFxluuHqEGJ5mkSPrcqbfmjOupmMOjBa1A2YOeH3sPusZ/BkI4Eaf7mf5
	 dXuk20Yr9xlmvtbL1x/QGqC80eTXYWlg7RHc0plwJAzO4k4t7CS+mroFN1zWsniZgi
	 qeKerQw4+63CNNyiqL0UksuYzLoiHZEB1SC/dxQ8ZO7lSPU6gtUlaDkYBXLc71G03K
	 PDkgu+fFV1L+EvuBSvBpToreJR/dcxK/YUMAumuHZ1gwgIX7oqKOfd6r1FCFvvlrWw
	 H5Bjs0NJ+yEFg==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9X4kqZbK3-D; Thu,  5 May 2022 09:51:39 +0000 (UTC)
Date: Thu, 05 May 2022 05:51:39 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 991BDBD027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651744299;
	bh=Yb7ASprBlHWW08kq+kCaWLbGVDZpm5y0wNzsH3w7EsY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MkSsnflGZR+WaapMhV7yZ2G7aqPJTd+EUCd7xCdTcDfQjph9KmjSqeWiFXKOLt0HZ
	 DPxvOZx7Uo+JFOquaV0zBxCkyiA4khmMvuiXj0AlUIOjRh9ZNixItmSlJRj4rxW/bj
	 wePNix9bgsdFuVOZYAgL9ZisJbzX4YlYEsluvOqi4mlbhnwQP2buMk9WU2eOQ4FqJC
	 uk2RgZv0L4u1sNoCvh538X0CzgB8v9BVgNSA3B73hOlgaDWRnjIahjZQj0IEsFEoFl
	 RuxrwuGjjlYvJpDvDofRkx6Z21d+Cr3/aIPQqtnNxYjE4ArysZAgZ8Nb91JS4mdTVG
	 d/wd7RinZ+1nw==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: michael.opdenacker@bootlin.com, Zoran Stojsavljevic
 <zoran.stojsavljevic@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] OE Linux & board-support-package
In-Reply-To: 
 <CAEt6Nwq8BbS2jTzm0vyghttXB9u0FKvVGto20u-ko8HE2Kx1iw@mail.gmail.com>
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
 <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
 <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
 <0f4b601e521de98b00927cec77512354@vivaldi.net>
 <CAEt6Nwq8BbS2jTzm0vyghttXB9u0FKvVGto20u-ko8HE2Kx1iw@mail.gmail.com>
Message-ID: <4af379afe365bfeb36bd65a481008390@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 09:51:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57003

OK, let me try this:

With other embedded OS's, the hardware specifics that are in the BSP are 
in the device trees in Linux. I assume the BSP's for OE Linux are rather 
simple?



On 2022-05-05 04:47, Josef Holzmayr wrote:
> Howdy!
> 
> Am Do., 5. Mai 2022 um 10:43 Uhr schrieb jchludzinski via
> lists.yoctoproject.org
> <jchludzinski=vivaldi.net@lists.yoctoproject.org>:
>> 
>> OK, let's go with that.
>> 
>> I've watched the "Live Coding with Yocto Project #1: download and 
>> first
>> build" youtube video. Where is the BSP built in this procedure?
> 
> The BSP that is implicitly used in that video is the generic QEMU one,
> which comes included with poky. Technically speaking, it lives in
> https://git.yoctoproject.org/poky/tree/meta/conf/machine and
> https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/linux/linux-yocto_5.15.bb
> 
> A BSP can be many things, and this one is a rather small one, as
> booting into and running linux on QEMU doesn't need patching and all
> that, so in that case it comes pretty close to the perfect world that
> Michael mentioned.
> 
> Greetz,
> Josef (who did that video, actually)
> 
>> 
>> 
>> 
>> On 2022-05-05 03:16, Michael Opdenacker via lists.yoctoproject.org
>> wrote:
>> > On 5/5/22 08:39, jchludzinski via lists.yoctoproject.org wrote:
>> >> A board-support-package (BSP) is software that provides a layer of
>> >> abstraction from the physical board specifics for the host embedded OS
>> >> (e.g., VXworks).
>> >>
>> >> I believe the device tree files (*.dts, *dtsi) in OE Linux provide the
>> >> same function. It allows to OE kernel code to be independent of device
>> >> specifics.
>> >
>> >
>> > The Device Tree files are just descriptions of the hardware. In a
>> > perfect world, you could indeed use the same mainline kernel to support
>> > all possible devices. However, that kernel would be unnecessarily big
>> > for your custom system. You most probably want to customize its
>> > configuration, and may also need custom kernel drivers and patches.
>> > There's also the need for a bootloader compiled for your platform.
>> >
>> > That's why we need BSPs :-)
>> >
>> > Cheers,
>> > Michael.
>> >
>> >
>> >
>> 
>> 
>> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57002): 
> https://lists.yoctoproject.org/g/yocto/message/57002
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]
> -=-=-=-=-=-=-=-=-=-=-=-

