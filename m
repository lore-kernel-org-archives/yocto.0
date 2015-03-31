Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DCC7E0059F; Tue, 31 Mar 2015 12:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC76FE003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 12:01:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t2VJ1n4J018325
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 Mar 2015 12:01:49 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Tue, 31 Mar 2015 12:01:49 -0700
Message-ID: <551AEF1C.3020503@windriver.com>
Date: Tue, 31 Mar 2015 14:01:48 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, <maninder1.s@samsung.com>
References: <DA.DC.15273.6011A155@epcpsbgx1.samsung.com>
	<DE4997FE-04B3-4173-9552-D65661C62878@gmail.com>
In-Reply-To: <DE4997FE-04B3-4173-9552-D65661C62878@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] [PATCH 1/1] Remove extra check for ld-linux.so.3 in strcmp
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
X-List-Received-Date: Tue, 31 Mar 2015 19:01:56 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Hmm, I never saw the original email (or thread).

What is the context for this, simply that there are multiple ld-linux.do.3 in
the same check and remove one or the other is more efficient?

(I suspect it will be optimized out, but I can make the change quickly enough.)

--Mark

On 3/31/15 1:01 PM, Khem Raj wrote:
> 
>> On Mar 30, 2015, at 8:14 PM, Maninder Singh <maninder1.s@samsung.com
>> <mailto:maninder1.s@samsung.com>> wrote:
>>
>> Hi,
>>
>>
>> From 05ab779af24baef957972aa1d2a9e9d29212cc4c Mon Sep 17 00:00:00 2001
>> From: Maninder Singh <maninder1.s@samsung.com <mailto:maninder1.s@samsung.com>>
>> Date: Thu, 19 Mar 2015 03:02:59 +0530
>> Subject: [PATCH 1/1] Remove extra check for ld-linux.so.3 in strcmp
>>   
>> if (! strcmp (soname, "ld-linux.so.2")
>>       || ! strcmp (soname, "ld-linux.so.3")  ------------------------>
>>       || ! strcmp (soname, "ld.so.1")
>>       || ! strcmp (soname, "ld-linux-ia64.so.2")
>>       || ! strcmp (soname, "ld-linux-x86-64.so.2")
>>       || ! strcmp (soname, "ld64.so.1")
>>       || ! strcmp (soname, "ld-linux.so.3") --------------------------->
>> redundant code
>>       || ! strcmp (soname, "ld-linux-armhf.so.3"))
>>
>> Signed-off-by: Maninder Singh 
>>
> 
> use First Last <your@email>
> 
>> ---
>> src/get.c |    1 -
>> 1 files changed, 0 insertions(+), 1 deletions(-)
>> diff --git a/src/get.c b/src/get.c
>> index 6a63f02..a34668a 100644
>> --- a/src/get.c
>> +++ b/src/get.c
>> @@ -35,7 +35,6 @@ is_ldso_soname (const char *soname)
>>        || ! strcmp (soname, "ld-linux-ia64.so.2")
>>        || ! strcmp (soname, "ld-linux-x86-64.so.2")
>>        || ! strcmp (soname, "ld64.so.1")
>> -      || ! strcmp (soname, "ld-linux.so.3")
>>        || ! strcmp (soname, "ld-linux-armhf.so.3"))
>>      return 1;
>>    return 0;
>> -- 
>> 1.7.1
>>
>>
>> Thanks and Regards,
>> Maninder Singh
>>
>> <201503310844012_QKNMBDIF.gif>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
> 


