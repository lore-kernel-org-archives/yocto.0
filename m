Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 859ADCAC592
	for <webhook@archiver.kernel.org>; Fri, 19 Sep 2025 21:46:46 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web10.1836.1758318397636209177
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Sep 2025 14:46:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Hg7w9ELc;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.182, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e931c71a1baso3266064276.0
        for <yocto@lists.yoctoproject.org>; Fri, 19 Sep 2025 14:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1758318397; x=1758923197; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/e4v9CkGBCgFvBv1JBzj/87y8oTO5pyHKicU7iyIks=;
        b=Hg7w9ELcAjVFRoVV1SZiR39lL3CBUnG0YGZwtpGg2YT8zvkvxh/xvvYw/WZ5qo+VpN
         G74mRAtMnFt9X8VG8Zq6BguQ1meYHlXWYo//o0J+PjJ2hqWYDpKB9kgLKlpyJJHVQV4T
         a61u4giCfi6PbGroN5jb68iuLdlnmaAoOs/7uirHSW4bsjdhgG9TI61ElAGJWLLeeHxv
         h2O7s2/jMAA0zNMLQTw3bIeFLgq9bB2fJNP4cIZgGT94gr2epWpqlpAE2qJzyJ37IPkn
         3f4kQjTn+MOotdst3D/P6wAydxbKSu2HVNonl92w+68kSVFiGKCVZvyG4JtUOo77OGWO
         tkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758318397; x=1758923197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/e4v9CkGBCgFvBv1JBzj/87y8oTO5pyHKicU7iyIks=;
        b=UC2leZfrn0QJqCrn92UiiGZnEMfXpYRxNLT9EsCotCNUyTW2iaBE2FwQLlCuh+TxB/
         B/HvC/2D6odz36rcYXlJdq9J+bxeHMnWLB9oYYEWiOHZKbqolLXiYCnMeiXjLCVzfFVp
         +29ApHd9/oZUaJIWxNaa1P467hZV6OAs3zGg45icYFKoQQ/37EDXlMh50uxmMUAnq3tQ
         3u/opbIEE8FpZA3ipu8D6lu4tJL3M9ZKwjcZ4fl29Thrb92V4JerpdqfA6Uoj2Y/Nn/d
         yn+LWXzGoC282v0TQW8053nnfj99dYPmF4NRPHhtUrtQY65tjqfgjNQY5eDxIgAicAWW
         Wy/w==
X-Gm-Message-State: AOJu0Yz9gngiVhlwmvva37a2bL5p+XxDOsRVNjyUrGgP1ZFZWfailOIH
	vMkUXDssYQorXaJR1q1w8xMHIKUgUKND06OjgSYv/GOzXattPq+rlZ4KnG4L9komoFXJ+x5Mhor
	3JfI9WO8azFzzh/2aj01em++QblkpfcAKG++WzX0kQ65l8WmI4dwAl6I=
X-Gm-Gg: ASbGncu96Umo0Uu+OHTh1bJU+ypph6EcRyDoOAe6uTAnI6rECeqWaY7m/Ky6ZkBVyFR
	Nr71j+0Hzs+vGF7QFK3toxjT8fsDzveE6p+ZLSLLTnchj5rzOf2T9SRKgcYjCcg8dTLHkKYPtMl
	3+qa0JuMHhQqzet9CPQurezf/78eVXCbG+TUPwHbEsiYW7lSTE36loMGnRFQNWfZcK1Z8Ba5Xgy
	EjhmE1fdYskMThQuXo90R4dD3pD18atSKSuJA==
X-Google-Smtp-Source: AGHT+IEkS/wy/mEWMIpWgdcaQgowormiEL+fg7TPtF68/hXoD41BI9ZN9H8/3TKxx+T9BklwbCxtQD1iFxOHQN8IpQE=
X-Received: by 2002:a05:690c:61c6:b0:737:523a:f7f5 with SMTP id
 00721157ae682-73d3b0b7529mr44757347b3.35.1758318396438; Fri, 19 Sep 2025
 14:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <0101019963119e49-b80291dd-c154-4031-a123-aa81512780a8-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019963119e49-b80291dd-c154-4031-a123-aa81512780a8-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 19 Sep 2025 14:46:25 -0700
X-Gm-Features: AS18NWBFXfBqjutFbOz79AsGCibPp5-xBonX7FlqQTHQnB5yLMaTcFtmNziNc_g
Message-ID: <CAOSpxdax4a3UQQYp9toaWuJXjKu=RbLBvzOxBmhxEs1EkQxzvg@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.30.rc1)
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Sep 2025 21:46:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65860

Unfortunately there were a couple of failures that may possibly be
infrastructure related (HTTP Error 400: Bad Request).

I will investigate and do an rc2 build.

Steve

On Fri, Sep 19, 2025 at 10:42=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.30.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.30.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/2408
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 8ea88240e6ff89b006da04923171736fa07bb84e
> meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
> meta-aws: 66cc5b4b07a1d4aaab5eea0fbfe1e311ec674fbe
> meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 5c138125018fef4b240e62b664a809d19f4b26a5
> meta-virtualization: 5429fc0f5c2ebd7187e54913220f579417fcbaed
> oecore: d381eeb5e70bd0ce9e78032c909e4a23564f4dd7
> poky: 51dc9c464de0703bfbc6f1ee71ac9bea20933a45
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65859): https://lists.yoctoproject.org/g/yocto/messag=
e/65859
> Mute This Topic: https://lists.yoctoproject.org/mt/115332362/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

