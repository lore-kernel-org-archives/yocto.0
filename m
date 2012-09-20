Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45E20E00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 14:49:42 -0700 (PDT)
Received: by eaan12 with SMTP id n12so96940eaa.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 14:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=PSsH7KNB5BTdcS2VDcwG/Vdar065MY49BFo5JCAlZpw=;
	b=StVThp8b3uo8zC1axZpI15JG6uHeFE7Yr2b44WOpszK7YEG225iW5F/THMb63FBZjv
	LFZYJPrue+wJoIFLoIQ3CTuHjqiOYyeUvODi77FzDVa5tIUbmIXP455Ht7Ux8K6qJJN5
	vdREpqbjy/L5Tg8YNAoqGMp8HmjDhaZz1cHfKQCZRzoNdB/IiWmZ1CX+CYprbP5swy+C
	pPKtjz5bUmXM1q7Q7J0FQJQ2eqUZevGoSSGn3HJi1a27APJykRsruETZmVAI6GwWVSEm
	8CGCpFYj0QWQAN1Nil6C5XjYfwL7xwsgewguS4MqY6F1KfTlKm0XW6DuxTDtVKbby4z4
	KnLw==
Received: by 10.14.173.131 with SMTP id v3mr3836001eel.15.1348177778947; Thu,
	20 Sep 2012 14:49:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Thu, 20 Sep 2012 14:49:08 -0700 (PDT)
In-Reply-To: <505B8B7C.7080501@linux.intel.com>
References: <1348166956.16487.26.camel@rchatre.jf.intel.com>
	<505B8B7C.7080501@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Sep 2012 14:49:08 -0700
Message-ID: <CAMKF1srP67RkwqdPTbdwaJiCXPf=uU5kcWfjrWcXffWNejHhBw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Any hints when building boost-nativesdk?
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
X-List-Received-Date: Thu, 20 Sep 2012 21:49:42 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 20, 2012 at 2:32 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 09/20/2012 11:50 AM, Chatre, Reinette wrote:
>> Hi,
>>
>> I am running Yocto 1.2 and would like to include the boost development
>> environment in my SDK. I created a bbappend for the boost recipe that

Do you want your target applications to have boost right ?
in that case you just add boost-dev to TOOLCHAIN_TARGET_TASK may be in
your local.conf


>> only contains two lines:
>>
>> PR = "${INC_PR}.1"
>> BBCLASSEXTEND += "nativesdk"
>>
>> When I build with the above I get the following warnings:
>> NOTE: multiple providers are available for runtime boost-date-time (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-date-time
>
> Khem, I thought this might be something you were familiar with. Any
> thoughts?
>
> --
> Darren
>
>> NOTE: multiple providers are available for runtime boost-filesystem (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-filesystem
>> NOTE: multiple providers are available for runtime boost-graph (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-graph
>> NOTE: multiple providers are available for runtime boost-iostreams (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-iostreams
>> NOTE: multiple providers are available for runtime boost-program-options (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-program-options
>> NOTE: multiple providers are available for runtime boost-regex (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-regex
>> NOTE: multiple providers are available for runtime boost-signals (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-signals
>> NOTE: multiple providers are available for runtime boost-system (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-system
>> NOTE: multiple providers are available for runtime boost-test (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-test
>> NOTE: multiple providers are available for runtime boost-thread (boost, boost-nativesdk)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-thread
>>
>> It seems a bit strange that "boost-nativesdk" is seen as a provider for
>> any of those runtime components. Any hints what I should change to build
>> things correctly?
>>
>> Thank you very much
>>
>> Reinette
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel

