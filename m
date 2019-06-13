Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C80BE00DF1; Thu, 13 Jun 2019 01:37:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95B3E00D94
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 01:37:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5D8aWpN011552
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 13 Jun 2019 01:36:59 -0700
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 13 Jun 2019 01:36:52 -0700
To: Adrian Bunk <bunk@stusta.de>
References: <1560411964-388665-1-git-send-email-changqing.li@windriver.com>
	<1560411964-388665-2-git-send-email-changqing.li@windriver.com>
	<20190613082931.GA15674@localhost>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <fa6fc473-ffc7-858c-3cf5-ef0e24f4ebe8@windriver.com>
Date: Thu, 13 Jun 2019 16:36:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190613082931.GA15674@localhost>
X-Originating-IP: [128.224.162.186]
Cc: yocto@yoctoproject.org
Subject: Re: [patchtest][PATCH 2/2] patchtest: fix linux-yocto version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Jun 2019 08:37:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 6/13/19 4:29 PM, Adrian Bunk wrote:
> On Thu, Jun 13, 2019 at 03:46:04PM +0800, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> 4.9 is not avaiable currently, preferred version changed
>> to 5.0, also correct the bbappend name
> 5.0 is already EOL upstream and will be removed soon.
>
>> ...
>> --- a/scripts/create-guest-machine
>> +++ b/scripts/create-guest-machine
>> @@ -145,10 +145,7 @@ cat >> $POKY/build/conf/auto.conf << EOF
>>   $PTSMARK
>>   MACHINE = "$MACHINE"
>>   
>> -# The preferred kernel version in poky (4.10%, master) returns an error whilst
>> -# executing patchtest on guest. Changing the preferred version to 4.9% as it
>> -# is more suitable and does not present any errors.
>> -PREFERRED_VERSION_linux-yocto_qemux86-64 = "4.9%"
>> +PREFERRED_VERSION_linux-yocto_qemux86-64 = "5.0%"
>> ...
> This looks as if it was a temporary workaround for some problem with
> kernel 4.10.
>
> If 5.0 works, then there is not really a reason for changing the
> preferred version here.
Thanks, I will remove this line.
>
> cu
> Adrian
>
-- 
BRs

Sandy(Li Changqing)


