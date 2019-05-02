Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70FEAE00D3F; Thu,  2 May 2019 14:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB917E00C37
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 14:45:02 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id y13so1768773pfm.11
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 14:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=fu+qXAo5k5K8Oar5lqMYFzPJncJYJx57Jl0gw231xow=;
	b=XKJKuJzj7rah9d81CKqGPvfdfRmyjQL/hnYuU0tBd8TnEfNAy+9BK6mP62tHMgu2jg
	76q/HyI3AkRSildbh7oi1y19b8qwWKbSILKwTStmHzrlAmQOF+tfAXQlH39U3JAhEVMY
	Gz2/BMdwffjY8py2SwLFouTH6Pu8apOgFL3RliQIn+2lQeRnae4n5aDFUev+U/GeLR3g
	EL8jWXsmOMYrfyqHDgHcpFBTkLhrRDyjoHJoTxOtJcyTPa0CwGRB3h8uRQU459AdH5xe
	S0HT4amrTsQfAUh5n+XMzpY8wsSeLDScvwWyMasNfUcbwr4e3qb8Vrch7HaSUqesFaMb
	oTHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=fu+qXAo5k5K8Oar5lqMYFzPJncJYJx57Jl0gw231xow=;
	b=Ar9DMSA+5M8B+T8Apm0OPC5XtL0UYGSMx6VsVC6yKlu5XdIz/e05d40UcBhFA4fzpG
	X76M2Pq4W8hheZQoAdSQJDLi6NixcIwO7OW4yBT4gJQ45qvGcTXg2/lxSuuNdWK2TY4q
	TWx92x7dzyaLTSDfoRHQ44JJlM4UBxvgzCu1PIuKayNX+vPWEwxNVcLJVzEHPMaHpdWQ
	mH0lgeQl6tG+aA7zi/0cZIwlhaDgaoXznP4W7ze7kP8HB2lbhmzfxiFmxdhQfuDkhEx0
	Iq4bC2md5wnnMPqtah30T0EsB8GxSKLj30uZRCCDGEBDGi6nv11GODXO5GOktK1DNgYI
	4Yyg==
X-Gm-Message-State: APjAAAX6CqZB9X7mWW07eNKILr5X9lzMY+y/SobN/Fw6wrhzsnG/zMGI
	Jydq5NoYZgnGEWYlUdNbGsQbZb/hVQw=
X-Google-Smtp-Source: APXvYqxovGsY8twOV2fCPJKJdSAl8mBCpIi4URm8vcjBee2xsy7uM4UlW1pgl8Jw3dsHSZ4nm+Q8cw==
X-Received: by 2002:a63:4721:: with SMTP id u33mr6277648pga.199.1556833501432; 
	Thu, 02 May 2019 14:45:01 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	q80sm193427pfa.66.2019.05.02.14.44.59
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 May 2019 14:45:00 -0700 (PDT)
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <94d26c09-1eea-ba34-67a7-f2d233edbe7b@ibeeto.com>
	<CAP71WjzboC4Vv26+a-4QkC-uKmyTACa3piPEwicm_xBSFpavEQ@mail.gmail.com>
	<A084970538D2234B96D99D06FA9D974FC378B045@ALA-MBD.corp.ad.wrs.com>
	<6a527b20-d69c-8285-7fc3-e4b130a94a5e@ibeeto.com>
	<A084970538D2234B96D99D06FA9D974FC378B0BC@ALA-MBD.corp.ad.wrs.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <bc2eca6f-53ec-0b94-f817-b9c437fa5761@ibeeto.com>
Date: Thu, 2 May 2019 14:44:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378B0BC@ALA-MBD.corp.ad.wrs.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto Project @ ELC NA 2019
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
X-List-Received-Date: Thu, 02 May 2019 21:45:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Andrea,

Great. I can bring some wooden blocks to prop up the rear-end. People 
could sit in it and spin the wheels.

:rjs

On 5/2/19 2:39 PM, Volosincu, Andreea S wrote:
> Hi Rudi,
>
> That's awesome! I will check with LF events to see if there are any issues with showing that or restrictions with how people engage with it during the show.
> Definitely in favor of showing the whole gokart.
>
> Thanks!
> Andreea
>
> -----Original Message-----
> From: Rudolf J Streif [mailto:rudolf.streif@ibeeto.com]
> Sent: Thursday, May 2, 2019 2:36 PM
> To: Volosincu, Andreea S <andreea.volosincu@windriver.com>; Nicolas Dechesne <nicolas.dechesne@linaro.org>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] Yocto Project @ ELC NA 2019
>
> Hi Andrea,
>
> I was intending to bring the whole gokart. It's more fun to see the speedometer go up when you push down on the pedal and the regen to kick in when letting go etc. Everybody has seen hundreds of instrument cluster demos (at least when you work for the automotive industry). It might be a crowd catcher too (at least that's what I figured when I was at CES this year; a booth with a vehicle had many spectators :).
>
> Please see early picture (without cluster) attached.
>
> :rjs
>
> On 5/2/19 2:17 PM, Volosincu, Andreea S wrote:
>> Hi Rudi,
>>
>> That sounds super interesting. We do have a 6'x6' exhibit booth on the show floor, and a DevDay on Tuesday, August 20.
>>
>> Are you planning to show just the instrument cluster, or the whole gokart? If the gokart, I would just need to check with LF and see if we are allowed to have that on the show floor. It's certainly a new thing we haven't tried or had before.
>>
>> Thanks!
>> Andreea
>>
>> -----Original Message-----
>> From: Nicolas Dechesne [mailto:nicolas.dechesne@linaro.org]
>> Sent: Thursday, May 2, 2019 1:17 PM
>> To: Rudolf J Streif <rudolf.streif@ibeeto.com>; Volosincu, Andreea S
>> <andreea.volosincu@windriver.com>
>> Cc: Yocto list discussion <yocto@yoctoproject.org>
>> Subject: Re: [yocto] Yocto Project @ ELC NA 2019
>>
>> hi Rudolf,
>>
>> +Andreea (Yocto Advocacy)
>>
>> we are definitely planning to be at ELC, with a similar setup as with past ELC : booth, demo, DevDay and BoF, well, at least !
>>
>> cheers
>> nico
>>
>> On Thu, May 2, 2019 at 9:31 PM Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>>> I apologize if I missed any communication on this mailing list but
>>> what are the plans for a presence of YP at ELC NA in August in San
>>> Diego this year?
>>>
>>> Unfortunately, I missed the deadline for submitting a speaking
>>> proposal ("Yocto Project DevOps with Gitlab, Docker and AWS") for ELC.
>>> However, if YP is planning on a presence at ELC I'd be happy to
>>> support it as I, conveniently, live in San Diego. If there is a YP
>>> exhibition I might be able to bring my little hobby project, an
>>> electric gokart with YP-based instrument cluster (it's a full-size
>>> kart with 13 kW AC motor and a LiFePo battery pack producing up to 25
>>> kW peak power output going up to
>>> 45 mph (electronically limited)).
>>>
>>> Cheers,
>>> Rudi
>>>
>>> --
>>> -----
>>> Rudolf J Streif
>>> CEO/CTO ibeeto
>>> +1.855.442.3396 x700
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


