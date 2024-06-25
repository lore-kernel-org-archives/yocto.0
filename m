Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F5FC2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 12:04:18 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.170954.1719317050959905612
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 05:04:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=L9lQFM01;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.176, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dfde5ae0aaeso5448485276.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Jun 2024 05:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1719317050; x=1719921850; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JzW/shU1lih2z/j4wf/ERyjeE41TN6psYtQgE/njqGk=;
        b=L9lQFM01dMXJhl8cOeRvxQSkgPZ1gaKOzlyNkmrBTAuXZw/QwyCThxkHhSuFBiB0p/
         0JEZYrwBzK98bJnHWv4ttDbHTKecGJAOZPsHGpv8jsBrq2oxEtEgYZhu2VAeDcF+wcWV
         4P5e4Y2G1eYT1OZwmzB3ByO/hjCT7jf7jvZlaY+ihWXbHEjP6yhENzr7TjeM/tfffvxH
         LkROnBMwVjAHwF4BztlxpEIEu6FUEgdQJZGLia8jeHoUL1m4oYg6x7jMkLOl/pdCwhTZ
         LR1Vz6mtXvgGeNLDrGlFZzmCqiC7p5oAKlLfXXLbeydR5tTMr+qS7ZqyXi/izON8hNdC
         qv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317050; x=1719921850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JzW/shU1lih2z/j4wf/ERyjeE41TN6psYtQgE/njqGk=;
        b=wefc7lodsWPq67TcXmq9177LH1skzr/r00YmE+ZhMsy0gVNdpLUolR4LXcb4Qlx/EQ
         8RBcBJ+xIJV0OJo2t0HUEJQhe1aMdwfXc+0PiKABoaOinq4z2PoHqhO5JtkGqqmn1Sgk
         DJqARwFa+HAs1NoQLQMlz6IFHqBb53MawMNSG9VwMhXYSHjpomrTr8N5KkxyF+TT6jXu
         3z1gsZGG2jJDppYl/rH+7z2gI+sDusoweXCZSO1GxMKMqhEZsJOZ+VWn/A+yU588YQD3
         lKmFBcXezvu/NgGphLUBV5Tj6xbIAj0bEoYUxibWx23hcTnTK3pbaHgYI+41p4dnkdcH
         Oopw==
X-Gm-Message-State: AOJu0YyrI4Fq3clQG8yGbfSDal1bRBHI9zgdooQyoiFeyDyRX7w3RgON
	bKAQ0/rIFQ4LzWP4WT2vWFXmzQzCC9ZHpN5mdpdEE4K/X4XdD5wTMzuSwjXHnk0MbisA2O8SjsQ
	NtA1sorhuHRoy9zFJi0ytxhqDcSRwy6zCghOjzA==
X-Google-Smtp-Source: AGHT+IEkhZZeCWkenkuDOzFuPtlCtK6++ykU675Ll39AzvmybR/+cX5ZMh93cxGfi9Q11sHGYJ7/iVEOTdQXaBw8zqw=
X-Received: by 2002:a25:bf89:0:b0:dff:2eaa:4946 with SMTP id
 3f1490d57ef6-e0303f5255cmr7769295276.20.1719317049998; Tue, 25 Jun 2024
 05:04:09 -0700 (PDT)
MIME-Version: 1.0
References: <010101904e70e071-638d333c-a229-48ce-96b2-86cc080208a9-000000@us-west-2.amazonses.com>
In-Reply-To: <010101904e70e071-638d333c-a229-48ce-96b2-86cc080208a9-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 25 Jun 2024 05:03:58 -0700
Message-ID: <CAOSpxdbASNQS7Ocrbn_fb=O7nTQ=C7RC_mmpok8dgyxr=tzGkA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.2.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jun 2024 12:04:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63392

This was an "all green" build with the exception of a couple of cdn
errors in Source Mirror Selftest:

AssertionError: 2 !=3D 0 : Missing objects in the cache:
file://84/4e/sstate:libstd-rs:core2-64-poky-linux:1.75.0:r0:core2-64:12:844=
e1bccb9c83c547edecdca3dac1f76c0cf320418f91de229f2a67934cdee55_package.tar.z=
st
file://0c/51/sstate:go-runtime:core2-64-poky-linux:1.22.2:r0:core2-64:12:0c=
51c61cc87932b08bfa47d4e3ec9efdfd35bda6c2b3d58b7dac45373c50bd3a_populate_sys=
root.tar.zst
Fetcher diagnostics:
DEBUG: checkstatus() urlopen failed for
http://cdn.jsdelivr.net/yocto/sstate/all/84/4e/sstate:libstd-rs:core2-64-po=
ky-linux:1.75.0:r0:core2-64:12:844e1bccb9c83c547edecdca3dac1f76c0cf320418f9=
1de229f2a67934cdee55_package.tar.zst:
HTTP Error 504: Gateway Timeout
DEBUG: checkstatus() urlopen failed for
http://cdn.jsdelivr.net/yocto/sstate/all/0c/51/sstate:go-runtime:core2-64-p=
oky-linux:1.22.2:r0:core2-64:12:0c51c61cc87932b08bfa47d4e3ec9efdfd35bda6c2b=
3d58b7dac45373c50bd3a_populate_sysroot.tar.zst:
HTTP Error 504: Gateway Timeout

This is a known intermittent issue and shouldn't hold up the release.

Steve

On Tue, Jun 25, 2024 at 1:09=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.2.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-5.0.2.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/7076
>
>     Build hash information:
>
>     bitbake: 8714a02e13477a9d97858b3642e05f28247454b5
> meta-agl: e1a0adc8cfdc3b306537fc64f8b29c3c53f744ca
> meta-arm: 29799b787d57d623dce140012a87568f314f3460
> meta-aws: e3e4c876830c76aa1112b51ace6bb6fe35d5f0f4
> meta-clang: 83e93bcda1654477802ed18b5f440fba7a733caf
> meta-intel: d172a00f487a8ea4391b96e0f6cef5279c5a07d7
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: 4a7bb77f7ebe0ac8be5bab5103d8bd993e17e18d
> meta-virtualization: 37c06acf58f9020bccfc61954eeefe160642d5f3
> oecore: 803cc32e72b4fc2fc28d92090e61f5dd288a10cb
> poky: f7def85be9f99dcb4ba488bead201f670304379b
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
> View/Reply Online (#443): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/443
> Mute This Topic: https://lists.yoctoproject.org/mt/106866039/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

