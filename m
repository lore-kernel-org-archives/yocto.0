Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8084FC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 09:51:14 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.40556.1702893063571253704
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 01:51:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=etAFCs1e;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 235281C0013;
	Mon, 18 Dec 2023 09:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702893061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OSO5rxG/9SKNXzhm40gyxeq71bS6CevCvJJ7G7bKLCk=;
	b=etAFCs1eUGl7eDHWj3jhcICGOM/267zriVzG/gteA0fbC6t0ZwJFmSdw99A7xDDuQ16Y4i
	HSY7A4ri806IaaK1M8hUXKQ77IMjBnuMz1WvkJ5mflv88QzRQdIuIY08uQeVf6FETCIEjC
	eJzASs9axEFaSkUzMBI1vz9PvieYkIW3H5SuXcBdM1cLQpuPpLLTNP9jiNKclMEljw6Q31
	qLQhHa7GDir/w9NPI5MA6NkrrTLPEaMuJr56KT0Ge6uIQbodChi2Nz2TbbRp51O/Dt5DQB
	dymjF/jq2puWRHTtDH/Bpkf+xxU73tLlCr/TQDSUqfO2voeNqzKrQ0YXn0hgpg==
Message-ID: <c2e36ad1-b1f5-4f7b-8e6f-ec984d18ea74@bootlin.com>
Date: Mon, 18 Dec 2023 10:51:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 1/1] scripts:
 send_qa_email: add dry-run mode
Content-Language: en-US
To: yocto@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <17A1E341CF1F1EDC.26427@lists.yoctoproject.org>
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
In-Reply-To: <17A1E341CF1F1EDC.26427@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 09:51:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61958

On 12/18/23 10:33, Alexis Lothoré via lists.yoctoproject.org wrote:
> From: Alexis Lothoré <alexis.lothore@bootlin.com>
> 
> Add a dry-run mode to be able to run send_qa_email locally but disabling
> any output (no commit or tag pushed upstream, no mail sent). This eases
> all release-related debugging. This dry-run mode is enabled by the
> following changes:
> - add a -d/--dry-run parameter to send_qa_email
> - update test_results url to allow cloning test_results repository without
>   having its public key registered upstream
> - skip test results storage
> - do not erase test results temp dir
> - skip email sending (but still generate it)

I somehow messed-up my patch formatting and signed-off-by got lost. Please
discard this version, I will send a v2.

Kind regards,

Alexis

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


