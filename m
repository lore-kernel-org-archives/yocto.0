Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11.1595971582203218762
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 14:26:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE68E01F39; Tue, 28 Jul 2020 14:26:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.0 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ABCAE01F37
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 14:26:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 06SLPDA4029425
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 28 Jul 2020 14:25:34 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 28 Jul
 2020 14:25:12 -0700
Subject: Re: [yocto] [prelink-cross] prelink-cross: Add SPDX-License-Identifier: GPL-2.0-or-later to source files
To: Sathish V <sathish25071992@gmail.com>, <mark.hatle@kernel.crashing.org>
CC: <yocto@yoctoproject.org>
References: <20200721141407.2692-1-sathish25071992@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4702a531-6633-ffec-c5a3-e7591811fce2@windriver.com>
Date: Tue, 28 Jul 2020 17:25:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200721141407.2692-1-sathish25071992@gmail.com>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-07-21 10:14 a.m., Sathish V wrote:
> Signed-off-by: Sathish V <sathish25071992@gmail.com>
> ---
>   gelf/gelf.c        | 4 +++-
>   gelf/gelf.h        | 4 +++-
>   gelfx/gelfx.h      | 4 +++-n
...

Thanks Sathish!

Mark, did you miss this email?



-- 
# Randy MacLeod
# Wind River Linux
