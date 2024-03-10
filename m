Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98EAC54E49
	for <webhook@archiver.kernel.org>; Sun, 10 Mar 2024 17:19:43 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.42255.1710091173948419695
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Mar 2024 10:19:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=tW5RU15e;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.170, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-609eb3e5a56so37139697b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 10:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1710091173; x=1710695973; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7XtkVGtsfHHiIMQLYMck/Vo1b5687InpyDgRE+4b64=;
        b=tW5RU15eZZKNJZR++ajMbyxYGitVj39qxqaHC4oqJE4lMVt5HqNG/g0b4vwLZq8Yf+
         FfWZlxQd6PNiS5FmB4BBXIbyLxfdSASOqPGy0rNhCnHxKxMa+zhh03jLcC3xo/RcxTFC
         VDXb3+fTvxKTd0NmC2qoPWxRCP4qPyrf3QFildOYHRF4J2v4NYoNd7/S4TkHypWHOH8t
         RbMg7LhqA6mQggAYV59u/ckN4FOrXmUsg7rYx0P5jE+MwD9TnGAotONWwYhAfor3swLf
         9LVu83hKVuPbHxFiP3W3l4+hSXnC43hXadXIyFEijDWgHfAfe5Gb4LAKyR0ScnShuiWr
         IY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710091173; x=1710695973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q7XtkVGtsfHHiIMQLYMck/Vo1b5687InpyDgRE+4b64=;
        b=imb6ImtrTd5Wtg+9Pq8Xapit+Ht7J/NpKbkwWUI+G/KYE/N6CKY0E2P4vU4Vo4QAwi
         Lqq/BtsIYPb2XcY3Q8ulZHpkvTwOk1j3omN7ziTnhUHEnF5uplJ0/BmJkF0WZhVkffyQ
         Fgs3aP/I/631xk16PIy+3h67ceMl4jwD0jeZe38VrlVnpB9b59qduXMNZMMSKY9OnvHw
         sDR+r7KuMnJtXzStP8brPApQfFOeK3fAToFg1dQj1c9sC9LPc1d6l1P2TWs+aQ+oZw8Q
         JWYsRZPWTVwOp+Qv9oHHt3GxlPBBWoZfAhsa9qBrQe9+wxf0NNIp9qBlVQzm+ptIswpR
         137g==
X-Gm-Message-State: AOJu0YzfUhp85ZOTNdYSZTL/JXoyJ4Wnp6OrvqmNnercHipjeAW4DZ0d
	ny3OwOjjGPPOjrp0RWGAGlUWNQgYIAl8tfgdAX1682qtQ5ZPz/JNcE2raXif8btTfQN2aGU4N8P
	J0DERtuyiAs+Mp9mDTsIM2XT7Li8BNxXN15C0Rg==
X-Google-Smtp-Source: AGHT+IH9WAV0T1OVWRFo+AXDpaL56AtnYH1Yx93zKaEFwfTspFp5GmMT91AyOdiGoYcnB2XDQXhdNO7HDq8y+4/Q9tc=
X-Received: by 2002:a81:5d86:0:b0:608:bec5:f27d with SMTP id
 r128-20020a815d86000000b00608bec5f27dmr3805256ywb.41.1710091173092; Sun, 10
 Mar 2024 10:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSpxdaa9X1ySRN2hgnqqEu1Hf34vTSaKGZayUaVxx09GSQOew@mail.gmail.com>
 <CA+chaQdtaqzvpKqT3JHxBn7bSb8pfPAro4e_uOSjDMypqYcVqQ@mail.gmail.com>
In-Reply-To: <CA+chaQdtaqzvpKqT3JHxBn7bSb8pfPAro4e_uOSjDMypqYcVqQ@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 10 Mar 2024 07:19:22 -1000
Message-ID: <CAOSpxdbz+nwUUWzLqt8oYfmU_2oP=9rFSWa33eyjBfi=MZv_2A@mail.gmail.com>
Subject: Re: [OE-core] Final nanbield release build on March 25, 2024
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 17:19:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62719

On Sun, Mar 10, 2024 at 6:54=E2=80=AFAM Martin Jansa <martin.jansa@gmail.co=
m> wrote:
>
> Hi Steve,
>
> I'm not using nanbield, but does
> https://wiki.yoctoproject.org/wiki/Releases need to be updated? It
> says "Support for 7 months (until May 2024)" so I was expecting final
> call for dunfell (which says "Long Term Support (until Apr. 2024=C2=B9))
> before nanbield.

I work to the release schedule that Stephen sends out each week, the
most recent being:

Upcoming dot releases:

YP 4.3.3 was released.
YP 3.1.32 is in QA.
YP 3.1.32 Release date 2024/03/15
YP 4.0.17 build date 2024/03/11
YP 4.0.17 Release date 2024/03/22
YP 4.3.4 build date 2024/03/25
YP 4.3.4 Release date 2024/04/05
YP 3.1.33 build date 2024/04/15
YP 3.1.33 Release date 2024/04/26
YP 4.0.18 build date 2024/04/22
YP 4.0.18 Release date 2024/05/03
YP 4.0.19 build date 2024/06/03
YP 4.0.19 Release date 2024/06/14

So the final nanbield release comes before the final dunfell release.

I will send out a similar final call for dunfell patches.

Steve
> On Sun, Mar 10, 2024 at 5:11=E2=80=AFPM Steve Sakoman <steve@sakoman.com>=
 wrote:
> >
> > If you have any patches you would like to submit for nanbield before
> > it goes EOL, please do so now!
> >
> > I'll be taking patches until around March 18 in preparation for a
> > March 25 build.
> >
> > Steve
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#196900): https://lists.openembedded.org/g/openembed=
ded-core/message/196900
> > Mute This Topic: https://lists.openembedded.org/mt/104846319/3617156
> > Group Owner: openembedded-core+owner@lists.openembedded.org
> > Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [=
martin.jansa@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

