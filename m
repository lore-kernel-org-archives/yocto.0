Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6848.1586161824352237881
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 01:30:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JQPjgIkc;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A80E01966; Mon,  6 Apr 2020 01:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28753E01927
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2020 01:30:22 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id y17so5142135uap.13
        for <yocto@yoctoproject.org>; Mon, 06 Apr 2020 01:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B63m85qLkgQQ5MxH6H6aRwTGJU8hnxA8Zuuent1/nfU=;
        b=JQPjgIkcLzvlsKv2umVSoE3hQSk6vWagPhAzbLgC0iZOOMZ8NohgwQV4qgVSP30fFO
         WzFYvtbHNm11LWjCsWdSnS4GznUplAOjV4TmEkrxia2/i4piJQetQ/xfR4og47uSyZVh
         vEDcelesE8ggbkGVL6z/zrzALPUSjN6+sGmc6TV4Z6UqNXv22YkPXnVzfQbA/olBLR0A
         TBx8+jxEt3EZd2s86y2viwvsb2UB1cNuxw8+uFnCS74Z42HSIPvOQn9sP/akALEGWnRc
         kfcJ5+b4q+6LY1kHLHUbDTW0YlgcPAtKkc1oKJrvOX86Wu106IRkGOqhj7N9VIc6VwYZ
         pdag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B63m85qLkgQQ5MxH6H6aRwTGJU8hnxA8Zuuent1/nfU=;
        b=dl+20fJl35zY/ovSmRp3QPRBkBQojW3gzXPiHK1iRohiIEybrN+D0wfD/XcYmGupNP
         U0xyCoF/IhDciQbJFzRTZAG4myRT7ZJXvZrDcd5F8L9YR6V0wtMLWvY67Ra4qBCkIAa9
         Tl8BR3S9+TYRXmycm9carnGlyrpHWESowsKgbXbjepBoFgEQW3HiWMgmu6ItPfu9oLqL
         fsWGe70bMWPLRo+0U26kT+//i/W2YkHxLZDRJ3R0JLV0BZS8BlDVyLmCYW2qmarvmAyU
         3QaG3mJZhXcqP46Ztlmy/No707F5XM9JuirXDWmbs7qB4iZFo1Tyjjb/hfILS/tACIAW
         DofQ==
X-Gm-Message-State: AGi0PuZneFY6VM7+/TfVuNbJm/AHZZ8yvyndzSdW6Tx9iYrrK9Pn0/Cb
	2PcmtEnVgRp2XMFGfs5WVmFvyIDJvChMi5ygbUsAAw==
X-Google-Smtp-Source: APiQypKZOQjQxNpNQ4i5Gi+y5WWZEFl4X9hDEjMqjpxY/9e8Ce3BUh2VzORcsGNKSuR6MJy7V0lIpEEiuv31tEi5jUU=
X-Received: by 2002:ab0:7406:: with SMTP id r6mr13227041uap.22.1586161822283;
 Mon, 06 Apr 2020 01:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+gPARCC4ki+7XtYCSYgVsO87EzB=x60p8rXX+QXGh6YHA@mail.gmail.com>
In-Reply-To: <CAFSZm+gPARCC4ki+7XtYCSYgVsO87EzB=x60p8rXX+QXGh6YHA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 6 Apr 2020 10:30:11 +0200
Message-ID: <CANNYZj-FiKWWSePP4E1q1wAoMtRE6DwR2PA4siCvxMwfobV_tQ@mail.gmail.com>
Subject: Re: [yocto] Any way to enable automatic package-index if rpms are changed?
To: Joel A Cohen <aaron@assonance.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f93b7905a29b1390"

--000000000000f93b7905a29b1390
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not really, I don=E2=80=99t think bitbake has a way to build a recipe after=
 all
other recipes.

Alex

On Mon 6. Apr 2020 at 5.09, Joel A Cohen <aaron@assonance.org> wrote:

> One of my most frequent annoying mistakes is to forget to run package
> index.
>
> It would be nice if I could INHERIT +=3D "auto-package-index" or somethi=
ng
> like that.
>
> Is there a hook that such a class would easily be able to hook into?
>
> --Aaron
>=20
>

--000000000000f93b7905a29b1390
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Not really, I don=E2=80=99t think bitbake has a way =
to build a recipe after all other recipes.</div></div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Alex=C2=A0</div><div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 6. Apr 2020 at 5.09, Joel A =
Cohen &lt;<a href=3D"mailto:aaron@assonance.org">aaron@assonance.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">One of my=
 most frequent annoying mistakes is to forget to run package index.<div><br=
></div><div>It would be nice if I could INHERIT=C2=A0+=3D &quot;auto-packag=
e-index&quot; or something like that.</div><div><br></div><div>Is there a h=
ook that such a class would easily be able to hook into?</div><div><br></di=
v><div>--Aaron</div></div>
<br>
</blockquote></div></div>

--000000000000f93b7905a29b1390--
