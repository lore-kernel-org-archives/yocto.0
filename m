Return-Path: <simon@rogue-research.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 372CEC433F5
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 19:22:20 +0000 (UTC)
Received: from mail.rogue-research.com (mail.rogue-research.com
 [207.115.102.146])
 by mx.groups.io with SMTP id smtpd.web09.1474.1633634538355225782
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 12:22:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: rogue-research.com, ip: 207.115.102.146,
 mailfrom: simon@rogue-research.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 867BEA648CDF
	for <yocto@lists.yoctoproject.org>; Thu,  7 Oct 2021 15:22:16 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KngDeQXpdQr2 for <yocto@lists.yoctoproject.org>;
	Thu,  7 Oct 2021 15:22:14 -0400 (EDT)
Received: from webmail.rogue-research.com (sedna.rogue-research.com
 [10.29.19.74])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 3F9CFA648CCD
	for <yocto@lists.yoctoproject.org>; Thu,  7 Oct 2021 15:22:14 -0400 (EDT)
MIME-Version: 1.0
Date: Thu, 07 Oct 2021 15:20:25 -0400
From: simon <simon@rogue-research.com>
To: yocto@lists.yoctoproject.org
Subject: booting from nvme SSD
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <d862398ea2f39cf5b9bb08ce801282d7@rogue-research.com>
X-Sender: simon@rogue-research.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 19:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54988

Hi everyone,

I'm currently trying to move from an m.2 SATA SSD to an m.2 nvme SSD for 
our project, without success.
I'm using an Intel NUC7 board that has an m.2 slot which should support 
(from the datasheet) both SATA and nvme SSD.

I'm able to see the grub menu from the nvme drive but when I try to boot 
to a partition I get stuck on a black screen.
Which makes me believe that the bios is able to access and read the nvme 
SSD (or at least the boot partition)
I can't figure out if I'm missing a driver or if I need something 
specific in our wks file to support nvme SSD

I have tested the nvme SSD with an external m.2 to USB adaptor to verify 
that it's working properly

I would like to know if there's anything I should look into.

I'm currently on warrior but I believe i had a similar issue with 
dunfell as well...


Smon


