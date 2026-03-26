Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1520A10A88F5
	for <webhook@archiver.kernel.org>; Thu, 26 Mar 2026 17:41:20 +0000 (UTC)
Received: from elephant.ash.relay.mailchannels.net (elephant.ash.relay.mailchannels.net [23.83.222.57])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.54461.1774546872471162952
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2026 10:41:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rootcommit.com header.s=hostingermail-a header.b=Xk6dknpS;
 spf=pass (domain: rootcommit.com, ip: 23.83.222.57, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 20626223AAE;
	Thu, 26 Mar 2026 17:41:11 +0000 (UTC)
Received: from fr-int-smtpout28.hostinger.io (100-121-70-44.trex-nlb.outbound.svc.cluster.local [100.121.70.44])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 2F004223B2A;
	Thu, 26 Mar 2026 17:41:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1774546870;
	b=Jz9k/ToB18aVPTtaASJvz34i8IUuXuhuSzv23wS4nPQXwZDJpr6JY5V/N77FB4mFSgrXRt
	bWCYi2839Sur/yKvsoo+KHLonMBucJYr+qkFM1qCuEdsv477EcLJG5ShB6UJ12dT8dUUIc
	ck/FddPu2wzYXInrSY3UUOBVQ5PYXElcrM6VCcuvn7Td6Wk+B1qTGN9pju1ngzbIfoB9vj
	GTqtZgGT+iELbnOv2zFeh960dC+72L20lPbf08sVETuQ1jRUtE581kVOAp6VA9Jpbko2Ho
	tolZ/TeEACRnxPAAtXQmwvliNsSGdLUjTM6u8HGVgPNcUr6gzyHRp703vkfRMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1774546870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vnU7ag3LZ3u0NA8n/pZ16cQqLL9afpBbs5GZ3qVPcy8=;
	b=GYfX+IcSB3+Vqf5g4KriCpGCragYIiq9650jlIcBvOLZlhG/933+lubWtyxQzQsKv7QLVs
	vbu2uk8CJBMzdmV8b4AKYzE5iI3dEZjkxNqQnfj58tS4WdYYbhWYmTRKiyK3RILroImjOb
	AiN20iVAK2u+Pln4eRbzexiZiZRmpvHZ81kVjVinwiV0KOVrcRo3mjz2QasIttePIsM59c
	OR5akbranIMmTuB0WvrtOBE1EzFUFU+NwK6QHo1zrFYsPudiP9yVFUsslYCuq3VIwStc4d
	COFMVABrD9k4OwjKNoZfo3aaxxQFspl+ZQ4XVXnE0k0usYoXq8teSs4id4B9tg==
ARC-Authentication-Results: i=1;
	rspamd-7f98bb5847-kg2h5;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Power-Language: 42472e4277a66464_1774546871000_3271267728
X-MC-Loop-Signature: 1774546871000:1333976076
X-MC-Ingress-Time: 1774546871000
Received: from fr-int-smtpout28.hostinger.io (fr-int-smtpout28.hostinger.io
 [148.222.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.121.70.44 (trex/7.1.3);
	Thu, 26 Mar 2026 17:41:10 +0000
Received: from [IPV6:2001:861:4450:d360:51f3:4618:26a2:7700] (unknown [IPv6:2001:861:4450:d360:51f3:4618:26a2:7700])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fhWKH0jW5z31w9;
	Thu, 26 Mar 2026 17:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1774546867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnU7ag3LZ3u0NA8n/pZ16cQqLL9afpBbs5GZ3qVPcy8=;
	b=Xk6dknpSv9ADKCd01xmh6jX//ecmulwNRELBkHNEb2FQmLqU3xffzEbIvZ1eBh3TfmrJVE
	ZTSYUP7V1gnrx2Un5pXjXdSE7d7t88t/2Ff+LVYYnZyzlXbWGOhmKyTxPGnBqTj+6TIKI5
	i3OPrEMVLnZQp5ziqyhjgfJj3e/f8dorTXJbfRfD4m7HmZDII9s2Tull7fRkfi5o4mZ1Os
	cNhwiKcKoqAMahQckajJ4M158i9IWDzmrhIZLzWDIyoVkEk5EBUTUjAf3F5dyLMKK7tixY
	bykQkAj5J3NXfmgo+DZ1d7N9a/PilW6lzokiigGkEUIOlyqrCWJoj3mpvLBYYQ==
Message-ID: <5513c75c-516a-4b3c-bf4c-dfa47d5eae52@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: overlayfs-etc on top of dm-verity?
To: Vyacheslav Yurkov <uvv.mail@gmail.com>
References: <bfaae86a-5b66-4abf-95ef-0fd345ffcada@rootcommit.com>
 <aab17025-f0f2-4c04-b370-8789624eb571@rootcommit.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <aab17025-f0f2-4c04-b370-8789624eb571@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 26 Mar 2026 17:41:07 +0000 (UTC)
X-CM-Envelope: MS4xfBC2Z2BuOxC2dBrx6tKr6/l5ueAnXd8ACJlN+Yk8sKkfcNvBv7ZloCPXMO98vRvlrJPenEAJJlPiZmFxer9zrIoed1x+JsPBUtcAdBEvByRPfmvhDjxC eKhcHJdBYhBxgcMCfuKN96MmW8GWJuorUIvjGdxf4zD5PYKvmoWqKhJjKAaQBmfM3RatkQJmut/ngt6Y7PdnfXaSnTGnv9t94ZJYLUMENPFhS3d6Mt66dRnm QMNcW0Mxf7E8JuzOpExiq/m8bxrzPo0pIRLyEmrjazSMDEZOgZjVx4cXrNgawQs5hDLMFRtBQj1tWgXxDiBW21DB5sW6OfMLTHHeTj3yACqTfDzl9/mwv4ky k4ZRQMc84xPPfjwsFDXTbSR4Q+OfoLzDnXURBmb2A5KO/6UT2Hw=
X-CM-Analysis: v=2.4 cv=ZbRPNdVA c=1 sm=1 tr=0 ts=69c56fb3 a=evcieJ2VOb0sFVU3DIXQLA==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VwQbUJbxAAAA:8 a=d70CFdQeAAAA:8 a=aHLGvg6tIiMUv9RRxSwA:9 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2026 17:41:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66356

Greetings,

So follow-up on this issue...

On 3/26/26 10:56 AM, Michael Opdenacker wrote:
>
>
> On 3/25/26 10:20 PM, Michael Opdenacker wrote:
>
> I eventually managed to get /etc mounted as an overlay. It seems that 
> /sbin/init was started instead of /sbin/preinit as specified in the 
> kernel command line.
> I hardcoded the call to /sbin/preinit by customizing 
> openembedded-core/meta/recipes-core/initrdscripts/initramfs-framework/finish 
> (in a bbappend file, of course).
>
> The code looks right though, I need to understand why this happens.


The issue (the initramfs scripts not calling the init script specified 
in the kernel command line) was caused by an issue with kernel 
parameters like:
opt="value", that happen when you use the kernel's "bootconfig" 
configuration options.

This fix I've just submitted solves the issue: 
https://lore.kernel.org/openembedded-core/20260326173432.3286250-1-michael.opdenacker@rootcommit.com/T/#u

Cheers
Michael.

Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


