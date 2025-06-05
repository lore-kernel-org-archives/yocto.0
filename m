Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05677C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 19:26:44 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web11.16924.1749151601426721472
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 12:26:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YvVEGtJE;
 spf=pass (domain: gmail.com, ip: 209.85.128.172, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-70f94fe1e40so26464557b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 12:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749151600; x=1749756400; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1LHpkaoZLT9YJ0O53mU0W/J0ibSoWv7uw3GrtYiDcsI=;
        b=YvVEGtJE0HvQ7l7TYEcaHxOK0YgIP5RzMUpcC3N69M33yrtOksExmaN3u4Bv7ytkU3
         yPH+DwXrdowjd0nNEai5NHIaHuYbuQdbJQoTapJEV8vsuuLTwmgVXneOTLx2k7L2Vfxj
         dipQXKF6zrDSQIQsoPeAoFGneg9AGx68Vkgwc05NTYLbhdYt7yimmG5bhdgnPgcxrbDF
         PSfR6etraQhX6+Q3ae0yTLpf8sazO7YQJz5txnbIPJYEXBM3LVitIByzLb/m563zoSlZ
         b8bDK00nBCx91rI/E2lAjmxK0ZAqJi/bOWxtqpuQgqohW8a9RCrrKPE05EQLeLM/UYKV
         GfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749151600; x=1749756400;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1LHpkaoZLT9YJ0O53mU0W/J0ibSoWv7uw3GrtYiDcsI=;
        b=XpJ37YfYjm7n0KPeJlUJLIBLcvSRsd6eoX7/OTs3bTc3OwnglMc4Lq+O+gqp+aBP3K
         ALamAuNgWxhLkPpAou0dwYpjv/iOo50gi8kAvilDS/kw2suCsD/8vzzsHPDFXyOFSut/
         Z5US64BacPEkqCcwZb27Oncceo030/uaUw6z07EZsyciXgqKS0jb0nVJlVWqFcuwFaso
         RRftR9dPoT1uomgSB0FB2f29xJ33NGYOtqhj8ZyJSTdWyukhqqK5IzWVae00TPjzN9TH
         mCkfNu18FfskA3SW66HvuIqCEjoleqARsQ19H6dRkBYKrfTjWmEifhXLkAJzPQQeZW+G
         GdVQ==
X-Gm-Message-State: AOJu0Yy7VAcoIeeCweykfYXzo4XT4WDgSnRp4+uNIANNgM57stkE0CRY
	/EGxRUtFeLTZytIJffsqKDbDMll9rXouLN6SNCCIdWFEIT6svnwe4Ol4COkKEklCaVpzQ13MmVs
	CvbvAIeeLpjNiYpPeZCb1ZEF8hJDBxAv5wR73
X-Gm-Gg: ASbGncsMoqW8K8FBRflEmS3V1LWRo7PVW8I2NF/z6YcdgTg0Tex5iuH71Q8dXvQUXBi
	Y+Q6e5x7YpiXm5i+NigCU4U1YNshyTWia6OX+ZEWPAvWmiBFmhjyvEFg8pjz1uvvrIXPakVpICF
	1vzaemUk6h46SzRcnU3aFr21kvwr7FbElmQ3BjSJLXPSkVRNunCu456CuWPQ1CtmLb2QnMTt8=
X-Google-Smtp-Source: AGHT+IE+qWYYsOARQLIxWG+UaSQqZJfSROoJxcitcNmTtr5IDyhPeeCzpIDcbnz1W5HBXrZ83lVhODpOMDRnV/gskWg=
X-Received: by 2002:a05:690c:6902:b0:70e:2a7a:4c52 with SMTP id
 00721157ae682-710f7ad5685mr7928957b3.1.1749151600125; Thu, 05 Jun 2025
 12:26:40 -0700 (PDT)
MIME-Version: 1.0
References: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
In-Reply-To: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Jun 2025 12:26:14 -0700
X-Gm-Features: AX0GCFvkCNelCpgqv6HjD6_p9KB-tuUcEkRoxBY9NVtnihtpVEIMe-wHQ2Qf-k4
Message-ID: <CAMKF1srhTXazoEjVxzjeFv6XpnRBv7_=7zKTPBCB6y2B9Gxmcw@mail.gmail.com>
Subject: Re: [yocto] Native recipe still contains non-native compilation flags #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 19:26:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65477

On Thu, Jun 5, 2025 at 12:05=E2=80=AFPM joseph.maniaci via
lists.yoctoproject.org
<joseph.maniaci=3Dseagate.com@lists.yoctoproject.org> wrote:
>
> So I have two recipes, app and app-native.
>
> Inside app.bb I have `DEPENDS =3D "app-native"`
>
> Inside app-native.bb I have BBCLASSEXTEND =3D "native"

you do not need app-native.bb as separate recipe, Adding BBCLASSEXTEND
=3D "native" to app.bb should get you app-native

>
> I can execute bitbake build app and I can see that the app-native is firs=
t being built, so that's great.
>
> However, I'm having compilation errors(non-bitbake related) and went to i=
nvestigate, I captured the environment variables and noticed things like:
>
> export CXX=3D"arm-openbmc-linux-gnueabi-g++  -march=3Darmv7-a -mfpu=3Dvfp=
v4-d16.......
>
> when, for the native, I would have expected:
>
> export CXX=3D"g++  -march=3Dx86-64 -mfpu=3Dsomethingelse.....
>
> I do see `export BUILD_CC=3D"gcc "` and `export BUILD_CXX=3D"g++ "`, but =
I want to say from previously attempts playing around, the same flags are s=
een in the non-native recipe build as well.
>
> Also, another thing that feels like an oversight is that I would have exp=
ected some sort of automatic flag in the environmental during configure/bui=
ld/install. Executing 'bitbake -e app' I can see `BBCLASSEXTEND=3D"native"`
> in the native output, but not the target, and I kind of assumed it would =
make it's way into the build environment as an indicator.
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65476): https://lists.yoctoproject.org/g/yocto/messag=
e/65476
> Mute This Topic: https://lists.yoctoproject.org/mt/113491223/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

