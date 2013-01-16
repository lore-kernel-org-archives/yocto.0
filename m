Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-07.mxes.net (mxout-07.mxes.net [216.86.168.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE2DE00527
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 15:33:18 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.86.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 804E322E253;
	Wed, 16 Jan 2013 18:33:17 -0500 (EST)
Message-ID: <50F738BA.1070609@bsmucker.eu.org>
Date: Wed, 16 Jan 2013 15:33:14 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
	<50F5ECE7.2090503@bsmucker.eu.org>
	<CADzUK1+AqHq0PfVa6GwyefBSAjP=iaB=NAKLB9LwSkXT9RHhEQ@mail.gmail.com>
	<50F6C5F0.1050605@bsmucker.eu.org> <50F6F933.90107@bsmucker.eu.org>
	<50F6FAD7.7060708@mlbassoc.com>
In-Reply-To: <50F6FAD7.7060708@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to force newly-compiled busybox into core-image-minimal (restating an earlier post)
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
X-List-Received-Date: Wed, 16 Jan 2013 23:33:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Gary,

Thank you.  It seems the bitbake -C option was indeed what I wanted.
And researching it helped fill in some of the gaps in my understanding.

Thanks,

Brian



On 1/16/2013 11:09 AM, Gary Thomas wrote:
> On 2013-01-16 12:02, Brian Smucker wrote:
>> Hello all,
>>
>> I'm not sure if my prior question was unclear or if the question was 
>> something nobody knows the answer to.
>>
>> I think there's probably a simple answer, but maybe not.
>>
>> So the background is this: A poky/danny setup where I have 
>> previously-compiled core-image-minimal.
>>
>> I force busybox to be recompiled: bitbake -c -f compile busybox
>> I clean core-image-minimal: bitbake -c -f cleansstate core-image-minimal
>> I rebuild the core image: bitbake  core-image-minimal
>>
>> Result:  The busybox that is included in the core-image rootfs is a 
>> busybox that was compiled earlier.  It has an earlier timestamp.
>>
>> Question:  How do I force the newly-compiled busybox to be included 
>> in the core-image rootfs, so that the rootfs generation process does 
>> not retrieve some stale version of busybox
>> from a cache somewhere? (Without deleting the tmp directory. I know 
>> that works.)
>>
>> There's got to be a simple answer.
>>
>> Thanks,
>>
>> Brian
>>
>> ps.  This is merely an interim way to test a particular permutation 
>> of the busybox config. I know how to make a recipe using bbappend and 
>> a new defconfig for busybox.  But I want
>> to do a series of quick-and-dirty tests with various busybox config 
>> options.
>
> The problem is that your rebuild of busybox only ran the compile step,
> not any of the install or packaging steps.
>
> Thankfully there is a new bitbake option which makes this much easier.
> See if this does what you want:
>   % bitbake busybox -C compile
>   % bitbake core-image-minimal
>


