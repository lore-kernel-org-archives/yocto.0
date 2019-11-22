Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.988.1574436006296130705
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 07:20:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22794E00D8D; Fri, 22 Nov 2019 07:20:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2390E00C46
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 07:20:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAMFK0nm007240
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Nov 2019 07:20:00 -0800
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Fri, 22 Nov 2019
 07:19:59 -0800
Subject: Re: [yocto] Warning message after building recipe:
To: pavan <pawan4749@gmail.com>, <yocto@yoctoproject.org>
References: <CALd6x_siiqxqhC4n4Ynf45tT0LiaTUdy-T48mTuGZT=e9mDsXw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <90748801-76f5-7807-1f2c-141bd1caa06a@windriver.com>
Date: Fri, 22 Nov 2019 10:19:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CALd6x_siiqxqhC4n4Ynf45tT0LiaTUdy-T48mTuGZT=e9mDsXw@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 11/22/19 8:38 AM, pavan wrote:
> Hi All,
> 
> After building the recipe, I'm getting warning message:
> "Warning: do_package_qa QA Issue: <recipe-dbg>: found library in wrong 
> location.
> Any suggestion to resolve this issue?

It looks like your question is covered here:
 
https://forums.xilinx.com/t5/Embedded-Linux/Bitbake-recipe-help/td-p/773151

../Randy
> 
> 
> Regards,
> Pavan
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47381): https://lists.yoctoproject.org/g/yocto/message/47381
> Mute This Topic: https://lists.yoctoproject.org/mt/61661954/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
# Randy MacLeod
# Wind River Linux
