Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59098C352A8
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web12.3127.1649711677113087413
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:14:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nIBYpTma;
 spf=pass (domain: gmail.com, ip: 209.85.222.170,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id c199so10543932qkg.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2J6ikXDp7yPriQevW+UbWghtcO5uAn5GwOVoAYC/Foo=;
        b=nIBYpTmabkMxH6CVCtsCF/3lOhtQgi5NCMkBY78JcKLP60QY3WjQLbLhBuGrx9QnzS
         bQJl8iIYnPSgu9L3vCVUUCgxjl1wpYtPONJZppRmGp11IGpbks4xgHye8WSJY4au8gg8
         0IOgzVxXVCkJZa+D64rtrtMN/iAmm1g/tLODhv1ykqPs6iI8VMVZPN0spZBrn6OmUmXs
         zX97oRUnyVWgEzDUoYfU4OWCbs4qGv1DzyIZqaIIcS9nzXWeJHiQNwiw4WmFUB6v3r/M
         ct6oROsUU9LP4Nd+Czwf9BGw9ggSKZb/Hiojekkt4FC3aGCgZzAFvqON/xKc27qmIsmc
         mqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2J6ikXDp7yPriQevW+UbWghtcO5uAn5GwOVoAYC/Foo=;
        b=DkKQFsHP5JKot2E1cegsys7aL/pFmYtlCcfb6ilgCDLvt6C4pNlsHo6o6Ed5t0Oqr0
         X3JO5R6AhUhejfkEnpInF0ef7+6ahbjAmG74+zon0n1tpnexGmGNrhdY1uH/aVZxRCdg
         yrTUcOWsSnevlWjuezOgKiHScSEtJA43gPEtAagrq+Wpm8WuZn4SmBCl3MDq00wKnVjZ
         k/kP1TWNpqD4iUXv8CrAhChl2Y59CTWcEtva3ZIRCdEoJGBBN6rd857Eb9facPkqcWUO
         qx7u6mVlhCiuMRwypGer+7PRUOD8deGBYnC9C0ED6spTGSE8fwkkYoJuNw585i/KUVqE
         O6Ew==
X-Gm-Message-State: AOAM531OMeF2qTLk4nuP0vGBc2Hd0ZxAHcXnTQ9M6ZURwyje+J69lkUm
	GGwuo8X6Ki7MrRl0NGcAxBTZVbGPHkuPRUJdqUKg3C+rW8o=
X-Google-Smtp-Source: 
 ABdhPJxl34qMTCbV/u1PqNtpo43VJNr19EhwI6ZFAjKS1djJ6SjhUim3PhylQXP7c/VkALESkj87oiUBQwnL83DvmYA=
X-Received: by 2002:a37:78b:0:b0:69b:fbce:7c86 with SMTP id
 133-20020a37078b000000b0069bfbce7c86mr997742qkh.149.1649711676113; Mon, 11
 Apr 2022 14:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
In-Reply-To: 
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Apr 2022 14:14:25 -0700
Message-ID: 
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006fc6d005dc676e03"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56725

--0000000000006fc6d005dc676e03
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <
tagliapietra.alessandro@gmail.com> wrote:

> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>> what package folders do you see under packages-split/ folder in your
>> build area for this recipe ?
>>
>
> The ones I've added in the INSANE_SKIP
>
> ls -lah
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
> total 32K
> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-locale
> -rw-r--r-- 1 alex alex   57 Apr  6 16:04 node-red-node-serialport.shlibdeps
> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-staticdev
>

Ok then next thing you want to check is where the reported stripped file is
located and even if it does not work then perhaps look into removing these
files if they are not needed

>
>
>

--0000000000006fc6d005dc676e03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra &lt=
;<a href=3D"mailto:tagliapietra.alessandro@gmail.com">tagliapietra.alessand=
ro@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr">On Mon, Apr 11, 2022 at 1:36 PM Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><br>
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
ticdev</div></div></div></blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">Ok then next thing you want to check is where the reported stripp=
ed file is located and even if it does not work then perhaps look into remo=
ving these files if they are not needed=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"auto"><br></=
div><div><br></div></div></div>
</blockquote></div></div>

--0000000000006fc6d005dc676e03--

