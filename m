Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5523.1596105662319360852
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jul 2020 03:41:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC315E01F46; Thu, 30 Jul 2020 03:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.8 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B0EEE01F43
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2020 03:40:58 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4BHRlY6J0Jz1rv9l;
	Thu, 30 Jul 2020 12:40:57 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4BHRlY41Mpz1qr4c;
	Thu, 30 Jul 2020 12:40:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id JMi3TL_ksJZZ; Thu, 30 Jul 2020 12:40:56 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 30 Jul 2020 12:40:56 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 57E6D454050B;
	Thu, 30 Jul 2020 12:40:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bdLSfq1KnHA8; Thu, 30 Jul 2020 12:40:54 +0200 (CEST)
Received: from [192.168.178.47] (stefano-MacBookPro.fritz.box [192.168.178.47])
	by babic.homelinux.org (Postfix) with ESMTPS id E167A4540393;
	Thu, 30 Jul 2020 12:40:53 +0200 (CEST)
Subject: Re: [yocto] [swupdate] [meta-swupdate][PATCH] mtd-utils: Remove patchs
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Stefano Babic <sbabic@denx.de>, Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>,
 swupdate@googlegroups.com
Cc: yocto@yoctoproject.org
References: <1596071889-91188-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <2de062d5-c94c-e8e1-eae4-26d0663ec8ee@denx.de>
 <2a963f4bef787067aaa680c73df08d5ac1307a02.camel@linuxfoundation.org>
From: "Stefano Babic" <sbabic@denx.de>
Message-ID: <95e70525-1555-22b7-3112-863c569af56b@denx.de>
Date: Thu, 30 Jul 2020 12:40:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2a963f4bef787067aaa680c73df08d5ac1307a02.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Richard,

On 30.07.20 12:28, Richard Purdie wrote:
> On Thu, 2020-07-30 at 10:34 +0200, Stefano Babic wrote:
>> Hi Zheng,
>>
>> I do not discuss abot the correctness of these patches (that I will
>> aplly to meta-swupdate, -master), but about mtd-utils version (for
>> this I pick up Richard in CC). There were in last month more breakage
>> around mtd-utils due to patches (required !) that are applied to an
>> undefined (from recipe) version of mtd-utils.
>>
>> In fact, we have mtd-utils_git.bb in poky, and as "git" version, the
>> expectation is that it points to TOT. But this is not the case, and
>> meta-<layers> outside poky just add some patches to a not well
>> defined version.
>>
>> Should we also replace mtd-utils_git.bb with a more precise
>> mtd-utils_2.1.2.bb ?
> 
> Adding patches in bbappends is always going to be high maintenance. Are
> these patches swupdate specific?
> 

Yes, they are. My question was related to mtd recipe in OE-Core.

> The recipes use "git" in the filename and then set a sepcific SRCREV
> and set PV correctly. This is an accepted behaviour. I can see how
> renaming the recipe would also help for certain usecases but both are
> really correct for different reasons.

Agree both are correct, but as you said, it can be more messy to 
maintain in external layers if it is not possible to identify a specific 
version,

> 
> I'd also note that git versions in oe-core are always locked down to
> something and that something is therefore likely not to be TOT as they
> don't get updated frequently enough.

ok, fine.

Regards,
Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
