Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2F46E00AA5; Mon, 17 Aug 2015 02:24:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ajlennon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C65E00A5B
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 02:24:05 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so65290804wic.1
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 02:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=fpIRFH0V1U3vWjVFfkNBL95BxXo+1N37jo86qbgxPxM=;
	b=hQdMfVjW++IQCl1nnSmV2bIE4X0YFp2tf4LJdmgOADzsPklpK5OBMZGU1X/egvmr8C
	yB2GBvTzjFPDxGL80sFSYG9ezhxCzJd6n0Gavj5Ml74lzoOjbz/SBF18+3wn0P7OSiag
	RWIMGAPJitUyO8+EUFrIBOewar+gzmIzlUx4YxX9dXJy0of/eEVBblv7Z7H6tz9HPcjy
	v6af0LZk8vZza2TJnUPxuFGg2Szkyo34eyzDmjSo6XK/R+OAqnk+rI7O8cv0bN6m0eNZ
	DAKXuefyXsOiGTyXpBsdoDiVxs+GS9nFXzFxgbMQ8aHpGJOSlyMMWUDI5bcjrr1NIlt1
	BX4Q==
X-Received: by 10.194.9.102 with SMTP id y6mr809681wja.91.1439803444579;
	Mon, 17 Aug 2015 02:24:04 -0700 (PDT)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net.
	[86.17.157.93]) by smtp.googlemail.com with ESMTPSA id
	lg6sm20990097wjb.10.2015.08.17.02.24.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Aug 2015 02:24:01 -0700 (PDT)
To: petter@technux.se, Andrei Gherzan <andrei@gherzan.ro>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
From: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <55D1A82F.9020506@gmail.com>
Date: Mon, 17 Aug 2015 10:23:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <8cc28d589389102b4fccf052fe2389c2@technux.se>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Mon, 17 Aug 2015 09:24:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 17/08/2015 09:11, Petter Mabäcker wrote:
> 2015-08-17 09:57 skrev Andrei Gherzan:
> 
>> Hello,
>>
>> On Tuesday, August 11, 2015, Petter Mabäcker <petter@technux.se
>> <mailto:petter@technux.se>> wrote:
>>
>>     2015-08-11 19:04 skrev Alex J Lennon:
>>
>>         Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>>         ---
>>          recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
>>          1 file changed, 4 insertions(+)
>>
>>         diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>>         index e38d905..8024412 100644
>>         --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>         +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>         @@ -6,6 +6,10 @@ SECTION = "kernel"
>>          LICENSE = "GPLv2"
>>          LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>          
>>         +SRC_URI += " \
>>         +        file://build-in-audio.cfg \
>>         +        "
>>
>>  
>> This one didn't make it.
>>  
>>  
>>  
>>  
>> --
>> Andrei Gherzan
>>
>>
>> -- 
>> --
>> Andrei Gherzan
> 
> Think you got the wrong receiver =) I notified Alex about this some days
> ago, Alex can you send up a v2 for this?
> 
>

The build-in-audio.cfg patch was just for testing of fragment support.
It's understood that we're not going to have this build into the kernel
by default, although I do still need to find some words to add to the
README on audio routing setup and so forth.

I started testing a build with master over the weekend and it built OK.
Just need to find some time to run up a couple of kernels and will
resubmit the v2 patch with Petter's enhanced commit message.

I don't have an RPiv1 around at the moment but I will probably double
check the kernel does still actually build for RPiv1 machine

Cheers,

Alex


> 
> BR, Petter
> 


