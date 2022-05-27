Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EE6C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 11:57:58 +0000 (UTC)
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net
 [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web09.2738.1653652675525215437
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 04:57:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=mICLxCQN;
 spf=pass (domain: bootlin.com, ip: 217.70.178.232,
 mailfrom: luca.ceresoli@bootlin.com)
Received: (Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0A301200006;
	Fri, 27 May 2022 11:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1653652673;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=u9gLj3YBr7SuqiJLxeP6qIYC98WTlOVTE5cNV7kAK/Y=;
	b=mICLxCQN92OahwADkaQUIX4ckNyLmomuxWGFsN0DoSTZ9lw1oaXzId6KRnRmA/Ze3h4iuw
	0LjgiK4oTvY6WnxrkCX+4EXWQoFUmHqziiySEjNVvzGBwtelCReihqQdQb/X9eVYd4S8E1
	7wY42get7AIDfLtl+2QDgtfIUJls3+5daw0LAealzzO9ZtGqlNUmnZgVnoj2gVe8WKOSGb
	TnT35rposEIPlDiNCMn3vWtC8YSR+REf8GgmdMmMSQmmiL56qqsyNIQGMIWX1bsx4ZlZzG
	RMWn0tyb3EThqWczD1VOccjP2/g3wJmm4cgeFTr5T9kknghEI0BfzjaxrY7qTQ==
Date: Fri, 27 May 2022 13:57:51 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: automotive-discussions@lists.linuxfoundation.org
Cc: Jan-Simon Moeller <jsmoeller@linuxfoundation.org>, "Scott Murray"
 <scott.murray@konsulko.com>, Richard Purdie
 <richard.purdie@linuxfoundation.org>, Marius Vlad
 <marius.vlad@collabora.com>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Subject: meta-egl failure: Nothing RPROVIDES polkit
Message-ID: <20220527135751.54a29f24@melee>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 11:57:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57200

Hello,

we are experiencing build failures of the meta-agl build on the Yocto
autobuilders with this error message:

ERROR: Nothing RPROVIDES 'polkit' (but /home/pokybuild/yocto-worker/meta-agl-core/build/meta-agl/meta-agl-core/recipes-platform/packagegroups/packagegroup-agl-graphical-weston.bb RDEPENDS on or otherwise requires it)

Here are a few logs:

https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1239/steps/12/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1240/steps/13/logs/stdio
https://autobuilder.yoctoproject.org/typhoon/#/builders/120/builds/1241/steps/12/logs/stdio

The error started showing up today, and given the error message it is
possibly related with this commit on meta-agl master:

  packagegroup-agl-graphical-weston: Add polkit to RDEPENDS

https://git.automotivelinux.org/AGL/meta-agl/commit/?id=a8c060f736a66dde56cc2ba1803d35531c62d610

Do you think the above error can be caused by this commit?

Best regards.
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

