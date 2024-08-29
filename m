Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AA0FC8303C
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 10:57:24 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.10045.1724929035587748789
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 03:57:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Bfyk4GaS;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5343eeb4973so785040e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 03:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724929033; x=1725533833; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nIzaDY1Do5w71ahwnzOd00MKBDOT3t4R+x1C7FFWqZA=;
        b=Bfyk4GaSZqqrF//AknWVKoOTn1lXgw9sb3lqkwIfGi/dvU4Bw+czZGSAeOK9XIb2mr
         z3clSZdce9wgdoftCc+dY5lJTLAG9pl8UJJy05HO2aP2HAxL5I2DpwRCYknmx+CTIiIx
         zx6SrZy1ykX8+fDqUxwqNKvhM1BvHj3AkZk9mfsV4xswhvFQpODCgijRxAuY/SsycW/m
         yYOdKsjg5Uap+gAVIl/pGVkDY2iA5F0UZKuuKp6kem+y7/3SvL01YpC81ZvU/S/uxSY1
         2epBC83kD0wY/MNLDr1iAJARKb+U388fcfPHZgXcV7tWJGGV0CW4jjGgIQMrE/qcO+IA
         2jbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724929033; x=1725533833;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nIzaDY1Do5w71ahwnzOd00MKBDOT3t4R+x1C7FFWqZA=;
        b=t6n7p05n+n+QZuaXBdNlLDo5lPe2UhLJbF+oQcbChZ5dBvs+sku8tPa3GuIKfXQTL/
         uVJgFMM3iW0NfUNDi4HbsyEuJPXqoasd8nOFoBIEg641ypvExFFXQdwEiHAzLGKrUymE
         Y7aoltP4lsbXJspYipead0xMQdqFU11d6dys4sgLcCcZcyLdra0uf69eWHSgFRJy6GjL
         MNEHHokCJmQICms6a8nQAWjzCo7rWbelOeZFxOjbwkTbqQDgBHFsJ1hK3Y1Pq4fWGC3h
         hHDmLPpORjjW8Ae2UTDvXemmLgO5M8jrhTybR5Fpg97dJSC347fILBBg7U5cV2PzZoTP
         atoA==
X-Gm-Message-State: AOJu0Yy8+GhUM275NuRd7q82DwA+vC+v8Te+6InDl06jAr17SIOPHMp/
	dVHD6NPa14QLBSlCRssuHE7eIwD6VMDDOUyChrs9j2GsyKA6dpyzP2ZZUvAqZ9TLBpRorQvVjAd
	00arqNKY8XiADxxpRdvIHLlVsGn8=
X-Google-Smtp-Source: AGHT+IGR/H4dzHKw/P/TCLj0QrxV3H2ARgEvqGDP6rCU9uj6hkjzRPiLtJYUwB21Ybb57IuKBralT1Ts23s1Snduuho=
X-Received: by 2002:a05:6512:10d0:b0:533:4591:fc03 with SMTP id
 2adb3069b0e04-5353e5acd79mr2089699e87.46.1724929032883; Thu, 29 Aug 2024
 03:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_Ls-58iQkQOXbQMP2NTAKWBn08ivkwUJ8_y2NcAQ5KXA@mail.gmail.com>
 <11473.1724928466443946335@lists.yoctoproject.org>
In-Reply-To: <11473.1724928466443946335@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Aug 2024 12:57:01 +0200
Message-ID: <CANNYZj_ce7E-15U-1ahmzkKj6AfWrx3W-ODzj5s=K-NB_xBRBg@mail.gmail.com>
Subject: Re: [yocto] Parallel task limit issue on 80 core (2 CPU) system
To: cebel.efecan@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 10:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63768

Now you have 58 tasks, and from the looks of it, the limitation is
because key pieces are still being downloaded from the internet.

I think everything works as it should. And you shouldn't tweak those
settings anyway.

Alex

