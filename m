Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3740E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 09:26:26 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so18120940vcb.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 09:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=vc17sf/pSugxh+mxEv5GQ9BuXMHdAtG4O0Wai2iC4gk=;
	b=oPiJFKQunkYfUziA9rGe5skK2D0kUbMbxgTbwqpT81RO8Ry/LU9jPaiUnqNbH3eHJU
	d1+bb95qZ/KZTRDkOBPUCTLW3FNwYnNqSwEY0ovMvqQE0QuFLix3oJB4vYYN/fTyVEOW
	0f/+OTuroqxyJuWLeGXQSblGOfAQYK3uxbOEI=
Received: by 10.220.230.131 with SMTP id jm3mr29637268vcb.51.1325611585952;
	Tue, 03 Jan 2012 09:26:25 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	jf1sm26683350vdb.21.2012.01.03.09.26.24 (version=SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 09:26:24 -0800 (PST)
Message-ID: <4F033A40.3070507@gmail.com>
Date: Tue, 03 Jan 2012 12:26:24 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
	<4EF20847.1030106@gmail.com>
	<loom.20111229T062302-471@post.gmane.org>
	<4EFC9755.60805@linux.intel.com>
In-Reply-To: <4EFC9755.60805@linux.intel.com>
Subject: Re: build error on meta-cedarview
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
X-List-Received-Date: Tue, 03 Jan 2012 17:26:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2011 11:37 AM, Saul Wold wrote:
> On 12/28/2011 09:26 PM, Andrew Schweitzer wrote:
>> Jim Abernathy<jfabernathy@...>  writes:
>>
>>>
>>>
>>>      While running a build of the core-image-sato using the edison 
>>> latest
>>>      commits and the meta-cedartrail bsp, I notices some errors fly by
>>>      and thought I'd see if anyone knows the reason.  The build is just
>>>      to test the bsp with no changes.  Basically, doing the Appendix 
>>> A of
>>>      the Development manual substituting cedartrail for crownbay.
>>>      snippet of the console log below:
>>>      NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
>>>      Started
>>>      ERROR: Function 'Unpack failure for URL:
>> 'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'.
>>
>> I don't know the reason, but I did get the same error when trying to 
>> build yocto
>> per the getting started page, changing local.conf to create qemuarm
>>
>> I would be interested in knowing the reason too.
>>
> There has been a bug filed against this issue, it seems that the 
> tarballs have moved or are unavailable from that location for some 
> reason.  You are getting a download page, and I believe that the 
> failure should occur earlier with a checksum mismatch, but is not.
>
> You can fetch this file from our mirror at:
> http://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz 
>
>
Saul,

Sorry for the dumb question, but how do I download the file and fool 
bitbake into not trying to download it from the invalid site?  Or do I 
need to change a file somewhere to specific our mirror URL instead??

Jim A
> Sau!
>
>> Andy
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


