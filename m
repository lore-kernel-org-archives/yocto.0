Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F406AF013C5
	for <webhook@archiver.kernel.org>; Mon, 16 Mar 2026 07:39:44 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [85.215.152.190])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.45622.1773646774772072140
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 00:39:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benfm.de header.s=2024 header.b=nehE+W/P;
 spf=pass (domain: benfm.de, ip: 85.215.152.190, mailfrom: flix.yocto@benfm.de)
Message-ID: <dd66f7a6-c58a-4b4a-bb80-d6a95d92b4d8@benfm.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2024;
	t=1773646771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=SkVuLQKRQjMPd5FOQTHvThoGmwOdEtY0rRQQ7RQ22jg=;
	b=nehE+W/PG6ENMMehUoE+zHmtEaGVh/NZDYnjYX6dYtg0tOsRCMK7o9qHnPceF8N4UXp8Oe
	y1Dnl+fkv9Bn3WZk5TnAJkD63VTGI8JXojweuVyumgA9DxTax///mEYa7dtt4wp7T5mrOb
	J9GAotZqzdNNdblaU5PnAXjHoujUQHSyqQjwjLXBMFeYdTO64h68SZkAHUe1O9QN/JE9Cs
	l+l08vyiIBa5WzPzZYSE81+Awxh/OZUiasUl5B5xuhn2vbcp+1rgN9W9gJQIXbthLrgyJb
	OnmA5PQ+vSiyMERIM3wN0LYTc4i2hikgkSJpWHEsvJj5eOgnxApQFt5I7ikMeQ==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=flix@benfm.de smtp.mailfrom=flix.yocto@benfm.de
Date: Mon, 16 Mar 2026 08:39:29 +0100
MIME-Version: 1.0
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Felix Mellmann <flix.yocto@benfm.de>
Subject: [scarthgap] DISTRO_VERSION not bumped in 5.0.16 tag
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 07:39:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66330

Hi,

The Yocto 5.0.16 (scarthgap) tagged release (1d54d1) still has 
DISTRO_VERSION set to "5.0.15" in meta-poky/conf/distro/poky.conf.

It looks like the version bump was missed before tagging.


Could this be corrected?

Thanks,

Felix



