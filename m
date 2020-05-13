Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.21.1589400318170402836
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 13:05:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlGWEEIs;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id j13so1456797pjm.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 13:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F0L1GBDKc0bkLBBo/ZAPEDhbxTW62Zt0YstNsHgtaZM=;
        b=nlGWEEIsJpWKnPLChaMEt4E5h22kEivkjSlMvWsVwlkhdt+ValVXzIxfjeIu+kAPo6
         qvTX4DDb8lE0xO6nfmt1XdPSKH/NRS0ZrWSUR+B9/WCgtbvk7qVXrQo3NjotIfave1nz
         1ze8eSJeyTpKLKYWOVYNHzl7H8hNFScWUwbqTnlVPjhmYIuuDj38BEDG36hClK2O9QHv
         Q5e0dIbY9ZJ37lmahWm6NJ6k1KPM/20KdWP2E/ovvsCUymPYOlluneBELUqTimrThQJy
         STnG+dL42LCyzgo+gqqoNQZeJGsZagw/Hrkkp5vktvgo0Wv7Uvf6A1OI7MW4YmMliVIe
         oZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F0L1GBDKc0bkLBBo/ZAPEDhbxTW62Zt0YstNsHgtaZM=;
        b=SLmZ9oesReTRp+lPcBrfXbOykKIsiAnxOBfgL/+aTNOSe+fLvW5dx9k4yC6OsXirb6
         V9r2qzi73MFZ2z4dIJ8Wr5Qma/lqTnWChsJcGuOWBKa0b894NzPeTfkk+M6r1KSImeJY
         VQEg+xrJy5or+5Q+C3jS/mlTq8KH2X2Ka/epqHAwXGvnZ6a+jP3M8M0oT908O07FzOK0
         WCTYTEbWw0T4eeZn6Y3gcsb3VDa0Pb0wU/Tt58+O7A8A0w56zDSV0i04eEz7tZBZ1+2l
         l17b/2bBgc5Li3JmEa5G8QjA/SAz7F2a6LAUC3nq/wzGExRBh55BTh2DZM6x3n2FWojh
         27Hw==
X-Gm-Message-State: AOAM530VwKjVVwKIp/VVl4kUmZfnz0YQBnIXi8thTllXFdAmHh5zQUWA
	V4w9HPtJul2ju12dIv8IPSM3f22npNxyi77FsdU=
X-Google-Smtp-Source: ABdhPJzpaLVFLMD+/3w/OXYmaS5LG5ZxqFsdsErvGsB0JPd4EDz8DFUE0ZkToUboMeSVMx76xv40jNZnU8qvUPtIF8o=
X-Received: by 2002:a17:902:8bc1:: with SMTP id r1mr803390plo.48.1589400317546;
 Wed, 13 May 2020 13:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
 <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
 <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com> <CAAnfSTs5S3+f1CJsbW5eiPj-Rr4ZawhnOXsbC3617CGNMm9kCw@mail.gmail.com>
In-Reply-To: <CAAnfSTs5S3+f1CJsbW5eiPj-Rr4ZawhnOXsbC3617CGNMm9kCw@mail.gmail.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Wed, 13 May 2020 13:05:05 -0700
Message-ID: <CABKMkPLjwNPvDrCxOx_XC-Gy4iKtLW_OZowpQ3b6tjAwOe+tBQ@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000055585905a58d19d3"

--00000000000055585905a58d19d3
Content-Type: text/plain; charset="UTF-8"

What are some nasty hack options?

The major surgery would be less maintainable.

On Wed, May 13, 2020, 12:51 PM Ross Burton <ross@burtonini.com> wrote:

> On Wed, 13 May 2020 at 20:28, Joel Winarske <joel.winarske@gmail.com>
> wrote:
> > In this case I already have a Target and Native recipe.  The Project
> generates a Native artifact when building the Target.  Not resolvable
> without major surgery.  This artifact is then required in other Target
> recipes.
>
> A target recipe can't drop files into the native sysroot, so it's
> either nasty hacks or major surgery.
>
> Ross
>

--00000000000055585905a58d19d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What are some nasty hack options?=C2=A0=C2=A0<div dir=3D"=
auto"><br></div><div dir=3D"auto">The major surgery would be less maintaina=
ble.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, May 13, 2020, 12:51 PM Ross Burton &lt;<a href=3D"mailto:=
ross@burtonini.com">ross@burtonini.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">On Wed, 13 May 2020 at 20:28, Joel Winarske &lt;<a href=
=3D"mailto:joel.winarske@gmail.com" target=3D"_blank" rel=3D"noreferrer">jo=
el.winarske@gmail.com</a>&gt; wrote:<br>
&gt; In this case I already have a Target and Native recipe.=C2=A0 The Proj=
ect generates a Native artifact when building the Target.=C2=A0 Not resolva=
ble without major surgery.=C2=A0 This artifact is then required in other Ta=
rget recipes.<br>
<br>
A target recipe can&#39;t drop files into the native sysroot, so it&#39;s<b=
r>
either nasty hacks or major surgery.<br>
<br>
Ross<br>
</blockquote></div>

--00000000000055585905a58d19d3--
