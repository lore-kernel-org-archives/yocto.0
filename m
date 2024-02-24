Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC29C54798
	for <webhook@archiver.kernel.org>; Sat, 24 Feb 2024 01:51:39 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web11.11712.1708739490641564501
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 17:51:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MmWGELDb;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: joel.winarske@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6e47a104c2eso1003744b3a.2
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 17:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708739490; x=1709344290; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RDxRXwM1+U95J+ifApjYwN5mgO6kP9BMXcfNyOaD37A=;
        b=MmWGELDb81nWbmEiXRkwgUAhFo3eDhv8/ImoJpQLTW2bPC8/Sa84s1tYb6t5PNbmpz
         tkRssHetp6+V+lx+GoRfm4AUtbLkl6iLofsPjC8aF91sHCNObKJ58kzX+PnBWxM5eTgb
         PhwJwHawZYX5rXmN40Eh+yWvD7GQJbtJy1PKuu+CzD7Jsr1pwp/lZEkDq1do/krcck3y
         EXjKOv8Rp5CF7iYD3xZEySjB/G91M9gHKV05lyI4ebxd3ynyaKZF3Z38VhsIg8lA/025
         fcpTNzGQdvb0n4V8TwvCTjczmYGbo/XxncFih+CHrv5PCfUba3cK/BXhCDxoyLL1dy1l
         Xf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708739490; x=1709344290;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDxRXwM1+U95J+ifApjYwN5mgO6kP9BMXcfNyOaD37A=;
        b=c8Y8CBoPyEauZ4stkbBq6TXbrhqHPcJ6CCJajA4chWwcnL5JPJjCgTwUDXS+W/Lfb+
         ajKQjxaO4Ku+VF+rCeyK37PPkb5ExH3WZ7HU1bf+DDAH8ko7X1xz6QYgQ6TOQRCNHlBj
         FCn03SCCBx8zEMggkft8gRoUrLIvmr+9XzYFRdaOMEAGFlzb2m0hU4Ogfdwk7hYcxtUY
         0n8/bNiWurbTht1OuYBnjAnRE7ttfIq0QnplqWCVPHFGuZlhOg0ZSYd/4lNf0o2WzlqO
         aTeySYJLjBnbFEvDpmL0NvHrvr1cokb+GkA3R/D6nfRcukP841ru8levru6KnpBso1jK
         3K6w==
X-Gm-Message-State: AOJu0YxKSmts7IiRqJIbKrPQJLurnVggwn+swG8GikAsdvrbm4OFewM+
	QPjoJB/ArLqyqy4q7upmNs5a02PUIeF5PNJT+i6w7oSt2bW5/vPffI8yaXD5jCtWh9tswPXVdEd
	eZVlSCd8y/R8It216itrhNvlWxozWnMNLrcc=
X-Google-Smtp-Source: AGHT+IFzT36F7BL0SwUWn+sjCmV5d73bCLxMbMkASfcsqo4sH7VRONVNZCnqJeelPV8WdyeQhxdkNR2hjTzLLTYlyuo=
X-Received: by 2002:a05:6a00:21cc:b0:6e4:f25e:76f6 with SMTP id
 t12-20020a056a0021cc00b006e4f25e76f6mr981726pfj.3.1708739489668; Fri, 23 Feb
 2024 17:51:29 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
In-Reply-To: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 23 Feb 2024 17:51:18 -0800
Message-ID: <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
Subject: Re: [kirkstone] dwarfsrcfiles + rust staticlib
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004ba2e3061216ea0a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Feb 2024 01:51:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62594

--0000000000004ba2e3061216ea0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Running readelf -h on the file does work and it shows that it is indeed the
correct machine architecture

ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              REL (Relocatable file)
  Machine:                           AArch64
  Version:                           0x1
  Entry point address:               0x0
  Start of program headers:          0 (bytes into file)
  Start of section headers:          201744 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           0 (bytes)
  Number of program headers:         0
  Size of section headers:           64 (bytes)
  Number of section headers:         165
  Section header string table index: 1


On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske@gmail.=
com>
wrote:

> I'm hitting qa issue when attempting to install a archive file built with
> Rust:
>
> dwarfsrcfiles:
> /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.3=
.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a:
> not a valid ELF file
>
> I can link this same archive file with C code and the executable runs.
> It's a valid archive.
>
> Any suggestions?
>

--0000000000004ba2e3061216ea0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Running readelf -h on the file does work and it =
shows that it is indeed the correct machine architecture</div><div><br></di=
v><div>ELF Header:</div>=C2=A0 Magic: =C2=A0 7f 45 4c 46 02 01 01 00 00 00 =
00 00 00 00 00 00 <br>=C2=A0 Class: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ELF64<br>=C2=A0=
 Data: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02&#39;s complement, little endian<br>=
=C2=A0 Version: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1 (current)<br>=C2=A0 OS/ABI: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0UNIX - System V<br>=C2=A0 ABI Version: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>=C2=A0 Type: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0REL (Relocatable file)<br>=C2=A0 Machine: =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 AArch64<br>=C2=A0 Version: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x1<br>=C2=A0 Entry=
 point address: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0<br>=C2=
=A0 Start of program headers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 (bytes in=
to file)<br>=C2=A0 Start of section headers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0201744 (bytes into file)<br>=C2=A0 Flags: =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0<=
br>=C2=A0 Size of this header: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 64 (bytes)<br>=C2=A0 Size of program headers: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0 (bytes)<br>=C2=A0 Number of program headers: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0<br>=C2=A0 Size of section headers: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 64 (bytes)<br>=C2=A0 Number of section headers: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 165<br>=C2=A0 Section header string table index: 1<br><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske &lt;<a href=3D"mai=
lto:joel.winarske@gmail.com">joel.winarske@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I=
&#39;m hitting qa issue when attempting to install a archive file built wit=
h Rust:</div><div><br></div><div>dwarfsrcfiles: /home/joel/agl/raspberrypi4=
/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.3.0-r0/package/usr/lib/taffy_f=
fi/libtaffy_ffi.a: not a valid ELF file</div><div><br></div><div>I can link=
 this same archive file with C code and the executable runs.=C2=A0 It&#39;s=
 a valid archive.<br></div><div><br></div><div>Any suggestions?<br></div></=
div>
</blockquote></div>

--0000000000004ba2e3061216ea0a--

