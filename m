Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web10.8415.1610027198587419800
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 05:46:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BeY6/3GE;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id j140so3631917vsd.4
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 05:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ShKiS80VcQwBAzz2Lr0TkHkXmN71IgZ9H+G3m2Ybutk=;
        b=BeY6/3GE1/lVuWNA8Nj6QI9d1BXeoP8cnDpxRamyRdUrDZ7Ognp3dMdL5bghGcVp0r
         7PGy+InSxC1ZpAhnC0nJGHGxh/puh19i8UuNCFgl1oiko3L7HqrXO2v3EFQhd+zI0Fyd
         1grtKt9fD7wyiSM9Z/tUcEhuCpxPwdu1v6NMDp+gvJqC9MrhSSq+GnlC8ydaPsKX+S0o
         6SU+FIcUS0e8Z/RiLUu/NjzCgBKoioH+t2mvJ1XGYjnQvyDhG9LNn+X6gvP2xZ/YEdiZ
         vsJgzpyImjRQWmfQ0EIelfI8JZst97inE7zPtSdc1ujhrWN/oXksHkX48fLrIqqC08p/
         PRdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ShKiS80VcQwBAzz2Lr0TkHkXmN71IgZ9H+G3m2Ybutk=;
        b=krhyx79tyZgqgoPkXqkf/s/KEaDZ6hJ5bUKBMCUWyVQ2l5M9BI1HZ3JRm+Leb1eRoS
         /PcN8KIkYfmFJl6TpgHipzBRfDBvYRC1flFav5Vz0hF84apGMvkgtOrudh6GlSvMXpvN
         5Y8ABKEBRP3qSXk1JGQZs9kQU4rnVcFOlf6Ls8er1FiG2nFf56zpDsTenVksFtHpUeOn
         Jw/4WY4tSGAn/ay/arfqqR4I9OP5C44kZbiMUuYwcNz9egFMJS/m5SCz/UKPGY6gUly/
         BZOX6+8OPDNE2QiIB9Z8opzFk9kmO5mmhajoUWi1RAx5BzdQAxZIVDvbFJ7dmL/SCvy+
         a9lw==
X-Gm-Message-State: AOAM533pj7CAcMC+1fCBLnSxBH4Lnwmxe8nzL7poemNga62KeZ/C1Fen
	w5dphpi3xxCqAmKQHTAAorIwPmZUeWOhqqXoXouC9rLPZAE4Zr3J
X-Google-Smtp-Source: ABdhPJz7kAk34Vh4f6zsWQjkTLK4w4bIBoqg6NjDLTdpr6UHz1VaYClEFIRo5mWBp1ABFioBgjPL1ZcS6Pm0yg8pqwY=
X-Received: by 2002:a67:fd67:: with SMTP id h7mr7004074vsa.9.1610027197376;
 Thu, 07 Jan 2021 05:46:37 -0800 (PST)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Thu, 7 Jan 2021 14:46:01 +0100
Message-ID: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
Subject: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002daac105b84fabc5"

--0000000000002daac105b84fabc5
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

I bitbaked a Huawei E3372h driver into the distro with this recipe file:

SUMMARY = "Huawei Stick kernel module"
LICENSE = "CLOSED"

inherit module

SRC_URI = "file://Makefile \
           file://huawei_cdc_ncm.c \
          "

S = "${WORKDIR}"

The makefile looks like this:

obj-m := huawei_cdc_ncm.o

SRC := $(shell pwd)

all:
$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
rm -f Module.markers Module.symvers modules.order
rm -rf .tmp_versions Modules.symvers

The source file is the one that matches the kernel:

https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c

I included this into the conf file:
KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF +=
"lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"

Bitbake runs without error, however when I insert the SD card into the
hardware ( barix ipam 400)
and boot the hardware this is the error message:

root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': *unknown
symbol in module, or unknown parameter*

To me it looks like that there was an error during the bitbake, or the
header files included in the driver doesn't match the kernel.

Do you have any idea how to procede?

Thanks,

