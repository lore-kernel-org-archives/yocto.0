Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A3FC7EE24
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 09:39:01 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.84600.1684143537409199144
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 02:38:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Cxgh3yzi;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: tyrocjl@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f139de8cefso64059753e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 02:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684143535; x=1686735535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jEOufmTd4mSsyD4+lciNHCAWZoewpxnA3FmPbWufcI=;
        b=Cxgh3yziIfCsR/xcE4vYYk1hKJT03uhBkEIYnxR3IZQhntz8Rd5LhMFpHd0FyJ7C3L
         NBsXXmYNG0R1Iw53QKV6vOfpc6Et6V86Q7Sn1xoOvNuzyziQ1jCW36U2xGSvohnMkAsD
         26Vid0lj9g6LrUxlh6oZn7CgcS1HyzzYhKlzZhCWGuoPn5JEQUMwLBLco7SPVumUrh0A
         l4b7IyfOuBzxDq3ohjBT+946iiOIYPeWVjKMadO2F/rjqWN5CWFfZTcRCNzTbK2/yVC7
         priG3/szq36F2fZoUHKVcVcW4Da2cP66Pu37ZSxDkPf2MuHm2vxB2k/TNR+5PIBEum42
         JDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684143535; x=1686735535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jEOufmTd4mSsyD4+lciNHCAWZoewpxnA3FmPbWufcI=;
        b=BtyJduzEccsIjWi6k8Z7/gNf6wP+jPYRFamcdl3NNxROpq5DTPnkhL+SCvItkI7lms
         Ex5f3nkfH+zrfcj5Y8Nma0OpgQSpmbCUwxoJTRsPzCn0MTcBYpQt7l3EsbRaBDk2c89a
         CDrQj6juLx8OdNzPJTV17qYYHFGcJTXPjRpz95Q4H8vAxoLGEQCUMNM3Da5WKEUW0p0D
         Zkth6NkJnCzE3Gq4Jnklm/szDQCi2AIM56d4QFamgiFusYG+J7L4rEPCSWdw5h8c7UvG
         1XgOUtoKv4fbuy22A/sG7Krf8cYv6IWffLd6Jpo6hMdGXoLNg9uLtwltHC5bMmP3yvTE
         wFJA==
X-Gm-Message-State: AC+VfDw5GtiKz5UoXkJT59QWnvzuWaOMQDY0WqH1QBMTGWRKIdr1/1pv
	NvAolNYFPSR4RkTtf7TAQqbnYi1OIMeGRSnGBtk=
X-Google-Smtp-Source: ACHHUZ46tz14Q0aZVSrY12dAQh24C9x6/jwDTCv7JNYuOkQWYU75L4FQq9xaep1z3CI4lmNCtnJyDKsyumE+9pc1eCU=
X-Received: by 2002:a2e:8850:0:b0:2a7:8b35:8274 with SMTP id
 z16-20020a2e8850000000b002a78b358274mr6853391ljj.19.1684143535191; Mon, 15
 May 2023 02:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
 <CA+chaQej4J96=EQ8OvpA9v0icv9rvcf0GMUYS0-ESQpBJma6_w@mail.gmail.com>
In-Reply-To: <CA+chaQej4J96=EQ8OvpA9v0icv9rvcf0GMUYS0-ESQpBJma6_w@mail.gmail.com>
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Mon, 15 May 2023 17:39:43 +0800
Message-ID: <CANzPQ-Ct81W1O+ooyfyhhFGF2iN-C7w=as-vFSvQupqgdjzvLQ@mail.gmail.com>
Subject: Re: [yocto][meta-python2] Kirkstone EXTRANATIVEPATH is not in effect
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 09:39:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60021

I added:
DEPENDS +=3D "python-native python-setuptools-native".

I think it should work just fine, because:
python-setuptools.bb    inherit setuptools      -->
setuptools.bbclass      inherit distutils       -->
distutils.bbclass       inherit distutils-base  -->
distutils-base.bbclass  inherit pythonnative    -->
pythonnative.bbclass   contains 'EXTRANATIVEPATH +=3D "python-native"'

I don't know why my EXTRANATIVEPATH doesn't contain python-native when I ru=
n
'bitbake -e <my_package_name>'. And this causes my bitbake can not search
'python2'.

Martin Jansa <martin.jansa@gmail.com> =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=E6=
=97=A5=E5=91=A8=E4=B8=80 16:40=E5=86=99=E9=81=93=EF=BC=9A
>
> Did you add "inherit pythonnative" or DEPENDS +=3D "python-native"?
>
> You need just the inherit line.
>
> On Mon, May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com> =
wrote:
>>
>> I have a bb file abc_1.0.bb:
>> DEPENDS +=3D "python3-native"
>> And EXTRANATIVEPATH contains "python3-native" as expected, so command 'p=
ython3'
>> can be searched.
>>
>> Then I add DEPENDS +=3D "python-native", but EXTRANATIVEPATH doesn't con=
tains
>> "python-native", so command 'python' can not be searched.
>>
>> python3native.bbclass  has a line:
>> EXTRANATIVEPATH +=3D "python3-native"
>> So python3 can be searched when bitbake this recipe. I saw similar codes=
 in the
>> pythonnative.bbclass file, but why didn't it take effect?
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60018): https://lists.yoctoproject.org/g/yocto/messa=
ge/60018
>> Mute This Topic: https://lists.yoctoproject.org/mt/98899140/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Martin.Jansa@=
gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

