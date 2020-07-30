Received: from mail.deif.com (mail.deif.com [87.54.42.111])
 by mx.groups.io with SMTP id smtpd.web11.3041.1596091713237481341
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 23:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deif.com header.s=s1024 header.b=ko9+vQfc;
 spf=pass (domain: deif.com, ip: 87.54.42.111, mailfrom: kfa@deif.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
    s=s1024; d=deif.com;
    h=from:to:subject:date:message-id:references:in-reply-to:content-type:
      mime-version;
    bh=BO7D1EuAPjXKk761yKFIuG+ykTA=;
    b=ko9+vQfcKRWdW6pxb+LqxyCHhhMSDA5BKq0y5iToxv6luKcv5bx24ZC4GfLJZa
      4SceWbQWl8BtEW3U7i2/1EzMv6bY4C/dXpadpTib/ZvAnDra9HfheGgRlJ1Nxt
      3Ijl1qCNY3dL080SfB9lEeQ5d1hZNKFPODaIyvjYgYMoOfk=
From: "Kjeld Flarup" <kfa@deif.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building extensible SDK
Thread-Topic: [yocto] Building extensible SDK
Thread-Index: AQHWZMWhAoGXO6vNuEiioBUpzqe6e6kffK0AgAAsk9U=
Date: Thu, 30 Jul 2020 06:48:29 +0000
Message-ID: <a39361425b0745ae880040cfb6eeebea@deif.com>
References: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>
 <589397f5-4ba5-d2a0-c318-fc3187537aab@gmail.com>
 <6f1314dc8f5448ad998aa66d10929345@deif.com>,<51ed3fe1-a7cc-6476-eb2c-55e56842be94@gmail.com>
In-Reply-To: <51ed3fe1-a7cc-6476-eb2c-55e56842be94@gmail.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Khem

I guess the eSDK is quite new then.

I have to ask my BSP supplier, about what version of Yocto they are using.

"The extensible SDK can currently only be built for the same architecture =
as the machine being built on - SDK_ARCH is
set to i686 (likely via setting SDKMACHINE) which is different from the ar=
chitecture of the build machine (x86_64)."


Regards
Kjeld Flarup
DEIF R&D - Platform Software



________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Thursday, July 30, 2020 7:40:04 AM
To: Kjeld Flarup; yocto@lists.yoctoproject.org
Subject: Re: [yocto] Building extensible SDK

On 7/28/20 2:58 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
> The eSDK looks interesting, but the documentation does not say anything =
about how to build it.
> Am I missing something about how to obtain the eSDK?

its all in the manual e.g.

https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-b=
uilding-an-sdk-installer

>
>
> Regards
> Kjeld Flarup
> DEIF R&D - Platform Software
>
>
>
> ________________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Friday, July 10, 2020 02:38
> To: Kjeld Flarup; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Add application with library to target
>
> On 7/8/20 2:37 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
>> I have a functioning Yocto build today, but two of the recipes are
>> optional. An application and a library.
>> I would like to split my build in two.
>>
>> One that contains the basic system with kernel rootfs etc.
>> A second that just contains the application and the library
>>
>> If I just had the application, it would be simple just to use the SDK
>> and generate the application.
>> But when adding the library, things starts to be more complex.
>>
>> I would also like to use my existing recipe with dependencies etc.
>>
>> What is the best approach
>>
>>    * Can this be done with the ADT?
>>    * Can a layer solve it
>>    * Do I need to do it all manually with the SDK
>>
>
> I think eSDK might be good fit for your usecase.
>
> https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk=
-extensible
>>
>> --
>> Regards
>> Kjeld Flarup
>> DEIF A/S
>>
>>
>>
>>
>>=20