--0000000000002daac105b84fabc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399"><div =
class=3D"gmail_default" style=3D"color:rgb(51,51,153)">Hi Folks,</div><div =
class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><br></div><div class=
=
=3D"gmail_default" style=3D"color:rgb(51,51,153)">I bitbaked a Huawei E337=
2h driver into the distro with this recipe file:</div><div class=3D"gmail_d=
efault" style=3D"color:rgb(51,51,153)"><br></div><div class=3D"gmail_defaul=
t" style=3D"color:rgb(51,51,153)"><font size=3D"1">SUMMARY =3D &quot;Huawei=
 Stick kernel module&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br><br>inherit=
 module<br><br>SRC_URI =3D &quot;file://Makefile \<br>=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0file://huawei_cdc_ncm.c \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;<br><br>S =3D &quot;${WORKDIR}&quot;</font></div><div cla=
ss=3D"gmail_default" style=3D"color:rgb(51,51,153)"><i><br></i></div><div c=
lass=3D"gmail_default" style=3D"color:rgb(51,51,153)">The makefile looks li=
ke this:</div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><=
i><br></i></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"=
><font size=3D"1">obj-m :=3D huawei_cdc_ncm.o<br><br>SRC :=3D $(shell pwd)<=
br><br>all:<br>	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)<br><br>modules_install:=
<br>	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install<br><br>clean:<br>	=
rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c<br>	rm -f Module.markers Modu=
le.symvers modules.order<br>	rm -rf .tmp_versions Modules.symvers</font></d=
iv><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><i><br></i><=
/div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)">The source=
 file is the one that matches the kernel:</div><div class=3D"gmail_default"=
 style=3D"color:rgb(51,51,153)"><i><br></i></div><div class=3D"gmail_defaul=
t" style=3D"color:rgb(51,51,153)"><a href=3D"https://elixir.bootlin.com/lin=
ux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c" target=3D"_blank">https://=
elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c</a></=
div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><i><br></i>=
</div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)">I include=
d this into the conf file:</div><div class=3D"gmail_default" style=3D"color=
:rgb(51,51,153)"><font size=3D"1">KERNEL_MODULE_AUTOLOAD
 +=3D &quot;lte&quot;KERNEL_MODULE_PROBECONF +=3D &quot;lte&quot;huawei_cd=
c_ncm =3D &quot;options lte=20
iProduct=3DE3372h iManufacturer=3DHuawei&quot;</font></div><div class=3D"g=
mail_default" style=3D"color:rgb(51,51,153)"><i><br></i></div><div class=3D=
"gmail_default" style=3D"color:rgb(51,51,153)">Bitbake runs without error, =
however when I insert the SD card into the hardware ( barix ipam 400)<i><br=
></i></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)">and =
boot the hardware this is the error message:</div><div class=3D"gmail_defau=
lt" style=3D"color:rgb(51,51,153)"><i><br></i></div><div class=3D"gmail_def=
ault" style=3D"color:rgb(51,51,153)"><font size=3D"1">root@barix-ipam400:~#=
 insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko<br>insmod: can&#39;t in=
sert &#39;/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko&#39;: <b>unknown symb=
ol in module, or unknown parameter</b></font><b><i><br></i></b></div><div c=
lass=3D"gmail_default" style=3D"color:rgb(51,51,153)"><i><br></i></div><div=
 class=3D"gmail_default" style=3D"color:rgb(51,51,153)">To
 me it looks like that there was an error during the bitbake, or the=20
header files included in the driver doesn&#39;t match the kernel.<i><br></=
i></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><i><br>=
</i></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)">Do yo=
u have any idea how to procede?<i><br></i></div><div class=3D"gmail_default=
" style=3D"color:rgb(51,51,153)"><i><br></i></div><div class=3D"gmail_defau=
lt" style=3D"color:rgb(51,51,153)">Thanks, <br></div><div class=3D"gmail_de=
fault" style=3D"color:rgb(51,51,153)"><br><br></div></div></div>
<br>-- <br>Zolee

--0000000000002daac105b84fabc5--
