Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web09.3910.1610803703228161195
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 05:28:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IcmD1VdE;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id x21so5504160iog.10
        for <yocto@lists.yoctoproject.org>; Sat, 16 Jan 2021 05:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n3jQEqFppfJQkO9Hd10sXqF1O/gufpb3SKsPlxfXnQY=;
        b=IcmD1VdE9n/sCIAW2+2J3XV8cmbIoJu1wwhOoZ11MuRYv72EYZ0lz9KOWtMoYHdKaG
         eDLV8pjUkGrP+XfV0+c/89bHv+orKVuK6J9OdnkJbMB+6Lf9+oPkIlv9l03J/co1/WTH
         bVYjdpOBpL2KzbmzAiwB6a9eVlcAAVVqQy+GUu/dLoJkIpqPznU2OLUVbQPY+dCZhFSJ
         //Cq+UDU1w5VCAV/rG/YuOC13/XhwvJyrzbQOHxAASHn8PSe2m90ObXHsOsWXMsSbHAS
         zhJc7Qy5E4jvQ6m7MOLBxKKSFf1k823hDL/+gCyBX3reOy0ApWe3qpq3ORy+nrKdbONC
         dDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n3jQEqFppfJQkO9Hd10sXqF1O/gufpb3SKsPlxfXnQY=;
        b=Z8mpx1ZuFh4M0xCo2iccCWyM9QkCmz9hjsitlXL/TWOjexLWD01Wa7weoluJryOWZu
         DzSkazQ5YECsLJ1J+eqlQZDd7IlrmbSfF7jqNMBr3Su/rKOWk0gqtUCvWZiq77looo71
         4LmrK6eUAgAbcWsypltJ4ScYxjdNdwSqZkpN9HYrJrb47BTyRBhFHyMomtgDyW8rnQuA
         dlPUUkudc0xRGL+49qz5vmPu+akgd7IAnsXwE7g1nzFbdWmbw6pddTQp+n0XnjJFzV9a
         kWAyN0R+Us3JH2My/QHtWzRfjxZiUHTGkIlgO+ZkWOxc6owiUQRj0Rlg+c2wR9WGsb9C
         q4ug==
X-Gm-Message-State: AOAM531Mg8AaQvHcRKZtp5pIXMzrO0jKhpQXtyGo6vTNEwOhb4k14A2X
	9WnXE046nDfBjS+F2OX+ZXQRiV8QFc8voO6s4Dk=
X-Google-Smtp-Source: ABdhPJxpzA3BXKpAB8TSoSKVNljIZWtA+5CIgor3YORgnGcFYEY4U24rdtuzCiojQXV5I/j7H9J2pAL8FDZYPvZvQG4=
X-Received: by 2002:a92:1fd6:: with SMTP id f83mr9711821ilf.11.1610803702404;
 Sat, 16 Jan 2021 05:28:22 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
 <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com>
In-Reply-To: <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Sat, 16 Jan 2021 18:58:11 +0530
Message-ID: <CACX=-dXm-qY5dnXtmr6X4jzMfNt5Jc5TUL98Dt33YN0X_T4MVA@mail.gmail.com>
Subject: Re: [yocto] requesting help
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c1ac805b90476c2"

--0000000000007c1ac805b90476c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, I'll check them out. And will i be able to configure the browser?
please suggest.

On Sat, Jan 16, 2021 at 9:42 AM Vijay Rakesh Munganda <
vijayrakeshmunganda@gmail.com> wrote:

> Hi Ravi,
>
> Below links might help you, choose one of the them you need. Download an=
d
> add this recipe into the your build and recipe name to
> IMAGE_INSTALL_append in local.conf file.
>
> https://layers.openembedded.org/layerindex/recipe/67001/
>
> https://layers.openembedded.org/layerindex/recipe/61209/
>
> Thanks & Regards,
> Vijay Rakesh
>
> On 16-Jan-2021, at 09:07, U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>
> =EF=BB=BF
> Hello guys,
>                     I have built a linux distribution using
> core-image-sato.I want a qtwebbrowser as one of the application to be
> installed on the OS. can anyone pls help me through this process.
>
> Thanks and Regards,
> ravi_uppada
>
>=20
>
>

--0000000000007c1ac805b90476c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, I&#39;ll check them out. And will i be able to con=
figure the browser? please suggest.<br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 16, 2021 at 9:42 AM Vija=
y Rakesh Munganda &lt;<a href=3D"mailto:vijayrakeshmunganda@gmail.com">vija=
yrakeshmunganda@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">Hi Ravi,=C2=A0<=
div><br></div><div>Below links might help you, choose one of the them you n=
eed. Download and add this recipe into the your build and recipe name to IM=
AGE_INSTALL_append=C2=A0in local.conf file.=C2=A0</div><div><br></div><div>=
<a href=3D"https://layers.openembedded.org/layerindex/recipe/67001/" target=
=
=3D"_blank">https://layers.openembedded.org/layerindex/recipe/67001/</a></=
div><div><br></div><div><a href=3D"https://layers.openembedded.org/layerind=
ex/recipe/61209/" target=3D"_blank">https://layers.openembedded.org/layerin=
dex/recipe/61209/</a></div><div><br></div><div><div dir=3D"ltr">Thanks &amp=
; Regards,<div>Vijay Rakesh</div></div><div dir=3D"ltr"><br><blockquote typ=
e=3D"cite">On 16-Jan-2021, at 09:07, U RAVI KUMAR &lt;<a href=3D"mailto:upp=
adaravi2511@gmail.com" target=3D"_blank">uppadaravi2511@gmail.com</a>&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=
=EF=BB=BF<div dir=3D"ltr">Hello guys,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I have=C2=A0built a linux distribut=
ion=C2=A0using core-image-sato.I want a qtwebbrowser=C2=A0as one of the app=
lication to be installed on the OS. can anyone pls help=C2=A0me through=C2=
=A0this process.</div><div><br></div><div>Thanks and Regards,</div><div>ra=
vi_uppada</div></div>
<span></span><br><span></span><br><span></span><br></div></blockquote></di=
v></div></div></blockquote></div>

--0000000000007c1ac805b90476c2--
