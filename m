Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46AFC19F2C
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 14:02:02 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.6511.1659448918284881763
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 07:01:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C8HS89Xp;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id u1so11834801lfq.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 07:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pwd9GJYhCTNz8IGVloNWheR/dwkUqL7qm3B80IW2ZKo=;
        b=C8HS89Xpo6bfsf7ECvXSFMmed2QGjgJZVLcSN0UTENhMDyONwUBKXQm3851USG1m/R
         fO2ChhIoAFo2atDej9Y++YjlopGqthwf0MMTnJQ8SvLxKGWgq/VOk+/ZAktnb+Y8PYLX
         mp7pb2Pv6Qq/VDnHYQZpYGcrU3T0nR2k4wTdvKjehkyyT9EPz/bT6gLpnDX/Sq7Uam6S
         N72+vPBj+OD3df21KUuziHearVwATqPbYbWgbjmOQbPU1Jvu9kzR+SmGxhC7enY38jtX
         VDc0RyXckyw/Z4gcXbCWgSEhWKwFmzkIBis8k7nBM1JBEHvWeU8evZlE8rAciL5sfi5L
         sUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pwd9GJYhCTNz8IGVloNWheR/dwkUqL7qm3B80IW2ZKo=;
        b=CVITXq6KpqcyM/8YWXZT+v8DtXxhZzyqnoGCUnA9ZC4VTQ3hnXqg0csNcLMziSCcYE
         ZOGexvywuOSnMjsVjnAqKqKV7pPujy38OvRPYWzqo3dvqGN/yMtKTt6M0nIttov6xmtA
         SHUqq+o/U3m/CFB3w8QHGlwh3eg0tTjEjLpslcLZsNE3LLh+UsDLdJkusfB+QYG983Z4
         zXbOzfuK1dRwvBQe8SF0pVeiO+GqUnbPgm6SOUUVzEvoBWF9vhIXyvDksZcE0xAapAuv
         KcCUEFZayhFfODwnzhQxyVa2E/mHtTnZvSsRl0CiBfsk4U6PkHFki9IpX9CeNmpdC8OD
         IszA==
X-Gm-Message-State: ACgBeo2i7fFzqME5POqS/1TnrtrpTiXMejCC9Y8untmxOsilKT3DRpa3
	+reLPHE13PITD3wwnr5JNWkpO/FjSJZDZDTlalM=
X-Google-Smtp-Source: 
 AGRyM1ul2J4iOKOH2PiWW2lSz01Q3WGP3eNHDGKXanhD8eG3UF7rtkZAUkwiBg8vvun61bFTga9iC0Ou3PUhsJ5u0pM=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr7104167lfa.380.1659448916401; Tue, 02
 Aug 2022 07:01:56 -0700 (PDT)
MIME-Version: 1.0
References: 
 <SA1PR05MB80485D6B6817919EDE566537CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB80485D6B6817919EDE566537CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Aug 2022 16:01:44 +0200
Message-ID: 
 <CANNYZj_SBbKBEkkRh-KTUGRvq4d2joepEs6P2g11efzRfeBFoA@mail.gmail.com>
Subject: Re: [yocto] Conf for a single recipe only
To: sebastian@mapped.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 14:02:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57731

There's no way to build two versions of the same component, if the
versions share the recipe name. You have to fix the application, or
try to rename one set of the go recipes so it is separate from the
other set, to something like 'go-old'.

Alex

On Tue, 2 Aug 2022 at 15:15, Sebastian R=C3=BChl via lists.yoctoproject.org
<sebastian=3Dmapped.com@lists.yoctoproject.org> wrote:
>
> Is there a way to set the GOVERSION for a single recipe only?
>
>
>
> At the moment I set the Golang version to 1.18 using the recipes from mas=
ter (on a local dunfell branch) and set the go version in the layer conf:
> GOVERSION =3D "1.18%"
>
> PREFERRED_VERSION_go-binary-native =3D "1.18%"
>
> PREFERRED_VERSION_go-cross-canadian =3D "1.18%"
>
> PREFERRED_VERSION_go-cross =3D "1.18%"
>
> PREFERRED_VERSION_go-crosssdk =3D "1.18%"
>
> PREFERRED_VERSION_go-native =3D "1.18%"
>
> PREFERRED_VERSION_go-runtime =3D "1.18%"
>
> PREFERRED_VERSION_go =3D "1.18%"
>
> however this messes with mender as it seems there is a bug in the golang =
compiler=E2=80=A6
>
> So I want to use those settings only for my application recipe.
>
> Any ideas how to achieve that?
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57727): https://lists.yoctoproject.org/g/yocto/messag=
e/57727
> Mute This Topic: https://lists.yoctoproject.org/mt/92769708/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

