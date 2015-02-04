Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5195E0082D; Wed,  4 Feb 2015 10:20:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F6EDE00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 10:20:36 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id bj1so4425901pad.1
	for <yocto@yoctoproject.org>; Wed, 04 Feb 2015 10:20:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=zskWUlxtrO3uMI1TJcC3thrcVE5mbhYb+D/BYZNDPUM=;
	b=W/b/TVnzMk7Au3SMaX5n3iAvf/lNqU6Xhk2FkHotDpji15vW929LLPRkPbdh+VCVKg
	2Mqqg6X3hanS04fKuBMgjpZZaLF7B0Mh3pvN6gWUULo8Kj4PEbBnIdKYwaKgfv+dpysj
	62+sP9H4Pf/WzWTcSy//P0/vPAISGEp73CSs7bZRlRCYtEpT7KhqYeS3RgDgST4WbZ3W
	Zk18eQ8BBN9Tna+tCPUe1p19fBHi/3E4kiS6HoyMZ8bV5QE7xrNW5kmLltw8NWvt0415
	DkRhDeJg7YA1QjrDHWHr1xmNyLzIIt9SHVpTbvfXb+k258kvi8ZYw042Cvu61s/fCQYF
	eP7A==
X-Gm-Message-State: ALoCoQmxEc1IkzzwJJeSHgkMREwLvOfIPebtkfMBi/AvooW8lcbs3Cq6KUzSEg1Z4Tm/Uk+SwcYr
X-Received: by 10.68.164.3 with SMTP id ym3mr14548444pbb.100.1423074035937;
	Wed, 04 Feb 2015 10:20:35 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:d9bf:657b:6f90:1a86?
	([2601:c:a700:272f:d9bf:657b:6f90:1a86])
	by mx.google.com with ESMTPSA id v6sm979516pdp.50.2015.02.04.10.20.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Feb 2015 10:20:35 -0800 (PST)
Message-ID: <54D262F0.9050406@mvista.com>
Date: Wed, 04 Feb 2015 10:20:32 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>, Armin Kuster <akuster808@gmail.com>
References: <1422673355-29535-1-git-send-email-akuster808@gmail.com>
	<54D2622E.9050708@twobit.us>
In-Reply-To: <54D2622E.9050708@twobit.us>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] ustr: fix typo in SRC_URI
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
X-List-Received-Date: Wed, 04 Feb 2015 18:20:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Phillip,

thanks.

- armin

On 02/04/2015 10:17 AM, Philip Tricca wrote:
> Hello Armin,
>
> I've submitted a very similar patch a few days earlier. This was bundled
> up into a larger series that *should* get meta-selinux master building
> again. See:
> https://lists.yoctoproject.org/pipermail/yocto/2015-January/023314.html
>
> Philip
>
> On 01/30/2015 10:02 PM, Armin Kuster wrote:
>> From: Armin Kuster <akuster@mvista.com>
>>
>> This fixes
>> ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
>> http://www.and.org/ustr/$%7BBPV%7D/ustr-1.0.4.tar.bz2:
>> 2015-01-30 18:26:38 ERROR 404: Not Found.
>>
>> Changed "BPV" to "PV"
>>
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>   recipes-extended/ustr/ustr_1.0.4.bb | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
>> index a0a1e41..cdb78ad 100644
>> --- a/recipes-extended/ustr/ustr_1.0.4.bb
>> +++ b/recipes-extended/ustr/ustr_1.0.4.bb
>> @@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=c79c6e2ae13418d16d7dc82df960a1e7 \
>>   		    file://LICENSE_MIT;md5=c61e779b782608472bd87593c3c3916f"
>>
>>   SRC_URI = "\
>> -    http://www.and.org/ustr/${BPV}/${BPN}-${PV}.tar.bz2 \
>> +    http://www.and.org/ustr/${PV}/${BPN}-${PV}.tar.bz2 \
>>       file://ustr-makefile-fix.patch;patch=1 \
>>       file://ustr-fix__va_copy-not-defined.patch;patch=2 \
>>       file://ustr-c99-inline.patch;patch=3"
>>
>

