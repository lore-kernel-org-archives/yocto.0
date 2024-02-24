Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E36A9C54798
	for <webhook@archiver.kernel.org>; Sat, 24 Feb 2024 02:40:49 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web11.12429.1708742447684795912
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 18:40:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Q1tB1FPj;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5a04bbe0a18so451831eaf.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 18:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708742446; x=1709347246; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHNnZ1OR7/MeLs3SWgEqI38iMKyJcaAkzUp3VZhS9ug=;
        b=Q1tB1FPjUtaVbsY2H+7qSFKQm3L9MrimAhHU1UyxRpt/OfRLd8HFuVu3Vo4/BHXTix
         D/Dc+MbnNBfws83eRG92matynHugqseIk0kDkYJyhtEvtshgU5rOK7Lxvw1fqu4VPhgC
         EtE571MIahMavz2PuSDvvvemYZvT10rUcxwq0ljP+zpvw4KrxqzRXMvrYViJCEyOH2O6
         W+QBWWSkiJsQlNmWFvrMeJ7ZeZpnaCwoc7rUkIfgCfXxTJzU0jNOisu0ngHuaBG/F05l
         5WcS/ClAEd+2G18IeHgwTlOiIuiqNvjcwz9OuQhpA0e9fG1eaRYKHfLIE3HIcFkoPSbL
         /Rqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708742446; x=1709347246;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fHNnZ1OR7/MeLs3SWgEqI38iMKyJcaAkzUp3VZhS9ug=;
        b=a04tiELyQXfKnGrk4cgcBMXY/NX1O/Ven3oI2EDHBzMFG2TQKiPxV+x6FtKmCGK7B7
         3igw3bTmFCWGDCurOAFSgZUdhszqwEXhc8L6XpZaVmrtxb3Fvgrs1ghky1W1JzBTVa25
         z7O4cBRuLCDG5tF90XQvP5dDmQgf9vU2VeFtuN5VCbOvt7PbIES6Dh7fGxniG5Urwj30
         ehwgDv2M7lxBvhHg1TkXyT5uYSFFttMN4Lh1q2JuSo/fQZlY6/rNqaI0Tn/qicx1ZuV+
         5W4M+rJbZBSmqz+ql7oNMleu7jBm7EwMo8a0QPKM88Qu8QxrDoKYn0mOAar5MGxdORsC
         x4mA==
X-Gm-Message-State: AOJu0YzmC6R3EExQcHD3pYvOEDd1OGpW0yFsBY9bozdDYXNdiimh9gfR
	FqXvvNoIAlEwSXeKYzGxc88wBP0O4S93HBMdDIG2JwN5gvFEwor+JwiGSlADOFmdDeUpD80e8rw
	SfKBoDiHr7UayPgX8pFpEkp40J05P8q0v
X-Google-Smtp-Source: AGHT+IGfzJAAQ4wPtmV5DpseZ4/Nk9bizJzWs94tK8JSbnA4dxS41Paia5jio+2KA7zEl5bNfpD/XjRlSuwpbUvEPJY=
X-Received: by 2002:a05:6358:9991:b0:17b:5e32:6009 with SMTP id
 j17-20020a056358999100b0017b5e326009mr1860360rwb.11.1708742446319; Fri, 23
 Feb 2024 18:40:46 -0800 (PST)
MIME-Version: 1.0
References: <trdP.1708731374055475315.fHPK@lists.yoctoproject.org> <27813.1708735767301147605@lists.yoctoproject.org>
In-Reply-To: <27813.1708735767301147605@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Feb 2024 21:40:35 -0500
Message-ID: <CADkTA4PeXBEBRAJA7=QP1je3X8642J5-7o7djH=N4bqa69hN7g@mail.gmail.com>
Subject: Re: [yocto] Machine qemuarm linux-yocto-tiny_5.15 Missing ext4 in Kernel
To: yocto@lists.yoctoproject.org, acox@reliablecontrols.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Feb 2024 02:40:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62596

The -tiny kernel configuration is just that ... tiny. Most everything
is off by default.

Unless there's a distro feature to coordinate features, it won't be
turned on unless you bbappend a fragment to enable what you need.

Bruce


On Fri, Feb 23, 2024 at 7:49=E2=80=AFPM <acox@reliablecontrols.com> wrote:
>
> Getting past that it seems like a other options are missing. I'm going to=
 do some more testing and see what I come up with
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62592): https://lists.yoctoproject.org/g/yocto/messag=
e/62592
> Mute This Topic: https://lists.yoctoproject.org/mt/104539191/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

