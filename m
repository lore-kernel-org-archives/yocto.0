Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530BFE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 14:26:19 -0800 (PST)
Received: by vcbfl17 with SMTP id fl17so1215556vcb.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 14:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=IfAcjwc8HXlXDSUtevpjkq4aX9cuk4s0n9drSNzNTBE=;
	b=pkLxQ8yvGtHa9+ZGaiXEtYWpZlm1GlRjAjXoWIiGTHk7ivDkbmCiv1++WoFNzhFH3N
	8ibOq4DmIYgvqp4Abi/SEg1A2AHMbRJYbp6diHzieiIwSJb4rOTPb6B/KNoSWydXEck5
	iH5zyu6D7LFQXPEqH5DZaUvUCfATVffPe/0oq7hVYO303TQ2dj2AU1g6x9AaOWjZjxrj
	LE5Qc2xWYGmxjo7UOPptMZqQsUnSSlm5kwiWmhMmlzmREaA/cdWYRgRVYatRX+X+4zBD
	+u8gqNxnROdEBw5pE2B4v5DxiaTO63cFZht5V3pFTJQlfOvLMReCWJDdigyWoXu//2t6
	3pPQ==
Received: by 10.52.88.9 with SMTP id bc9mr12936767vdb.74.1331245578557;
	Thu, 08 Mar 2012 14:26:18 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id jr10sm6350900vdb.14.2012.03.08.14.26.17
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 14:26:18 -0800 (PST)
Message-ID: <4F593209.6040309@gmail.com>
Date: Thu, 08 Mar 2012 17:26:17 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Autif Khan <autif.mlist@gmail.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
In-Reply-To: <CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 08 Mar 2012 22:26:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2012 05:07 PM, Autif Khan wrote:
> On Thu, Mar 8, 2012 at 4:43 PM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> On 03/08/2012 04:33 PM, Rudolf Streif wrote:
>>> Jeff,
>>>
>>> Use hyphen instead of underscore for the subdirectory SRC_URI:
>>>
>>> SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"
>>>
>>> and of course for the subdirectory in the subdirectory where the recipe is
>>> located. The file fetcher copies the entire path
>>> myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.
>>>
>>> Rudi
>> that didn't solve the problem. I still get file not found errors.  The
>> videos are unpack to WORKDIR, but the do_install is looking for them in S.
>>
>>
>>        install -d
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
>>         install -m 0644
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/*
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
>>
>> I think I need to control where the do_unpack puts the files.
>>
> Just a dumb thought, but I have been bitten many times by it.
>
> please try bitbake myvideos -c cleansstate
>
> then bitbake myvideos to build the recipe.
>
> Alternatively, you can of course rev up the PR everytime you change
> the recipe. But that is cumbersome.
>
> And yes, I forgot to mention in my previous mail that the
> mypics-1.0.tar.gz is located in
> meta-autif/recipes-autif/mypics/mypics-1.0/mypics-1.0.tar.gz
>
> As Rudolf suggested - bitbake is a bit finickey about '-' and '_'
I was doing a "bitbake -c cleanall myvideos" before each run of bitbake 
myvideos, but I just now tried bitbake myvideos -c cleansstate with no 
change in behavior.

It seems clear to me that do_unpack unpacks the tar.gz file to the

${WORKDIR}

but install is looking for them in

  ${WORKDIR}/${PN}-${PV}


Since S is not defined, I think the default is ${WORKDIR}/${PN}-${PV}

Not sure how to fix that.

JIm A



