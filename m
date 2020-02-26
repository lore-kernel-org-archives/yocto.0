Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.542.1582752980945803760
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 13:36:21 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=MSqQlHkP;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A360E0170E; Wed, 26 Feb 2020 13:36:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C7CAE016FF
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 13:36:19 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id d9so302565pgu.3
        for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 13:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=3PKzriioxbJ9TGiUJczXT8kvhglTLI6kySaGgwjAqko=;
        b=MSqQlHkPnf7rt6jReNm54GQon5681OO41WK8QDoYsaGfcdN8qtIcQiEcRdTWEabUiE
         1Lgu+wMgIKQq1sloWsuvxBfL3NtRtYHHw32bgXrDvG2qkkuhyMjwkhAG8NvYco7Amns2
         8N6lEXCISHtv+N6HvxLvGdQcQUhs1vzjuDBI7rYBT/9VbG5J36DbLVle3n0+8C6rdL/D
         4JNX9BG97fBnsQ1AzRtgwKpDZRPNpRuoEQRyIsoUOAJ+joNWkNxq8mRrcjRbv3ByZrSX
         UlTk/O101z9x5lJDuAz8GVrRNHigJzBvCnQ5KHJgnlQknl/1OCNKYXcEOZDb9W8btF4n
         /gEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3PKzriioxbJ9TGiUJczXT8kvhglTLI6kySaGgwjAqko=;
        b=MEhRg6uwnVT14i97fz1Nn1Gxi4m6a0DFs9BmmUTrlZIlAIvuSuvqesrxH2UYM8CrAu
         ro65y/rJ9voKZBKrCCKb4Gf581I/0/gWsnL1hj7nDZk/tiR7STJh3HBa7XE+gBq796mq
         XR7btjFbNV8XX24hPpZVoqGmneURjQMAu7Mzin9d/NxaZ43GJOW35Zwvbj5EaR7k8GKx
         hjkQ3dkCZ86Ta0/stKuf00wPmqO/PeazWbYw6Qu4kgS/cY3AGFkEwNU5mFfLfbhnN2x0
         kQcGqbryyzT0e4iVAe7VhxUcfXtQdqhxT3UrGBeYWVVgxIFas1hWqLTM3K4Nbc+pE1UB
         ZPeg==
X-Gm-Message-State: APjAAAXdywG4luA8jm1V3ZJX++vyttbEv85pFFgUM/JfMS706u1IwMbu
	RHivpPjVov6TWAEtVYRdM+5ihRoWElk=
X-Google-Smtp-Source: APXvYqyK04lIOiOFtvbBnAVz2rUd03d5kQa2y+Mw9vRZ+zqNvDQY5O1+PAIOHfv3+qxM1XApBhTn7A==
X-Received: by 2002:aa7:8618:: with SMTP id p24mr707738pfn.3.1582752978213;
        Wed, 26 Feb 2020 13:36:18 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:19c7:2796:79bc:80ea? ([2601:646:9200:4e0:19c7:2796:79bc:80ea])
        by smtp.gmail.com with ESMTPSA id h2sm3691282pgv.40.2020.02.26.13.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 13:36:17 -0800 (PST)
Subject: Re: [yocto] Help with how to debug dependency error
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>,
 Yocto list discussion <yocto@yoctoproject.org>
References: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
 <b6a7e251-4c77-9353-1328-4fc677b6adac@gmail.com>
 <e69df5f9bf3e41e78b97fcb8feb6262c@sakuraus.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <83990796-5e7b-def3-01fc-6f981640037d@gmail.com>
Date: Wed, 26 Feb 2020 13:36:17 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e69df5f9bf3e41e78b97fcb8feb6262c@sakuraus.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 2/26/20 1:16 PM, Greg Wilson-Lindberg wrote:
> Hi Khem,
>=20
> Thanks for the (possible) solution. What I was really looking for is som=
e way of
> finding out what changed with the addition of the OSTree directories tha=
t then caused the
> need for the additional libraries. Are there some tools that I don't kno=
w about that
> will help me find what is causing the gbm & gles2 to now be included whe=
n they are not
> necessary without the OSTree dirs.

bitbake -g would give you the dependency graph which you can use to find=
=20
out.
>=20
> Regards,
> Greg
>=20
>> -----Original Message-----
>> From: Khem Raj <raj.khem@gmail.com>
>> Sent: Wednesday, February 26, 2020 12:30 PM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list discussion
>> <yocto@yoctoproject.org>
>> Subject: Re: [yocto] Help with how to debug dependency error
>>
>>
>>
>> On 2/26/20 12:02 PM, Greg Wilson-Lindberg wrote:
>>> I am building a system based on a boot2qt warrior Yocto build=A0 for t=
he
>> Raspberry Pi4.
>>>
>>> Our system is building just fine until I try to add support for OSTree=
. When I
>> do that I get 3 errors for existing recipes, "nothing provides virtual/=
gbm",
>> "nothing provides virtual/egl", and "nothing provides virtual/gles2". A=
ll of
>> these are specified in PACKAGECONFIG[] lines in qtbase_git.bb as requir=
ed
>> when gbm and gles2 are turned on.
>>>
>>> I have searched for gbm in the meta-updater & meta-updater-raspberrypi
>> directories that get included to add support for OSTree and found no
>> reference. It looks like the OSTree inclusion is requesting something t=
hat is in
>> turn requesting gbm and gles2 but I haven't been able to figure out wha=
t that
>> is.
>>>
>>> I have tried to print out the variables and a dependency graph to help=
 me
>> track down what is going wrong, but these don't work because the errors
>> abort before I can get the information I need out.
>>>
>>> Can anyone point me to a way to find out what is triggering the change=
 in
>> the gbm & gles2 packages?
>>>
>>
>> this is meta-rpi issue, perhaps you can use mesa there instead of userl=
and
>> graphics driver
>>
>> MACHINE_FEATURES_append_rpi =3D " vc4graphics"
>>
>>
>>
>>> Thanks in advance,
>>> Greg Wilson-Lindberg
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>=20
