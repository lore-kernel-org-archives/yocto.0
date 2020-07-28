Received: from mail.deif.com (mail.deif.com [87.54.42.111])
 by mx.groups.io with SMTP id smtpd.web12.9006.1595930306767509967
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 02:58:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deif.com header.s=s1024 header.b=oKfnZav3;
 spf=pass (domain: deif.com, ip: 87.54.42.111, mailfrom: kfa@deif.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
    s=s1024; d=deif.com;
    h=from:to:subject:date:message-id:references:in-reply-to:content-type:
      mime-version;
    bh=f9zhJommpwORiS0rFqzm3crKNKY=;
    b=oKfnZav3kfZFBYnKO0h87BmovzbHygpmF4MTWj2rOw7KYXoipDfyupWlgR2HxQ
      yKqTHARrmwMT2BwWrYc+7uI0Q+D1EB9Il/BoeY9luzkiCSPRKQpcvhvLNzK6QO
      bi654I20FCtgxh0QYZUkqVsMohOJZjd8V7Fgpi15Cg0xg48=
From: "Kjeld Flarup" <kfa@deif.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Building extensible SDK
Thread-Topic: Building extensible SDK
Thread-Index: AQHWZMWhAoGXO6vNuEiioBUpzqe6ew==
Date: Tue, 28 Jul 2020 09:58:23 +0000
Message-ID: <6f1314dc8f5448ad998aa66d10929345@deif.com>
References: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>,<589397f5-4ba5-d2a0-c318-fc3187537aab@gmail.com>
In-Reply-To: <589397f5-4ba5-d2a0-c318-fc3187537aab@gmail.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The eSDK looks interesting, but the documentation does not say anything abo=
ut how to build it.
Am I missing something about how to obtain the eSDK?


Regards
Kjeld Flarup
DEIF R&D - Platform Software



________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, July 10, 2020 02:38
To: Kjeld Flarup; yocto@lists.yoctoproject.org
Subject: Re: [yocto] Add application with library to target

On 7/8/20 2:37 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
> I have a functioning Yocto build today, but two of the recipes are
> optional. An application and a library.
> I would like to split my build in two.
>
> One that contains the basic system with kernel rootfs etc.
> A second that just contains the application and the library
>
> If I just had the application, it would be simple just to use the SDK
> and generate the application.
> But when adding the library, things starts to be more complex.
>
> I would also like to use my existing recipe with dependencies etc.
>
> What is the best approach
>
>   * Can this be done with the ADT?
>   * Can a layer solve it
>   * Do I need to do it all manually with the SDK
>

I think eSDK might be good fit for your usecase.

https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-e=
xtensible
>
> --
> Regards
> Kjeld Flarup
> DEIF A/S
>
>=20
>
