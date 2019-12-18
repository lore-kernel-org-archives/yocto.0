Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.483.1576693231564299027
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 10:20:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F004E01276; Wed, 18 Dec 2019 10:20:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF4BBE00736
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 10:20:29 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xBIIKKbt032659
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 18 Dec 2019 12:20:22 -0600
Subject: Re: [meta-selinux][PATCH] MAINTAINERS: update maintainer
To: Joe MacDonald <joe@deserted.net>, Yi Zhao <yi.zhao@windriver.com>
Cc: yocto@yoctoproject.org
References: <20191218081423.11074-1-yi.zhao@windriver.com>
 <20191218131605.GA34290@deserted.net>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <f8f7bacb-525e-5a62-6b55-5cbded7b168a@kernel.crashing.org>
Date: Wed, 18 Dec 2019 12:20:20 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191218131605.GA34290@deserted.net>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/18/19 7:16 AM, Joe MacDonald wrote:
> Did Mark sign off on this as well?
> 
> [[meta-selinux][PATCH] MAINTAINERS: update maintainer] On 19.12.18 (Wed 16:14) Yi Zhao wrote:
> 
>> Add Yi Zhao as the maintainer.

Sorry I missed this.  Yes I did!

I havn't had any time to help with meta-selinux, so I happily accept Yi Zhao's
offer.

--Mark

>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>  MAINTAINERS | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 1a19891..36c451f 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -30,6 +30,6 @@ F:	classes
>>  F:	recipes-*
>>  
>>  COMMON
>> -M:	Mark Hatle <mark.hatle@kernel.crashing.org>
>> +M:	Yi Zhao <yi.zhao@windriver.com>
>>  F:	conf
>>  F:	recipes-*
>> -- 
>> 2.17.1
>>
> 
