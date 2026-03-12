Return-Path: <ajlennon@dynamicdevices.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEE19FD88EF
	for <webhook@archiver.kernel.org>; Thu, 12 Mar 2026 10:22:55 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18136.1773310973519091193
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2026 03:22:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices.co.uk header.s=google header.b=KrmbBpCI;
 spf=pass (domain: dynamicdevices.co.uk, ip: 209.85.128.49, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-485410a0a8aso7960805e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 12 Mar 2026 03:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices.co.uk; s=google; t=1773310972; x=1773915772; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kXnql9tDxRWE+IfMIK+RCSNsIJEcnSksjucdkHRgwlQ=;
        b=KrmbBpCID0I19y0yN5+E4ge2OBkj88jxuSOuKe578bEI1mFqpAlnbstnUmG3+iF1uX
         OIjrNJQ2yElX2MRQpRDe4T1FuB9JbIceQYUNY0iqupUBjehRxehEUTkjWEdQN+eebSg9
         zgt6GvG8/5dZ/w1fAgYKp3r2sbdmmrYkiqt5ISRzpwgXEUh3SOfOgHusZE4+jOBYyc1I
         RrQ4XI5+Juk9KgmC+2bLjPXTFRvff7ECZV9l1fmWMXS2vFcTCF9B+UWCwhdmuOrZrSUW
         MnQNirxob6G9ffNbBfdLQf1hlIPTinCg5DN1zzkMTRc/7RpAC9nzNzBs6FaM07gZCMZP
         W8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773310972; x=1773915772;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXnql9tDxRWE+IfMIK+RCSNsIJEcnSksjucdkHRgwlQ=;
        b=Y22HQwd4KeQoozhPP1KdCu+aNqivXUhqwDDWPWxz/XhGMY59Zg5cpnpxdf6nlvXUt0
         z/JQMoiH5toDe5AtWwmffyCQIfqskYB1bHKVyrpa87LkufZBLfqz/nNLYG6TufqHokJH
         xf9XB4BETry3UuRFuPKMHuNUKlr0eXrUkANfWs0UBegzylV+EOz4NZUpJ2o0E85MpsAj
         G+0fKofP3v965N/1AYN9IHzkjqBUu8yBn9aBLv2k7GO3B9PJuzB3X63pA2qTNZ7jhVFh
         KdtQ9MYoOH8J9aIvzUoBV5SqJJMvDm8poDV5GbFUBsOsgKkphDZO0TJGKRl3qgZwogX+
         wRIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJC/ZCYPJHFEo26ew2h2GdTgG4+luovtbAGI1uSGC+LmZMibXQIvM5dxMcQ8kllkkNN36VOA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyQAVdrcd5cFivBDT8ThAzVzppQ14pcT+w5BxxrB1XAgwUzIP4J
	uBOqhM7mELaLlF1K24lvTjcwWHAxV0ptaPy9a9aG+O/0AS5KLfZE+opWygcLCp3BUi8=
X-Gm-Gg: ATEYQzyb8v3vwX47oJyMm58T/Amg16XBjAERF2ZMcDJjyY14WyGrlqS5qghbhq+eajA
	IYRmIOvW+mldu1Udd/Hzd3heIgt8GQJmVY6dLiI3/PkuH5OEXq0Warxxr0+D0ew29pRZbwcRUGR
	TOkJk0jY2f69xZBmQ4tnoQ9W0KILs3i6GyQZTsxYlevKzBcnvI5SJtlNFfg8vGL0vBtGlY5ML0D
	qy+jmeaiBvP6q/Ux6/lWNsU6uGAetvMw5D+77OI+Cm3GYTE20xVUgy2iuy/uXzrPJHe1lcwJ30W
	uuOWIY5+qjP9va1g3n6r+4pV5PYs76jDWm+mHT88tXDxzsaeFKOMTcbNlI2sq4aaHMg8RpH4Gr1
	W61TROnIba5fk8WAB6/B/d0LbA5zYtZ9ZLyE2WcaMKIkNjRBRPguSFrYIMEuJpmGggr2XCx+Iiu
	a62Hg00du07+AeX0eVpxcGCq2V1Iunz0BU4spRBcn05YUp7wvm/Zv9xqvIINZduGsH6hD4fwT1F
	LhFXGHaGR2Gdp/fjntsO3L6rLyfcScy
X-Received: by 2002:a05:600c:6383:b0:485:3586:1e28 with SMTP id 5b1f17b1804b1-4854b107956mr84569385e9.18.1773310971622;
        Thu, 12 Mar 2026 03:22:51 -0700 (PDT)
Received: from [192.168.68.138] (live-30-b2-v4wan-174414-cust740.vm29.cable.virginm.net. [82.14.134.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e912fsm307237135e9.2.2026.03.12.03.22.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 03:22:51 -0700 (PDT)
Message-ID: <fa6062e4-e320-444b-8de7-8d82835a96f8@dynamicdevices.co.uk>
Date: Thu, 12 Mar 2026 10:22:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] are there some recent examples of building .NET recipes
 for YP?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Josef Holzmayr <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
References: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca>
 <CAEt6Nwpi5DBYBvcWO6UTdo9YNm1oie1GVbusOSqkgkuq-LO9fQ@mail.gmail.com>
 <0ce0bdc6-bbce-44f3-b010-112739b8b87d@dynamicdevices.co.uk>
 <c258a893-b246-d8e8-4394-aa05f6b4875c@crashcourse.ca>
Content-Language: en-US
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <c258a893-b246-d8e8-4394-aa05f6b4875c@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Mar 2026 10:22:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66329


On 12/03/2026 10:19, Robert P. J. Day wrote:
> On Tue, 10 Mar 2026, Alex J Lennon wrote:
>
>> On 10/03/2026 21:28, Josef Holzmayr wrote:
>>> Channeling @Alex J Lennon
>>>
>>> On Tue, Mar 10, 2026 at 3:19 PM Robert P. J. Day via
>>> lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org>
>>> wrote:
>>>>     colleague wants to add a .NET package as a (systemd) service to a YP
>>>> image -- google keeps promoting this 10-year-old page:
>>>>
>>>> https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles
>>>>
>>>>     does someone have a link or two to something more recent? thank you
>>>> kindly.
>>>>
>>>> rday
>> Hi folks. I felt a vibration in the force....
>>
>> I continue to maintain meta-mono and you're right this desperately needs an
>> update.
>>
>> I guess that's on me but if you fancy collaborating it might go faster :)
>    let me peruse this on the weekend. although i have no interest in
> becoming a .NET developer, i'm probably going to have to support the
> developers on my team who will be. i guess the simplest approach is to
> try to replicate that documented work on my debian 13 system with
> recent YP release.
>
> rday

For myself, I think I would probably start with the meta-mono CI which 
runs and tests the build

https://github.com/DynamicDevices/meta-mono/actions

That's not ideal as it's headless and my recollection is the Wiki has 
various image captures.

But it may be possible to combine the CI action(s) with the Wiki 
document using AI and arrive at something relevant and maintainable as 
meta-mono continues to be updated

Just my 5c

KR, Alex



