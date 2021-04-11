Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.19529.1618156512633116032
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 08:55:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OITb3HEf;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id s2so3442395uap.1
        for <yocto@lists.yoctoproject.org>; Sun, 11 Apr 2021 08:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hb8gvhki/iQUZE1XvljM+6SdWjD68U2CBpsIZZw9e8U=;
        b=OITb3HEfMQdNIntoMR3JLhEWeW58knRczjGlc5z16pP5myfSNi5s2fov2OXqrvjA1Q
         p6Stj4c7KM7dhhJG8y6sWKfAPuO/na9413BjUj0sUQYnkXYN2vVi/k1hwNEDtUzNtY/Y
         5jBko5r/qKBinNVFJz+ALJz9ZxDv1X/VEEDiqV/UUHeCIBz94c+R6SeckPVVibsPkzi1
         y7+JbOsOUkHwpQ57lqZbCKXD6b6z0aPxHyiQu1xzhqZgUzuvUhBdttWyY13bRjcEewOs
         RpdN8Jwx4Lsxl0zMcWt5Xsv4+2S8toBzu6e/RUu515j4IFD4SrVNiSTCNDnpxFZ0ldMt
         ImgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hb8gvhki/iQUZE1XvljM+6SdWjD68U2CBpsIZZw9e8U=;
        b=E65TsiTve639p7Xo5Ladgxmt2RG+1X8KXn2d7lQsXdQUE5XqYB8wPYiAImoVLP4nqR
         YXAjtMyX+TRaGth/pRnZ0qo5FFvfxjZy32fXbduhDqSApDkqURwoT8H+phRliaoO/PjD
         IlmTJwceqyT89qsJ+DMELIR4DX5JM5tTuoakMKILoudkH7RQLJj4eQRs4DU/uR4O9VO/
         ZNvouGYMFdBhVoz7TbSYhLknLY3mROI/sz+l1sT2A6sTVwKT/rte66p07CvH7ZDwKSSv
         8DD0+BnU7Di9X2eVmFtCRNJ5usXqW48bXxznsYd15WH4RyXDqD2CJXNfOOJf6PlrN1E+
         xt9Q==
X-Gm-Message-State: AOAM532npmId4HEOGj7b47PwQMoo5DVn0is3hc/Nk0wDShz0SDq+rWas
	sqecE+2dFQXzFUZURzE6FYa9LKxebYGDfiL1z14=
X-Google-Smtp-Source: ABdhPJy5Mws4iBKlRyRFmzMH6q+lih7oiNEKToxYUwsIz0XEhx1THrMQCIRiCeOqGk3iDCZ4hPZGkMtrdTaBUBz6ph4=
X-Received: by 2002:ab0:310a:: with SMTP id e10mr17726318ual.93.1618156511804;
 Sun, 11 Apr 2021 08:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <s4v495$bak$1@ciao.gmane.io> <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
In-Reply-To: <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 11 Apr 2021 17:55:00 +0200
Message-ID: <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>
Cc: yocto@lists.yoctoproject.org, 
	yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org, 
	Ferry Toth <fntoth@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000013c19005bfb46cfe"

--00000000000013c19005bfb46cfe
Content-Type: text/plain; charset="UTF-8"

On Sun, 11 Apr 2021 at 17:49, Gmane Admin <gley-yocto@m.gmane-mx.org> wrote:

> Yes, and make project doesn't care, because make is called with -j 16 so
> that is what it does.
>
> So here's my pitch: bitbake can stop processes spawned by make, because
> it knows that it started make on 4 recipies, each with -j 16. The
> individual makes don't know about each other.
>

And neither they should. They can simply abstain from spawning new
compilers if used RAM is, say, at 90% total. Then bitbake does not have to
get involved in babysitting those makes.

Alex

--00000000000013c19005bfb46cfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, 11 Apr 2021 at 17:49, Gmane Admin &lt;<a href=3D"mailto:gley=
-yocto@m.gmane-mx.org">gley-yocto@m.gmane-mx.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Yes, and make project doesn=
&#39;t care, because make is called with -j 16 so <br>
that is what it does.<br>
<br>
So here&#39;s my pitch: bitbake can stop processes spawned by make, because=
 <br>
it knows that it started make on 4 recipies, each with -j 16. The <br>
individual makes don&#39;t know about each other.<br></blockquote><div><br>=
</div><div>And neither they should. They can simply abstain from spawning n=
ew compilers if used RAM is, say, at 90% total. Then bitbake does not have =
to get involved in babysitting those makes.<br></div><div><br></div><div>Al=
ex<br></div></div></div>

--00000000000013c19005bfb46cfe--
