Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BFB1C54764
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 12:09:31 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.39713.1708344567446795799
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 04:09:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ktFIKA19;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-512be87a0f3so156943e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 04:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708344566; x=1708949366; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zhlt3IAdT6wsrxbKqXj6myIUkAXDQhIZ/hRzkBzDfO4=;
        b=ktFIKA19iZn28QwMhX5i/KA/90Jpy/klkPTdETqQQ7KvuYXlIplnjjAzHIty+jJX+z
         ky+AlxlQq0gA15y2sYDRiZq+x/M2m1/zhgEDe1odB5CZvI57/2zg1wEUknmdyr4dQtcZ
         u8qJ74qpI6xdy5CYo7EcOz3JPhKAEckwxf7fV4EnCLd1iQ7R6JVy522rGRUPYeH1aXbx
         xVNe3vFz8u97avj+jhqO/D1AiASQ6eVsylWebB/SrgVPeOcgquyMciQHX4FPS/iagSvY
         lyX5kaKfsnD0/IcxurLrLu1aW7L/BZIXdoSqqetmDuXX0dx+rKrfSVo9b4W4Sthf1ROE
         Nu4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708344566; x=1708949366;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zhlt3IAdT6wsrxbKqXj6myIUkAXDQhIZ/hRzkBzDfO4=;
        b=hCCczTtrqsdOu01CjN3d4yPIPsQZ4OikjhSnPhP/XD7ZPPicuy4XxZyU9RfOHr5Olj
         yhFhgxr8TDKbBhjfyqDU+ZnOU0k2RKoDSM7dhoKphZG/PPC52ZymJC9xrGbur3I6OSpV
         2+F7DIa5GdZqly2hk5wbqrZMpNJIXEAoHPNTxE1S4DXZzqFAfHJwL87DOeE1Zvz+AwwX
         C6JSjjWs75SWS/kXuRf9UEbGd/hlI9iUGEfcgGOfx72uquy7lhtztHj+RnUCMQ2z874X
         Ah0ZzOGnuOuNTVhHZvLB1WbWsKwaklvFnZ1JqrQE/O9BGokr46qbq+T17v3VAbSOdXzl
         Z5Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWE/zdeioCK4L9SVsBM6RwfLZRcbzbTZB1gDSxDx1L3itiHGBKVnoIjp2anaugLg+MxRKkYVXyCqdVZDINZjElER73fYaHadGUVLhxP
X-Gm-Message-State: AOJu0YxsB7BvlAUCTb9pGkMHVC/Lw0gmntPPTHO0bN9wVYk4sV23VYW9
	gqiXIWYiRTsjCXKBEuF+ulJmAEcah2ayyQ7SRMaQDRl0CTLbowF/1/tZzl5f4O3cLbpz9i9vS5W
	LqFtEizq70OCAFbY6nYbGFzUPvbY=
X-Google-Smtp-Source: AGHT+IEzZhXsakMW4DleKYNM4iGFbu5p+kkV2244/kbjaK6YPgygx4MpfguDouMTsjIe7fTk/6frGciCbg3PTVzUqqU=
X-Received: by 2002:ac2:4433:0:b0:512:b915:3b18 with SMTP id
 w19-20020ac24433000000b00512b9153b18mr924818lfl.52.1708344565383; Mon, 19 Feb
 2024 04:09:25 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8YQoMdR=qKDHPYVUo7jKhRDEjS3Ah6EDccsbdwgmm+Vw@mail.gmail.com>
 <007c20be5b61da1d7752835a3f4775368a76bd97.camel@linuxfoundation.org>
In-Reply-To: <007c20be5b61da1d7752835a3f4775368a76bd97.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Feb 2024 13:09:13 +0100
Message-ID: <CANNYZj8kKYN101ednHKda0n4MF6tGqK_PcjD4Q4VhN5_ui3WDA@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 13 February 2024 (WW07)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 12:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62540

On Fri, 16 Feb 2024 at 12:34, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I'm sure there are some things I'm forgetting too.
>
> Please let me know ASAP if there is anything else pending.
>
> The good news is that several problematic issues do seem to be finding
> resolutions in the last 48h.

Last week I got the build replicator script and several supplementary
fixes to the point where they do what they're meant to, and they have
tests:
https://git.yoctoproject.org/poky-contrib/log/?h=akanavin/sstate-for-all

Locally it's all working fine, including oe-selftest, but the same
oe-selftest on the AB is failing. Depending on how fast I can fix
this, and how many other issues there are in preparing for LTS, it'll
probably be delayed to after that. I'm ok with that, although I wish
the feature would be a part of that.

Alex

