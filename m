Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF936C4332F
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 08:37:50 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.7483.1672821465444911184
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 00:37:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=gm1 header.b=lborqAOi;
 spf=pass (domain: pbarker.dev, ip: 217.70.183.200, mailfrom: paul@pbarker.dev)
Received: (Authenticated sender: paul@paulbarker.me.uk)
	by mail.gandi.net (Postfix) with ESMTPSA id 680B22000C;
	Wed,  4 Jan 2023 08:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; s=gm1;
	t=1672821462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xeYRAldOwtmzR+AflnBgaynNig2J1EXK+IG84Z/JKaY=;
	b=lborqAOiLSR2mgaKMGr85ejGoFUaPiZkxkPghgC549Mc2+rFNQKjKA4oVJLSqi1TRJ/VwL
	Zyclw4PbUyXqMmzWOnj3xO8g7k+Q9uHjEDdscAIK1j36UjuiFUt53mFPfa13/dvfHEYuRy
	eEJE9YZN3Ij7Va0YAvKGCJUZiteBt5bxUdtC7+6QeIm5mh97Umn4BC8oENRi6qZRzD7V07
	UsXNqKOvFDwewYC0CUb52+dyF5bMR9fcA/Px8LD/7jpZsQ8Yr68caFqmhbsgp4I4yAKyVk
	dq6rvnVz9cEcT+yCGbAfcBgMhZcFtjE4R34v2ZXkQ/u8HgZQaZq2IoSBhiuE4Q==
Message-ID: <53a8df93-9880-0945-b334-020753a1771b@pbarker.dev>
Date: Wed, 4 Jan 2023 08:37:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: yocto@lists.yoctoproject.org,
 Paul Eggleton <paul.eggleton@linux.microsoft.com>,
 Tim Orling <ticotimo@gmail.com>
From: Paul Barker <paul@pbarker.dev>
Subject: Layer index update for meta-linux-mainline
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 08:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58922

Hi folks,

I'm unable to make updates to the meta-linux-mainline layer on the layer
index. It still has an old email address in the maintainer field which I
no longer have access to.

The layer can be seen on the dunfell branch here:
https://layers.openembedded.org/layerindex/branch/dunfell/layer/meta-linux-mainline/

Is it possible to update the layer index so that the current details are 
used?

Repository URL: https://github.com/unnecessary-abstraction/meta-linux-mainline
Maintainer email: paul@pbarker.dev

Thanks,

-- 
Paul Barker

