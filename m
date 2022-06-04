Return-Path: <zach@mandolincreek.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ED95C43334
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 21:27:03 +0000 (UTC)
Received: from abbott.mandolincreekfarm.com (abbott.mandolincreekfarm.com
 [192.173.156.27])
 by mx.groups.io with SMTP id smtpd.web12.14670.1654378017685800327
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 14:26:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: mandolincreek.net, ip: 192.173.156.27,
 mailfrom: zach@mandolincreek.net)
Received: from [10.0.0.150] (fluffy.mandolincreekfarm.com [192.173.156.26])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	by abbott.mandolincreekfarm.com (Postfix) with ESMTPSA id AF03DE20416;
	Sat,  4 Jun 2022 14:26:55 -0700 (PDT)
Message-ID: <3cc4f625-043d-a041-1e54-3a95db2a3d4b@mandolincreek.net>
Date: Sat, 4 Jun 2022 14:26:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH 4/5] arpwatch: update to 3.3
Content-Language: en-US
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20220604190230.3700475-1-akuster808@gmail.com>
 <20220604190230.3700475-4-akuster808@gmail.com>
From: Zach Welch <zach@mandolincreek.net>
Organization: Mandolin Creek Systems
In-Reply-To: <20220604190230.3700475-4-akuster808@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 21:27:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57264

On 6/4/22 12:02, Armin Kuster wrote:
> not compatible with musl
...
> @@ -82,5 +82,6 @@ FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
>   
>   COMPATIBLE_HOST:riscv32 = "null"
>   COMPATIBLE_HOST:riscv64 = "null"
> +OMPATIBLE_HOST:libc-musl = "null"

typo?

