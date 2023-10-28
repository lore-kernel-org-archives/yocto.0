Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A978C0032E
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 15:39:18 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.20148.1698507548143768715
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 08:39:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=OmNfdZNM;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.47, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9b95622c620so492856466b.0
        for <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 08:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1698507546; x=1699112346; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7UGjntE6mqI3tt0/ESEaz3B/BzRhKT3A4raPuJY4sM=;
        b=OmNfdZNMbCeNdpWS58zJCILkQExZGLwkY/ipKghWw8mtka+hTLdEP+iO3yHnSQOqPR
         IRtE/EvJakyP4rVl9KIZEKesQ0wZUdwqP6q+1pZZnYwQtPOGujWyBZ4tvvkzhzSzCwQr
         tX3ikJuEY67+PUrTeW2g2s86sFoq4Izy6DntGoSuSBsmaamhZiD2Yjd1dAy5VeLuC43x
         MJ9Jv7Fva2dzBG4kHhE1mGxLNLCGVYTjIyVirl3QUbR66vtCINF6eM8yuZ0sMacKUZ52
         enEsOPP2Jn61Imzj8Qkk1F9xf/gWyH7p50xTxi+Ed+vgKbIuzfMKM0ZFBXbesvjDrAHo
         FtoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698507546; x=1699112346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D7UGjntE6mqI3tt0/ESEaz3B/BzRhKT3A4raPuJY4sM=;
        b=CdRXxYc4teB6eYRqW9DQD8eCs3lm7UdKjYK020km9po4GF/+uFdmJXVtlRe9hEpWdV
         MRmtMzJzpNcTY3d6KLgL0FPh+nB/RH2NhJTbbACo7pBqVicycVE/LxFYt4uzBjelpVq5
         9hbcTbkO4QGfLcKwZLuM73Z+wU1Cxlb1F4dLfU0QtGpM+t+76wAEYH4Bmpdt301Vh3Fl
         8RNUcxabLOEtlnxB0CAorZdQdvw0nlMDchAv5TfQ5GLivvCQzJG0ghAtnBLLv/+01lgA
         yEwJH7m/bvcoCNTJuD8iIpKtjadTBYqbWXQQBg1ylbJKl0znxSbfZxnMJkyliGPuZNoI
         xbmg==
X-Gm-Message-State: AOJu0YwiH0SLrRFvNayktxKq+BsL9RDvLeezHmdj+ImZ+EFwoh8/Nm4e
	1cJ+CmoL2bq1afWsrOpzbse3GpAOr38X1tLJJ0RQwUZ/EVkaVPND
X-Google-Smtp-Source: AGHT+IFzZXqo7O97AMa3PihvotJrVzIZmf7xto8DXWR+SsgBqS+aIguBkJbQaevRjOvUrDKj20uvUS/wRwQ0mFn/MlY=
X-Received: by 2002:a17:907:3206:b0:9ba:a38:f2b2 with SMTP id
 xg6-20020a170907320600b009ba0a38f2b2mr4350595ejb.41.1698507546008; Sat, 28
 Oct 2023 08:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@us-west-2.amazonses.com>
 <CAOSpxdZzXazeoOv=hQBSC+cyyVsiqOtfqeVqX2Hr4XEUKN=OSg@mail.gmail.com> <ac4e63b177d5612c03c10581b55fc4961dc93770.camel@linuxfoundation.org>
In-Reply-To: <ac4e63b177d5612c03c10581b55fc4961dc93770.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 28 Oct 2023 05:38:54 -1000
Message-ID: <CAOSpxdZhwXBepStymL_5DvfGwxtVaEvGku1WM-9E0Lrzm4KVQg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.1.29.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 15:39:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61510

On Fri, Oct 27, 2023 at 10:30=E2=80=AFPM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2023-10-27 at 12:38 -1000, Steve Sakoman wrote:
> > There is currently a known reproducibility issue with the vim-common
> > package.  In my opinion nothing that should hold up the release.
> >
> > Details:
> >
> > It seems that the last sstate build of vim was done on an Ubuntu 22.04
> > worker and recent changes there seem to result in an occurance of
> > "charset=3Dcp1251" whereas builds done with the buildtools tarball yiel=
d
> > "charset=3DCP1251"
> >
> > See: https://autobuilder.yocto.io/pub/repro-fail/oe-reproducible-202310=
24-kys9f0xn/packages/diff-html/
> >
> > The reproducibility build for 3.1.29 was done on alma8, so this
> > difference resulted in a build error.
> >
> > I reran the reproducibility test on an Ubuntu 22.04 worker and as
> > expected it passed:
> >
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/3827
> >
> > I will be sending an autobuilder helper patch to use buildtools
> > tarball with Ubuntu 22.04 and this should prevent future occurrences
> > of this issue (once the version in sstate is no longer valid)
>
> So we understand why master doesn't see this? I'm still a bit worried
> about why this difference is occurring.

No, I don't know why we aren't seeing this on the other branches.  The
vim recipe is the same in every branch.

I've only isolated that it is related to Ubuntu 22.04 for dunfell.

Steve

>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#334): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/334
> Mute This Topic: https://lists.yoctoproject.org/mt/102231153/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

