Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.10550.1598958022561412722
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 04:00:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=0QaHzxAy;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.42, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f42.google.com with SMTP id j15so510407lfg.7
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2020 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=nI3+vAqe3TDckK4z4pJOrEmzFyBg0mtHSwxUHOexToc=;
        b=0QaHzxAynz3g7EWkb19qfflSIReMsuoDFKw2DIvC9+usrTak4Ludp2LDibpR0vobDQ
         mYeAT+0RFjMh6XwLbG+mAfstcGMc1pkDcLDv1Wn2cAWL+hwkf7mWIgjfKp8p1G4DMGTG
         16d+nc3JfXvlY7OtlNIlQSdcDCdiptFaW96c9Nrp4smFFXlzVj5iMmIkYM1GKNz27Jnu
         RhpopXw47vBA+m+pBDV2rsNb6vJxlOfo5c/vqf3MwOYPijWHUbZ+vjLec/2lezyRaz7S
         V7ALOrj6k6vvQmNGF+yf6wJJtTkXTfejuP8wbzYlanAu2OmITW6WG0WQPX91WPx2rkKR
         eC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=nI3+vAqe3TDckK4z4pJOrEmzFyBg0mtHSwxUHOexToc=;
        b=rchpuwqyQwa7GFDeCyk7uM4oI0AP6QsW/aMwuQPsYCetYg9NkDM1gcr+GBONNX0/JA
         Vy7IhO7n6s1K37jJi1Lo269mPJFUJZFSIGrEGXDSKay9uKqeUnjjcq5Grc/Oz6j/6oHv
         FLKbGEAFcwXUR0kUrBuND+NQmWYSIrTeR3JBUTD98zUre9UtV5jC+SRaxzWHxvNqNrPd
         3iOhapimaEstU8xa0Trw3Hwst4cJ5lxWV9d3/ONjwI4+CZgLatFtIKGvR4XBJfgUP+v+
         T0f+kUFGyIMKqOQLNwNoCgI/J+HbZK7tpZC07FC3OidZ0VfBZxUGnUd2bDdW9FHCnfnR
         tPBQ==
X-Gm-Message-State: AOAM532sj1u+Xi+5LABiCr0Kx+uJ+SqFTpmBPFSeWNe9qy/bCBDlg+ZE
	9nGVCd0p01bZmcpZzpo1CTrEIiosBr+srEPsTRrBLw==
X-Google-Smtp-Source: ABdhPJy/JSkmB3NMf5fD6FAQ3aBknbLv8FbHj6aTlgIXXrOrt4ej6odva2NktbA0dNUk0yaduUEeO6vAx1xK4WvnFuA=
X-Received: by 2002:a19:8011:: with SMTP id b17mr318346lfd.212.1598958020273;
 Tue, 01 Sep 2020 04:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6Nwq30AiBo6+u39HLubK511nLnkGg6DMoj2kQLVAzpWjkHw@mail.gmail.com>
 <7070.1598957735098138146@lists.yoctoproject.org>
In-Reply-To: <7070.1598957735098138146@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 1 Sep 2020 12:59:54 +0200
Message-ID: <CAEt6Nwp7vAdgb4pPW+nT7MrM=JNJe_2J5d+e20X7MVbAMUeyoA@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Information about Yocto Dunfell components version #dunfell
To: Yocto_user <avinashyadav94it@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cf3fe305ae3e6c8d"

--000000000000cf3fe305ae3e6c8d
Content-Type: text/plain; charset="UTF-8"

Well if it's not there, then it's not there. If something is not provided
by a recipe, then it obviously has no defined version. Please note though
that package/recipe names are not directly comparable between distributions
like Ubuntu and the Yocto project ecosystem, as the names might differ
slightly. Example: libtiff seems to be just "tiff".

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-multimedia/libtiff/tiff_4.1.0.bb?h=dunfell

Am Di., 1. Sept. 2020 um 12:55 Uhr schrieb Yocto_user <
avinashyadav94it@gmail.com>:

> Thanks Josef Holzmayr-Khosh Amoz for the link, but still few components
> version is missing i.e.
> gdkpixbuf
> libjpeg
> libtiff
> openexr
> stb-image
> swscale  all these are missing.

--000000000000cf3fe305ae3e6c8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well if it&#39;s not there, then it&#39;s not there. =
If something is not provided by a recipe, then it obviously has no defined =
version. Please note though that package/recipe names are not directly comp=
arable between distributions like Ubuntu and the Yocto project ecosystem, a=
s the names might differ slightly. Example: libtiff seems to be just &quot;=
tiff&quot;.</div><div><br></div><div><a href=3D"http://cgit.openembedded.or=
g/openembedded-core/tree/meta/recipes-multimedia/libtiff/tiff_4.1.0.bb?h=3D=
dunfell">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-m=
ultimedia/libtiff/tiff_4.1.0.bb?h=3Ddunfell</a></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Di., 1. Sept. 202=
0 um 12:55=C2=A0Uhr schrieb Yocto_user &lt;<a href=3D"mailto:avinashyadav94=
it@gmail.com">avinashyadav94it@gmail.com</a>&gt;:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Thanks=C2=A0Josef Holzmayr-Khosh Amoz for=
 the link, but still few components version is missing i.e.<br>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"0=
" border=3D"0">
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-famil=
y:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial" width=3D"93" h=
eight=3D"19">gdkpixbuf</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"0=
" border=3D"0">
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-famil=
y:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial" width=3D"93" h=
eight=3D"19">libjpeg</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"0=
" border=3D"0">
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-famil=
y:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial" width=3D"93" h=
eight=3D"19">libtiff</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"0=
" border=3D"0">
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-famil=
y:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial" width=3D"93" h=
eight=3D"19">openexr</td>
</tr>
</tbody>
</table>
<table style=3D"width:70pt" width=3D"93" cellspacing=3D"0" cellpadding=3D"0=
" border=3D"0"><colgroup><col style=3D"width:70pt" width=3D"93"> </colgroup=
>
<tbody>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;width:70pt;font-size:11pt;color:black;font-famil=
y:Calibri,sans-serif;border:0.5pt solid rgb(165,165,165);background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial" width=3D"93" h=
eight=3D"19">stb-image</td>
</tr>
<tr style=3D"height:14.5pt">
<td style=3D"height:14.5pt;font-size:11pt;color:black;font-family:Calibri,s=
ans-serif;border:0.5pt solid rgb(165,165,165);background-image:initial;back=
ground-position:initial;background-size:initial;background-repeat:initial;b=
ackground-origin:initial;background-clip:initial" height=3D"19">swscale</td=
>
</tr>
</tbody>
</table>
=C2=A0all these are missing.
</blockquote></div>

--000000000000cf3fe305ae3e6c8d--
