Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.12902.1611774924547220686
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 11:15:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaHzSfc6;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E6D5838C04B4
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 19:15:23 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id r38so2223407pgk.13
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 11:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3/2+SvNqOT72arMdVzEDiLOqleEsG3g2iq+PKTD9tD4=;
        b=eaHzSfc6CQ3LBTyUiamn3qUYJHq/C5FCQNNaLTyQuXJoT6jzYfFZ54I8C+IzVVOB4S
         KXWSLCtwpxLYUhsfno+tSoOMhnInCwzfluLkCbdpNCW4YrUaFXSxKaM1uBjGyt+0eNIQ
         CtwSDSm/haP8VOkGWxYQaw5k8my/bz2fHSuatlmer/nbzMfCwSLlPPuhFxghy2O4pj9e
         Wfi44md44JC47n9z8t0bOWb2YRzz3j3cbKWNCLrNALZvfpjptUHjyK8ybcdUVnOyTsCk
         VsQ1ERvzQRbwauCfh+HM5/isGvO9tU/Di+//PcYrdpCU8cCkEUSsYfNwkbg5xKF1B2Wo
         eOqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3/2+SvNqOT72arMdVzEDiLOqleEsG3g2iq+PKTD9tD4=;
        b=cAaigFV7hPcebxemT0j8FwP1nFUANXbSN3SlbhKniXpkG69MoWgDmNYJQakbuwVF9o
         jpKBuQdvjLyne1Z3JvgZosbZHNmfazT49uMhjMJAny8h+k6jsmlsI5uXQqa3at3NRhDY
         IdYRycxzjyPQiqkBVE5JjZ2tX3cT0kj3jcXqvqGm0X/zAXrNUyBdcqtCIvwMMLG4bbH6
         ihIiZCQBz5UaBd3T091TaEeEoolBziioHsBbI3/FiTYKGNAmoRbzUL8+vVUHznXHoOm+
         bdDwpa4fHYxOYzDYLHW2JpaiaousN6Rk7ubQI9/XOOy4xqKGePpuB81dm43kWi8luG87
         +sYQ==
X-Gm-Message-State: AOAM533EqbIvqTP5U8g26e5GSp3uHc/o29QvMFa9PiYkJSctNrDwxrmc
	Ns5GSQKTxwRgv+UY3KcARlDCGdfSCDtTaDxSjjU=
X-Google-Smtp-Source: ABdhPJxXNnrrxF58P6bL3fbrPSD1o8yQn+dceVkbWxCN8Bfyz/byIVhi4DJmnVbywBZLkpxq5kzm/SP0UhYd1pRE1ik=
X-Received: by 2002:a62:ea17:0:b029:1ad:4788:7815 with SMTP id
 t23-20020a62ea170000b02901ad47887815mr12301897pfh.1.1611774923230; Wed, 27
 Jan 2021 11:15:23 -0800 (PST)
MIME-Version: 1.0
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com> <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
In-Reply-To: <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 27 Jan 2021 11:15:12 -0800
Message-ID: <CAB=6tBTxM12S2LDPEOKZKUhqLNEarsRamAduMrHSOAWTGugJOA@mail.gmail.com>
Subject: Re: [yocto] Including binary application as part of the image output
To: chuckkamas@yahoo.com
Cc: yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c1d37705b9e6973f"

--000000000000c1d37705b9e6973f
Content-Type: text/plain; charset="UTF-8"

Your company's application should be built within its _own_ bitbake recipe
and then pulled into your image with an RDEPENDS entry in your image build
recipe.

If you do it that way, you can find the packaged version of your
application in the tmp/deploy directory automatically.

..Ch:W..

On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via lists.yoctoproject.org
<chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:

> Hi all,
>
>
> As part of our image we build our company's application. This
> application becomes part of the image and is executed when the image boots.
>
> My question is how to have the binary image also be available along with
> the image's wic file? Is there a line I can add to a recipe to have it
> copy that image file to the tmp/deploy directory or other appropriate
> directory so that it is available?
>
>
> Thanks!
>
> Chuck
>
>
>
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000c1d37705b9e6973f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Your company&#39;s application should be built within=
 its _own_ bitbake recipe and then pulled into your image with an RDEPENDS =
entry in your image build recipe.</div><div><br></div><div>If you do it tha=
t way, you can find the packaged version of your application in the tmp/dep=
loy directory automatically.<br></div><div><br></div><div>..Ch:W..<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;chuckkamas=3D<a href=3D"mai=
lto:yahoo.com@lists.yoctoproject.org">yahoo.com@lists.yoctoproject.org</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi al=
l,<br>
<br>
<br>
As part of our image we build our company&#39;s application. This <br>
application becomes part of the image and is executed when the image boots=
.<br>
<br>
My question is how to have the binary image also be available along with <=
br>
the image&#39;s wic file? Is there a line I can add to a recipe to have it=
 <br>
copy that image file to the tmp/deploy directory or other appropriate <br>
directory so that it is available?<br>
<br>
<br>
Thanks!<br>
<br>
Chuck<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--000000000000c1d37705b9e6973f--
