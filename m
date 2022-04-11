Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19E2DC352A7
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web11.2661.1649709810423322952
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:43:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bEjsijrJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.177,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id m132so369949ybm.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sjYUrSTT2BpNysGWLRA7TTHEMKdy9Pkv/x1MoVby3Nk=;
        b=bEjsijrJbAq9MlvZQ3ATc4eW2DztnkQlKdyf3GrnMxebdqf/zHb5Zy+ApABpeuCxbN
         6oCEn1yHNKPXRXAj+DvAxruGmVYTIYSTVjBcY40gnlogl37TAluUSG6aWfJ7cyqCLMS6
         cvGEBVhI9L5JFAmIpmM779qpL6GFbejWpQ28UbobRVaUCITQ0LCGtxJ9WSuJUkXMSafy
         txrBD8Akg0UcneaPv3O498zTvTkKFJyzydaCPsSArPPBktmrgcMsX6mU5v5m09nZR9l/
         0AMqcdMw1Nh6eAcWAr2l9JcpbEu0YdCxMopBRYMd/5ynnleb7/i/aJl4kbKGpRdpFm83
         fHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sjYUrSTT2BpNysGWLRA7TTHEMKdy9Pkv/x1MoVby3Nk=;
        b=0nO1bCxMnSm7GAk7PxU5M5x+qnl4XiEW9uRCUR70hAAM9rLP9C8IKkZi2AWAUjBiob
         4TOC3TIC5lr9pNi/r45EPtWo4ElvWL3sRao57n81RxLGKIUv8YULRKDXX2i5SQi4K7su
         72bwIIWVftqlr7hmWbULW3SR0Fia5Zq8PZ6UiqXFzi8k24uqyhFpIJ1h/v6GR4A+P57N
         Ri3SLyGcQhf60PE2Mi1uPaSq0xT04jfZTPYbSDh7SRYmn7IdLhTZqFnl7DLY9Arop+0d
         PI9IV5k7uqTjKDPe+7knCOEFuDaKWODLo/oCc92bapnJErjHZeGCcDxTPGIFztsWmYa9
         sgZQ==
X-Gm-Message-State: AOAM531AXPi6ZjPGRf1dafJmwK+4XovLizJiP/IuJSH8pci3le228uhB
	7gm6hLk78lR76/eeQexrnWydlbmS9wIsNWiOR91Bh2dOBvk=
X-Google-Smtp-Source: 
 ABdhPJzIY59e4NAvtFfPZsWucwDvony67vmiIiWgpNfIbnVXTyRMzX4To8+8lR7P5azHCmIdEgMe/AyjQzH267jA+bs=
X-Received: by 2002:a25:6e41:0:b0:637:9227:dc4b with SMTP id
 j62-20020a256e41000000b006379227dc4bmr23048048ybc.20.1649709809544; Mon, 11
 Apr 2022 13:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Mon, 11 Apr 2022 13:43:19 -0700
Message-ID: 
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002e30ad05dc66ffd7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56724

--0000000000002e30ad05dc66ffd7
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:

>
> what package folders do you see under packages-split/ folder in your
> build area for this recipe ?
>

The ones I've added in the INSANE_SKIP

ls -lah
/home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
total 32K
drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-locale
-rw-r--r-- 1 alex alex   57 Apr  6 16:04 node-red-node-serialport.shlibdeps
drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-staticdev

--0000000000002e30ad05dc66ffd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Apr 11, 2022 at 1:36 PM Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>
what package folders do you see under packages-split/ folder in your<br>
build area for this recipe ?<br></blockquote><div><br></div><div>The ones I=
&#39;ve added in the INSANE_SKIP</div><div><br></div><div>ls -lah /home/ale=
x/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
node-red-node-serialport/1.0.1-r0/packages-split<br>total 32K<br>drwxr-xr-x=
 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport<br>drwxr-xr-x 3 ale=
x alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg<br>drwxr-xr-x 2 alex =
alex 4.0K Apr 11 13:23 node-red-node-serialport-dev<br>drwxr-xr-x 2 alex al=
ex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-doc<br>drwxr-xr-x 2 alex=
 alex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-locale<br>-rw-r--r-- =
1 alex alex =C2=A0 57 Apr =C2=A06 16:04 node-red-node-serialport.shlibdeps<=
br>drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src<br=
>drwxr-xr-x 2 alex alex 4.0K Apr =C2=A06 16:04 node-red-node-serialport-sta=
ticdev<br></div><div><br></div></div></div>

--0000000000002e30ad05dc66ffd7--

