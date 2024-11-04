Return-Path: <email@matthias-proske.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CBD1BDE3
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 18:42:36 +0000 (UTC)
Received: from mxout2.routing.net (mxout2.routing.net [134.0.28.12])
 by mx.groups.io with SMTP id smtpd.web11.3327.1730745747431370554
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 10:42:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mailerdienst.de header.s=20200217 header.b=MHuS59Tf;
 spf=pass (domain: matthias-proske.de, ip: 134.0.28.12, mailfrom: email@matthias-proske.de)
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
	by mxout2.routing.net (Postfix) with ESMTP id 1E78B6037B;
	Mon,  4 Nov 2024 18:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1730745745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=muompFYm7mOad/cyUVmpnuuhkrpxyeyAhCHDXy69W/4=;
	b=MHuS59TfFffzkghkmGRoOtf+Wi7Kk2FaDcq0hS076hCfAgxOxUnjWBuzhRKX45NAko9SmB
	QPuJbDrCw2daAy6cOAMpotNoTzygemTmU8FtbNl47K+peC8wrrtzIfr4Y5UPpJtwMwPU+4
	iyLMS/xBzeSWWxFztpNA0B35/2ryMX0=
Received: from [192.168.178.35] (unknown [185.181.131.198])
	by mxbox3.masterlogin.de (Postfix) with ESMTPSA id B2E1D360077;
	Mon,  4 Nov 2024 18:42:24 +0000 (UTC)
Message-ID: <b4f39d09-ef7a-4924-ac91-6b476564c0a2@matthias-proske.de>
Date: Mon, 4 Nov 2024 19:42:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Set global variable based on recipes versions
To: yocto@lists.yoctoproject.org, sidali.teir@cysec.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj_z1gYHeJ80=-_JTZTygpxBCc+QROKoDdZFGD7KyC-eAg@mail.gmail.com>
 <10699.1730743529722789256@lists.yoctoproject.org>
Content-Language: en-US
From: Matthias Proske <email@matthias-proske.de>
In-Reply-To: <10699.1730743529722789256@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mail-ID: d82adbe6-f114-4195-be74-1c86045fb47a
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 18:42:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64214

Hi,

perhaps you can explain a bit more what you really want to achieve.
You wrote you want to have it in a global variable, but to what purpose:

Do you need to use it one recipe?
My guess is that you don't know how many versions of pkg-* you have 
(three in your example) and you maybe want to do something like

IMAGE_INSTALL:append = " ${variable_containing_all_my_pkg}"

(Not sure if that would work, but you also wrote you are installing 
already).

If you just need to have the number of installed packages pkg-* you 
could just parse the build folder *after* you finished the Yocto build, 
but that would be outside the bitbake process...

