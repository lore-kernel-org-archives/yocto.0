Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0EDE7717F
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 17:54:38 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web11.1675.1734112469369948893
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2024 09:54:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=SvN0YIiV;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.169, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e3f4364c4easo1820750276.0
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 09:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1734112468; x=1734717268; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmzc5/HZ4TLCINzfB9sozUyd2PS3YTCN7rhJJvtAz1E=;
        b=SvN0YIiVa6dCXFtwpySQ2QESBkz5WDXEFvoM4/dseZCzUoENZnPWmcxKNAx13ekXhE
         sGWX6fze4pIHpzPwfV0OxcV75dQRNA0w+PoJ6tbBABCXZdGoZ40hvvyZKAqRhqUbZySQ
         AYsCDOiRoayX1J3R+yhCMGOYjwKUJaC5M5dPdTrqBFEwKRHWyEXVdBpGtfG9krxhKFOj
         J+pLrijk/372YSau+d/4uhmg21vNmc3OHSVWLR/o5d1SSGCfXXYgsD90rtXIRqBusdul
         qBe/BLY1qnXmBVm/KobXP15RKK/+HW+mwicfwkmlhvKy3sopkM2NdJyAF9YG7VnTqFn4
         i8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734112468; x=1734717268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vmzc5/HZ4TLCINzfB9sozUyd2PS3YTCN7rhJJvtAz1E=;
        b=TR8VMLJJlmMEVl3ZJME2f26L4+dT0/t5iTe8xFPwKJyp/rquwKAw/jnzVEUm6ffO0Q
         Kl6knE0FLJGc6YmNJg9+nH2CTcz1kiso8tqZQLS+aNBsTy3tl3g1bWSOw47Bz4XI3cJQ
         dmT7R5g/fWpTGmrf8NanM0F0rISiiatH9aw2tQMRpeFE9+ZklQaQaFALdi3FBdU0Soww
         PIyr5pjchjXwUXNVSVc98/iHvnSqERgP8Akg2jbFFs+iFLJ/jhERGtmVDtGGgvJ4Nb00
         18uZx/GeZ30lT6gvAFLMyr4WWM9Mr2n07H1QkOK15cvstuu60hFK0KdvS/vRf7oUmvgM
         FCSg==
X-Gm-Message-State: AOJu0Yz2pHIXEO4hv7Lfb8FnUNTTi69ZpgMDd5Y31INlHYqXsFp513md
	wxoC6l6gwHmDegcRIRWOnf3eE6++Hpch3gXxHwT7eKqua1c6HqwlwyqYk++0u1DagfSA7h24o2Z
	VjjgEz/FicQdDV9vRrp3rGN6bUT1pCHgq1Tbj8g==
X-Gm-Gg: ASbGncvIsreSKas2Si1taiwkivn8y18a0O/5IOgqvqVu4dgQf9rIiGNiEqBcSaP+36L
	mpiez00w092SlXc/9WY6tFAK08XcPuU/Nv3w4kA==
X-Google-Smtp-Source: AGHT+IEvSNwNwlVkG8y01/eGptokBoPIJL2RrYHCj04erN60kg2IWDkJXlUBWk1BAfHDJhdyaTOZ+uqBVhVBYkEeZYs=
X-Received: by 2002:a05:6902:2191:b0:e38:9d2e:4162 with SMTP id
 3f1490d57ef6-e438a474d5amr3086967276.12.1734112468333; Fri, 13 Dec 2024
 09:54:28 -0800 (PST)
MIME-Version: 1.0
References: <CAGDS+nkB+EyEg8FOQUbjt+aeAs5DBLEtsMojDjyarvLM=ikT4g@mail.gmail.com>
In-Reply-To: <CAGDS+nkB+EyEg8FOQUbjt+aeAs5DBLEtsMojDjyarvLM=ikT4g@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 13 Dec 2024 09:54:17 -0800
Message-ID: <CAOSpxdZTB05gYsbQ_xJVkoBft1su1cZFQgYOCT=WBNVTnZQPJg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.6.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 17:54:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64446

This was an all green build except for the meta-agl-core test.  A
series of commits to meta-agl this morning broke master and scarthgap
builds.

The test passed prior to these commits.  I think we are good to
proceed with QA on this rc1 build.

Steve

On Fri, Dec 13, 2024 at 9:51=E2=80=AFAM Steve Sakoman via
lists.yoctoproject.org <sakoman=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> A build flagged for QA (yocto-5.0.6.rc1) was completed on the
> autobuilder and is available at:
>
>     https://valkyrie.yocto.io/pub/releases/yocto-5.0.6.rc1
>
> Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/639
>
> Build hash information:
>
> bitbake: f40a3a477d5241b697bf2fb030dd804c1ff5839f
> meta-agl: 2e060732691ed8fcee6725cf8ebc92e887bfd188
> meta-arm: 7088279c0ab00c7dabefdd4544951b4746b48476
> meta-aws: ee5bb55697723ccf692592e0b37ad268869e1c0c
> meta-clang: 9fbfa9db33131abdf3870a94f00199eb53e276e5
> meta-intel: b61d5310fcb4e5077bb4b1de0228dc45ba69510f
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: b8d1a14f7f3b76457c36752202ea7ae5881b6654
> meta-virtualization: 450941a1b6df96285691e8c23d4f332d3c88a994
> oecore: 336eec6808710f260a5336ca8ca98139a80ccb14
> poky: 2541a8171f91812a4b16e7dc4da0d77d2318a256
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#486): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/486
> Mute This Topic: https://lists.yoctoproject.org/mt/110101835/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

