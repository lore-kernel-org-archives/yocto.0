Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7111C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 11:02:21 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.18356.1747738933825631832
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 04:02:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gkRQRyMc;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6f8b81fda4aso37781856d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 04:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747738933; x=1748343733; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRUMCG9P8UUNOprr3e03STmkEIMuPamB2BXl+SqWZog=;
        b=gkRQRyMcQ7XvZNs24s9WBOgh4LNv4nKrjBqPWX2oh/hsNhiwsIulscR132ZQsuWZLv
         JCqpNkZbppan7bztrYp+z57zc+hI9rPB8H0E75ke7jm3Jjup/nKEfUdx6aly6k49hX9g
         4CHAELs8nSX1eMzWz+lp0tMoLLZe+cewTADQcNeDSALUy69K4HXc0s6185+8lJxsZHMV
         ivPovBSv9cPQS96NF0CYwFVxuDd/4VpbrB4YpcGneAbh05s0leXYfbCZrHVmqa98hDKh
         OUqM1q1ps9EDwxoBfALbGX1nWz+o/M/gj/TAcfclGuHcf+lmZacgYJoi9AwsyEVgaeAu
         qrVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747738933; x=1748343733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRUMCG9P8UUNOprr3e03STmkEIMuPamB2BXl+SqWZog=;
        b=Bn8mhjJBnl9k05oiibSggkpGFYtMOTAxeWRk/fGLciusxxj4UWsC2K/nPIKZTemZVV
         64OtODgrKI8N850s2N2NutcgGCToexjdxF1P8Dn04OvjReLvpFKr7DbX032KNbzVmi7f
         mVPslKjGn6n0tK3E5KDpqy+avrGQm2SSFAZZaCYAUDlGw1v7UF2nirDm2glqTpwKgmQi
         K1Yq/YVvB2BmD3ArwRf7qv9+lQdjx8rEpiElk935Bw0msTCmk68yKJetztm2FQ4EeFSW
         GXs4gTZj0xlctLpXEp/IYBSXniD0dzmdks+Q+BAfm2fZHG28HZ7s1sBikSulwFU599d+
         eM5g==
X-Gm-Message-State: AOJu0YxqRV9Awiw1WG+BzysiTrMYLB4fUT50syoqcfhSe1rPVlLJx7za
	5sGb2VYkO3oU0rlT6LSdg9ixxKvhVWX3PBzsWHVGzLBp1k6tV1LRfwl7w4BD0t3bvWc26pEgn8a
	tWQcTB84rCfFEl8USoGICNRRvj/KgpSg=
X-Gm-Gg: ASbGncu8HZ/q3DVGXARn/wFPx0w3hYG7ktKEUbOdFeDSXcJTiBhNXwv1+FQ62BV3Fpd
	VPXfJkSlCV6iWdR9JyA3Uf6EPf31mGy8ShTznautjux3TqkhEAMdeJWdvvCM+rw0hSZ+hF5HhG3
	INYFvmZ9TZXFi8SR7UtkB34yyl/bXKtNMR/A==
X-Google-Smtp-Source: AGHT+IFLAPmKk33sfh9m9Dul1upKMn/C/zUwy+BPOf6KzmGDmjBPe4NABktq+U+omclQGFvLQ/vTaJPsIGwWnGtPWPE=
X-Received: by 2002:a05:6214:508c:b0:6f8:e367:8440 with SMTP id
 6a1803df08f44-6f8e367849bmr50099546d6.23.1747738932494; Tue, 20 May 2025
 04:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
 <CANNYZj-f+LsCv=Ez-NPo4M-vh1V4nK2t3tFh3X38pZXYmJnuZQ@mail.gmail.com> <12851747494093@mail.yandex.ru>
In-Reply-To: <12851747494093@mail.yandex.ru>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 May 2025 13:02:00 +0200
X-Gm-Features: AX0GCFvI5uSucIVrOqk6NfxMlzb4DeF0DdmZTu63UNKZR4WrBi-XnLGNAxroiU4
Message-ID: <CANNYZj-6kUmA5qj-r5mNnENZzWW196Cz7sJZYkQ7YBkeaR9cTQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH v2 0/3] Add support for index files in SSTATE_MIRRORS
To: =?UTF-8?B?0J7Qu9GM0LPQsCDQlNC10L3QuNGB0L7QstCw?= <denisova.olga.k@yandex.ru>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 11:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65366

Thanks. Improvements in this area are certainly welcome, but I'd
suggest you look into improvements that do not require creating and
maintaining index files on servers - this adds a lot of complexity
that someone has to maintain and support, both upstream and in
deployments.

Can we better parallelize the processing? Can we batch requests and
responses in the network protocol (I have no idea how it currently
works)? Someone just reported that they see unnecessary requests, can
you find out where and how it happens and can it be fixed? I feel that
fully investigating what happens currently should be done first.

Alex

On Sat, 17 May 2025 at 17:06, =D0=9E=D0=BB=D1=8C=D0=B3=D0=B0 =D0=94=D0=B5=
=D0=BD=D0=B8=D1=81=D0=BE=D0=B2=D0=B0 <denisova.olga.k@yandex.ru> wrote:
>
>
> During development, we used a configuration that included multiple SSTATE=
_MIRRORS, which allowed us to repeatedly perform rebuilds using cached arti=
facts distributed across these mirrors. However, this setup led to delays, =
sometimes lasting several minutes and, in some cases, over ten minutes. Whi=
le such delays may be negligible for other members of the community, they b=
ecame inconvenient for us. As a result, we conducted an experiment aimed at=
 measuring the time spent checking the cache mirrors and identifying possib=
