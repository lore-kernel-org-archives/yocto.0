Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23DDDC0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 18:50:07 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.1078.1739299802403614296
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 10:50:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bXdQ9L9/;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-471a5c6ae77so7346661cf.2
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 10:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739299801; x=1739904601; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gvSjDWoCO+jrvZf2OpAC24UoY2dRDk7dsgxEFiXatmE=;
        b=bXdQ9L9/YbC4xSVXekUYc89OZ74SYKWgUYzjjBh91Pj5UIqTVZvikjWNtJ+UwznhEQ
         rXB71XHNHPHlwoPlrX3tU338pB3JGLgwo7JIJX9mQ9zODrX84WDb/8uLcm6+C3v+tst/
         xEbiieJcXGK2EnSpcDiv2gtyzMtj3dNdfqh7fqybrw56hWvB38cyatX5UjMVcAmJsjCJ
         dz+C6qZSJY7YKNOMQkJ0QubRgCBo71AvGjYzZS7m4P9cpjb1ZLm9MMsb54jCnL8kOeyt
         2xQ5dibLO/q2x88e8Qev5DytIDc+3vuy1vZ9cbf/QBzjP4f95o1Kd7S1Goth1rLTjofQ
         HMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739299801; x=1739904601;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gvSjDWoCO+jrvZf2OpAC24UoY2dRDk7dsgxEFiXatmE=;
        b=DPQD/7Td1F0KSUfrJL1YJAtJ6JYEFIxKFJ6HCmxaLEaOFMVdsd0HVOHLmU/noCELqY
         KCQ+hFa8M2lX0ewRdWqdNcex9mnUQ0m/+m7pLQ2H2steVIQ81/EjpAivyEwkQjPEn57e
         eA/x+zicXJL1VIU7li8+KNzL2NoNNebQXzpd0YHA4Agc8H+0EnRpK+uehv3hf60PYhYF
         qJdm4C6E/BdpO566O272gBD8nxotE+GPaytbwt0DP6Q8gS/8knAwGq3j6YV35PEi9AxX
         hv0OVuDdwgg2mq4T6QQLMsx4KKYe9JesX942ljfmGx6w2Yr5XEWFemRisXE+WNC9xbyN
         WamQ==
X-Gm-Message-State: AOJu0YzWpmVKKUN1l4fxGEGSXLocCvWlN/u7A4GcYmwcf5eWKvVgrj+N
	M66QIg+uHbn4So+b1wtLOpPGp0KkVuv00mA4DD74K8mkO7BIYJyyVexfNF9RbNr6aYERSELuFGk
	dKON4FvKPidiq3pGnhMhxHaIX3So=
X-Gm-Gg: ASbGncsE8NEr2xTNl70aN617+tNlivKfLZgEOEsQpeWZQH91/lLzVACTjgzRcmtEabx
	VD3lpVJXkXNDhBx1gRfclqXW4U+MtHUfv28Zubrj5h5UyBFSEoqicgNUpKKgCJ52PQZbhGsB8TP
	L9d3r5W82H1usxMLJ12XkFGAiETLzjud4=
X-Google-Smtp-Source: AGHT+IE+HWfMq70dfPE4r7ncj25KlMQRhzitre9UeDBpeGsHugfWgYw8BH9FpJXmWns9a5NF6jR7kReo0iDohiBfZvc=
X-Received: by 2002:ad4:5d6e:0:b0:6d8:8256:41d7 with SMTP id
 6a1803df08f44-6e46edada18mr7306056d6.33.1739299801457; Tue, 11 Feb 2025
 10:50:01 -0800 (PST)
MIME-Version: 1.0
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com> <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Feb 2025 19:49:50 +0100
X-Gm-Features: AWEUYZnfGZFHEjpxIld2TdbHygwkszjCk-Eyn6fqtmxTXkd7iVo9v3j8XYtIZxI
Message-ID: <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
Subject: Re: [yocto] Installing pre-built DEB files
To: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"skandigraun@gmail.com" <skandigraun@gmail.com>, "r@cmss.com" <r@cmss.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 18:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64773

On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]
<kbeal@eclipticenterprises.com> wrote:
>
> I know there is a parted recipe.
> I need the equivalent of the Ubuntu package libprated-dev.
> This is the library and header files for using the functions used by parted.

The parted recipe builds and packages libparted as well, it's just all
placed together into one package with the executables (also called
parted). Headers and pkgconfig files are in parted-dev package.

So you can simply use those packages and ignore that they also come
with executables.

Alex

