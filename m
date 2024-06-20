Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE514C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 12:52:20 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.46640.1718887932534220277
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jun 2024 05:52:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=EFaKVXeS;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.178, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e02c4983f3bso844099276.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 05:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1718887931; x=1719492731; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c6Awh+z+MwS4H8bNFW5jMA8/OPUS2TZQYV+65VIUu+Y=;
        b=EFaKVXeS85db6INC7Es2VzzrHoJORe/Jm6ohRAjQ3lc3paX6uopcKwh9Zsy3RWFLt+
         um82yq2C3qOayts+HdjQSw0x3IHy4CaA5QSBqTpVombBTGAsWezw6YnwZD8/qCxYiO78
         BY60BachnqvxeUriLkL7legDF0tZxYgyXWxg3fComp7n7zd+M3S8sYqv6XVyic7zDCqQ
         bHjl7p+D4a/kmZ5k7+i1VgNojnJIWx63hampSOXTKw1PSlwNzaGNlJQvRCg6Zu59RHtJ
         lFskZkU9d4kkk2ZJWVUf5qPNbWDjyYOJh+Cmqv2o6i3IixXqbGzoZdCYzZrqp+flEIyh
         j4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718887931; x=1719492731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6Awh+z+MwS4H8bNFW5jMA8/OPUS2TZQYV+65VIUu+Y=;
        b=Ty1W9h5cflSCdDI8Pet3CRTBKYj2DS2C3uSMY1Jpl8h70vq6T97QZIGUgJ46c1/1ZF
         gA4Kn0uqEYCFLbXsr1pYdIZ5rcwi+y/4KaC0Vm6b/jPLpoVASAazZ6YKVzclTebbmrD+
         +1i3e4BnPFZEmTj7rBzW8kaZCsFPUHEY88p84tKL8Knwoz/JQTfAY5sGmWLk+lKgKq8p
         SAsUwprETPOgWWUUIb7DtLGI3yAZTlDyicKWAMDirlCmpDttGlCzAnfK3sRMQWwMJCP3
         8Ra5zy66/niS0sC6sbUNIBCObHUJGRH69L8456s8hOI8r13nwbUlj+PLbMjusHnVc8y9
         Nh7g==
X-Gm-Message-State: AOJu0YyzyZjrDDtzTZrLCHNApW8ZPWppHKw/MKu7WuVG1sIh2fc8mXHj
	WeyLeUFyS+aWzlK7Z9p5J9F/r5pgi2RPE71ik/xZABWC0VsOwgx3wpHP3baI/JFyXIcU+o8e/5y
	c/qPj/aDPQfz3MYI3M33JaMdpIbSOTVGBIFCD8g==
X-Google-Smtp-Source: AGHT+IGfhE6+brNfiLXaoO/rsgnj5i/tuknzwuRW9no0jYsS0aA3KUEQbsn2IFJvk81pbz6h41fuqnvmxj3AUPIh2Ls=
X-Received: by 2002:a25:d612:0:b0:dfa:fea7:cf47 with SMTP id
 3f1490d57ef6-e02be13b48cmr5373690276.15.1718887931644; Thu, 20 Jun 2024
 05:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
 <000001dac26a$bbe3a070$33aae150$@gmail.com> <CAApg2=RBWRoVd3pGXKqDUoM18pa4HLyEzQd6TsM+BdWBM2ZFSw@mail.gmail.com>
 <CANNYZj9Xr0n-CwR4PfMwme=ZGnkR7n9cbaJahczENLmXDqu6uQ@mail.gmail.com>
In-Reply-To: <CANNYZj9Xr0n-CwR4PfMwme=ZGnkR7n9cbaJahczENLmXDqu6uQ@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 20 Jun 2024 05:52:00 -0700
Message-ID: <CAOSpxdbyGqeG=Bzi1VZVsXNS-0XPt0F1v6edMYvc5tCMLs+r9A@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com, 
	yocto-security@lists.yoctoproject.org, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 12:52:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63375

On Thu, Jun 20, 2024 at 1:01=E2=80=AFAM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> On Thu, 20 Jun 2024 at 09:07, Marta Rybczynska <rybczynska@gmail.com> wro=
te:
> > For LTS branches it would be good to enable ECDSA in addition to RSA at=
 least. Steve, what do you think?
>
> In my opinion, no. It's a new feature, LTS aren't eligible for that.

Alex is correct, feature additions are outside LTS policy without TSC appro=
val.

Steve

