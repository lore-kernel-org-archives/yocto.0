Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78445C4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 08:16:10 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.15833.1707293761306470892
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 00:16:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AS/ZdKBE;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33b40208735so243163f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 00:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707293760; x=1707898560; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NrTEdsE++8jPlW2A75UrJ2kILIeg89cUkVJV1vFFoKM=;
        b=AS/ZdKBEFOAuaCiS4i2LMF6C58Nc18pwXCF32f4vbfp3vHtmGz/EepAX7HauRts4T5
         Jz4xPheQit9NW/ZUro82Vc/6sSf938jEqG/7/CoaAHFBQt4+LG/Ysaj/9aYQGRKCJjbJ
         N6j8nBXRGIhh9Tl6lTJHKZCmkwdLcC/gN9ltmuK44XY5eNiV70ciyBNGdz27j3/vu1nV
         mVaQokUF2ALpbK7TmfBQnagpVyOu9dNcyho+fL+ZJgVKV+ZewRVLmuPiP21NcW6yHj+Z
         pRXqMXnNGhI+t0KbrJKrNAxGFC1iMUmELxrVqA+Qf06TQbZMQ1liIj8YqTqT2OfAV8lO
         Ia1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707293760; x=1707898560;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NrTEdsE++8jPlW2A75UrJ2kILIeg89cUkVJV1vFFoKM=;
        b=UWNZGCv1roo877LR4e2VLAzaMtq47WdSzEmamFN9veHt9YGAp0vK8frDVt7p0kBVSG
         Wmmw4e6dhPEqdVLT2gSP8r02fcwt07gPicajbWLhw4e8QZGLo1lnBsQyN6+nsftHbiXl
         zfshHkz35GZWceuyw36ED9CC5BZNmFgfcdj5v+HO81l6g/pehz38cGOOzHlcq3IMeu/y
         t6k7642kMYQYsq+EVtSGKjgVH2wqyNBtxaAm+DDlpNECszVkhpuDr1f/nWM4J42XXsCZ
         kosAjf9QtCFxhEl+3n8u5D8sn6z4Pl6LwRcPHy10/w9m0WTXvneiwvtALOjoXADUz/K3
         LDcg==
X-Gm-Message-State: AOJu0YyMidxSI6quybm7iPkSW98nDRkzMUCCTI0cpLMEqwtH7lyrWVw+
	iEIHiFmdhAtGHEy2wG6GwX00FLdCxfptFGpOxcR00osIoS6N5hnJ
X-Google-Smtp-Source: AGHT+IEY9SvLjt0YXGejo2g2mSQ+l9/ZlmyKA6lhtmC/hupZHlgVmM/f2/C99OZ5leeYsfkvU24QuA==
X-Received: by 2002:adf:e50b:0:b0:33b:4f78:a5b8 with SMTP id j11-20020adfe50b000000b0033b4f78a5b8mr595075wrm.44.1707293759491;
        Wed, 07 Feb 2024 00:15:59 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:55c4:f628:91f3:4287? ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id b7-20020a05600010c700b0033b459e8f60sm864306wrx.18.2024.02.07.00.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 00:15:58 -0800 (PST)
Message-ID: <3d8a31f47c6d6deaaf58d4b519f7c2c81dcffc2a.camel@gmail.com>
Subject: Re: [yocto] SDK: Install recipe dependencies only
From: adrian.freihofer@gmail.com
To: kubiznak@2n.com
Cc: yocto@lists.yoctoproject.org
Date: Wed, 07 Feb 2024 09:15:58 +0100
In-Reply-To: <CANNYZj9_iA6oSOH8wRaOHDeNVTKijnq+S8AFcU45Sny-SUvGuQ@mail.gmail.com>
References: <yzLo.1707230479202311438.Hvkm@lists.yoctoproject.org>
	 <CANNYZj9_iA6oSOH8wRaOHDeNVTKijnq+S8AFcU45Sny-SUvGuQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.module_f38+17164+63eeee4a) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 08:16:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62414

On Tue, 2024-02-06 at 15:46 +0100, Alexander Kanavin wrote:
> On Tue, 6 Feb 2024 at 15:41, Petr Kubiz=C5=88=C3=A1k <kubiznak@2n.com> wr=
ote:
> > This works somehow, but:
> >=20
> > 1. Dependencies are not defined right in my-app.bb, where they
> > belong.
> > 2. Runtime dependencies of my-app are not installed in SDK and need
> > to be further explicitly specified in `TOOLCHAIN_TARGET_TASK`.
> > 3. Native dependencies conversion is cumbersome.
> >=20
> > Am I overlooking a mechanism how to identify and install all
> > dependencies of a package without actually building that package?
> > It is clear that automatic runtime dependencies resolution couldn't
> > be performed but perhaps all provided packages (with some
> > exceptions) could be installed. I mean, if for example `harfbuzz`
> > is in `DEPENDS`, all provided packages including `harfbuzz-icu` can
> > be installed.
> >=20
>=20
> This might not be suitable for your situation, but I strongly
> recommend you look into 'direct SDK' workflow if your yocto is recent
> enough. It was implemented exactly to fulfil the need for an SDK
> environment that is accessible directly from a yocto build (with all
> the possibilities of updating and rebuilding, and adding more
> dependencies etc.).

This patch series tries to address this with a more general approach:
https://lists.openembedded.org/g/openembedded-core/message/194149

It supports two types of SDKs: The devtool modify workflow (Modified
mode) as well as the Direct SDK workflow (Shared sysroots mode) as
already mentioned by Alex.
It allows to quickly re-generate the SDK with updated dependencies of
the recipes.

See also the docs patch:
https://lists.openembedded.org/g/openembedded-core/message/194158

Some patches are already on master. The big one which brings the new
features is not yet accepted.

Regards,
Adrian

>=20
> Alex
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62405):
> https://lists.yoctoproject.org/g/yocto/message/62405
> Mute This Topic: https://lists.yoctoproject.org/mt/104198675/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


