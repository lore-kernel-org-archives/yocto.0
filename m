Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.30788.1629986216825714113
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 06:56:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARFMg8ij;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id dm15so4776447edb.10
        for <yocto@lists.yoctoproject.org>; Thu, 26 Aug 2021 06:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RjHnXMrj7SscCXlhBhAfUc5BDLtACAnp2GKNvOQQXOs=;
        b=ARFMg8ijqMaygfVdi99MpMR6SXeMj+o33BNq3vGVTZWKB70vePNRv6O+h55BfkqgMS
         oAXvSMALEfJdCmhSLruWa/ibTLCt32jsFZzVUu4lKrcv5AmqVFkwoTEFy2P6uv8gnjXO
         OBYHdXfQtfmhRYpL0Fu8oFNVk6z7Cv7TRNra+FmCezkCMdgPXGijinAm+84O3gV2jwXn
         xU9ZEiWAdCYLkEjBIRY5gONNmzcCR8bdnwkIfmrMAcQ2/2WMQ8xUSzo7emE+jCSXWljM
         sTARRQETb7j78HG/Y8Zscnbvz1o6wEbegZ/mpmcbMLrSZU/JeqX+bCIDzwGe0ghk4bg7
         BPTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RjHnXMrj7SscCXlhBhAfUc5BDLtACAnp2GKNvOQQXOs=;
        b=eUPZ3kCEnM5tBP0PpfFiQE4J9raMOmubzKeYE1xcyB90xlyihD3pGKwoVr+XjmoSWX
         sGfZDZea4vib3lPas9icO5g2IC70vPVqWYwlxAZNcLcKmA9M0W3du/13DD4lRkvvh2Dc
         oOYKGt1ybWuByWvx8TkTGNIIrRQ08CRftcH4xLxZiWCYXuMqgx8H4YHRTssf6/TROc7l
         +lIuqk5Y/abqDJ+ipXqNtezuu9rXTVNfHm0j6sWLl/bLhl4hc0/b7miFLeZ39N/ncIrv
         oPFhYDow5zrCwJHsr74lNNK6asp484xX5jZduVKNlfzkt2BGQQkZOTy1U7ton2ZtSjHz
         iWyQ==
X-Gm-Message-State: AOAM530/BsCj05vc1sPpxXDmftk80O/4yU3DzQr39b+xFYmW6mMK1bDu
	GZnCbUUbesy0DajnEn+4ADTpgBj5PMpNOhzT8PU=
X-Google-Smtp-Source: ABdhPJwtRqomcWJpdsssrP5oOI/gqPE4kBuufDLINUOT1Zi6G3AHBKRk+LHLnI0Br2sQLQZknUdhRtPT3LT+Qy1gC6w=
X-Received: by 2002:a05:6402:19a:: with SMTP id r26mr4326100edv.230.1629986215322;
 Thu, 26 Aug 2021 06:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <mUNU.1629984520027418567.9gA1@lists.yoctoproject.org>
In-Reply-To: <mUNU.1629984520027418567.9gA1@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Thu, 26 Aug 2021 15:56:43 +0200
Message-ID: <CA+chaQfrjuPW_6W=eOAty=h7hBDYZ4CacL+jqiH+0NCXBArcmQ@mail.gmail.com>
Subject: Re: [yocto] Parserror while building the image #yocto
To: yasminebenghozzi6@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005a66fe05ca76bd56"

--0000000000005a66fe05ca76bd56
Content-Type: text/plain; charset="UTF-8"

Update bitbake to support new overrides syntax.

On Thu, Aug 26, 2021 at 3:28 PM <yasminebenghozzi6@gmail.com> wrote:

> I got this error while trying to build the image after checking out the
> timo/python3-pyinstaller.
> ERROR: ParseError at
> /home/yasmine/yocto/poky/meta-openembedded/meta-oe/conf/layer.conf:106:
> unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image =
> "${PTESTTESTSUITE}"'
>
>
> 
>
>

--0000000000005a66fe05ca76bd56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update bitbake to support new overrides syntax.</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug=
 26, 2021 at 3:28 PM &lt;<a href=3D"mailto:yasminebenghozzi6@gmail.com">yas=
minebenghozzi6@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div>I got this error while trying to build the ima=
ge after checking out the=C2=A0<span style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small">timo/python3-</span><span st=
yle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size=
:small">pyinstaller.</span><br>ERROR: ParseError at /home/yasmine/yocto/pok=
y/meta-openembedded/meta-oe/conf/layer.conf:106: unparsed line: &#39;DEFAUL=
T_TEST_SUITES:pn-meta-oe-ptest-image =3D &quot;${PTESTTESTSUITE}&quot;&#39;=
</div>
<div>=C2=A0</div>
<br>
<br>
<br>
</blockquote></div>

--0000000000005a66fe05ca76bd56--