On Thu, 29 Aug 2024 at 12:47, Efecan Cebel via Lists.Yoctoproject.Org
<cebel.efecan=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> Since you cannot see the image, I am adding the image I took during the build process as a log below.
>
> Currently 58 running tasks (4463 of 10569) 42%
> gcc-source-12.3.0-12.3.0-r0 do_fetch - 9m59s (pid 3098128) 95%
> systend-1_253.1-r0 do_fetch - 9ma3s (pid 3105813) 20% |#FMHHHIHHIHEHIHIHIHIIHES
> rpm-native-1_4.18.1-r0 do_fetch - 9md2s (pid 3106271) 36%
> qtbase-native-6.5.0-r0 do_fetch - 9m35s (pid 3112941) 40%
> : vulkan-headers-1.3.239.0-r0 do_fetch - 9m35s (pid 3113002) 85%
> qtbase-6.5.0-r0 do_fetch - 9m34s (pid 3113027)
> qtdeclarative-native-6.5.0-r0 do_fetch - 9m25s (pid 3116190) 54%
> qtdeclarative-6.5.0-r0 do_fetch - 9m24s (pid 3116820)
> protobuf-native-3.21.12-r0 do_fetch - 9m12s (pid 3124608) 22% |HHHHHHIHEHIHIHIHITHIHIRIINE
> protobuf-3.21.12-r0 do_fetch - 9m12s (pid 3124638)
> openjpeg-2.5.6-r0 do_fetch - 8m31s (pid 3135091) 39%
> qtquick3d-6.5.0-r0 do_fetch - 8mi2s (pid 3143227) 50%
> qtquick3d-native-6.5.0-r@ do_fetch - 8mils (pid 3143496)
> python3-pillow-9.4.0-r0 do_fetch - 7mdds (pid 3189167) 23% |HAMHIHHIHHHIAHHIHIIHIHIRAINS
> thb-1_2021.8.6-r0 do_fetch - 7m37s (pid 3214348) 80%
> tesseract-5.3.0-r0 do_fetch - 7m15s (pid 3283840) 72%
> cross-localedef-native-2.37-r0 do_fetch - 7m10s (pid 3308595) 11% |mwmuwsnins
> googletest-1.13.0-r0 do_fetch - 7m8s (pid 3312882) 80%
> glm-0.9.9.8+0.9.9.9+g1tAUTOINC+efec5dbos1-ro do_fetch - 7m7s (pid 3314028) 66%
> nlohmann-json-3.11.2-r do_fetch - 7mds (pid 3317884) 14% |wummstustnins
> assimp-5.2.5-r0 do_fetch - 6ms8s (pid 3329388) 26%
> flatbuffers-2.0.7-r0 do_fetch - 6m57s (pid 3329660) 56%
> flatbuffers-native-2.0.7-r0 do_fetch - 6m56s (pid 3332064)
> tensor flow-protobuf-3.9.2-r0 do_fetch - 6mils (pid 3479741) 21% |wmwwmunsmnummununmununsny
> tensor flow-protobuf-native-3.9.2-ro do_fetch - 6n7s (pid 3494283)
> vin-native-9.0.1592-r0 do_fetch - 6m6s (pid 3498144) 6% |wmwwnun
> notary-0.6.1+gitAUTOINC+d6e1431feb-r0 do_fetch - 6mis (pid 3505280) 83%
> go-distribution-2.6.6+gitAUTOINC+28602af35a-r6 do_fetch - 6mis (pid 3505950) 46% |
> grpc-go-1.41.0+gitAUTOINC+5d8e5aad46-re do_fetch - 6mos (pid 3506630) 61%
> renderdoc-1.17.imx-r@ do_fetch - 5m35s (pid 3537352) 15% |#ststuintns
> vulkan-loader-1.3.239.0-r0 do_fetch - 5m31s (pid 3559029) 51%
> ot-daemon-0.1+g1tAUTOINC+98e644d538-r0 do_fetch - 5m30s (pid 3562942) 5% |###u#
> glibc-2.37-r1 do_unpack - 4m49s (pid 3606954)
> 1tp-20230127-r0 do_fetch - 4n37s (pid 3612944) 24% |HmERHHHH HEH IRHTIEHIAHHIRITINY
> linux-firmware-1_20230515-r0 do_fetch - 3m55s (pid 3644566) 23% |AHHHMHAHIHHHIHHHIHHIRIHIANE
> ghostscript-10.0.0-r0 do_fetch - 3m43s (pid 3654249) 60%
> demo-experience-voice-demo-1.0+AUTOINC+f43c722686_ab9896ecd3-ro do_fetch - 3maes (pid 3655714) 62%
> tesseract-lang-4.1.0-r@ do_fetch - 3m32s (pid 3661577) 0%
> cortexn-toolchain-cross-armv7e-n-10.3-2021.10-r0 do_fetch - 3m24s (pid 3681451) 27% |MtH#HAHIEHIHHHIEHIHIHIRIINY
> boost-build-native-1_1.81.0-r@ do_fetch - 3m23s (pid 3682781) 42%
> boost-native-1.81.0-r0 do_fetch - 3m22s (pid 3683030) 21% |#MHHIHHHEHIHHHIEHIHINT
> ghostscript-native-10.0.0-r0 do_fetch - 3m18s (pid 3689764)
> android-tools-5.1.1.r37-r@ do_fetch - 2m55s (pid 3725026) 87%
> nss-native-3.74-ro do_compile - 2m23s (pid 3785347)
> cmake-native-3.25.2-r6 do_configure - 1m22s (pid 3913462)
> parted-native-3.5-ro do_configure - 53s (pid 3972009)
> iso-codes-4.15.0-r0 do_install - 28s (pid 4027719)
> binutils-cross-aarch64-2.40-ro do_compile - 11s (pid 4047164)
> : linux-libc-headers-6.1-r0 do_unpack - 9s (pid 4051739)
> coreutils-native-9.1-ro do_compile - 7s (pid 4056462)
> dpkg-native-1.21.22-r@ do_compile - 3s (pid 4071241)
>
> Best regards.
> Efecan

