Return-Path: <simon@rogue-research.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7606C43217
	for <webhook@archiver.kernel.org>; Fri,  3 Dec 2021 22:13:07 +0000 (UTC)
Received: from mail.rogue-research.com (mail.rogue-research.com
 [207.115.102.146])
 by mx.groups.io with SMTP id smtpd.web09.18022.1638569586050658143
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Dec 2021 14:13:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: rogue-research.com, ip: 207.115.102.146,
 mailfrom: simon@rogue-research.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 5CB69AC33A2B
	for <yocto@lists.yoctoproject.org>; Fri,  3 Dec 2021 17:13:04 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6V6cWiMT1mNP for <yocto@lists.yoctoproject.org>;
	Fri,  3 Dec 2021 17:13:03 -0500 (EST)
Received: from webmail.rogue-research.com (sedna.rogue-research.com
 [10.29.19.74])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 95F52AC33A1E
	for <yocto@lists.yoctoproject.org>; Fri,  3 Dec 2021 17:13:03 -0500 (EST)
MIME-Version: 1.0
Date: Fri, 03 Dec 2021 17:12:32 -0500
From: simon <simon@rogue-research.com>
To: yocto@lists.yoctoproject.org
Subject: USB display
User-Agent: Roundcube Webmail/1.4.12
Message-ID: <37900958f6c0d00b934a70c8b8624ed3@rogue-research.com>
X-Sender: simon@rogue-research.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Dec 2021 22:13:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55480

Hello, I'm having some issue moving from an HDMI display to a USB 
display.

I figure out that I needed to enable these parameter in the kernel to 
use the USB monitor

CONFIG_DRM_UDL=y
CONFIG_FB_UDL=y

With those I'm able to see the terminal and login

However I'm still struggling and confused on how to get my GUI to show 
up with startx.

I don't know if I still need to install the displaylink driver since 
I've enabled UDL or if I need to set something with xorg to let him know 
to use the USB display.

I've tried to install the displaylink driver manually but I'm missing 
the DKMS component, not entirely sure what that is and how I would 
install this (or if I should).

I tried to follow some guide about displaylink with xorg and replacing 
it with udl and udlfb without success.

Thanks for your help

Simon

