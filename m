Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web12.41536.1601312018877307433
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 09:53:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtVUZYs/;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id i26so9478000ejb.12
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 09:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W6dStprcMfEyFA2D0pXPnoVEF4/XTqMsPQbgnzZA8xs=;
        b=mtVUZYs/NP7n5godxgYdMFU6pqLjlkeOVKlBJI0PQfYIKmppJqrvGV2WBIFj8tiOk6
         XBvYZzva70iNwATPqBb9rQd3C00K6x+yWmhCu+VO+YsZOTuvcx1m5FB3eihQGaJdsifE
         qFYb0bqd7QQ65l2KySwfyjsdN+DxpYsirfPwn09zc8lfV7S6LwU0+JewxDm187c7U1G5
         uCKhgFRl+Bkb3u6M06i0Otps0a/E7dzFNbjqfXcIEfZJEMDs3TsOHIEy6YZkONbbUFH5
         HWt2xD0bHzHunH24y/q3y4w6ypZjReTNB+trHybtFOEzB1KoOEy5xAAFWEy87u1a4BKn
         ZMvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W6dStprcMfEyFA2D0pXPnoVEF4/XTqMsPQbgnzZA8xs=;
        b=rLuspHRoi/mgJMPmqIgcVfTe47IDfv76tF11bGHgJEjei33xzKUoQkjbH/RDJR/QgU
         Vjyxh/Kre6tySc2w1uJidGj7yjn74l+Bw3j3qDGVWA0IJoqFKfEYMerDDbeD/6y6W9kW
         5bUH0IsqOM37eAoAVxt5eSOnNhayIkQ8dpTlChhoD7z+z+2z7+eiSgEHb40lbQM/7JKE
         b/K/f972sQGsjwCXI8bN2zWu8Y8TqhZVTDkI/74mQXDt1SNE1Frz/FOopweZTscKpJcZ
         /UE3u7Otq8pg3s1wxg14/Ke23BDPyG7yXuuLX0DCZoPRWTI8Avwon2JBiwuSkN2PHOYO
         lsYQ==
X-Gm-Message-State: AOAM533RF/Cbpyar/8sVbgJNiQKoaxa70mJKDDa1I/AKAoESz3OzVzIO
	Zjt/5VAnEOYtMr7jPo2/ipaqDUj/j+toL/yo0J8=
X-Google-Smtp-Source: ABdhPJyTrcnCoavedxk/dla+DUAiDlB2NLxA0yD6m+DW7vTyJfUkEVfWXh40KsRrth9CieBCNtWF/+nzVujSd/cd1PQ=
X-Received: by 2002:a17:906:4b18:: with SMTP id y24mr2509624eju.471.1601312017269;
 Mon, 28 Sep 2020 09:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl> <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
 <7cf9c1af-ac0c-4178-df9d-5d7a76d89821@iae.nl> <9d39a91d32658aa446ae91840d64536f9b78a781.camel@linuxfoundation.org>
In-Reply-To: <9d39a91d32658aa446ae91840d64536f9b78a781.camel@linuxfoundation.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 28 Sep 2020 18:53:26 +0200
Message-ID: <CA+chaQc+8=k8wbpddwzdwfv_TC3Nn+aWdzmOf_prv096h7KzeQ@mail.gmail.com>
Subject: Re: [yocto] poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Steve Sakoman <sakoman@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000f6c9b705b06281db"

--000000000000f6c9b705b06281db
Content-Type: text/plain; charset="UTF-8"

I was able to reproduce this in one of my build setups and confirm that
backporting this commit helps (and haven't found any other issues while
building our images).

I've sent the backport request now.

On Mon, Sep 28, 2020 at 1:46 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2020-09-28 at 10:34 +0200, Robert wrote:
> > I tried the latest uninative from the same link, it will remove the
> > warning but it doesn't solve the problem.
> > If something else is wrong/different I would very much like a
> > suggestion where to start looking for this difference.
> > Finding something that isn't there is not easy :-\
>
> You could try backporting:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=94b1d77472ad335f26ca4ea6ec8c5b399368c06e
>
> Cheers,
>
> Richard
>
>
> 
>
>

--000000000000f6c9b705b06281db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was able to reproduce this in one of my build setups and=
 confirm that backporting this commit helps (and haven&#39;t found any othe=
r issues while building our images).<div><br></div><div>I&#39;ve sent the b=
ackport request now.</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Sep 28, 2020 at 1:46 PM Richard Purdie &l=
t;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Mon, 2020-09-28 at 10:34 +0200, Robert wrote:<br>
&gt; I tried the latest uninative from the same link, it will remove the<b=
r>
&gt; warning but it doesn&#39;t solve the problem.<br>
&gt; If something else is wrong/different I would very much like a<br>
&gt; suggestion where to start looking for this difference.<br>
&gt; Finding something that isn&#39;t there is not easy :-\<br>
<br>
You could try backporting:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D94b1d774=
72ad335f26ca4ea6ec8c5b399368c06e" rel=3D"noreferrer" target=3D"_blank">http=
://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D94b1d77472ad335f26ca4ea6=
ec8c5b399368c06e</a><br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000f6c9b705b06281db--
