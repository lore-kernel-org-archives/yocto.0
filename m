Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E70C8CCD1BF
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 13:14:38 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.8343.1761657273352016081
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 06:14:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=xfWO1TUG;
 spf=softfail (domain: sidebranch.com, ip: 209.85.216.43, mailfrom: leon@sidebranch.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-339d7c403b6so5857863a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 06:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1761657272; x=1762262072; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQ/Cf2Pc6xg0BOiX3t/fFtGwHmTNs+8ulIQXGRkg6vQ=;
        b=xfWO1TUGYZ6W9adDIS4whwk44sS1B3n6H0KEfjq5zwoNqsEhT1ArkHEZpoORiWxj+I
         YdU1fvhI7fXwZwK4Wc/+wQyQXZ4ZZi7LfvxViXIjPEs2DjSAWuP/7eH/eA71L4RFo4TT
         s8UnByrOE4Pam5AdKMh94Q3kt3W3TdmlDjehcOu4R/pReeHa1qa2g0Z3HQuwfeInFU+B
         PM0yRFZXEd66iyHEUHP28e7MoPZMRFAL2Gs4N//gZyP6xkthBQLMrqi+1islwwvqjhzo
         pP1TALmWqUzDcIPqh7vgSCpZ72lKfWUqFuEnci5mrgdVhog9zVK1wFVeHCA17Zpeb8sw
         FY6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761657272; x=1762262072;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JQ/Cf2Pc6xg0BOiX3t/fFtGwHmTNs+8ulIQXGRkg6vQ=;
        b=IBw64H0KUlb1DwcwnJVTae2iPUq4wQuwLDTBtTBx7wiAv8tQ+1x8b+iGND0u2Qr2A2
         bIPfVf87WmSSmGsm2KgFrHTxHVneSNU1PFtTeTCB016P5odnPjxYSJi7YitajjpvNMHN
         3flCzNg0mHlRlc0DgdtNtchuYXp/z3GF3Xv0ITKfQ+NdL8eDTbg43mRx5/5X5jeI7r5P
         yovE2xhk2gDjvvukYjbGtblg75gdzpUpCr2hvIthcnQFtxDqZrHjKPuMj/cWeexp1G/O
         lF/BY+Z3/5HyAjhozDPaDfuPo1zi4yPO+8dn61R+zfF+ccoAoWRrqw4x517tA6ENqPcg
         Q21w==
X-Gm-Message-State: AOJu0YzvIMsWsW5hjH7YCi/9A8d3Qm7ebPxQyinfpWe4tKmoIPXqJkzN
	AMuwYagyLu8Y731pw/8pHO0FTQJuptRJzIgguo74Np9C2wqjCo4MJ7Qp0IZhWjEalRhwwmAxDex
	i+bjnPvzyH+ReaRMZvMHKWadP8vb8GRUIeOE+UtDqixUcVM4ZRDek/0hQoJlg
X-Gm-Gg: ASbGncuYp45IiqbkLjuHyPqeFwxt3cJEHBMRDwRywSSDuOhGaaJ03zcMjn8ZzbIQrDX
	r3rSiEAEOeKSlHI0vYkAthcJQ1Ugi3lb5QTB0h5ti1H8F5ytImRr8e8nlEZP9I7XPv41NZy12b7
	dDqQiJYc1NBMetvEShQVUkp24ixOxlCY7M6CGXIq2pGhivJqGi1u25V391dfmsBXaQpjoXjlycY
	+DK3KN18+KF84nvnR0G6JJRSwh9ZmpOn5Xjxn09fe4y9N9gXJSIgUCucvi1Fh8=
X-Google-Smtp-Source: AGHT+IGncvn4n4MOyGerY4RZbHBqZJNOJpFASZbY8rtSWy/EDpQoKh0iN2dl/sGzzjZoRNSAXSClRjbSz9oXT9M3yr0=
X-Received: by 2002:a17:90b:56c6:b0:32e:749d:fcb7 with SMTP id
 98e67ed59e1d1-34027a03ae6mr4772497a91.13.1761657271799; Tue, 28 Oct 2025
 06:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <253a0731-97d0-10ef-aef8-2f56328a81f9@crashcourse.ca>
In-Reply-To: <253a0731-97d0-10ef-aef8-2f56328a81f9@crashcourse.ca>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 28 Oct 2025 14:14:19 +0100
X-Gm-Features: AWmQ_bmgKqj6UIdXErpOUKBNmgEo5a8sVVjQ7sFbhT7OyKVOdWwEQRhLYXHDtic
Message-ID: <CAMjhiJibGPcqNB2ERP=Gxo44VTqnW+BXxQ8HjBOjHemQ_pjmJQ@mail.gmail.com>
Subject: Re: [yocto] pedantic nitpickery: coding style with "FILESEXTRAPATHS:prepend"
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 13:14:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65975

On Tue, Oct 28, 2025 at 12:37=E2=80=AFPM Robert P. J. Day via
lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
wrote:
>
>   (spoiler: turns out this is fine, but it's non-intuitive)
> arm-ffa-transport.inc:FILESEXTRAPATHS:prepend :=3D "${ARMFILESPATHS}"
> linux-yocto%.bbappend:ARMFILESPATHS :=3D "${THISDIR}/files:"

Indeed, I would have written this, as the trailing double colon is
needed in the prepend context of using the variable.

arm-ffa-transport.inc:FILESEXTRAPATHS:prepend :=3D "${ARMFILESPATHS}:"
linux-yocto%.bbappend:ARMFILESPATHS :=3D "${THISDIR}/files"

But as you said, it works, so that's typically enough barrier to keep as-is=
.

Leon.

