Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AAAD42B8E
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 14:49:08 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.88169.1731422947712799260
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 06:49:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=alwkyVIL;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6eacc99a063so55687027b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 06:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731422947; x=1732027747; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oBp/RedUfWn3Zto6xybrxgZO8D9L01ravT/TGITLQoI=;
        b=alwkyVILHQdOP4JMSGTsowl4Ow4p4HWF3saVOYV86DFhkC7xx1wd13S9Mtbo8z2IYh
         8iTEZsxNPMsaKAyOq04+jEVSjEdaOFlKcMQ9jv63QiMU6r/2y3MkyNcDPqC8T1qhE0MW
         CJS/U9zuLsBuKdRDT9/R9dLwtqk2QvRq7Y4h5bEpfD5vdHfbR/CscM9A/4vlhR+I+wk2
         /AZx+p3HpUmdzPouIt+CsJ6X71VsI535W4LMHZ/2yXae4Lw3oOTDeZBBqqajIFMRAZhv
         IhkiDEFCs+syHJYa5RogzP9OHHgo2orzBIvF4WJLs3TR6abU7K0/PxW6BSwPJyU+IxPv
         xLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731422947; x=1732027747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oBp/RedUfWn3Zto6xybrxgZO8D9L01ravT/TGITLQoI=;
        b=d+iaTJH/oe5pF8WPDFD8WJyGfU10KrxLJaUXlcgCaOBJPKgRmBO/Prk++YkQaGqLn9
         tZpqBHDUSAXlTEvTbFi3xQ1q6EPobqyitAU+rPj9aO4YOjDcR+qf2jR1ATQ4w0tSpoq0
         2/hj+4R98dw1tDfz1xdzO29Q2CqnMbxu/u2p0rwp5MXAyo/WrYvM9Hc1S4FDaUe0AHHb
         WvTWKgdVot6MiCeWvZvubGZU7IKiho3ErfF08AlMVMZ4Ri0SU/9rXbL5wGf0HUlRuRFG
         t2hjIThZfGacHcQ5tVgcYh+IzWTacWderHL0hehCoWuG9/3n+YLMB8ngG+AfA/4gELKx
         m3OA==
X-Gm-Message-State: AOJu0Yy/2zpqjGnDc+cgmWjDlYhzzbfsMQQKnj1G7hpnYI3v6c72JarJ
	ylNGU4pItnVfI3KIupVjKJpWGHcjO6dXc4z16wvxn9kr+XjfDrBp6nW3cm6qEbGWWwm9xDDfNl/
	Nsk5Z6pNgqNxFFLBCQRBsx924s5w=
X-Google-Smtp-Source: AGHT+IFpTH6h3BGhnKWnp2RAWPdfk8iPhcgQ2BYceAR1za0G1j3b0eGvNybBc79M35rgZwNtFSOXWaaHyOUx0YlROLo=
X-Received: by 2002:a05:690c:670e:b0:6e3:dbbe:2736 with SMTP id
 00721157ae682-6eaddf9783dmr153704757b3.32.1731422946815; Tue, 12 Nov 2024
 06:49:06 -0800 (PST)
MIME-Version: 1.0
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org> <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
In-Reply-To: <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 12 Nov 2024 20:18:54 +0530
Message-ID: <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b37b230626b851d5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 14:49:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64264

--000000000000b37b230626b851d5
Content-Type: text/plain; charset="UTF-8"

How to delete it.

Regards,
Sateesh

On Tue, 12 Nov, 2024, 1:20 pm Gyorgy Sarvari, <skandigraun@gmail.com> wrote:

> As a first step I would check where the error is coming from: check
> systemd/init scripts/units starting upon login, /etc/local.d folder,
> .bashrc, and other usual suspects.
>
> Once you have it, check which package/recipe provides that script (e.g.
> "opkg search $FILE_PATH" or "dpkg -S $FILE_PATH" or whatever command
> your pkg mgr is using).
>
> Once you have the package/recipe, either remove it from the image if you
> don't need it, or check in the recipe how to remove the offending commands.
>
>

--000000000000b37b230626b851d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">How to delete it. </p>
<p dir=3D"ltr">Regards,<br>
Sateesh</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, 12 Nov, 2024, 1:20 pm Gyorgy Sarvari, &lt;<a href=3D"mailto:skandigraun@g=
mail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">As a first step I would check where the error is coming from:=
 check <br>
systemd/init scripts/units starting upon login, /etc/local.d folder, <br>
.bashrc, and other usual suspects.<br>
<br>
Once you have it, check which package/recipe provides that script (e.g. <br=
>
&quot;opkg search $FILE_PATH&quot; or &quot;dpkg -S $FILE_PATH&quot; or wha=
tever command <br>
your pkg mgr is using).<br>
<br>
Once you have the package/recipe, either remove it from the image if you <b=
r>
don&#39;t need it, or check in the recipe how to remove the offending comma=
nds.<br>
<br>
</blockquote></div>

--000000000000b37b230626b851d5--

