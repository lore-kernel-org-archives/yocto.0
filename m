Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web10.2835.1617102220032808401
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 04:03:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohET6/oN;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: lefevre.da@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id b10so15961634iot.4
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 04:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5oyCnnB4HIEbJpVu1t6ZY1wsnNr9v2z7Qi4sBAl5Ff0=;
        b=ohET6/oNweH3Sp0P385O2mG3txNAklN2RSVH0jCdPWMROhYNYMMZDSKXmieqStz17Z
         24hrLQ5+s8mFOrX39fKK+NGCCfbPDAoVMg52910P5jsNcHLVF3dRb9cmBpjjDQhmy2yH
         bjYyYQ/ORaXYD4Sw7iSmxF8H0ZIlH0+i+ZXTBn/ytoCWEWBo2mKQD0QwbVgX7DaPWz33
         HZobQMJFBVaNwLSxJAXzWiMZ5refwPkm14qcpmELklEJZDMA/ZI1MtkgbuRQZwE283oo
         7YXrPp946ZYjHOJHx7xLGs782M51I8QHSGWOeLnYeXO7IuxkPIr3tNRJw6U7FmwV/yFF
         2PKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5oyCnnB4HIEbJpVu1t6ZY1wsnNr9v2z7Qi4sBAl5Ff0=;
        b=mah8B/TpsBnmp8/LeckREGIDePvVBCKpkvVo0EvMtIw12tMPLiT7f7Maq2Sj9p759Y
         KrIYcA9yEJxAxVpgOEwtZ2VkjQ9QT1ELXI93pu9G/uGUp03I4ijjY4nOztS/sv5ND4mM
         /bo37+2+2RIfuoS9owIgFcMen8V6tbCX0JN/S8m32vwoCUNYV7m8wtTBa0WNlpWBkjeD
         diDIW9wiBjJxNFIZsN5GpA6wb4ETgDeFZIzdsInlIx2kH6r1Bp4naL5vBCueJJ0h03lk
         Y5VWM9AW31m/RaTL+RUYK1iOMvEuAYma7qvIs0lvhJYTh8+U0olUGpRdn2P0GTEed4Oj
         lQVg==
X-Gm-Message-State: AOAM531mjhJjwnd2EIhPpYSWOD56rTTgTYMkT1CvMWkEFKpjv2J5yW+r
	IT8+JpsygnfAwWlpTVcxUM+vgj8Mmuc7WCyOSbu0IwY=
X-Google-Smtp-Source: ABdhPJzFLBltJMhbthHp5y//SjcPBOoyTjfkFxSxxp1Uoue1H1yf1+E4YghqO0pf1cZyq54FzPxKBZdJ1C17Bj2eskk=
X-Received: by 2002:a05:6638:3809:: with SMTP id i9mr28633174jav.24.1617102219345;
 Tue, 30 Mar 2021 04:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv8odAVKKe5YvVGjzUqQP_69yaQpfh8zuLQ3MB2ZnF+tBw@mail.gmail.com>
 <20210329131407.wwa55qzdj77tckd7@qschulz>
In-Reply-To: <20210329131407.wwa55qzdj77tckd7@qschulz>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Tue, 30 Mar 2021 14:03:28 +0300
Message-ID: <CA+FhBv-eMdHF3oRChrZGhR+j+DXVhgh3FKNJh+WNNP7njC7ErA@mail.gmail.com>
Subject: Re: [yocto] Naming images
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000059809705bebef39a"

--00000000000059809705bebef39a
Content-Type: text/plain; charset="UTF-8"

Thanks Quentin! That's just what I needed.

Do you know if there's a variable to control the content of /etc/version?

Cheers,
-Damien

On Mon, Mar 29, 2021 at 4:14 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Damien,
>
> On Mon, Mar 29, 2021 at 03:33:09PM +0300, Damien LEFEVRE wrote:
> > Hi,
> >
> > In my build system the generated images are in this format:
> >
> > imagename-machine-timestamp.img
> >
> > For release builds, I'd like to replace the time stamp with the image
> > version. I could rename the image after the build but is there a better
> way?
> >
>
> IMAGE_NAME variable is the one specifying the name which should be used
> for the final image. c.f.
> https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_NAME
>
> By default, its value is
> "${IMAGE_BASENAME}-${MACHINE}${IMAGE_VERSION_SUFFIX}"
>
> IMAGE_VERSION_SUFFIX is by default set to "-${DATETIME}" as documented
> here:
> https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_VERSION_SUFFIX
>
> Therefore to put the image version, you just need to change
> IMAGE_VERSION_SUFFIX to what you want it to contain.
>
> Cheers,
> Quentin
>

--00000000000059809705bebef39a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Quentin! That&#39;s just what I needed.<div><br></d=
iv><div>Do you know if there&#39;s a variable to control the content of /et=
c/version?</div><div><br></div><div>Cheers,</div><div>-Damien</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Mar 29, 2021 at 4:14 PM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz=
@streamunlimited.com">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Damien,<br>
<br>
On Mon, Mar 29, 2021 at 03:33:09PM +0300, Damien LEFEVRE wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; In my build system the generated images are in this format:<br>
&gt; <br>
&gt; imagename-machine-timestamp.img<br>
&gt; <br>
&gt; For release builds, I&#39;d like to replace the time stamp with the im=
age<br>
&gt; version. I could rename the image after the build but is there a bette=
r way?<br>
&gt; <br>
<br>
IMAGE_NAME variable is the one specifying the name which should be used<br>
for the final image. c.f. <a href=3D"https://docs.yoctoproject.org/ref-manu=
al/variables.html#term-IMAGE_NAME" rel=3D"noreferrer" target=3D"_blank">htt=
ps://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_NAME</a><br=
>
<br>
By default, its value is &quot;${IMAGE_BASENAME}-${MACHINE}${IMAGE_VERSION_=
SUFFIX}&quot;<br>
<br>
IMAGE_VERSION_SUFFIX is by default set to &quot;-${DATETIME}&quot; as docum=
ented<br>
here: <a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#te=
rm-IMAGE_VERSION_SUFFIX" rel=3D"noreferrer" target=3D"_blank">https://docs.=
yoctoproject.org/ref-manual/variables.html#term-IMAGE_VERSION_SUFFIX</a><br=
>
<br>
Therefore to put the image version, you just need to change<br>
IMAGE_VERSION_SUFFIX to what you want it to contain.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--00000000000059809705bebef39a--
