Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web11.20580.1611812935364003510
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 21:48:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tvCPSwkv;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id u7so4394709iol.8
        for <yocto@lists.yoctoproject.org>; Wed, 27 Jan 2021 21:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=makUG2g/uzYIPv8m6q6n9gUlVeESOodWg/aCeg7ZvqE=;
        b=tvCPSwkvZM+MYSO6Srls1YX0KNsDZP/8zoBU02L6ux/Rfgen3h9FgMvi/9fzbhAWQR
         PalwtCDL5Wd6sBZFFhhpuOgtS522e7x79hf5eRAxNV8bIBP69q/pUv8g/5OnLpmxXbZ8
         p2gUdIn8C8OwDL46KilDeFg1KayG5RLJ4HK6fklckazp1Mv4Oh/13e28wvDkWh4a6516
         KHDr+T013jAOq9f/DzFdlE9W6rT7UhP2ZunlaVvix030jSkpydTS5lF2HnO30fQfh8AQ
         yFQ2byaKB3olug1tVmV8w0bAVebDWqft0bKMqrhL3iHlldIoU1bmmXD2++m6znXZ61JB
         FNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=makUG2g/uzYIPv8m6q6n9gUlVeESOodWg/aCeg7ZvqE=;
        b=UZ7SfigeL55i/fpUzLiS3ueOzUwSUr6CgrZOsKFJWSL/tpc2JYHEzyBaUnhZdczDrd
         L3AYYRjyT8u3OhCNIqNYOrQx1YOmcLubPMVOmQgwerhB+GbkEGh13jq2a6BhFRdzkKji
         3oPzUNWZ8KpiSFqsBH7DJ7A67I7ZvPo2SoxNsC9tCCcXVpFipheESvwlGf9JdZ7ggMQ6
         rpnFROP2i6DD1njP+7m7c1sABKUrr0bv5Hd6irsg2cW972Lp0OCw9g7BvoarGn8lJ0Mn
         MKxdIN92KZfEfoE1xqSGCjMfPlek63gyQYKWwHoAR4mnORBgXzE3fF0sOEIj7aFMOxyz
         CO7A==
X-Gm-Message-State: AOAM531CbpJpoZqT8CEyMk4fHOCH8AF9HUj73CSWrSXxPDcWMCIT+WQz
	cQLXLxMX2y4dRhVCLlIlIi69P5b4jne/ThwxtPY=
X-Google-Smtp-Source: ABdhPJzpL0+hvxkTJuvTzsEBWBn6/QApEkKRsg9ApznnOvDQU65/IkeG+nL2P8PSdnuU1OCjwGES4KAMuAMdJ2us6N4=
X-Received: by 2002:a02:cc54:: with SMTP id i20mr11522734jaq.138.1611812934622;
 Wed, 27 Jan 2021 21:48:54 -0800 (PST)
MIME-Version: 1.0
References: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
In-Reply-To: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 27 Jan 2021 21:48:43 -0800
Message-ID: <CANx9H-DvpKkPpQnMMnFBSnVEvFXiWMHOmxT1iaCUeigp51yTmA@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] bitbake zephyr-helloworld configure failure
To: Peter Smith <salerio@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000699f0505b9ef71ed"

--000000000000699f0505b9ef71ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 27, 2021 at 12:51 AM Peter Smith <salerio@gmail.com> wrote:

> Using master branch
>
> MACHINE=3D96b_nitrogen bitbake zephyr-helloworld creates a configure err=
or
> due to a failure for native python to import ruamel.
>
> I fixed this temporarily by creating a python3-ruamel-yaml_%.bbappend th=
at
> includes the required BBEXTEND and adding python3-ruamel-yaml-native
> to zephyr-kernel-common.inc.
>
> I don't know (not enough experience) if this is actually a problem in th=
e
> meta-openembedded recipe or meta-zephyr?
>


BBEXTEND =3D =E2=80=9Cnative=E2=80=9D is a perfectly fine patch to submit =
to meta-python. We
tend to only make those changes when needed (as in your use case) rather
than universally. Please submit a patch :)

>
> Best Regards
> Peter
>
>=20
>
>

--000000000000699f0505b9ef71ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 27, 2021 at 12:51 AM Pe=
ter Smith &lt;<a href=3D"mailto:salerio@gmail.com">salerio@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;b=
order-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif;font-size:small">Using master=
 branch</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif;font-size:small"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif;font-size:small">MACHINE=3D96b_nitrogen bitbake=
=
=C2=A0zephyr-helloworld creates a configure error due to a failure for nat=
ive python to import ruamel.</div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif;font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif;font-size:small">I fixed t=
his temporarily by creating a=C2=A0python3-ruamel-yaml_%.bbappend=C2=A0that=
 includes the required BBEXTEND and adding=C2=A0python3-ruamel-yaml-native =
to=C2=A0zephyr-kernel-common.inc.</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif;font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif;font-size:small=
">I don&#39;t know (not enough experience) if this is actually a problem in=
 the meta-openembedded recipe or meta-zephyr?</div></div></blockquote><div =
dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><span =
style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">BBEXTEND =3D =E2=80=9Cna=
tive=E2=80=9D is a perfectly fine patch to submit to meta-python. We tend t=
o only make those changes when needed (as in your use case) rather than uni=
versally. Please submit a patch :)</span><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif;font-size:small" dir=3D"auto"></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif;font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif;font-size:small=
"><span style=3D"font-family:Arial,Helvetica,sans-serif">Best Regards</span=
></div><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div>Peter</div></div></div></div></div>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000699f0505b9ef71ed--
