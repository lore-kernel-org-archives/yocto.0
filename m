Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web10.50040.1598866388028031297
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Aug 2020 02:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aJxCjqFO;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id l1so1325611uai.3
        for <yocto@lists.yoctoproject.org>; Mon, 31 Aug 2020 02:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ASom4cLaNzesz9hCa+QN/DLwgXsXXwUQGHA9vNfZlPk=;
        b=aJxCjqFOHtC4q3fHHddgvbxm4Z8JLRALTkTRniWH/qUPNo9AyrhKS61AWJIXvwtemL
         FYkps0JUm3cq+nqn+J1as3EsHwzNJd2bL9KfW6HZxBGTIL0iJc01haola9I9H0RNAlHR
         PR20ElCddAt3/E8CppROr1WBnznnZQ8GiDQqOd81/6oh/j2csWVpy5vBLj8o3SdKScmr
         8W1btd3JV8LV7o/TGj689ZqyK35znwT/hDGLkfjYbfM1Ks54IUju0Y8YZhKqmb6VBcjQ
         g3DqklB3Pin3UHfpixMkXzaK15y3itZWBczNuCPiaUTBtu6E+kpuBNj5FbaKbFqk5T/r
         ycBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ASom4cLaNzesz9hCa+QN/DLwgXsXXwUQGHA9vNfZlPk=;
        b=qDch6z7qaQ96ugHcFjO3/OYc9R/nQAuhgAqDwHEnmh6vctxFsa5TlMkN7w9xwJnctc
         3nu3an+t3/JzJGjmpmuj/QT5+kSV/aLP2FwYugHjkDFnQaTXbs02Onn2bxMZ9bHBYoBC
         b+GL2UGvSZrYXSa9Wze3hoGQus2ZX05SSHl2APoJuL+uQghdo6PSk9DepGbS1hy5v9XI
         2SaC0ByasgtYOy/XPP3R5anTY1web8vuITwqBZlnU+wYyZdAJQS+O9lFH5DeIABahOrt
         gIoQCyGHwF76VSI0WBQDYGFzNfowI7SEFCLze5O+VjGH4WAi165977aCeDp99wRlUlx4
         ZkTA==
X-Gm-Message-State: AOAM5304wCFKm9bNVHxpHixfmpwM2V+dMXFRHNPy+9IsRTDt0Rm3a/16
	DRYVnStbV5ra3bJSfnzoL32sjGFRn1ktOeY6YgY=
X-Google-Smtp-Source: ABdhPJxx7hhj4cu3mUYRq+tdijWhrsU8nt0FRcit6k/eg1Rc8dfN675uKdwQIyAvwGMLV2ums6MSM5bwZu9yfbBD4Jc=
X-Received: by 2002:ab0:1305:: with SMTP id g5mr148381uae.93.1598866387164;
 Mon, 31 Aug 2020 02:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <G4Or.1598863972268843731.gimU@lists.yoctoproject.org>
In-Reply-To: <G4Or.1598863972268843731.gimU@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 31 Aug 2020 11:32:56 +0200
Message-ID: <CANNYZj_VWjmPswgd_yfgBSYWtQU9fh5CHRpmATtPJ_V9QqGGMw@mail.gmail.com>
Subject: Re: [yocto] Backport some packages
To: majid.nasiry65@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000ce1a505ae291763"

--0000000000000ce1a505ae291763
Content-Type: text/plain; charset="UTF-8"

The best is to ask your BSP supplier to provide a new version of the BSP
that is compatible with recent Yocto versions.

Backporting userspace stuff is difficult or impossible.

Alex

On Mon, 31 Aug 2020 at 10:52, <majid.nasiry65@gmail.com> wrote:

> Hi
> How can I backport some package (e.g php, cmake). My BSP only work in Krogoth
> version and I want to use some new package (e.g from Sumo version).
> I'm new in this stuffs. I don't know mybe the best way is I rewrite BSPs
> and update whole project, anyway I don't know how can I do this too!
>
> Please help 
>

--0000000000000ce1a505ae291763
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The best is to ask your BSP supplier to provide a new=
 version of the BSP that is compatible with recent Yocto versions.</div><di=
v><br></div><div>Backporting userspace stuff is difficult or impossible.<br=
></div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 31 Aug 2020 at 10:52, &lt;=
<a href=3D"mailto:majid.nasiry65@gmail.com">majid.nasiry65@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=C2=
=A0<br>How can I backport some package (e.g php, cmake). My BSP only work =
in=C2=A0<span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12=
.7px;background-color:rgb(249,249,249)">Krogoth version and I want to use s=
ome new package (e.g from=C2=A0</span><span style=3D"color:rgb(0,0,0);font-=
family:sans-serif;font-size:12.7px;background-color:rgb(249,249,249)">Sumo=
=C2=A0</span><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-s=
ize:12.7px;background-color:rgb(249,249,249)">version).<br>I&#39;m new in t=
his stuffs. I don&#39;t know mybe the best way is I rewrite BSPs and update=
 whole project, anyway I don&#39;t know how can I do this too!<br><br>Pleas=
e help</span>
<br>
</blockquote></div>

--0000000000000ce1a505ae291763--
