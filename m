Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F93EC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 10:10:01 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.39395.1669889397167433499
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 02:09:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KA/QBQW9;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id l8so1281575ljh.13
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 02:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZNUOccdo2ZVak1YGOgFOrAKgCmd1Pi5C1L24T5fiR4=;
        b=KA/QBQW9aITia/vujUFPPW4tzB7OUwxlh6z1ilXfohq8o0p08dZNcN3mOBRbSmdyNp
         Kw6Uwd86aWUpP0Iuudqbl6iZECyRo+Q+l5yKTY4DCt/H5/QNT6idOMNTVRf2fy6shjVu
         nD9sBaKFsZmjKPfo5OXsZCda1EMva6t+UMVr7ObZU8zSf+GExJgs17rPwVw8fpm1RNi7
         ABatrjKTTN0BoFVBQXADxuQBJhbgjFOF+q5O/LkaI72iPqPmpRk/E11nGPVvlN1hRAwx
         achjMqa9glN4bw8xUudVlJ4yZs7bieWkd1AexIi62NM3+K/MDSntOUeszW0loAOjBRai
         s2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZNUOccdo2ZVak1YGOgFOrAKgCmd1Pi5C1L24T5fiR4=;
        b=NhgFV1dhgfBPElJGI+fXcK1Xht/ZbCZb6ziEN+Z+93BBvTbO6ASRlqFsnQYrg6kmqM
         WdaP4i86KzNaZZYmrr78KPCkHMJm3n5BNrYHMGZUV+bJVKXf3YmsTudH2XPtePtnaoYS
         ZWqqChshKDRgCCZg4m7QZZd0xD4dgxuP3qQfkIWDWWLuzshHXGCoHVvcETjlY0dm2JzH
         yqbH+m2Deo8sA146O67+ExOXIQwNH2+NbSKyheLp4d8J9BxOKbnlLq2UhZwiFKVjNTbt
         z98I9H1ImOWhVGc9UTp+blvjexE4kYdTeq0oO5h3QCOvFOKcPD1isOEWEsV717qNoS8a
         vypw==
X-Gm-Message-State: ANoB5pmFRbhXkiGbKUDQDsIT+pvsQwsmj6j5DuP6XlqNCxQH02lAwgzR
	YK04LL9t/CLwDpQId65b9MaYXW4NFr+KNPHwupM=
X-Google-Smtp-Source: AA0mqf7Wnu00J9VN02soS0KSU0M32TZG4ULTnVl4reg5Ke0eh/2Wua6cAFTj1Bc3HgU5EWhedqEbgy5so5OIzvYUwF4=
X-Received: by 2002:a05:651c:c8f:b0:26d:d196:d04 with SMTP id
 bz15-20020a05651c0c8f00b0026dd1960d04mr21902994ljb.403.1669889395178; Thu, 01
 Dec 2022 02:09:55 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com> <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
In-Reply-To: <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 1 Dec 2022 11:09:43 +0100
Message-ID: <CANNYZj8uXJ189UckEVktdEuRgLpAcn+driQqnxj0KLaGYSU=wQ@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Martin Jansa <Martin.Jansa@gmail.com>, s.mueller-klieser@phytec.de, n.wesp@phytec.de
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, Zoran <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 10:10:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58694

And this is the commit that did this:
https://git.phytec.de/meta-phytec/commit/conf/layer.conf?id=3D8261e896d2b43=
211e7377feb38e919336d47c39f

Shame on you, phytec. Shame on you. What you do in your layers perhaps
doesn't matter so much, but you also give everyone a bad example to
follow.

Alex

On Thu, 1 Dec 2022 at 08:47, Martin Jansa <Martin.Jansa@gmail.com> wrote:
>
> Agreed with Rudolf.
>
> If the layer maintainer didn't bother to do at least do one build with ne=
w release and adjust LAYERSERIES_COMPAT, then I don't consider that layer w=
ell maintained (it could be someone else who uses the layer, tests it with =
new release and sends PR to adjust LAYERSERIES_COMPAT).
>
> Recently I've also seen this:
> LAYERSERIES_COMPAT_phytec =3D "${LAYERSERIES_COMPAT_core}"
>
> which is also bad as it completely disables the check (seen in https://gi=
t.phytec.de/meta-phytec/tree/conf/layer.conf#n14).
>
> On Thu, Dec 1, 2022 at 7:06 AM Rudolf J Streif <rudolf.streif@ibeeto.com>=
 wrote:
>>
>>
>>
>> On Wed, Nov 30, 2022, 20:27 Zoran <zoran.stojsavljevic@gmail.com> wrote:
>>>
>>> Hello to Yocto community,
>>>
>>> As I am much more passive yocto wise these few years ( working on
>>> Android build systems and around, this is also a nightmare, I should
>>> say ;-) ), I have one Yocto question which I never really understood.
>>>
>>> I will ask it by example. I have one layer for the CAN tools and apps
>>> which I have created 4 years ago:
>>> https://github.com/ZoranStojsavljevic/meta-socketcan
>>>
>>> In there, in conf/layer.conf:
>>> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/l=
ayer.conf
>>>
>>> I have the following line (layers' compatibility):
>>> LAYERSERIES_COMPAT_meta-socketcan =3D "sumo thud warrior zeus dunfell
>>> gatesgarth hardknott honister kirkstone"
>>>
>>> I do not understand why we need to explicitly name releases for such
>>> simple generic layers?!
>>
>>
>> To me this indicates that the maintainer of the layer has tested the com=
patibility of his layer with all of these releases of the Yocto Project.
>>
>> A maintainer of a layer should make a deliberate decision of adding a re=
lease or dropping one from the compatibility list. It should be an attestat=
ion that the layer's compatibility with the releases in the list is actuall=
y maintained and tested.
>>
>> There have been changes to the syntax to conditional variables. Your lay=
er might well be compatible with all of the releases and it's great if you =
tested it. But it's not a given.
>>>
>>>
>>> Instead, for a virtual example:
>>> LAYERSERIES_COMPAT_meta-socketcan =3D "${AUTOLAYER x}"
>>>
>>> So all the layers might be included (or for at least lets say x =3D 4
>>> latest releases, where x =3D 0 would be include all)? I do understand
>>> that complex layers could NOT have such a definition (because of the
>>> dependencies), but for the generic layers (as such presented), this
>>> would be beneficial.
>>
>>
>> I never cared for ${AUTOREV}, which is similar, in the first place for t=
he very reason that it creates inconsistent behavior. This would do the sam=
e thing. What would the last 4 releases even mean? What is the reference an=
d where is it obtained from?
>>>
>>>
>>> Thank you for the answers,
>>> Zee
>>>
>>> _______
>>
>>
>> Best,
>> :rjs
>>>
>>>
>>>
>>>
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58691): https://lists.yoctoproject.org/g/yocto/messag=
e/58691
> Mute This Topic: https://lists.yoctoproject.org/mt/95375670/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

