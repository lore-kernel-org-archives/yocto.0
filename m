Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B60FC19F2E
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 15:30:50 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.13292.1740670246043962223
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2025 07:30:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PTBZ6AgD;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5452efeb87aso1050069e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 07:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740670243; x=1741275043; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QuPjjCNRAOFVBc3dIcy1TIoDolZOrvlbEqReRBa1UX0=;
        b=PTBZ6AgD31riterV/QHlXB0aZ3dFPKiBQGGiDGgbG5Y3TrkxBWQiHZR2ONLpSKQ2XS
         QOvhzCDY4psbT09bwn3jSU0xTc80Bb/TodM2RbUmx3FEih4qFQMoWUy9RHoxRstrRjiK
         W7+1rXolb7fSoZb7J4nt24UkwMItrOUDa1TUKZQemuo2PZgSyBSBkpyoP5cFgCrffsew
         7w8hpe4iY/1ZcniCQMEf8PcVDkJQUyoGCi7hDFshV8hkttkbRRadQ2U5iW47m1OqCLP3
         Fm9qTwX50YmcOXdxpABqcrFXG67zCEtyB+wKT8vKTtYPt0SG6ciOeO6a/RdWHq3ygliW
         0Nwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740670243; x=1741275043;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QuPjjCNRAOFVBc3dIcy1TIoDolZOrvlbEqReRBa1UX0=;
        b=f7g8N5NeYZpwKNoWwLtiZM2hubnm7eD7zLOXmZK3AKT5R6oBTZOz9PgDqHJFTeeRpp
         WXJp7BE4jZboEJ5rkRlgdEyeHe761z+5Pwn7Olc2uYd/AwLJzC+s76Zm5C4lv0k3DeA8
         26gmkSJENb5qcPKrfImY/FOthb5qcfchmo9TTsS1yLbWJg8gk5rThQXKzTsHhe6J8D12
         h+ZL3IDlatFcJwNSreehbg1dSuzAtC7tI4LPTNICrOUVdjy7lpsDYI5D1PAw/o5zJIcC
         h9joLCXiYvCiDuA1MIIrJ7FfoCkSQVmkkgVIl0l8PnHAg7elk6o+NAgzY7+q07FLDUw4
         DJ5A==
X-Gm-Message-State: AOJu0YxDJ01GsEEa6fCMyVwSoFgwQ4gyZOJQCp+A1a++d0l8cHeocNMf
	ehwyvLNOI0LSxqeJ4AUKOCPcOxTlfwpSzqTqzo5iZxy/z10hdI3lW1ST+/2gwL2LoKY4N2gP9Yb
	/hkQHjgFjw5NfRDZi3UVF1jn8NoLTPg==
X-Gm-Gg: ASbGncuvgtEd0LZYn76tknN763erc4lxNfEhlLx4w8PBGrfSc58f2xlnFaejYVwHPDT
	K1HXLp+9sv24o1Vg7XxD+hAJ3bxRWnN3pRy/gDhinlcaMRdb6eqxbEnAers6aktxMR5KlTD6SRX
	T9vg9OvWx4YqKRoGiRKPQ+eOFFlEMirIc8iKWH
X-Google-Smtp-Source: AGHT+IH1x22XPFpsVlDwXarqXkpsvUvFQm/JAO8m76ObrM8fS9lUfnZH87AVzVbGBFj2gqG0mz20NmqphaaqtUgf0k4=
X-Received: by 2002:a05:6512:104d:b0:545:ebf:145f with SMTP id
 2adb3069b0e04-5493c5c8f21mr4072310e87.53.1740670242068; Thu, 27 Feb 2025
 07:30:42 -0800 (PST)
MIME-Version: 1.0
References: <1740669549.8992@benjaminmarty.ch>
In-Reply-To: <1740669549.8992@benjaminmarty.ch>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Thu, 27 Feb 2025 15:30:29 +0000
X-Gm-Features: AQ5f1JqkXUm4DviUFeP03poMt4ruQhEVVfSNEQ16kc-TDoblimvUDYOCwZaGBZk
Message-ID: <CAO5Uq5TChVx_40vbx=sQAm0jVJo=AAPjz3kTMEeQp+T179Pgog@mail.gmail.com>
Subject: Re: [yocto] ifupdown with systemd
To: yocto@lists.yoctoproject.org, info@benjaminmarty.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 15:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64888

On Thu, Feb 27, 2025 at 3:19=E2=80=AFPM Benjamin Marty via
lists.yoctoproject.org <info=3Dbenjaminmarty.ch@lists.yoctoproject.org>
wrote:
>
> Hello
>
> I'm using Yocto (Scarthgap) on a Raspberry Pi CM4 with ifupdown and init-=
ifupdown included in my image. The system uses systemd as the init manager.
>
> It seems that the init scripts for ifupdown are not executed in a systemd=
 environment. My /etc/network/interfaces file is as follows:
> # cat /etc/network/interfaces
> auto lo
> iface lo inet loopback
>
> auto eth0
> iface eth0 inet dhcp
>
> However, after a reboot, eth0 remains down:
> # ip a show eth0
> 2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group
> default qlen 1000
>     link/ether d8:3a:dd:a8:b6:52 brd ff:ff:ff:ff:ff:ff
>     altname end0
>
> Checking systemctl shows:
> # systemctl status networking
> * networking.service - LSB: Raise network interfaces.
>      Loaded: loaded (/etc/init.d/networking; generated)
>      Active: inactive (dead)
>        Docs: man:systemd-sysv-generator(8)
>
> I have to manually run ifup eth0 to bring up the interface. Is this expec=
ted behavior, or is there a service I need to enable to automate this?
>
> Maybe also any other recommendation for a Network Manager, best with a hi=
gh-level API?
>

systemd-networkd?

--=20
Alex Kiernan

