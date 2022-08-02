Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21270C00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 18:34:54 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.10113.1659465290667029114
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 11:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=OUJyPXXk;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id DE06A20003
	for <yocto@lists.yoctoproject.org>; Tue,  2 Aug 2022 18:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1659465288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=j3jaBfgLE3NCz8Nf1PZlt3V0bDGWv6yFLe69uryy5sw=;
	b=OUJyPXXkFRwGCY8zrTHhTp1akRAPnd00ModbvdaXjcmYvYTwn4lvmOXQ/rIFPbmFAoMLP8
	/jcdZmj8x6w6KLebBjJihk2ymMGaZ+6uGaTzmQTy3dh+yzg5tTsLT30T1ekrzC1JgwYpuF
	ETjh0VeTSW60F6M31xoypkPKD4X8QhmoUYatU3+4ppJfyxl1n3/sbLXuvUCOhWSJL+OBl+
	CBgX1sY6VHsWe1dqJh5vMIvRjiNG1vMLwvamoEfvcVDUglX/zuW8mnaCwnIKhKjx+GFGM9
	npf5KghqdxP5xRrhP7hjaqWx/lL2wFddQwYdivL6QrPDi/MOfHcvHlp0BJjL/w==
Message-ID: <08610b49-b9db-3cd9-93f3-552657b17f58@bootlin.com>
Date: Tue, 2 Aug 2022 20:34:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Videos from Yocto talks at Embedded Linux Conference NA
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 18:34:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57752

Greetings

5 videos from Yocto Project talks at the Embedded Linux Conference North 
America are now available on YouTube:

BoF: The Yocto Project and OpenEmbedded Organization - Philip Balister, 
OpenSDR: https://youtu.be/Upvyb6VlICk

Configuring and Building a Heterogenous System Using the Yocto Project - 
Mark Hatle, AMD: https://youtu.be/SSFAp4LS6hs

Lessons Learned: Migrating a Production Platform to Yocto - Mitch 
Gaines, Farmblox: https://youtu.be/2mXxhlNM0_Q

Software Bill of Materials and Supply Chain with the Yocto Project - 
Joshua Watt, Garmin: https://youtu.be/6zms_qGmVqg

Yocto Project Autobuilders and the SWAT Team - Alexandre Belloni, 
Bootlin: https://youtu.be/SLHV9HbxKcM

For quick sharing, these videos are available on a special playlist: 
https://www.youtube.com/playlist?list=PL9E8231JvrhKff6RuVXJ8qlluqS4xG_9c

Please spread the news through social media. Feel free to reuse my own 
posts:
https://fosstodon.org/@MichaelOpdenacker/108754686397298056
https://www.linkedin.com/posts/michaelopdenacker_bof-the-yocto-project-and-openembedded-organization-activity-6960297794007904258-7eaB
https://twitter.com/mopdenacker/status/1554533737643159552

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


