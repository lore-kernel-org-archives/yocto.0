Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB13C433F5
	for <webhook@archiver.kernel.org>; Sun, 30 Jan 2022 21:12:55 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web09.24146.1643577174685552105
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 13:12:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qfqUZyeg;
 spf=pass (domain: gmail.com, ip: 209.85.221.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id v192so7130418vkv.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 13:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tcK8MxIK5Qg3YXgOC9II8RW52Wsw0q3qMN8ltRlBGxM=;
        b=qfqUZyegR9ZUWKTWiUjursF1kQJWIW/YjtL/0FoUgeDxcjKfgylSchEbhNVGoL83CA
         kbOjATWbxdHjfJosNF4WK/p4WMReBRT+4vG5zI7i3bUCyftBp9uVVfIr4qkixonW+9ZN
         cgZHL5MC7ICyrtkKNA8u0pZGwXfn6CRV4qkSebs3YL9GtGldRetNUSvuOs/5k//O/6yG
         0LYAt/Vv9075cOQrYwyZb6YxgWztIYz2is+0GR9aeaIIMvjilF3C85B0FAwx3j6BZ7Al
         xN8aUgP9x0m/Clvr3bjzX7fuYMS5xunrhvgupVMgdr3lyzlmDgGlfP0bNL2igg4w8F8A
         CeCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tcK8MxIK5Qg3YXgOC9II8RW52Wsw0q3qMN8ltRlBGxM=;
        b=dTYj1Lq2G6RMKghXY2I8VixsumHnvWzjesxrtwXuiFZ13aZ0m9BDcWgrAc4M3ZsvxT
         HfDuBFpNlbVxvPQWSUPuvFf9KmuFwCYqVzL0qb/GUwhbWa2V+WBWXOtI2GbvXOJQWjhP
         6JU8+uc50wqlZ1DMCPBkoSz3+VxtAwRNNKxnllAt1j3LWssPc+O8GomunmcoEIENPaqK
         ie7GNBj4fxn5/29u8Wde9EC0oYDizqmvRtbQelKb9j1kNNjrFTfM6spKZPzGjlHIEyiP
         PZnRUxRzhoQe7tu4ORPyINjlOgAkWNpnx73/cmBEHCOh0fbH04QNrRZ7DO01E1mqXp0X
         Z8aQ==
X-Gm-Message-State: AOAM533HpFOwnRd9FM8uRaCjPgMdp4Q9ckQF/k9+w9jp3d6DEUgKxb6Z
	2D2y85pnOFesyBrODWRtUAdP5sWUsB1RzMuFM+k=
X-Google-Smtp-Source: 
 ABdhPJxOzKG4Xt3ZeME06T4hnjRsDca1rgLGd/NpvlCBaQTt2RdyOgSoH7Qlxf61RCCBYDIZqO00l1ZRSIO08NAm9AE=
X-Received: by 2002:a1f:3117:: with SMTP id x23mr7545793vkx.1.1643577173816;
 Sun, 30 Jan 2022 13:12:53 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAHHBb0ePAqBWKP9eH_Ueo=TmNKti4RZOoaeLN6wvxTV67veVtA@mail.gmail.com>
In-Reply-To: 
 <CAHHBb0ePAqBWKP9eH_Ueo=TmNKti4RZOoaeLN6wvxTV67veVtA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 30 Jan 2022 22:12:42 +0100
Message-ID: 
 <CANNYZj_dUpx8Yhh+GDR7v17N9=71x__LKw9ippy4Di+bSUe7iw@mail.gmail.com>
Subject: Re: [yocto] How to prevent auto start of matchbox-terminal at boot?
To: dbeal@cardinalpeak.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009b38a705d6d3218a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jan 2022 21:12:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56024

--0000000000009b38a705d6d3218a
Content-Type: text/plain; charset="UTF-8"

Please share the log.do_rootfs for your image, otherwise it's difficult to
say why the terminal ends up being there and gets autostarted.

Alex

On Sun, 30 Jan 2022 at 22:01, Dave Beal via lists.yoctoproject.org <dbeal=
cardinalpeak.com@lists.yoctoproject.org> wrote:

> Hello Yocto Community -
>
> I am using Yocto to build a core-image-minimal image for Intel hardware.
> When the system boots, it automatically starts a matchbox-terminal as
> root.  This is a huge security hole for this embedded system product,
> because anyone who plugs in a keyboard and monitor has access to this
> terminal.  I've spent about two days trying to figure out how to start X
> without this terminal appearing.  I assume there's a config file somewhere
> indicating that this terminal should start automatically, but I haven't
> been able to find it.  Any suggestions?  Thanks!
>
> = Dave Beal
>    Cardinal Peak, LLC
>    Colorado, USA
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56023):
> https://lists.yoctoproject.org/g/yocto/message/56023
> Mute This Topic: https://lists.yoctoproject.org/mt/88794356/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000009b38a705d6d3218a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Please share the log.do_rootfs for your image, otherw=
ise it&#39;s difficult to say why the terminal ends up being there and gets=
 autostarted.</div><div><br></div><div>Alex<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 30 Jan 2022 =
at 22:01, Dave Beal via <a href=3D"http://lists.yoctoproject.org">lists.yoc=
toproject.org</a> &lt;dbeal=3D<a href=3D"mailto:cardinalpeak.com@lists.yoct=
oproject.org">cardinalpeak.com@lists.yoctoproject.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello=
 Yocto Community -<div><br></div><div>I am using Yocto to build a core-imag=
e-minimal image for Intel hardware.=C2=A0 When the system boots, it automat=
ically starts a matchbox-terminal as root.=C2=A0 This is a huge security ho=
le for this embedded=C2=A0system product, because anyone who plugs=C2=A0in =
a keyboard and monitor has access to this terminal.=C2=A0 I&#39;ve spent ab=
out two days trying to figure out how to start X without this terminal appe=
aring.=C2=A0 I assume there&#39;s a config file somewhere indicating that t=
his terminal should start automatically, but I haven&#39;t been able to fin=
d it.=C2=A0 Any suggestions?=C2=A0 Thanks!</div><div><br></div><div>=3D Dav=
e Beal</div><div>=C2=A0 =C2=A0Cardinal Peak, LLC</div><div>=C2=A0 =C2=A0Col=
orado, USA</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56023): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56023" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56023</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88794356/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88794356/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009b38a705d6d3218a--

