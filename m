Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.9836.1579524671437231379
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 04:51:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGLUphxP;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id u14so18844357vsu.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jan 2020 04:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5ch+Zxk68m13ld6/aLcUWEkoV9k9qEfYNETQmCyR2W0=;
        b=lGLUphxPzde3Swu9C858Q6bsoLgTJz7XyUQhVoWobaH2GWrIBK3ngkf9TGzL6V5bZI
         OGjkET9jAOGePghZ6pQqpv/2GMTBjTzNJrqia+vwET3oXtLl7KTtXzV5BHof86nlyZrv
         xRanzpKR9oB6nEu7DWl4fk5QbRjlR9ucxqcNw1IKzGxKXcmMHCFXE4ts1P9t4DisP43d
         9bs3leIqEe2X2aeUMgc5766/dFDHohXpqdcWL9GSNJ+ciOJj+gxLTL+d6KUk9p6uletj
         4clsOYCXIDkcPB+15OJ9im3RhXCAjVNo//M8x++xld2+lYZOnr8gRah1/Btv7QB+5B88
         xJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5ch+Zxk68m13ld6/aLcUWEkoV9k9qEfYNETQmCyR2W0=;
        b=YF0yTN7+N7YW+eCcXjYqx0fjDsFP2NzfcZ3yFgRUVkod4P6ucKVNQdLELDDjTzN4G9
         liNQNJLFFtg+8jtrtB2ogUPXwIky/Vvr7bWw5Ibnsa1qi4hCIi1ttmASXmxSoBLVXJoB
         aICTPopHZrnaHcgG2KYf5kB6BHkJENMIDWusNPXOH9agwqRA0X0rkGggy+LSsXUGI7hT
         vMXeMis87CuRY/SknPUYAMxLUGIpkbLmxsWGpoFl+XrTVmQnAjJYHxRCIcmWdRbRlQGr
         KFxie+wg3b1OW/CT1KRKrkxLO/NIr5k7py2ljfmI0y8YZaRCE9RHoB/RkGCuVnXbqut8
         MFPw==
X-Gm-Message-State: APjAAAUq5Cyobue2mGBMJ72X3r2cV7V5xdsEEPGaL5fLXwftKioB8evI
	oQohU4qX/H9PMyxZyIGTWKZfrKv7onKQtpGlH/Y=
X-Google-Smtp-Source: APXvYqw6scd0xbZ/xH/AbY0gg4oVlHq0T3GWniEE45cONGWHRZW816b1bw2eDG0bsbcc/Wk0Ezi+Znvsx44FnnYBYvk=
X-Received: by 2002:a05:6102:3213:: with SMTP id r19mr12600739vsf.83.1579524670511;
 Mon, 20 Jan 2020 04:51:10 -0800 (PST)
MIME-Version: 1.0
References: <vhDU.1579524046808607981.4EFQ@lists.yoctoproject.org>
In-Reply-To: <vhDU.1579524046808607981.4EFQ@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 20 Jan 2020 13:50:59 +0100
Message-ID: <CANNYZj_VMi84_3fHDiZjEx7VA2zkKFdVQYwLFWhL8H8p-cE5ZQ@mail.gmail.com>
Subject: Re: [yocto] Versioning a recipe based on other recipe
To: Arthur Pinheiro <aperronepinheiro@luxoft.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e65d80059c91be48"

--000000000000e65d80059c91be48
Content-Type: text/plain; charset="UTF-8"

It would be really wrong to for the exact same source tree (of your plugin)
to get assigned different versions depending on something else entirely.
The version comes from the source tree of the component itself (typically
as a git tag, or in the tarball name).

Alex

On Mon, 20 Jan 2020 at 13:40, Arthur Pinheiro <aperronepinheiro@luxoft.com>
wrote:

> I have plugin where its version is based on the module that defines its
> interface. For my case, I develop a GStreamer plugin and I would like to
> version its packages based on gstreamer1.0 current (1.14.4) recipe version
> of my poky revision.
>
> The problem is that if I also add the same version number directly in the
> recipe, either by naming my recipe gstreamer-my-plugin_1.14.4.bb or by
> setting PV inside the recipe, I will have to update this value every time
> that gstreamer1.0 version is bumped. Often times, a bump in gstreamer1.0's
> MINOR/PATCH number is not likely require an adaptation of my plugin to work
> with it, but I still would have to change my plugin's PV version just to
> keep in sync with gstreamer1.0 package naming.
>
> Is there a Yocto way to make a recipe's version use another recipe's
> version as part of it? Perhaps using something like getVar('PV'), but I
> can't really tell how hacky would that look especially because I couldn't
> find any examples of this practice. 
>

--000000000000e65d80059c91be48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It would be really wrong to for the exact same source=
 tree (of your plugin) to get assigned different versions depending on some=
thing else entirely. The version comes from the source tree of the componen=
t itself (typically as a git tag, or in the tarball name).</div><div><br></=
div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, 20 Jan 2020 at 13:40, Arthur Pinheiro &lt;<a=
 href=3D"mailto:aperronepinheiro@luxoft.com">aperronepinheiro@luxoft.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I h=
ave plugin where its version is based on the module that defines its interf=
ace. For my case, I develop a GStreamer plugin and I would like to version =
its packages based on gstreamer1.0 current (1.14.4) recipe version of my po=
ky revision.<br><br>The problem is that if I also add the same version numb=
er directly in the recipe, either by naming my recipe <a href=3D"http://gst=
reamer-my-plugin_1.14.4.bb" target=3D"_blank">gstreamer-my-plugin_1.14.4.bb=
</a> or by setting PV inside the recipe, I will have to update this value e=
very time that gstreamer1.0 version is bumped. Often times, a bump in gstre=
amer1.0&#39;s MINOR/PATCH number is not likely require an adaptation of my =
plugin to work with it, but I still would have to change my plugin&#39;s PV=
 version just to keep in sync with gstreamer1.0 package naming.<br><br>Is t=
here a Yocto way to make a recipe&#39;s version use another recipe&#39;s ve=
rsion as part of it? Perhaps using something like=C2=A0getVar(&#39;PV&#39;)=
, but I can&#39;t really tell how hacky would that look especially because =
I couldn&#39;t find any examples of this practice.
<br>
</blockquote></div>

--000000000000e65d80059c91be48--
