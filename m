Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502D8C3ABC9
	for <webhook@archiver.kernel.org>; Fri, 16 May 2025 21:30:33 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web11.1075.1747431024715192972
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 May 2025 14:30:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=bjdKsjq6;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.180, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-70a56b846d8so26851827b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 14:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1747431024; x=1748035824; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KittdeHmLieKnQ63QkRMw7iqeL3TVQ19odyXt8Jijsw=;
        b=bjdKsjq6205b964Jm8eq5zm/ZHMuynXzHzso+SfihXVZ6gi9R47boWAi+IIcbLL/+n
         ZZ3r0kkT6SpGO12coHT120fp2UpPBzmb+A8DNPXr6SiZzK7XgjkiE725Zi9VePxHtRSt
         UONDeMo/j6zMD/kXuF2sJfi6xhZaqbH5n+ffIT4Co+wee19/2Cde1HSOTf+IFjcUM4Q0
         SPP9kR2DRB1aHcVaQfX+Fp/Ypb8MJ6bRtRCI0l7n851it1HvW2m3tOssvDL2wQfTxdon
         roIDpbQKSeHNuBAAZ0bLxD22Z+GcgeC3Bhs+8+yb98KkFYtP55voyieYpef2NOEv5z1u
         qsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747431024; x=1748035824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KittdeHmLieKnQ63QkRMw7iqeL3TVQ19odyXt8Jijsw=;
        b=Ju02vZzhTxJ0VkJpOf79OSYc7I8f9tQnw0h9HN2aTVRjF2ZgdNNNY58Vo2iEZ/W0Pi
         7c/z7ekE/Ez4WyXCTSRDc09kbwje56AfMAPHOi/ymNoc86cjeQ4w+RZ1QBYmQByxZuEI
         IHoSYAkmEPVF6jgVnz0a/BIu7A5tynYDvWu0N9KvGmYnwj3ZZWQ6iJZcKVvlW0lVA7H9
         nOC957P7AyWVXXJZt+97U3sumN83r2uBIgzPX1G4SK8oCFNYFndijo/hYls7e8+KmrHW
         nLEhnB+TUzFmgy1i9pQdoreFI9wfxwtVLnLvMecTBuIqh676oDrWnEua5vj8SjsS+9eJ
         JVrw==
X-Gm-Message-State: AOJu0YznjxZ3SvlEgI2ZOclx5gNXlvsUkxWhhyvCWEdfv2hy4pPKi1eu
	y7TQGcbP8+kXbzQdb6yjiJSPkdeel+1Fcw2hDiyQBp4zHBSYJjdJD2YW6iPrlxL7S8nlIlLoWEH
	NJtIuw6bID5ek+ca9Cl5+8AwfDWU6rxplo8mThm7rHhbzEigPS9jH
X-Gm-Gg: ASbGncstme/z/xqajnmksbvGNAVCBKE0bRA3nzLHSU+h0pYOTftxF/pz2yI01zd+/+M
	MHEd21k/ano/MiBPu5LqUmq0kcQ8gR8h2lCsbO44kGKspKWzijE2rTv7B+FCGAYEB+PP/+PNMqz
	FdAHsHZB4qRnkA1rh1STyp0Xi2kNoyqD7BR0SF1ip0y/OeYRjgDKPXGAfFnqzWYWQ=
X-Google-Smtp-Source: AGHT+IG74P5Jfd1EEXt1Xs0NaGnLAMVsSpHpE4nY0qiWhsVWvnZz5rnM5wak6jqUoxD7tBeWpwwzDjN1NstfEJmo1Uw=
X-Received: by 2002:a05:690c:25c3:b0:702:52fb:4649 with SMTP id
 00721157ae682-70cab099494mr66309537b3.27.1747431023600; Fri, 16 May 2025
 14:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <01010196da9c898e-ea7e03e6-5552-402b-a021-4e0f3dc851d0-000000@us-west-2.amazonses.com>
In-Reply-To: <01010196da9c898e-ea7e03e6-5552-402b-a021-4e0f3dc851d0-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 16 May 2025 14:30:12 -0700
X-Gm-Features: AX0GCFuZqLuMXwIcKP4Z9n7064gHfL5Z0UEsOP_9RiViaml4U0ShpnMTY3VfC1M
Message-ID: <CAOSpxdY4XfDPqoqGdULyAnPFH9hb=eH65aVFg9=ajJNhrv_c5Q@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.27.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 21:30:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65350

This was an "all green" build, so OK to proceed with QA.

Steve

On Fri, May 16, 2025 at 12:40=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.27.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.27.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/1605
>
> Build hash information:
>
> bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
> meta-agl: d655b47bb267e6e167baaa49421b1ae26c25f74c
> meta-arm: 6b2d97cecd1b0e4bf4caee9a65595d279b57a686
> meta-aws: 9dd75f69c59f19125ac96a796bc97f06c4dc8a40
> meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: dc0948200594dacece4da91f4c501e9a9fb0394f
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: e42549cef364ae09b3b7c8b64bbeab32e50f1bb0
> meta-virtualization: 227cefa1261daf20b7d9737541994ec2bba629fc
> oecore: e8be08a624b2d024715a5c8b0c37f2345a02336b
> poky: ab9a994a8cd8e06b519a693db444030999d273b7
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
> View/Reply Online (#549): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/549
> Mute This Topic: https://lists.yoctoproject.org/mt/113151429/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