le areas for improvement in the interaction between the build system and th=
e mirrors.
>
> We consider using SSTATE_MIRRORS instead of a local cache, as in recent y=
ears, large companies have increasingly adopted the approach of reproducibl=
e builds. A key element of this approach is the use of centralized remote c=
aches, which helps ensure consistency of build artifacts across different m=
achines.
>
> Additionally, when using CI/CD tools, relying on a local cache is not alw=
ays convenient due to the distributed nature of worker-nodes.
>
> To evaluate the impact of using SSTATE_MIRRORS on performance, we carried=
 out an experiment involving three computers connected via a local network.=
 The image was built on the first computer, a hash server was deployed on t=
he second, and N cache servers with evenly distributed caches (running in D=
ocker containers) were hosted on the third. Ubuntu 20 was used as the opera=
ting system, and the build was performed for the core-image-minimal image w=
ithout additional layers. This experiment allowed us to measure the time sp=
ent on the build and on locating artifacts in SSTATE_MIRRORS, revealing sev=
eral areas for potential improvement.
>
> One of these areas is the parallel processing of tasks using the nproc pa=
rameter. In the current implementation, despite tasks being parallelized, e=
ach thread performs mirror requests sequentially. The number of concurrentl=
y running threads is limited by the BB_NUMBER_THREADS variable (https://git=
hub.com/yoctoproject/poky/blob/master/meta/classes-global/sstate.bbclass#L1=
045-L1064). This means that no more than BB_NUMBER_THREADS tasks are proces=
sed simultaneously. For each task, requests to the mirrors listed in SSTATE=
_MIRRORS are made sequentially. Once a thread completes a task, it becomes =
available to process the next one, if there is one. As a result, the number=
 of simultaneously executed requests is limited by the number of threads, a=
nd new tasks can only be handled as threads are freed. This can significant=
ly impact performance, especially when a large number of mirrors is configu=
red. For example, in our case, each request took an average of 0.05 seconds=
, and a total of 2024 tasks were processed during the build of the core-ima=
ge-minimal image. Therefore, the upper bound on the number of requests duri=
ng the mirror availability check stage would be 2024 * <number_of_mirrors>.=
 As a result, sequential processing of all SSTATE_MIRRORS within threads ma=
y significantly increase the total execution time, even with task-level par=
allelism.
>
> Furthermore, the current system does not retain information about which m=
irror a particular artifact was found on after querying. This means that wh=
en the artifact is later fetched, the lookup process is repeated, which app=
ears to be unnecessary work that could be avoided.
>
> > This chart shows zero times when using the index regardless of the amou=
nt of servers, how can it be correct?
>
> The timing was measured based on BitBake=E2=80=99s own log output, specif=
ically using the message =E2=80=9CChecking sstate mirror object availabilit=
y.=E2=80=9D The time in this output is rounded to full seconds. In our case=
, downloading the index files took less than a second, which is why the gra=
ph shows zero. Additionally, overall build time graphs can be reviewed here=
: https://drive.google.com/file/d/19HuWfECZoejX6afDt-BQZ545vm-ZIpuN/view?us=
p=3Dsharing
>
> In response to this issue, a patch was proposed that optimizes the availa=
bility check and retrieval of cached artifacts by utilizing index files, pr=
ovided up-to-date index files are available on the mirrors.
>
>
> ----------------
> =D0=9A=D0=BE=D0=BC=D1=83: yocto@lists.yoctoproject.org (yocto@lists.yocto=
project.org), denisova.olga.k@yandex.ru (denisova.olga.k@yandex.ru);
> =D0=9A=D0=BE=D0=BF=D0=B8=D1=8F: gavrilov.andrew1999@yandex.ru, tinyakovx@=
gmail.com, sider123456789101112131415@gmail.com;
> =D0=A2=D0=B5=D0=BC=D0=B0: [yocto] [PATCH v2 0/3] Add support for index fi=
les in SSTATE_MIRRORS;
> 25.04.2025, 12:11, "Alexander Kanavin via lists.yoctoproject.org" <alex.k=
anavin=3Dgmail.com@lists.yoctoproject.org>:
>
> On Fri, 25 Apr 2025 at 08:02, =D0=9E=D0=BB=D1=8C=D0=B3=D0=B0 =D0=94=D0=B5=
=D0=BD=D0=B8=D1=81=D0=BE=D0=B2=D0=B0 via
> lists.yoctoproject.org
> <denisova.olga.k=3Dyandex.ru@lists.yoctoproject.org> wrote:
>
>  The performance improvement is illustrated by the timing results chart a=
vailable here:
>  https://drive.google.com/file/d/1kH3E3jRAqJ_1VR2b-20V9BS-uTAfoYKv/view?u=
sp=3Ddrive_link
>
>
> This chart shows zero times when using the index regardless of the
> amount of servers, how can it be correct? What was the methodology
> used to produce it?
>
> Also it doesn't really address the questions: how is your setup
> configured? What exactly is the source of the slowdown? Is it network
> turnaround times? Or file existance checks on servers? Why does it
> affect you to the level that all this complicated code was written,
> but no one else in the yocto ecosystem until now had the urge to do
> it?
>
> You really should to start a conversation about this, rather than just
> resend the patches with a dubious looking chart added on.
>
> Alex
>
> ,
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65252): https://lists.yoctoproject.org/g/yocto/messag=
e/65252
> Mute This Topic: https://lists.yoctoproject.org/mt/112446924/9737979
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [denisova.olga.=
k@yandex.ru]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

