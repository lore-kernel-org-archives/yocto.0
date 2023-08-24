Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67676C71145
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 08:21:14 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web10.6396.1692865268741847106
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 01:21:09 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id 875383C543
	for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 10:21:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgQ5D6D2XpOj for <yocto@lists.yoctoproject.org>;
	Thu, 24 Aug 2023 10:21:05 +0200 (CEST)
Message-ID: <80a3f668-0e7e-fb19-95ef-dba24df5af76@koansoftware.com>
Date: Thu, 24 Aug 2023 10:20:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
To: yocto@lists.yoctoproject.org
References: <4243.1692798656387052619@lists.yoctoproject.org>
 <19088.1692853896756658318@lists.yoctoproject.org>
 <CAMKF1spQCoSRopT1Y5Qiar_RBt8XxXoJLeKL2T4FxifqrVhXLg@mail.gmail.com>
Content-Language: en-US, it
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <CAMKF1spQCoSRopT1Y5Qiar_RBt8XxXoJLeKL2T4FxifqrVhXLg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 08:21:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60877

On 24/08/23 07:22, Khem Raj wrote:
> On Wed, Aug 23, 2023 at 10:11=E2=80=AFPM Jeffrey Simons
> <jeffrey.simons@boonedam.com> wrote:
>>
>> On Wed, Aug 23, 2023 at 03:50 PM, Crane wrote:
>>
>>>
>>> On Wed, Aug 23, 2023 at 03:45 AM, Mauro wrote:
>>>
>>>>
>>>> You can put the encrypted password (the result of the "openssl passw=
d -6
>>>> root" command) directly in the variable, taking care to put a "\" be=
fore
>>>> the three "$" contained in the string. Something like this:
>>>>
>>>> EXTRA_USERS_PARAMS=3D" usermod -p
>>>>
>>> '\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb=
5ljCAa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/'
>>>> root; useradd -p
>>>>
>>> '\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOlCaa0s1ivISx=
AHT7MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/'
>>>> crane; "
>>>
>>> Tried as well. And a \ is added automatically in front of $, so no ne=
ed to add
>>> it. But still not working.
>>> There must be something else missing. Anyway to debug in this case?
>>>
>>
>>  From testing I have observed that the extrausers does not work from a=
 recipe, while useradd works correctly from a recipe.
>> The extrausers should work as expected from within the distribution de=
scription, so you might want to try that.
>>
>> For debugging you could print the bitbake variables to screen (-e) and=
 grep on the EXTRA_USERS_PARAMS.
>>
>=20
> See this
>=20
> https://github.com/YoeDistro/yoe-distro/blob/master/conf/projects/rpi4-=
64/config.conf#L57-L66
>=20
> you might try something like that in config metadata e.g. local.conf
>=20
>> Hope this is will help you solving the issue.
>>
>> --
>> With kind regards,
>>
>> Jeffrey Simons
>>
>> Software Engineer
>> Royal Boon Edam International B.V.
>>

Hi all,

I did some tests on a Yocto Kirkstone using qemux86-64.

I can confirm that:

- using extrausers class in local.conf (as pointed out by Khem) works=20
properly

   INHERIT +=3D "extrausers"
   EXTRA_USERS_PARAMS =3D "useradd -p '$(openssl passwd -6 crane)' crane;=
"

   OR (escaped cyphered password)

   INHERIT +=3D "extrausers"
   EXTRA_USERS_PARAMS =3D "useradd -p=20
'\$6\$z6vHqLrwnkHbcf5n\$0Fod3ijjV0XcGLYJm.EcomRXsL63p3ntbmznEjp7FHQq4sDtd=
/YFcAbw5Dg4/iQAsAyee7YG5/LNTe4nCwxzg1'=20
crane;"

- using extrausers class in image recipe works properly

   inherit extrausers
   EXTRA_USERS_PARAMS =3D "useradd -p '$(openssl passwd -6 crane)' crane;=
"

   OR (escaped cyphered password)

   inherit extrausers
   MY_PASSWORD =3D=20
"$6$jAB6jLC45xV7v9yY$nZS7WymiLb1152aV51mYDc0RNctmYi9M0xS9bkXUCIafCGQ/EyIp=
76.kltVKWt5U4YjHkTOGymP7OJ6p9DVpN."
   EXTRA_USERS_PARAMS =3D "useradd -p '${MY_PASSWORD}' crane;"

- using useradd class in a recipe works

   inherit useradd
   DEPENDS +=3D "openssl-native"
   USERADD_PARAM:${PN}-user3 =3D "-u 1202 -d /home/user3 -r -s /bin/sh -p=
=20
'$(openssl passwd -6 user3)' user3"

   OR (escaped cyphered password)

   inherit useradd
   USERADD_PARAM:${PN}-user3 =3D "-u 1202 -d /home/user3 -r -s /bin/sh -p=
=20
'\$6\$bblNDDxePa6LNBbE\$3P5MkG2pUFY1TI1A2Y9CXjA83gvnrO7UMQkcWOEOO7MN4ESJH=
G7wqfiYWOeHPGZSEKM5/3bcMHDsDBfxpZKRv1'=20
user3"

The only thing to pay attention to is to add

   DEPENDS +=3D "openssl-native"

in the recipe in case the openssl form is used.

To Crane: please try to build the image and test it, don't stop at Yocto=20
variables analysis step.

regards

[1]=20
https://docs.yoctoproject.org/ref-manual/classes.html?highlight=3Duseradd=
#extrausers

--=20
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
http://KoanSoftware.com


