Return-Path: <eas@sw-optimization.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CA6AC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:11:54 +0000 (UTC)
Received: from mx11lb.world4you.com (mx11lb.world4you.com [81.19.149.121])
 by mx.groups.io with SMTP id smtpd.web10.49154.1702602712475182467
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:11:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sw-optimization.com header.s=dkim11 header.b=Bz2dPbte;
 spf=pass (domain: sw-optimization.com, ip: 81.19.149.121, mailfrom: eas@sw-optimization.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sw-optimization.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XHCDrWOGr9a0CU6/K6wZbI660w00FwAFGPZ6/Q0j/VM=; b=Bz2dPbte7tpFRVjWg6DcbIBMJa
	E/5JcA0HcB1Uf4eRGpQmjVpl68ZbDFTObIOFRnpL1IMMgfgNdnDsBXMmFRf8uLThF97h8D3IsIjj4
	XA14EM1sfzCxQprKCv/ssGsVQvDPW9DO8qQ254qapejoEBgGnmmSqxvPU3qEwasLENAw=;
Received: from [195.192.57.194] (helo=[192.168.0.20])
	by mx11lb.world4you.com with esmtpa (Exim 4.96.2)
	(envelope-from <eas@sw-optimization.com>)
	id 1rDwk2-0002AF-1L;
	Fri, 15 Dec 2023 02:11:50 +0100
Message-ID: <7218b71e-3a6c-4eda-bcbb-86c139d0c19f@sw-optimization.com>
Date: Fri, 15 Dec 2023 02:11:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] how to create symlink in dunfell after compilation of
 library file
Content-Language: de-DE
To: ron.eggler@mistywest.com
References: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
Cc: yocto@lists.yoctoproject.org
From: Eric Schwarz <eas@sw-optimization.com>
In-Reply-To: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:11:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61894

Hi Ron,

Am 15.12.2023 um 01:26 schrieb Mistyron:
> Hi,
> 
> I'm working with dunfell and want to create a symlink after compilation 
> of the library:
> 
> I added the following in aziot-keys_%.bbapend:
> 
> do_install_append() {
>      install -d ${D}/usr/lib
>      lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.so
> }
> 
> Yet, after building the image,
> I do not see the symlink in/usr/lib/
> 
> I did find the recipe for which I created the bbappend with:
> oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so
> 
> What is missing?

Think you need to "cd" into the library directory and create then the 
symlink using a relative path.

Please check out the accepted answer from [1].

[1] 
https://stackoverflow.com/questions/48167601/create-symbolic-link-in-bitbake-recipe

Cheers
Eric

