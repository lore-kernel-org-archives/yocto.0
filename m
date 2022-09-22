Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2F7C54EE9
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 21:25:48 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web08.813.1663881944742840865
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 14:25:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hgH/eGAy;
 spf=pass (domain: gmail.com, ip: 209.85.210.170,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id 9so10493979pfz.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 14:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date;
        bh=QQsDKQ1fd4ZyxgkrXPffEVnvRC2JG7vIm9GRVdFEETU=;
        b=hgH/eGAyg5zTc5hv1RatIquxF6eaTNf/6ksNsldUXQvlpxUTR1fIlQ8TZySW8GLOqX
         ZggTNJSGP45qCpdXVfj8pveDZ8CZdleErsOXDwUbFCIC3ZEKaw/c0Mh5x61pSI0gkUeR
         wOrhdF6mgT6ZYkRbDc/IfAjdHL6WN5AiB3wll4AvVSig+D6XRLRdRacYHTtf5ylrbztv
         GYkxPoBjhMYw7NTOCl+Xguaf8H7xDBMgne0/2eEdwxoNN8Laa8o8HQZ9tFgG5vdjWHaX
         8mjkkacRne1/eyio5IqQuZ2rL4STjE2eHyriWkbyJ1iS1IF4HJ4P1ueAdEtXcOQCLoP+
         k1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=QQsDKQ1fd4ZyxgkrXPffEVnvRC2JG7vIm9GRVdFEETU=;
        b=SfNCFV64jFbPZW9jQ7AqtMeMIMrserbetA/bDq8DTBYr/b7C3Zyt/hnxSvWhczHRBS
         yB9J270XjCb9W4Z09XsIqQ6pbIPygeIAWDeh4IGPr6QUJsJq1MmEkrCVmxaTG2hfOFjY
         7k90aj/D90Ms4TXekaFyd5kHXDw+oE5S8mCuBOpVLJ4x+3ZVI/q19qm7M+Y/weipGW4u
         7kLuz6bvDB1DZVF7/l76K+C5LwyDRd2SqCM80Rc7XbG04JoPNXJ8UDwPApo+35C1aC3i
         PpWbiWbPbfVxcqOLne6Ps5F3rSc3uH/OPHv8kOcKceMy74bddSJ0XzvxxuCeF0VRNU2d
         ZYQQ==
X-Gm-Message-State: ACrzQf2lBvrWS/n19Y1R42w4KS9VDXf7ZFyejKYodWWf1ocP+0RZeDg1
	ljasa65jgO+08f8LkVlce6U=
X-Google-Smtp-Source: 
 AMsMyM66XA1sc4MuMmCNtmHdNfW8n6xo95ZCRXUZWYMlZK0GSqTLxvCZGsXlHJwmGWK1dM5tgds32w==
X-Received: by 2002:a63:cf48:0:b0:439:7d1c:fedc with SMTP id
 b8-20020a63cf48000000b004397d1cfedcmr4754068pgj.281.1663881943916;
        Thu, 22 Sep 2022 14:25:43 -0700 (PDT)
Received: from smtpclient.apple ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 v11-20020a17090ad58b00b001fd77933fb3sm249055pju.17.2022.09.22.14.25.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 14:25:42 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config.py: default repository
 updates
From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
In-Reply-To: 
 <92537c2ac48c331c5d2ac73007146a99e69b5a5f.camel@linuxfoundation.org>
Date: Thu, 22 Sep 2022 14:25:41 -0700
Cc: yocto@lists.yoctoproject.org,
 tarxf@esquibits.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <1411BC5F-E539-467E-AEF8-481D1FF787AA@gmail.com>
References: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
 <e97d25b8f041f395ed6645b4a1e3f44d16ecb5ce.camel@linuxfoundation.org>
 <0AECD2F7-B229-451C-B328-2DD5D82A2DB2@gmail.com>
 <92537c2ac48c331c5d2ac73007146a99e69b5a5f.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 21:25:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58141



> On Sep 22, 2022, at 1:42 PM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Thu, 2022-09-22 at 09:36 -0700, Benjamin Esquivel wrote:
>>=20
>>> On Sep 22, 2022, at 5:42 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>>>=20
>>> On Wed, 2022-09-21 at 19:33 -0700, benjamin.esquivel@gmail.com =
wrote:
>>>> From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
>>>>=20
>>>> the repos that are used as defaults in the build requests are =
outdated
>>>> hence the update.
>>>>=20
>>>> Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
>>>> ---
>>>> config.py | 22 +++++++++++-----------
>>>> 1 file changed, 11 insertions(+), 11 deletions(-)
>>>>=20
>>>> diff --git a/config.py b/config.py
>>>> index 042a1ec..2249e82 100644
>>>> --- a/config.py
>>>> +++ b/config.py
>>>> @@ -38,23 +38,23 @@ repos =3D {
>>>>                           "neon-master"],
>>>>     "eclipse-poky-oxygen": =
["ssh://git@push.yoctoproject.org/eclipse-yocto",
>>>>                             "oxygen-master"],
>>>> -    "poky": ["ssh://git@push.yoctoproject.org/poky", "master"],
>>>> -    "meta-intel": ["ssh://git@push.yoctoproject.org/meta-intel", =
"master"],
>>>> -    "meta-arm": ["ssh://git@push.yoctoproject.org/meta-arm", =
"master"],
>>>> +    "poky": ["git://git.yoctoproject.org/poky", "master"],
>>>> +    "meta-intel": ["git://git.yoctoproject.org/meta-intel", =
"master"],
>>>> +    "meta-arm": ["git://git.yoctoproject.org/meta-arm", "master"],
>>>>     "meta-agl": ["https://git.automotivelinux.org/AGL/meta-agl", =
"next"],
>>>>     "meta-aws": ["https://github.com/aws/meta-aws.git", "master"],
>>>> -    "meta-ti": ["ssh://git@push.yoctoproject.org/meta-ti", =
"master"],
>>>> -    "meta-security": =
["ssh://git@push.yoctoproject.org/meta-security", "master"],
>>>> +    "meta-ti": ["git://git.yoctoproject.org/meta-ti", "master"],
>>>> +    "meta-security": ["git://git.yoctoproject.org/meta-security", =
"master"],
>>>>     "oecore": ["git://git.openembedded.org/openembedded-core",
>>>>                           "master"],
>>>>     "bitbake": ["git://git.openembedded.org/bitbake", "master"],
>>>> -    "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", =
"master"],
>>>> -    "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", =
"master"],
>>>> -    "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", =
"master"],
>>>> -    "meta-gplv2": ["ssh://git@push.yoctoproject.org/meta-gplv2", =
"master"],
>>>> +    "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
>>>> +    "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
>>>> +    "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", =
"master"],
>>>> +    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", =
"master"],
>>>>     "meta-openembedded": =
["git://git.openembedded.org/meta-openembedded", "master"],
>>>> -    "meta-virtualization": =
["ssh://git@push.yoctoproject.org/meta-virtualization", "master"],
>>>> -    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", =
"master"]
>>>> +    "meta-virtualization": =
["git://git.yoctoproject.org/meta-virtualization", "master"],
>>>> +    "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", =
"master"]
>>>> }
>>>=20
>>> Sadly this isn't the case. The push servers are where people with =
push
>>> access push things, which then mirror out to the other mirror =
servers.
>>>=20
>>> The autobuilder works off push since other wise, we might trigger a
>>> build and it may build the wrong thing if the mirrors hadn't updated
>>> yet.
>>>=20
>>> Whilst I appreciate that is a problem for only certain users, it was =
a
>>> really problematic corner case for the main project AB.
>> Ah, I was missing this context. I know that in the build request =
interface=20
>> you can override some of these repos but I believe not all of them so =
you=E2=80=99ll
>> get an error eventually and need to go tweak the config.py file to =
make it
>> work. I don=E2=80=99t know if there is a way to user override this =
but I=E2=80=99ll check.
>>=20
>> Thanks for checking my patch.=20
>>=20
>=20
> Thinking a bit more about this, we could parameterise it so that it is
> easier for people to configure and maybe document it too.
Agree, to keep repos default like the ones that work now, then to add an=20=

override for user needs and document this new behavior.
It=E2=80=99ll take me some more time to get to it because I=E2=80=99m =
looking at how to=20
minimize the config touch points on new and on running auto builder=20
setups. The less scattered the config is, the easier will be to automate
its provisioning (and also for manual setups).
>=20
> Cheers,
>=20
> Richard
>=20


