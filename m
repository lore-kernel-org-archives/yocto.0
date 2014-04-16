Return-Path: <akuster@mvista.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D40CE00955
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:57:30 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so11364579pbb.22
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=0sVo/fPCjNwSj6+HvPe5rvA77iyS2Jlq4wjFFM1UO+g=;
	b=arqCyOPdZLBn3rxGDf6OrszeG+1VATkPvLzSHnDQ2EuZMmovlXvLvvbLo3qalpU5pH
	raCEOzsRM9bzzYRFq46Tgu6CnPeX+0P8A5GfyuKSB0UmEUGK0O2mnVcYn9fBuV3VTCRd
	cAVodwP5TF4Nu7I0b6JAhn+s21Zq2J58L8LcteqttVIvG5YQaOqQS7OhF6fpS9qhfWuH
	9yJGDRt+UCwp2Gvohq5d+j3KHXh8/Hsx7h5m9XvlbOoz2bmBRRzj2470q4vPdta81aRo
	lfR/xSInMYtA0q/RbQHEKwRKSDfIaZzeD/dPs6ZmuznZYCK1A0ruR8phpckCYcjJABOH
	e6TQ==
X-Gm-Message-State: ALoCoQmC+RcL4O7Y1avNS98nZObVKQDB+G2E3ZMcWvmdZqVEqDr2S/JH72he66cDOTTasvEfoXLv
X-Received: by 10.68.134.169 with SMTP id pl9mr11444304pbb.133.1397689050384; 
	Wed, 16 Apr 2014 15:57:30 -0700 (PDT)
Received: from Akusters-laptop.local (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	om6sm49304371pbc.43.2014.04.16.15.57.29 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Apr 2014 15:57:29 -0700 (PDT)
Message-ID: <534F0AD8.9050705@mvista.com>
Date: Wed, 16 Apr 2014 15:57:28 -0700
From: "akuster@mvista" <akuster@mvista.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>, 
	Jeff Osier-Mixon <jefro@jefro.net>
References: <534ED0A3.3040209@mvista.com>
	<CA+YB3rbxPWJFa80LjcBn0H7r3PQuWf80-ooamVsYtVJWRph12w@mail.gmail.com>
	<CF7433D3.8A888%david.c.stewart@intel.com>
In-Reply-To: <CF7433D3.8A888%david.c.stewart@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto life cycle statement
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
X-List-Received-Date: Wed, 16 Apr 2014 22:57:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 4/16/14, 1:21 PM, Stewart, David C wrote:

Thanks Stewart.

That is what I was looking for.

regards,
Armin
> I found the following comments at
> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_release_cycle_of_the_Yoc
> to_Project.3F
> (It does seem like we have been supplying maintenance releases for two
> releases back, not just one. So maybe this wiki needs to be updated)
>
>
>
> What is the release cycle of the Yocto Project?
>
> Each release of the Yocto Project is subject to its own release schedule
> according to the community-maintained Project Planning Guide
> <https://wiki.yoctoproject.org/wiki/Planning#Yocto>. It is generally
> expected that a new version of the Yocto Project will be released every
> six months.
>
> What is the overall support plan for the Yocto Project?
>
> Security patches and critical bug fixes are supplied one release back. No
> toolchain or kernel changes are allowed for these updates. Support for
> longer periods of time can be supplied by commercial OSVs.
>
>
>
> On 4/16/14, 12:43 PM, "Jeff Osier-Mixon" <jefro@jefro.net> wrote:
>
>> Hi Armin - let me do some research on this, just wanted to let you
>> know that I had seen it. I'm not sure we have a formal statement
>> published.
>>
>> On Wed, Apr 16, 2014 at 11:49 AM, akuster@mvista <akuster@mvista.com>
>> wrote:
>>> Hello,
>>>
>>> Can someone point to a 'life cycle statement' for Yocto versions, one
>>> that
>>> discusses limited bug fixing peroid and ultimate EOL of a version. I am
>>> having trouble find it.
>>>
>>> Regards,
>>> Armin
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> Jeff Osier-Mixon @Intel
>> Yocto Project Community Manager http://yoctoproject.org
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

