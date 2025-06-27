Return-Path: <ashie@clear-code.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F07DC7EE2A
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 23:02:48 +0000 (UTC)
Received: from mail.clear-code.com (mail.clear-code.com [153.126.203.179])
 by mx.groups.io with SMTP id smtpd.web10.135.1751065363130065375
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jun 2025 16:02:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@clear-code.com header.s=default header.b=EO0WkXo4;
 spf=pass (domain: clear-code.com, ip: 153.126.203.179, mailfrom: ashie@clear-code.com)
Received: from [IPV6:2001:268:9818:5bba:b873:a0f:23e8:dcb6] (unknown [IPv6:2001:268:9818:5bba:b873:a0f:23e8:dcb6])
	by mail.clear-code.com (Postfix) with ESMTPSA id 84E8F6CC083
	for <yocto@lists.yoctoproject.org>; Sat, 28 Jun 2025 08:02:39 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.clear-code.com 84E8F6CC083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=clear-code.com;
	s=default; t=1751065359;
	bh=Y1Oq0Py85Mn0/Qyms92SH8+BH98vGati9VIyUcMCBSM=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=EO0WkXo4nvvE0qZA5tueQo/umBs96Mkp4NEQdMjbL1znf68+/SIkUgt7mSPl8UVGD
	 y8YCkhZLN6KkSAV615xe50PfnnqBLeLwMTxH6ijtESx4wjhIgylKJcz86KeB1o6DCg
	 sFcscn8migLfgp7R8TesIa+8QEFTAb8Hp1r+M+x4=
Message-ID: <dab6042d-bdf7-4573-954e-e122059e3c8d@clear-code.com>
Date: Sat, 28 Jun 2025 08:02:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: yocto@lists.yoctoproject.org
References: <68dcffab-ef3f-4643-baab-7b5c8015b7a1@clear-code.com>
 <14094.1751034832062829006@lists.yoctoproject.org>
From: Takuro Ashie <ashie@clear-code.com>
Content-Language: en-US
In-Reply-To: <14094.1751034832062829006@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 84E8F6CC083
X-Rspamd-Server: mail.clear-code.com
X-Spamd-Result: default: False [-0.10 / 999.00];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:2516, ipnet:2001:268::/32, country:JP];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 23:02:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65558

Hi

On 2025/06/27 23:33, via lists.yoctoproject.org wrote:
> Also, I should use Chromium, but I see that the Weston keyboard 
> doesn't work. Can I use your virtual keyboard? Is it compatible with 
> both Chromium and GTK3?

Please try --enable-wayland-ime option of chromium, it will enable
text-input-v1 protocol implementation of it.

Regards,

-- 
Takuro Ashie <ashie@clear-code.com>


