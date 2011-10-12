Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B66E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:32:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk36 with SMTP id 36so884051pzk.7
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=BeEAAyjy6j/cjFphRPvl8JNhGCU71BSB/yorTzgISPM=;
	b=XvUnScoXSAzdW6mrYfEz0rJHvCHTIrGXpJ/6wa66N+lAk/YD0y5rAFS3EFqiXiGsfW
	SnxXciqXt+LkzGDHUb2iFXmm4MHwGOXIl4Il+BlB3FdwzNfLRvcQZ0ul/qDx8EC+jOeR
	TgeNgQZ+jAGXTV7kwOe9AGymPnxKn1rrMV3EE=
Received: by 10.68.19.2 with SMTP id a2mr3092746pbe.72.1318447953809;
	Wed, 12 Oct 2011 12:32:33 -0700 (PDT)
Received: from [172.23.0.171] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id ml4sm2826079pbc.0.2011.10.12.12.32.32
	(version=SSLv3 cipher=OTHER); Wed, 12 Oct 2011 12:32:32 -0700 (PDT)
Message-ID: <4E95EB4C.5060408@gmail.com>
Date: Wed, 12 Oct 2011 12:32:28 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95B87E.6050300@linux.intel.com> <4E95E020.7070201@gmail.com>
	<5A638733-1EF0-4FF9-96D9-61702DEE2FBC@dominion.thruhere.net>
In-Reply-To: <5A638733-1EF0-4FF9-96D9-61702DEE2FBC@dominion.thruhere.net>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 19:32:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2011 12:30 PM, Koen Kooi wrote:
>
> Op 12 okt. 2011, om 20:44 heeft Khem Raj het volgende geschreven:
>
>> On 10/12/2011 8:55 AM, Darren Hart wrote:
>>> Hi Tim,
>>>
>>> On 10/11/2011 04:49 PM, Tim Bird wrote:
>>>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>>> present users with the ability to select some set of features in a local
>>>>> configuration file that will impact the build of the image and a set of
>>>>> recipes.
>>>>
>>>> Can you tell me more about meta-tiny?  this is the first I've heard
>>>> about this (sorry if discussion went by on the mailing list and I
>>>> missed it), and I'm very interested.
>>>
>>>
>>> Tim,
>>>
>>> I'll be presenting things in more detail at ELCE, Friday @ 3:45 PM in
>>> the Kepler room. The summary is that I have received a lot of questions
>>> along the lines of "How small of an image can I build with Yocto?".
>>
>> I guess yocto needs to define another profile(distro) to really demonstrate how small it can get. There are other distros based on oe-core e.g. micro and even slugos where the image sizes are really small slugos/uclibc image is around 2.7M eglibc based image is 3.5M
>
> And don't forget angstrom, that scales all the way down to an fbdev gui fit inside 80kiB.

indeed.

