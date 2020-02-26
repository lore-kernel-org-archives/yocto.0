Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.292.1582755399492643160
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 14:16:39 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=mFBPy36S;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56B57E0170E; Wed, 26 Feb 2020 14:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5056E016FF
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 14:16:37 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id d15so957519iog.3
        for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 14:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=hGVHGla9DvBQzC2Wp9MEijYCcL/B17Rkk5pLK0A3JhA=;
        b=mFBPy36SvHyrnCBy0BDDUjCBk2X52986PegOdtPfiUCK9lEvVXKad6KTgVIY7XIQp1
         2nJ3DyedxoX1UnPOliBLjWrpEovjQKb6nhKI8xJlHK3k7k/cukheqN+I53cGzT3GTY01
         sl3nqZGQpCk0M2dInWoaO1sxIgBNW5COOts449wucsEVYZ/4xcUlWkqWq6o4TUxoL8hd
         2SiHFhSrPdw+TA8r8xAmtF6iJsdan7+aLYtTE7bVaOUwblS6sgn10Ipf6Lf0Hv/G2JmE
         mhxBlguSKCTtWQBHj5OoBs0LERBTkcxUV/r+NGfA363pNTmIsr/M4kPvFS+RHhwThytL
         vsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hGVHGla9DvBQzC2Wp9MEijYCcL/B17Rkk5pLK0A3JhA=;
        b=Ry7vQItxz43udqQDEPlKKZMzAaMDxo9fsmzCUXQAmMT5GGVaKmXffh//4PyQENiIt0
         VZ5He4Blb8rTP7gtNo/zoSPxkqOT0KbYRei4y4A45ZIzQvCYIc/mOU7jNi6RHsY+FoDO
         M0Ieeo9UxjfrkRS9Ex5IFnRs7mcROR2iMDJVDXjJUANE5JgBfsSMcUHuXUy2a8Mt5QeH
         Q8por9MJ2UbtsN9et/t5Ahn0BC2hyK+uQCms1g0ZGVbGKFZHDSepP8nAFehsqaEss1wq
         bmaVIXAd9rGgLfb8unTguNrLcKq6d+0PBRDF+QfVSiWMoNPYVygCmBlq9GfSPaRT6az0
         QHiA==
X-Gm-Message-State: APjAAAWjY1E8/2glzZ2rCfuCevBSagDRpxjW7km1ps51yJvYnqOLohUO
	jbtp376A7qfUDlZnslN29Spn17ZpAXI=
X-Google-Smtp-Source: APXvYqzjWIKDiHzO8DP6cSEYedXYt8kHcSh7cC1ehsz6fhKtpMCfY6CyZOLbYABLz8usA82DGbUv+Q==
X-Received: by 2002:a02:c6d4:: with SMTP id r20mr1759794jan.96.1582755396735;
        Wed, 26 Feb 2020 14:16:36 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:19c7:2796:79bc:80ea? ([2601:646:9200:4e0:19c7:2796:79bc:80ea])
        by smtp.gmail.com with ESMTPSA id t9sm879522iof.88.2020.02.26.14.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 14:16:36 -0800 (PST)
Subject: Re: [yocto] Help with how to debug dependency error
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
 Yocto list discussion <yocto@yoctoproject.org>
References: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
 <b6a7e251-4c77-9353-1328-4fc677b6adac@gmail.com>
 <e69df5f9bf3e41e78b97fcb8feb6262c@sakuraus.com>
 <83990796-5e7b-def3-01fc-6f981640037d@gmail.com>
 <77c8c143f7f74e699221ff73e8598d8c@sakuraus.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <b91e8e37-41be-e2c4-593a-ba42a4fdb602@gmail.com>
Date: Wed, 26 Feb 2020 14:16:35 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <77c8c143f7f74e699221ff73e8598d8c@sakuraus.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 2/26/20 2:13 PM, Greg Wilson-Lindberg wrote:
>> -----Original Message-----
>> From: Khem Raj <raj.khem@gmail.com>
>> Sent: Wednesday, February 26, 2020 1:36 PM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list discussion
>> <yocto@yoctoproject.org>
>> Subject: Re: [yocto] Help with how to debug dependency error
>>
>>
>>
>> On 2/26/20 1:16 PM, Greg Wilson-Lindberg wrote:
>>> Hi Khem,
>>>
>>> Thanks for the (possible) solution. What I was really looking for is
>>> some way of finding out what changed with the addition of the OSTree
>>> directories that then caused the need for the additional libraries.
>>> Are there some tools that I don't know about that will help me find
>>> what is causing the gbm & gles2 to now be included when they are not
>> necessary without the OSTree dirs.
>>
>> bitbake -g would give you the dependency graph which you can use to fin=
d
>> out.
>=20
> As I said in the original post, bitbake errors out before it generates t=
he dependency graph.
>=20
> This is why I was asking if there are other tools that could help.

ah I missed that right. I guess, parsing errors are your best bet then

>=20
>>>
>>> Regards,
>>> Greg
>>>
>>>> -----Original Message-----
>>>> From: Khem Raj <raj.khem@gmail.com>
>>>> Sent: Wednesday, February 26, 2020 12:30 PM
>>>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list
>>>> discussion <yocto@yoctoproject.org>
>>>> Subject: Re: [yocto] Help with how to debug dependency error
>>>>
>>>>
>>>>
>>>> On 2/26/20 12:02 PM, Greg Wilson-Lindberg wrote:
>>>>> I am building a system based on a boot2qt warrior Yocto build=C2=A0 =
for
>>>>> the
>>>> Raspberry Pi4.
>>>>>
>>>>> Our system is building just fine until I try to add support for
>>>>> OSTree. When I
>>>> do that I get 3 errors for existing recipes, "nothing provides
>>>> virtual/gbm", "nothing provides virtual/egl", and "nothing provides
>>>> virtual/gles2". All of these are specified in PACKAGECONFIG[] lines
>>>> in qtbase_git.bb as required when gbm and gles2 are turned on.
>>>>>
>>>>> I have searched for gbm in the meta-updater &
>>>>> meta-updater-raspberrypi
>>>> directories that get included to add support for OSTree and found no
>>>> reference. It looks like the OSTree inclusion is requesting something
>>>> that is in turn requesting gbm and gles2 but I haven't been able to
>>>> figure out what that is.
>>>>>
>>>>> I have tried to print out the variables and a dependency graph to
>>>>> help me
>>>> track down what is going wrong, but these don't work because the
>>>> errors abort before I can get the information I need out.
>>>>>
>>>>> Can anyone point me to a way to find out what is triggering the
>>>>> change in
>>>> the gbm & gles2 packages?
>>>>>
>>>>
>>>> this is meta-rpi issue, perhaps you can use mesa there instead of
>>>> userland graphics driver
>>>>
>>>> MACHINE_FEATURES_append_rpi =3D " vc4graphics"
>>>>
>>>>
>>>>
>>>>> Thanks in advance,
>>>>> Greg Wilson-Lindberg
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>=20
