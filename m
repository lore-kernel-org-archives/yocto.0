Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C858DCD1288
	for <webhook@archiver.kernel.org>; Wed,  3 Apr 2024 21:43:39 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.24191.1712180617127067107
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Apr 2024 14:43:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kQ7e9oyd;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-22a96054726so256856fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Apr 2024 14:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712180616; x=1712785416; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebZkNwErGegHOL4QcyUy/WL1mhXviuXQMCYsCMBqVdI=;
        b=kQ7e9oydaY+ruLpDcNKUPMDrRkbnmAV31BzjYrmQo2HX3Hq/vqbGdHpt3A0+5j2oha
         bgkMXt2fsk0BS+i9O7Kn3oLChokJQp/y08Znb3UAVLZc3o3x6pHdvB7Mp7SVqTDVbIB6
         g9uyvOrQS9RgqX9nHHtax1r3Yoq4h4STOe/ApjbxNmWE1jqZheK0ABv1q2uT3vE+QiRq
         um7N0KHoSKJEfW9InHilmIncso1dxgPeGc/OoI4Svq0+TW1Njmx/UGc0Rf11rIgd45pH
         CXs/sl+raaHwedxLJ/XDoF46vZXLpEQABCp79GwaGv8k8Dht9yCXzGwsnODno3Y4XMoP
         +2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712180616; x=1712785416;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebZkNwErGegHOL4QcyUy/WL1mhXviuXQMCYsCMBqVdI=;
        b=VNksWf6FGZLZWLtrZdg1Iv8N87BNo7MTaJYzVRyx7TW2DyC1T8TKPD2YeoIFkON7s+
         wLEIwsixEv84IzszXm7WEhtbq/1WvESRPfqG7DRsSZG7neiIWO2Dl1gfzXQ0opwLVQso
         xn3O7n12Ja7HW1JPPmLrfBGX18LTHFjde/l2GELjS2oEIazCSlyzSOLeWa7je44Kht7h
         3vMb4WDhv0yunyPUXTL5lrSfJv1pa9GRliw1vFS0ubU+S/m5OVOrT25Yyp6tkGUfG/WA
         y8Mda56mPuKrfMrqE+FLCM2DFeyo0pglo2WOielToVv27a5AWwCKVDHtSPnzd8uEFsSL
         AJ7A==
X-Gm-Message-State: AOJu0YzC1172nCO/XDiEmkYDRGqLAyrR3gZwBGTudhR0KOY7mj6SCl01
	GhsvEHoIheQ/+isUtYMoc5oY8siW+KAm8oTQQGFOG0KOcMskeq7jCDqqnKG7/zbi34S7l4mmp4x
	YZ05+/dfylKBg96iXi26ywrabj4w0Gupy
X-Google-Smtp-Source: AGHT+IFB6iCa51JupKJPDZLXCq7EcBX2WhHtp9Mvne+YmqSybB+pt9VeYLRF2ST8xAaAZUozm8jCOCA4lGrQFxtXhpw=
X-Received: by 2002:a05:6870:a998:b0:21f:9c60:dba8 with SMTP id
 ep24-20020a056870a99800b0021f9c60dba8mr613373oab.4.1712180616196; Wed, 03 Apr
 2024 14:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
In-Reply-To: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Apr 2024 14:43:09 -0700
Message-ID: <CAMKF1spcbaPhRvdh32rhUduCvsnRa0=dGmt4iukghvG5NrGK3g@mail.gmail.com>
Subject: Re: [yocto] Add json-c package to yocto sdk
To: yocto@lists.yoctoproject.org, jacob.avraham@auto-talks.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Apr 2024 21:43:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62886

On Wed, Apr 3, 2024 at 1:50=E2=80=AFPM Jacob Avraham
<jacob.avraham@auto-talks.com> wrote:
>
> I want to create a yocto sdk for arm64 architecture that includes the jso=
n-c library package.
>
> After running 'source oe-init-build-env' in the poky directory, I did the=
 following changes to the local.conf file: MACHINE ??=3D "qemuarm64"
> IMAGE_INSTALL +=3D " json-c"

Can you try doing CORE_IMAGE_EXTRA_INSTALL +=3D "json-c"

>
> Then I ran 'bitbake core-image-minimal' and 'bitbake -c populate_sdk core=
-image-minimal'.
>
> I see that the package is compiled as native, but I don't see it in the c=
reated image, nor in the SDK. I tried it also with target 'core-image-full-=
cmdline', but no luck there either.
>
> What am I missing here?
>
>
> Jacob
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62885): https://lists.yoctoproject.org/g/yocto/messag=
e/62885
> Mute This Topic: https://lists.yoctoproject.org/mt/105317616/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

