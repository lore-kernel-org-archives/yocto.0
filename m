Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web08.10407.1605797679492455035
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 06:54:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rlutCcrW;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id q2so1926716uas.5
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 06:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=PdNJcAuGKEMztoHtRFlFl9D2oMd/8rhaSq2N00g6th0=;
        b=rlutCcrW37Q6Frtq/+rliE1CuivOxad7e7oZ+TJZNwq/Vg17QGd0bsK2cocvuuZ0Ro
         OwmNxvPXyJ6Z+cgv1OYWEQo55Da+a6EER1qvgsdqi6SOP2eSTnd2bfOMyOyqM/1t+KLR
         JBDRs4qlSmj6JuKON/SbisE7PpyWZPzA6iMtH+IHM4TDYlJcicTnMy8gH2lKmDqLVchS
         g3MaGBHuKCZzNloBP+HJfXYw0M47F2F5/FM6IoH9XnuJPmhW1Zoy6is8sjQtTiTZnDId
         DrpOKDzvVk66r5IsnzIUFyF1oFo6R6wTl8zriIjCtCNUA8YlyKzB75QMQCbsCFADpvuU
         a2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=PdNJcAuGKEMztoHtRFlFl9D2oMd/8rhaSq2N00g6th0=;
        b=j7byI95zxCjG/HlZj4LU78ONOtB9Z61tRFlc1OZ+Ea7HDXKCRsL+wmxaUJSORertaO
         w0YDyqdPlZxseMSr5TqXUv3j61N47WP6pnmDhT4N+dFX4D7MxJgyGlYwlEmknFgp3Qom
         3O3LNyn0kEfPJwBUvtWU3fsKWxIHzM1IU+gyrV6NsYhzfPQpBFchQfqBn/doFUzEJvmH
         r9KzkYVD8zgdPRZiHltyf65j3Ct3VEjZe032TvV9BHui3rqr+uZuuJnIpO+7Xh+7Q15W
         tA+Yo5U70CGmBUdM0cBg9ZZrAe+CDxhwvNbh42N60GPPoahmzvm/B1T6veBGJyo9hjHU
         QTXQ==
X-Gm-Message-State: AOAM5333/ndIvsSlEHWJb4oHO2oB0AJ+fcSDeP7ZRymTgDmWmFM+GQIL
	mtqvCm08HNw6tmCLV2kOVPlAiOswXSyK8CZR4J5E8heQ/vEJ5A==
X-Google-Smtp-Source: ABdhPJwMK6ioGQzp6Y+Vb8S5UfcHSQJB2dXdoiB/6adl8vtC0Lze55u9YdZiNDQqVhqsdTN32xDqTMwg4Klszt+cUtE=
X-Received: by 2002:ab0:62a:: with SMTP id f39mr1124232uaf.39.1605797678331;
 Thu, 19 Nov 2020 06:54:38 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ8O4eyUMZwntoc-c6mga-uze6CwXObtu_kwxRY88-d22w@mail.gmail.com>
In-Reply-To: <CAJw=dJ8O4eyUMZwntoc-c6mga-uze6CwXObtu_kwxRY88-d22w@mail.gmail.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 20:24:27 +0530
Message-ID: <CAJw=dJ99Z4JkdbESpwhu6UkoH7p8L-aRFLYi+hn+U7kuKkOyEA@mail.gmail.com>
Subject: Re: adding obextool anfd obexpush in yocto
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000032bcf105b476e866"

--00000000000032bcf105b476e866
Content-Type: text/plain; charset="UTF-8"

Hi ,
    I am able to add obexctl in our image , but still obexpush i am not
able to add as a package .
    i take a package from following link :-
    https://layers.openembedded.org/layerindex/recipe/2502/

     but obexpush package is not compiling with our sdk .
    so is there any other *link* is there so we can take package from there
and integrate with our sdk ?

    thanks.

On Sat, Aug 8, 2020 at 6:39 PM NIKHIL PATIL <nikhilvp29@gmail.com> wrote:

> Hi team ,
>       We have to use Obextool and obexpush package for bluetooth file
> transfer.
>
>      Here the issue is we are able to send file to mobile using bluetooth
> device (redpine module ).  but receive is not happening , it is telling *obex
> server closed .*
>  at time receiving.
>       if any one know please help.
>

--00000000000032bcf105b476e866
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 I am able to add obexctl in our ima=
ge , but still obexpush i am not able to add as a package .</div><div>=C2=
=A0 =C2=A0 i take a package from following link :-</div><div>=C2=A0 =C2=A0=
=C2=A0<a href=3D"https://layers.openembedded.org/layerindex/recipe/2502/">h=
ttps://layers.openembedded.org/layerindex/recipe/2502/</a>=C2=A0 =C2=A0=C2=
=A0</div><div>=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0but obexpush package is =
not compiling with our sdk .</div><div>=C2=A0 =C2=A0 so is there any other =
<b>link</b> is there so we can take package from there and integrate with o=
ur sdk ?</div><div><br></div><div>=C2=A0 =C2=A0 thanks.</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 8,=
 2020 at 6:39 PM NIKHIL PATIL &lt;<a href=3D"mailto:nikhilvp29@gmail.com">n=
ikhilvp29@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 We h=
ave to use Obextool and obexpush package for bluetooth file transfer.</div>=
<div><br></div><div>=C2=A0 =C2=A0 =C2=A0Here the issue is we are able to se=
nd file to mobile using bluetooth device (redpine module ).=C2=A0 but recei=
ve is not happening , it is telling <b>obex server closed .</b></div><div>=
=C2=A0at time receiving.</div><div>=C2=A0 =C2=A0 =C2=A0 if any one know ple=
ase help.</div></div>
</blockquote></div>

--00000000000032bcf105b476e866--
