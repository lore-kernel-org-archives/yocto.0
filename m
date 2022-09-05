Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 301AFECAAD5
	for <webhook@archiver.kernel.org>; Mon,  5 Sep 2022 16:51:34 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web08.26938.1662396687390546090
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Sep 2022 09:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Mh+uuaol;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6F8E520002;
	Mon,  5 Sep 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662396685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ckuEtuoWwCB+B+Z1qZmAdRa3T6/hJjAz9Y3YHSSA7SI=;
	b=Mh+uuaolVhB5HecX7PSntJTnE77YeQ7Mg7rQAKLUo3wmi9Kc26+M1vlZ4ZzX5199GOYkuC
	MVD6aLj2Jk4G++SFCoHTIHOM4Nxy1v1gQxZFgdEjuDY2ipl82i5YI2KaHwg4x2J6tmRpxG
	O1+809EsSTb2aKcLfVUyC8SAfEVSxVDz6CiDXZE/arAZuu/emhriPCNnVTCzlZrf7OdfoI
	IbVCd6W4ur0/LpFxNYUXNfjL6kRq26eq68knNGgdO37aY5iqVVxht3xbdfJzzXnZB5qgOA
	/waPIC2TMWiH4zLqZXtNhJE2eyk6MgXB3HyZp9YfSKRGlprJYsHp8untFSkJFA==
Message-ID: <5bf26cda-3fee-7233-c7a2-390f0bbd36e4@bootlin.com>
Date: Mon, 5 Sep 2022 18:51:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Cc: "yocto-advocacy@lists.yoctoproject.org"
 <yocto-advocacy@lists.yoctoproject.org>
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Help needed: list of products built with OE / Yocto
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Sep 2022 16:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57979

Greetings

If you are using the Yocto Project to build your products, and are 
allowed to mention it, one way to contribute to the project is to add 
such products to the list that we keep on our Wiki: 
https://wiki.yoctoproject.org/wiki/Project_Users#Products_that_use_the_Yocto_Project

Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


