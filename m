Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D84E4E009F0; Mon,  6 Jul 2015 06:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A19A2E009DB
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 06:41:14 -0700 (PDT)
Received: by pdbci14 with SMTP id ci14so106355995pdb.2
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 06:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Zjyfe6ifBnMpi1/ei3vj8Xs4N/UztWicY8DsOsPTxOA=;
	b=xzWmFVb+dLorvvy0YkA2sXbGi+/3k2/ACQolFODjHT2ALYVe26uPf53ct1o0iYSB8t
	5FFFkXqmKJkgVUEQ0Ky2nDfR7Qj1f4RarlZuOamJZY2TI0x0nfzMJYHfgUFAgHVp8/e8
	4p1xb4quZ3hS/8fOZY+vC/oOQiXX8TBC6rJAtAUPbSm1tGD8krg7QFCb98NBVcMXnt78
	hIbtg02olPRvWumcYNd1U2ayGZFU/19gPkTXSlf6Rfa91xmFatrAf9OdjHg3CmJk5tIV
	M/LZunbvEu0cRMYYlRQV6BlrsmgWkBd8meFfxC5tM0xLSXYBLoDoTk84RWTdrCtTNYoX
	zYAw==
X-Received: by 10.70.32.33 with SMTP id f1mr79310150pdi.44.1436190073551;
	Mon, 06 Jul 2015 06:41:13 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by mx.google.com with ESMTPSA id
	da2sm18343084pbb.57.2015.07.06.06.41.11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Jul 2015 06:41:12 -0700 (PDT)
Message-ID: <559A8572.6020203@gmail.com>
Date: Mon, 06 Jul 2015 23:41:06 +1000
From: Jonathan Liu <net147@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nikolay Dimitrov <picmaster@mail.bg>, yocto@yoctoproject.org
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg>
In-Reply-To: <55976F44.5070106@mail.bg>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Mon, 06 Jul 2015 13:41:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Nikolay,

On 4/07/2015 3:29 PM, Nikolay Dimitrov wrote:
> Hi Jonathan,
>
> On 07/04/2015 06:48 AM, Jonathan Liu wrote:
>> Reduces the download time significantly.
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>   recipes-bsp/common/firmware.inc | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/recipes-bsp/common/firmware.inc 
>> b/recipes-bsp/common/firmware.inc
>> index ad3176a..100df3a 100644
>> --- a/recipes-bsp/common/firmware.inc
>> +++ b/recipes-bsp/common/firmware.inc
>> @@ -1,7 +1,7 @@
>> -RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
>> +RPIFW_SRCREV ?= "461"
>>   RPIFW_DATE ?= "20150206"
>> -RPIFW_SRC_URI ?= 
>> "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>> -RPIFW_S ?= "${WORKDIR}/git"
>> +RPIFW_SRC_URI ?= 
>> "svn://github.com/raspberrypi/firmware;protocol=https;module=trunk"
>> +RPIFW_S ?= "${WORKDIR}/trunk"
>>
>>   SRC_URI = "${RPIFW_SRC_URI}"
>>   SRCREV = "${RPIFW_SRCREV}"
>>
>
> Just tested the download times for this repo:
>
> git (deep clone): 24m
> svn: 3m8s
> git (shallow clone): 40s
>
> Isn't it possible to use "--depth 1" for git clone? I would rather
> prefer seeing this instead of just giving up and going back to svn...
>
> Regards,
> Nikolay
How would you clone a specific Git revision using --depth 1?

Regards,
Jonathan

