Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41EBFC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 17:40:31 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web08.30046.1644428430821047837
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:40:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=caa/4tlC;
 spf=pass (domain: gmail.com, ip: 209.85.160.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id t1so2420287qtq.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XBBimK/XoPpeuQEfRWPZf5Pyu1W1DVQfw+w4/u/CYjo=;
        b=caa/4tlCwNhCvtlRoyPd7o3fjFG+G00X4I4wzaIV1wjWdm4JPylmLSBan4MPAIqFxe
         VlsUbxJTRCNjRHMRBnqbfCdHMjH2GnqPOcXOLggStjlTCAezEWtcR22ti61tnmEt29N8
         DIsBPmIZSB4F0zEEwuhjNEL4tINY+sX7S50gCR2uRzxjrAHfcYYD4gWsPgSy84hL+spT
         GqRUSfqNpOORgpcum1XtsywM4154RYiQ0F19cy+YfQp/XzCRXYjzUGhgC8uVEg3nN10m
         R/RX7Ywj0+g+DCjawbntLRSa9EImtI/FVNsSCrFH3WA92TrOCOSNBd5/M3MpST8wmzIf
         YIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XBBimK/XoPpeuQEfRWPZf5Pyu1W1DVQfw+w4/u/CYjo=;
        b=GilEDPrI5XT+jb4HAyUxFmRztxER7s74QE9O8ChMBmBnlJY17GYxF9lQSy0aBnOGM3
         EyoSfGAEXrrj8LSgW8VcmfXEEpZkP8piOlB+t9i+mtBGfr65dPU+zsWdXb4oKCIAfedM
         vGgtbSnz4qSIj78uxNXGPMzwRmteMahIgKRZgl2qQeoAX4qDXr9vhXTSOnrRS/9h9acd
         Wt1oY1M9pUbbKlvTbRSIuJuSSw44k9W/ZeHPImEzanU+kwFCIvw6/+vEmiBDMsdE1U5b
         sFtAwbNA1LkgjmMYa+gtgTEKkpn6cMuJAD/J+nFvWjJWHIwsL+6K3iIsGbC+l3Urrnk3
         YGLg==
X-Gm-Message-State: AOAM532o9O7M9BpCBOgpG1sLnajdUCkjQh/EKs8YRs9fH9Dqp9JkKECA
	2WynJvO3rSs1Ew+FQc6ouB24AsvvRHuoV1fkiV4=
X-Google-Smtp-Source: 
 ABdhPJxxco7jORiSyUpaODlrxp159iq09PlQnnJAc4Ev1I6C0Fa+/c8Jem8PqctFDbSA5etzYUFaj7u+79sYi5uWa74=
X-Received: by 2002:a05:622a:d:: with SMTP id
 x13mr2190214qtw.54.1644428429860;
 Wed, 09 Feb 2022 09:40:29 -0800 (PST)
MIME-Version: 1.0
References: <20220209151709.547623-1-limon.anibal@gmail.com>
In-Reply-To: <20220209151709.547623-1-limon.anibal@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Feb 2022 09:40:03 -0800
Message-ID: 
 <CAMKF1spesQVibRsjoxAkkyeugMA8onVPSg2bs6EYYb_cf7GzkA@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] gstreamer1.0-plugins-good:
 Update bbappend to 1.20
To: "An?bal Lim?n" <limon.anibal@gmail.com>
Cc: Andrei Gherzan <andrei@gherzan.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	=?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal@rzerosystems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 17:40:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56125

thanks for patch. Can you create a PR on github please ?

On Wed, Feb 9, 2022 at 7:17 AM An?bal Lim?n <limon.anibal@gmail.com> wrote:
>
> From: An=C3=ADbal Lim=C3=B3n <limon.anibal@gmail.com>
>
> Gstreamer upgraded to 1.20 see,
>
> https://git.openembedded.org/openembedded-core/commit/?id=3D75891f361f3e9=
df9fc3e97c720a2ae57dda75888
>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal@rzerosystems.com>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <limon.anibal@gmail.com>
> ---
>  ..._1.18.%.bbappend =3D> gstreamer1.0-plugins-good_1.20.%.bbappend} | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-multimedia/gstreamer/{gstreamer1.0-plugins-good_1.18.%.bb=
append =3D> gstreamer1.0-plugins-good_1.20.%.bbappend} (100%)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.18.=
%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.20.%.=
bbappend
> similarity index 100%
> rename from recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.18.%=
.bbappend
> rename to recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.20.%.b=
bappend
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56119): https://lists.yoctoproject.org/g/yocto/messag=
e/56119
> Mute This Topic: https://lists.yoctoproject.org/mt/89023349/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

