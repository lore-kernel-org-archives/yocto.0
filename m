Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.30951.1590412251885012315
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 06:10:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3o5fWFo;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a2so20380515ejb.10
        for <yocto@lists.yoctoproject.org>; Mon, 25 May 2020 06:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fu/elvFX3ZMkSUHkHSYwHXo5vF3RrTBSdVPZB397C9c=;
        b=Q3o5fWFoDNErqwlFTiot02U88DoACg9xkjmLRVgyukqVUqC2QmJN2TymEumq4U9QSW
         Jc3MaddLAqKbXcApMVBsheCP02240kBYa44w/IAYR75/AQdvV8UzfDtWWZwemA1Mfb8u
         pbGBlSoHnaIdzrx0aIEELRNj/zMhX3GLOZfhMAfikQEUmZvy/aPbNJyh9fxMNvLUT87a
         RKTe+zB+g+gW0PACotFx2NhGQg6dOktL7QsT0UTkw6XKHEjBTqZyccXnfdxTDXy746f4
         ojUpi1sqOXVjGkPD7WThG013OpvUucWTQjUOZ5PCwkKQHIgcMdDGM4CFJNVOyDECOFiP
         XI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fu/elvFX3ZMkSUHkHSYwHXo5vF3RrTBSdVPZB397C9c=;
        b=mv9v7ghQ/5Izo9gQUbl8XN6Gr0GY68FiubB3b7T5jn4r6ct/b9W1q5bt4/QbosiKhF
         5ITd48ZDByWa/nHIZf520AW7tey27qusrIeXtHbBehZhrTjMgRTzBgotz88BoP5fQx0A
         AxJdV3jxtx7DlSOGcdpqRe5qJS7RzbV+CC6eHjtW5z8gjES/jCJUBDGzZTZKZhgUj+bp
         JcWoluvxL9YTjTq4QgPGB+4Cmvv4RM3OsHpr7K7I1BL6y0Vam005c/+Utfy1cA13RCJO
         aecXveLqTh0Qj3u47/UugaQ1QZ32aQNtH0LU+CnipZ6KtbP5H/QEaE4MHtNsFpYzQkh5
         GyUw==
X-Gm-Message-State: AOAM530i6e6LqDWEVBsyPZ4q4/u0Zw+EIaCXmWwhfGz42ApxkiPRJx3u
	FYTvW1aS7e4kWumFVF39grAm7pHdnL5H5DhUquQ=
X-Google-Smtp-Source: ABdhPJwThj8M4sHv2ly8kXtgF4CROuenB4qnoib0tiy9r/pyWlPA8BDwzcdajQ5/efznUvhGgeZmS++k2nCM0z0Lveg=
X-Received: by 2002:a17:906:f1cf:: with SMTP id gx15mr18250509ejb.471.1590412250325;
 Mon, 25 May 2020 06:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <bMCJ.1590405446519275298.gKDM@lists.yoctoproject.org>
In-Reply-To: <bMCJ.1590405446519275298.gKDM@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 25 May 2020 15:10:39 +0200
Message-ID: <CA+chaQfeMQvS_QFY-babkxTgNSOThPh6YhDPJQxLodo-KfF=Ag@mail.gmail.com>
Subject: Re: [yocto] overwrite LAYERSERIES_COMPAT_ for different layer
To: TRO <thomas.roos@industronic.de>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003a263305a678b540"

--0000000000003a263305a678b540
Content-Type: text/plain; charset="UTF-8"

You can add a layer which will set LAYERSERIES_COMPAT for another layer,
but it needs to be parsed before the layer you want to change, e.g.:
https://github.com/webosose/meta-webosose/blob/thud/meta-qt5-compat/conf/layer.conf
it's useful to use this layer also to implement whatever modifications are
needed to make the layer to be actually compatible with the release you're
using, like:
https://github.com/webOS-ports/meta-webos-ports/tree/zeus/meta-qt5-compat

On Mon, May 25, 2020 at 1:17 PM TRO <thomas.roos@industronic.de> wrote:

> Hi,
> have an issue with a layer which doesn't have the current dunfell release
> in it's LAYERSERIES_COMPAT_
> -> can I overwrite it somehow in a different layer or local.conf?
> -> can I configure the error "...is not compatible with the core layer..."
> to a warning?
> cheers, Thomas 
>

--0000000000003a263305a678b540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can add a layer which will set LAYERSERIES_COMPAT for =
another layer, but it needs to be parsed before the layer you want to chang=
e, e.g.:<div><a href=3D"https://github.com/webosose/meta-webosose/blob/thud=
/meta-qt5-compat/conf/layer.conf">https://github.com/webosose/meta-webosose=
/blob/thud/meta-qt5-compat/conf/layer.conf</a><br></div><div>it&#39;s usefu=
l to use this layer also to implement whatever modifications are needed to =
make the layer to be actually compatible with the release you&#39;re using,=
 like:</div><div><a href=3D"https://github.com/webOS-ports/meta-webos-ports=
/tree/zeus/meta-qt5-compat">https://github.com/webOS-ports/meta-webos-ports=
/tree/zeus/meta-qt5-compat</a><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25, 2020 at 1:17 PM TRO=
 &lt;<a href=3D"mailto:thomas.roos@industronic.de">thomas.roos@industronic.=
de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hi,<br>have an issue with a layer which doesn&#39;t have the current dunf=
ell release in it&#39;s LAYERSERIES_COMPAT_<br>-&gt; can I overwrite it som=
ehow in a different layer or local.conf?<br>-&gt; can I configure the error=
 &quot;...is not compatible with the core layer...&quot; to a warning?<br>c=
heers, Thomas
<br>
</blockquote></div>

--0000000000003a263305a678b540--
