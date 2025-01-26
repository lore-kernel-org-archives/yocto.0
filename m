Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00CBDC02181
	for <webhook@archiver.kernel.org>; Sun, 26 Jan 2025 14:14:03 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web10.30565.1737900838611658291
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2025 06:13:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=DMfgg1SY;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.182, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e398484b60bso5368309276.1
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2025 06:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1737900838; x=1738505638; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Hz0LHCY4zi8pJZ6i39XJcNV4LvDfZDRhSWGQ7wLBMM=;
        b=DMfgg1SYZl6cQlxBXRADN5P+K6b4cr+J8bYdm9jmuoEGQyDwijy2t4SSkbIhEenjM/
         KUqUbIEFFPkZnyciJXdOKH3vYYY4B4dG+EMhyINIBjwbPzuSGFDwRYpVohkvqxjfB/Ka
         N9RpSuSiTN4r0dPLvhHFxzwW5+U1E6/DAiPlu+sqyXbQhn/EuB+ydYC0meis0F4xbnYs
         WiP2j4qwC8B5jTu6OWtXLAr11iKUW4v/oayCMtWtadVt8nBkGSpDKA3xF42w/CQ5PfKi
         TL34TqRfIY7EDQhQt9F+rxFeteNvLt3Hxj3nON4wGBV47c49ZUgH7GGCy0fnAxNGL/sY
         eOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737900838; x=1738505638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Hz0LHCY4zi8pJZ6i39XJcNV4LvDfZDRhSWGQ7wLBMM=;
        b=lQW2KnmxpPxXiO10KLAYqoZ20uGnWauKjD7grsfvKOGqBNXYTH+4ROHpdtzm4B1CKT
         yU747kBtC8k6R+VW/msYCCkvudnG9RABNBbUyk7XqokobbgafHApEQidpSoJlSuukV6g
         ujE4rc37NhRXUzr4FSG6tLIT6v4Eap3p/O3V3PgvT1WuXyL9F9xF3wD0TnyUsfpAJHgd
         y9KaPmhsA4beVkMR0MOe7WtAojEETZS17pMBt7TFtbL1g2g1uJCzAKwxt6wOOMzWskMC
         4e3ygUNlJYAme9Z4DPUsz49Iy9O4g55jPLJjoKDi9PFFB3Nt6ouLY6J0MB+TFu0bK8Xh
         fIoQ==
X-Gm-Message-State: AOJu0YxPCiRPWeXus02maAfAzOJlsLCwOVgNhyciKtQvvxdWJniiuaPF
	PoYySAfiBPjqcHwbmq6LYoxcNboBtGQ291q4khZBenuB9PLaFIqgf9yhnCHLmEiUhdCoyeeg0gz
	fOi5unigHLSbNk2J9+ENKSdLj/Awk88pjSp9rqxW3WuRxguXENj5rPTdX
X-Gm-Gg: ASbGnctkhf59cZ0eBx/OA//lNlrg7m5JY4NfnzGUV0wpYhzpf8E2AUmk8U1tb1oL9D+
	EWCPFNnm7iEC3Ktv9/zznYzhnfApdb0esLsvi5H9pauoKnpAcC2OcYRO9ElZSdQ==
X-Google-Smtp-Source: AGHT+IG3J7lf5CVMUsFZitm/y0k/51kGedBKFukECRo5abovMOid0inp/LAMMgAfG5GwOG+U8fHImarQba9zvh7FaEE=
X-Received: by 2002:a05:690c:6b87:b0:6ea:916f:e897 with SMTP id
 00721157ae682-6f6eb92ef46mr279102457b3.29.1737900837691; Sun, 26 Jan 2025
 06:13:57 -0800 (PST)
MIME-Version: 1.0
References: <010101949e934ab9-39a03c1f-3c5a-4cec-9042-b0637ac2da95-000000@us-west-2.amazonses.com>
In-Reply-To: <010101949e934ab9-39a03c1f-3c5a-4cec-9042-b0637ac2da95-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 26 Jan 2025 06:13:47 -0800
X-Gm-Features: AWEUYZnc1S7TqawcjDmnjkM27z7uz16lQORlpqM9lLwiJCZ94yj-l8AZBvAewd0
Message-ID: <CAOSpxdZ4GrWUV5iBJMAB+FkstCTSqLyx922_i5L2OaW_UEMiGA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.7.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2025 14:14:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64627

Unfortunately an autobuilder intermittent issue has resurfaced during
the release build:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15185

Scarthgap had the fix which was referenced when closing the original
bug for master, but apparently this was not sufficient.

Alexander Kanavin has responded to the reopening of the bug with:

That patch on its own is not going to fix the issue. You also need to
revert scarthgap-only

6ced2e7ca3b rust: Add new varaible RUST_ENABLE_EXTRA_TOOLS

and then backport from master

3f69d525d81 rust: build the default set of tools
a7bf118441d rust: use rust-snapshot binaries only in rust-native
8240d506fc1 rust: correctly link rust-snapshot into build/stage0

So I will test the above and do an rc2 build.

Steve


On Sat, Jan 25, 2025 at 9:47=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.7.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.7.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/885
>
>     Build hash information:
>
>     bitbake: aa0e540fc31a1c26839efd2c7785a751ce24ebfb
> meta-agl: 45428e8d626b06a809686fa0db8a3892498b96a4
> meta-arm: a8fe9d22eaefc294f91096c6a32663e2f4ab3b10
> meta-aws: 4f45b4b2a940577bef4301a69dcafe743af1826b
> meta-clang: 8c77b427408db01b8de4c04bd3d247c13c154f92
> meta-intel: 0be954e82f09d235d2b5e5ea01bb62ffa8d0b5f7
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: dda0d53326017d6758ec6bdfdaf2f484c089d13f
> meta-virtualization: 2ec66285d050ef3cd29a5ea57c71341e6b17b36f
> oecore: 3c31639dd53e32e57af64d50ad168f5c3911c299
> poky: df5c19f5d143b161bc5b8d42c24cc1a278ed2417
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#503): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/503
> Mute This Topic: https://lists.yoctoproject.org/mt/110810501/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

