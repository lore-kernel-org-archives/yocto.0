Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44122C4167B
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 07:04:19 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web11.7874.1699945453012855613
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 23:04:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gKCWyt7a;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3b2e72fe47fso3478884b6e.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 23:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699945452; x=1700550252; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nm2z2KKRGEngZ1dmdXMoyYsDeKz34H7mUuY2qQmRNPI=;
        b=gKCWyt7as45IAfBmdyqX9K8fOQrohHRwL6FpT9bCYyUW+ggr3hMUnwXuolB+D3jkVr
         Y6iiPyzR7tH3KB8KFgbfqirJ/LF6g/PBFwvlZ6UMxUCvXmDVmYHGtONMbYbOBUSlUhPA
         /CwIiJUdICyWWrSHPc3hr3dT51mfez4D6R8VYs9wdaLv7aJGN1u1QzEMgu1r1zZj9PFE
         JZB5RLcgyKnnDzKrjDsXdv3AJWys05HTgDwy1h3ILqIxEf/lt8LrixNCli4XJdGGxHIP
         wCCsMoqO2X93pLzkg+G6Cjjiu3M8DESP+BSNSmMNMjBBdT/+LCoX7R6Ab4c/EqT6Hsz2
         mehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699945452; x=1700550252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nm2z2KKRGEngZ1dmdXMoyYsDeKz34H7mUuY2qQmRNPI=;
        b=L8zFmnkXvmCUI6//DHT3Eki36vL9KXTqMamJNKylYVwu3LihNN62uzW8ITvDhtGskF
         2JPrq+KRvp8ikabNLCNlnPR7Zobq2Hi5mdaTjOTIVe6TIlTU0VrI2BYmfOyNDd3OJB50
         91c3MZLRwEGoSGvNfIO7lXBUfCi3nbyNGNzIuUw12VHjRMXXb7PLCanOXTxwWuagSo+n
         7EUI6FR0HJ6Rg4d/8uvU4JIIFmzKiFPwM5EjToBU2J3FKKpWOsKtH5VUyW3nRAnnxFuk
         jorawCZfNlBKbWP6gOdFMORZLda5MmnF02yQFCvpgSzClARfpNJVALL3DbrJTmU+UeQx
         QTRw==
X-Gm-Message-State: AOJu0Yyn6sYIGaX5Js+QiHrh/SYKFS15254iY53aK3c87BYocjWGxVnb
	eaexaXh6sRYRvoiaI4Xan0aZaM/UghHV4hWD/3U=
X-Google-Smtp-Source: AGHT+IEIeRRrGFbaaExeP0E5grEhYYgvdlO1y+p52HnJZfhVoPOlTxriszx9Bg4TU1YwINYr7ocWuzVI47V6pDvaYPg=
X-Received: by 2002:a05:6871:4418:b0:1e9:f9e5:d34e with SMTP id
 nd24-20020a056871441800b001e9f9e5d34emr11765631oab.15.1699945452015; Mon, 13
 Nov 2023 23:04:12 -0800 (PST)
MIME-Version: 1.0
References: <AeAa.1699596120034371631.CWXr@lists.yoctoproject.org>
In-Reply-To: <AeAa.1699596120034371631.CWXr@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Nov 2023 23:03:45 -0800
Message-ID: <CAMKF1srQnfQtFTpdfrbtEp2=FURE-Bq=R-Ek56+Xcm-VpPHcxA@mail.gmail.com>
Subject: Re: [yocto] Files copied to /usr/local during installation get
 removed misteriously
To: =?UTF-8?Q?Javier_Casas_Mar=C3=ADn?= <j.casas@falconelectronica.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 07:04:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61674

On Thu, Nov 9, 2023 at 10:02=E2=80=AFPM Javier Casas Mar=C3=ADn
<j.casas@falconelectronica.com> wrote:
>
> Hi,
> I have a recipe that creates some directories in /usr/local and copies th=
ere some files using do_install:append
>
> inherit qmake5
> OE_QMAKE_PATH_HEADERS =3D "${OE_QMAKE_PATH_QT_HEADERS}"
> DEPENDS +=3D "qtbase qtdeclarative qtmultimedia libgpiod"
>
> RDEPENDS:${PN} +=3D "qtxmlpatterns qtdeclarative-qmlplugins qtbase-plugin=
s ttf-dejavu-sans qtquickcontrols qtquickcontrols2 qtfreevirtualkeyboard li=
bgpiod valgrind
>
> do_install:append () {
> install -d ${D}${bindir}
> install -d ${D}/usr/local/test
> install -m 0775 qt_test ${D}${bindir}
> install -m 0775 ${S}/test.db ${D}/usr/local/test
>     cp -r ${WORKDIR}/Resources ${D}/usr/local/test/resources
>     cp -r ${WORKDIR}/LocalFiles ${D}/usr/local/test/LocalFiles
> }
> FILES:${PN} +=3D "${bindir}/qt_test"
> FILES:${PN} +=3D "/opt/*"
> FILES:${PN} +=3D "/usr/local/test/*"
>
> When I build the image, I see the folders appear in /usr/local as expecte=
d while creating the rootfs but at some point they are removed and, by the =
time the rootfs creation finishes, they are gone.
> If I take the ipk package and install it on the embedded device the folde=
rs and files are created correctly so I guess that the recipe is fine but t=
here is some task during the rootfs creation that deletes all the files in =
/usr/local (my folders are not the only ones that are deleted).
>
> Who could be doing that or how can I debug it to find the culprit?

There could be a rootfs postprocessing task which could be involked
after rootfs generation to do such tweaks. Look for what you have in
ROOTFS_POSTPROCESS_COMMAND variable.

>
>
> Kind regards,
> Javi
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61649): https://lists.yoctoproject.org/g/yocto/messag=
e/61649
> Mute This Topic: https://lists.yoctoproject.org/mt/102502363/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

