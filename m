Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F2F0C83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 21:56:16 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.54116.1753134974358494232
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 14:56:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JpAS2q7h;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7115e32802bso32220557b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 14:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753134973; x=1753739773; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWPYxdiDIxNSksh/5xG3TqKmiC2ebwe7F/PGE3roFtg=;
        b=JpAS2q7hOVfdCXdKE4YAUfuU+sxEQdwAVWFOivDKijx5dT86Y7q4DlNKcGazDXfHCT
         fZK7BmW0jkz9AcINg4J8qHpQ4BtEcvrAMGq9NF6jYwXhvRGjvNoVAEelNyuuzbftg4sI
         CAqeW1+Igr5UiIE60XF0YoDA1sLINC03qPNpeSRqnoukjRhoGvQRWP3ddUaK7tGxyjFM
         mqwL+Bh9p1qFoi9EtiNpiRhTDly64YCO4gUO1aao1TjrkwcjdUz4AzHRBy1572477NzJ
         coXGzw0XQ63fhUwrkTv+IbFMdhlDpJr4mNXgba3tq0knSB02KGm1Qk+vs1uEnc3tvHio
         KNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753134973; x=1753739773;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWPYxdiDIxNSksh/5xG3TqKmiC2ebwe7F/PGE3roFtg=;
        b=tJ/1+blbvLOcu0N7IXtN9BKsSpHiUQSWDFPtkaAGvdF3H6muvT43l7HClBRY9CeFYx
         Y1K0Ao4ut9lMOdXdJVr2CTNKp/GBYIdUbXWzqfn7r0wW8euoN46VuPh9SRi/7HKB5hky
         oOnPJgXxZzBj74flnsz2LnAkI91ltuTZeMwo6VtcKJYtkymUsvFln4o1JEniiu6rafKF
         maLivHBHwqrI71JVxTCI35hhTDWGcDLRpeq4xTzMwx8TlG/gwIi8eA2/lkhxvlQI0NKm
         GXoyB74fDEE5PepGl4fmTmmVwqpwQjK3NxMfUyuGnzfuHd16t/XKBDjzBPd+1297jWy0
         w9Dg==
X-Gm-Message-State: AOJu0YwCBZoIjsLnq4ptgr5mOO6UjUlhCqDaR2a2LFCRQg3Spx25p2Aj
	fEzm5xyJe5hs77QL5tTc1z+o1CqoJNEMF5rwYJGq/AigxdJjrtB5+azRy9OSIc5TsoFQW914hwk
	b04h7oifnlPbOSGzHm6kcU7Jvqj9HoMrhd0MNO3M=
X-Gm-Gg: ASbGncsxLEuwr1VlqN5TY4ccMkKzYl5qpgJVaPeLq55j7dvafqPYt6Y6fkGuN2dXfgp
	4u0BY5iIt8TwKx+2ABMfoi004MOxyl19WcDb5ptYsrYxeBC4xnX4hcwmB9i5mXII3MDRdPMihbk
	K/yJa02ih1yCjXxe2yOOc3lgbjTfAP9VhEDiQ0FsyEMKRA2l91h3BYc9zjkh6KWuW92J8hchHwA
	k0Dcw==
X-Google-Smtp-Source: AGHT+IHT32y/Wr5j+V/N+c9iYby4ERCXFaawRLRqPvNDmCbVyb46oo0l0YHodhPG1qMko4obdALEvAjLQeiKFR67EiU=
X-Received: by 2002:a05:690c:c0f:b0:718:3d7d:5a96 with SMTP id
 00721157ae682-7196876428emr124320177b3.14.1753134973162; Mon, 21 Jul 2025
 14:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <FTrN.1753068185981760834.14lX@lists.yoctoproject.org> <24538.1753130951575957259@lists.yoctoproject.org>
In-Reply-To: <24538.1753130951575957259@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 21 Jul 2025 14:55:46 -0700
X-Gm-Features: Ac12FXzXY8byOx36ohwpTOpkoxQryJvU4ENtOk5kKJSaZbUWm4SroYl6nZlt5dk
Message-ID: <CAMKF1sqxMsZM3DTzvKKGRrgzNYr7Zfqh82DW8neD=JkRKj2czg@mail.gmail.com>
Subject: Re: [yocto] error with SDK that supports Qt creator
To: yocto@lists.yoctoproject.org, crane2018@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 21:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65699

On Mon, Jul 21, 2025 at 1:49=E2=80=AFPM Crane via lists.yoctoproject.org
<crane2018=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> qt.conf is missing.
> But after adding qt.conf, Qt creators reports "Qt version is not properly=
 installed, please run make install".
> "qmake -query" returns valid absolte paths.
> qt tools moc, rcc and uic are present.
> Still missing files.
>
> "bitbake <image> -c populate_sdk" or "bitbake meta-toolchain-qt5" should =
be used?

you need to inherit populate_sdk_qt5|6 in the image which is used to
build the SDK
I think building meta-toolchain-qt5 or meta-toolchain-qt6 sets up the
toolchain with
right bits

>
> Thanks!
> Crane
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65698): https://lists.yoctoproject.org/g/yocto/messag=
e/65698
> Mute This Topic: https://lists.yoctoproject.org/mt/114262984/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

