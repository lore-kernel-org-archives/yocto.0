Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.17495.1604841974826549725
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 05:26:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qRU5fqyx;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AE89438C0636
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2020 05:26:14 -0800 (PST)
Received: by mail-vs1-f66.google.com with SMTP id l22so3426781vsa.4
        for <yocto@yoctoproject.org>; Sun, 08 Nov 2020 05:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0uJ0frQlWpvvLBDEqp+4hB7TpmvDc8DWBnXBN2ovHRc=;
        b=qRU5fqyxq2cLUFkZ+u+zD1roxm4eVNmSYMGar9v7I27B145EuRweRi0n3ZP8zOB1US
         +h5m6lxpAbEkhrMwVsyZdDHJDD4jxRoCcB7g6Mm6C22POz9ss8H7d5b54PFKJFliybIb
         k0G1a+P3IY0sATcizenevpnhz6BvNn/aNebxq0Of6sklejmR0C8ZjX0xhEgROTwKDpVM
         biPXpiKtVuzG/Wzql7uTw26od04suUmbsENM4cCw8irlvse96ruZ0Walu/RB+EVJr1k8
         adSA2SFG8UavxupinVY+g1pQgx4DZZOSO4N7FndUjQZgXtsZj8jgyipxEXnfF5oK0Tbd
         TwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0uJ0frQlWpvvLBDEqp+4hB7TpmvDc8DWBnXBN2ovHRc=;
        b=jqBOQXWThronvLcogrJi9W+F1iYxw6CUnNs0YtuseI0vYkeBBMOdrR7uLzmaI0Ezzb
         FTij45jaG6Q76XLoEaNttTuH4AiEUf3GP+KbYqsLsVEtwOtW+J5GbCRZ/EW+rel8nrbL
         pFCYe8AUkiFvgtnWr2gb1ZkoWdd/L1ymlZEqc95cDfSrjst2u/y8rdoYpx78Sw3Q0dlm
         08n65KOCNf+M+0Hye31nlqYgmLxgnBcgldjdxstZqETwDaaYQkFDFIoNsedPQ96eLQzJ
         lw6afb/LlwOa4bSBqjDMZsWTGyefgN3zyRLfih9ym6pENEKJcL6TrTHN8is0R6AVOv7b
         frzA==
X-Gm-Message-State: AOAM532ne2uDqnGPl6duOWT+263AXiqTnkGUxcLhUkrJvxwvQnsOZ9gF
	hIjlGrvmquyvb3+ulVcBo757XTLYT13wGvZws/Zpm06H6lw=
X-Google-Smtp-Source: ABdhPJzB6VEJwC17jmWLLcU9neSSIf9NQXFt7Di3sgkMsNP+n0YO4oVN7pfeI9cnv7aas42/hCkxqxjCZy4ZRJUuEBk=
X-Received: by 2002:a05:6102:215:: with SMTP id z21mr4991945vsp.51.1604841973875;
 Sun, 08 Nov 2020 05:26:13 -0800 (PST)
MIME-Version: 1.0
References: <20201108090923.3079-1-alex.kanavin@gmail.com> <9f76d20390e74a51e338ade333a1f7a11ae7daec.camel@linuxfoundation.org>
In-Reply-To: <9f76d20390e74a51e338ade333a1f7a11ae7daec.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 8 Nov 2020 14:26:02 +0100
Message-ID: <CANNYZj9MxkicwgD65AVdDNeXZ-6UWsnm2zCS9Ao7HSWyc0n11A@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] schedulers.py: run performance builds only 2x a day, not 4x
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c6067e05b39863f6"

--000000000000c6067e05b39863f6
Content-Type: text/plain; charset="UTF-8"

On Sun, 8 Nov 2020 at 13:59, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

>
> I've been wondering about this but I suspect we should drop them from
> a-full instead...
>

Sure, I sent a patch for that.

Alex

--000000000000c6067e05b39863f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, 8 Nov 2020 at 13:59, Richard Purdie &lt;<a href=3D"mailto:ri=
chard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
I&#39;ve been wondering about this but I suspect we should drop them from <=
br>
a-full instead...<br></blockquote><div><br></div><div>Sure, I sent a patch =
for that.</div><div><br></div><div>Alex<br></div></div></div>

--000000000000c6067e05b39863f6--
