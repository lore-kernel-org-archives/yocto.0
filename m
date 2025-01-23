Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F88FC02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 18:06:42 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.18156.1737655601704210204
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 10:06:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=il5/4zJt;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e580d6211c8so2085811276.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 10:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737655601; x=1738260401; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wcck1IB+Wf/RtiB2fpzUQ90je7SaRLxw/t36vwHWoBc=;
        b=il5/4zJtGF8oRYNc+6s7K5DgwuQCcDHofOZpOgCdpAzVZslp9Tw93hO0t/52+PDdC6
         m6jA/e2iJDAQhcO99A5lRJvx4NNo+JWPJ0T0KWNzRfsiklgk1K9Dk8QStNY9Lh4pvKhl
         viwTZwxpKzYe7seAUp+jWcwgehOE6pWV3OwUnVT95Y2EOmcPqdplwYCnxJR5mn/0p48d
         WCKKFqdIc1IhPLuPLUakLuolqLKCoUG68FDkbDiz1Nhos/T6jqo+TF6oVGIGNU1SSXsj
         89qgCJ9WuLNtE16GBfSuZlIrXhcXa+rt9soiXNWY5xdPLQhqgl94OYpxF44w9Jvzt5xh
         4VXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737655601; x=1738260401;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wcck1IB+Wf/RtiB2fpzUQ90je7SaRLxw/t36vwHWoBc=;
        b=u2CcdZ7wnsaY1vPhnD02o58+aADS8WtXsjE7oWgbw4UVD+5fTrUIk1HeETYeYLeWcH
         UaBOl3cJImO+VWvwLZcwiTOWCbH4of7+eZF0t4LDuhMAoRZk63rMmIIAaQaNjvtePF+5
         iddmbvqZINY9GNslIEGKtEOmFwrF3a12lDBtNAZDc2LxS/2Zg2kpj01cUt8nG+rNUetj
         9cqnBLus7K+FnQQTTA9Qin/6STMpHbuMvNvnv54xhhr+T1SvWKLQ9dfGrlBhbafOFXzR
         yrIKqF/2h3p7rRLZzAB6KXwoA569amJMjtLA1eupuAh9c+y2Dabu5udS6jSLCAb2R+dL
         83aw==
X-Gm-Message-State: AOJu0YyE/Vkfu9DcWGIA6XD+ql1mi9Jut3djhDaHQdoQGU+uhvVIzPCR
	lzq5V64ORKW80aJlg4rSG4wWqA6X8GCUnitKu3jMq1Siic9eXKDWMucuc/a9lItOjCItB2ebg+J
	A4Pp6QeZvn2rJxu/mZhjfQhBHpkD2zg==
X-Gm-Gg: ASbGnctE4iclOv9u6AUAlzTKPcb2sDUtGfczpHrXwO8ItpfcevktkZJU+fHpWoVLgb8
	8UAy0j1P7fPe+ATR6I6d1dREKYdh/dhgELqS4uF20NeTX73/SYWbRGzV1W7ZxVd31hNM4kSc=
X-Google-Smtp-Source: AGHT+IETaDjDJLshfopQm2777yCSwcO9Mv54RG8m6OOmf81b19s6ZbF6qowxi2LO1t1fPf360sfc8KKGkBiYo1+sefs=
X-Received: by 2002:a05:6902:702:b0:e57:4db7:6d51 with SMTP id
 3f1490d57ef6-e57b132ace8mr22443136276.32.1737655600826; Thu, 23 Jan 2025
 10:06:40 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR06MB8334DE2E662CE8FB9FEB387686E02@PH0PR06MB8334.namprd06.prod.outlook.com>
In-Reply-To: <PH0PR06MB8334DE2E662CE8FB9FEB387686E02@PH0PR06MB8334.namprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Jan 2025 19:06:29 +0100
X-Gm-Features: AbW1kvYj8JZ7H4AdBG9nCPhimzlI9C8APLTmFAD0TsN6cmnQLFLFG-hmr42YuME
Message-ID: <CANNYZj-TfBpVCs6oJughDWdxpvA79aVoG0tmKfRPdr3F7ZfwUw@mail.gmail.com>
Subject: Re: [yocto] Correct implementation of packaging for bootstrap packages
To: yocto@lists.yoctoproject.org, oliver.westermann@cognex.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 18:06:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64618

Yocto project does all of its testing in qemu (which needs only the
kernel file and .ext4 rootfs file to be given to qemu executable as
command line options). Yocto also does not endorse any particular
flashing tool, or an OTA update solution, and will not pick a
favorite.

On the other hand such a reference implementation for end-to-end full
hardware product bundle must be testable and tested. We simply don't
have resources to do it.

One conceivably could implement a soft set of guidelines and add them
to YP compatible layer certification program, but again such a project
is outside of our stretched-beyond-thin resources. Talk to your
vendors instead and see if you can make them cooperate.

Alex

On Thu, 23 Jan 2025 at 09:01, Oliver Westermann via
lists.yoctoproject.org
<oliver.westermann=3Dcognex.com@lists.yoctoproject.org> wrote:
>
> Hey,
>
> When we're building a full software setup for a certain embedded architec=
ture to completly setup a device, that contains various components which ar=
e collected in some "post-rootfs-packaging"
>
> * A rootfs
> * Kernel
> * Bootloaders
> * Firmware
> * potentially setup components not ending up on the final device state (i=
nitramfs for USB bootstrap for example)
> * tooling for USB/flasher/etc (eg ADB)
>
> Those to bootstrap a device (e.g. via USB/flasher/...), something therefo=
re collects the output of various recipes, both images (rootfs) and non-ima=
ges (bootloader files, firmware, ...) and packages them in a custom way. Of=
ten this includs additional tooling, like flashing tools or install scripti=
ng. Working with various SoC vendors, I've seen various setups, and I'm not=
 sure if there is any guidance on whats correct
>
> * Some vendors have external tooling. This tooling expects the right file=
s in the right place (eg. deploy dir) to bootstrap a device
> * Some vendors integrate this into yocto, having a custom recipe that dep=
ends on recipes and packages the output
> * Some meta-layers for OTA update do something similar, inherit the image=
 type, but disable most image tasks and don't actually build an "image" (e.=
g. swupdate)
> * Some vendors implement custom image types
>
> When trying to support multiple SoC/BSP vendors, this sometimes leads to =
conflicts and questions, but I was unable to find some references to this i=
n the yocto documentation. A custom image type feels most integrated into y=
octo, but I've seen some "hacks" in there that make me question if this is =
intended? Is there anything like a reference implementation for "post-rootf=
s-packaging"?
>
> Best regards, Olli
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64614): https://lists.yoctoproject.org/g/yocto/messag=
e/64614
> Mute This Topic: https://lists.yoctoproject.org/mt/110768646/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

