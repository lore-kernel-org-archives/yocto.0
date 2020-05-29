Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web10.30109.1590737851284118344
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 00:37:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mckr3CKo;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: siddhuvgowda.18695@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id d5so1293000ios.9
        for <yocto@lists.yoctoproject.org>; Fri, 29 May 2020 00:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EdSWXFv8huXlXdQNJDCG9pDFAFGqwv2RmXr8bCY1ssA=;
        b=mckr3CKoU8psBxj7kIcjJcqMIMZCKCKPjb+sUx4d/Npb0V9koin5d+0QTHX5TjQUx6
         ox35QJfSr35FDtrvpdGtM06EmjJlQatAZNX+GqjKRYcilYE4GjnvmN52TjhE7L05gV98
         Xp0525NDEyIePOQKfZphzhO8H7dwHXAbMSZ+Y2wUp7Hc1v1y49qQKvSE8w4E3fS4wvLx
         EuIjzko/qFIP4S7fdqgkZcOj5BNAN65hRIBrYlBoJczyAW7lDkPLHZUH049Mm2cLRAM9
         Ww4oDFJ0FJtCQrVuDKGlVbPkMb9qKVdxQZ6QxS/HZtYzZ27Ot0nJkKQU20N0G9jAiJ19
         jhxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EdSWXFv8huXlXdQNJDCG9pDFAFGqwv2RmXr8bCY1ssA=;
        b=YHf0ffMliXf85nHjHLLMbFFUYkc7+OU5tqPG3/2MzMChYtX7eA+Ac1SlO0RMimC50A
         fa+1wn/VxVRKJqf6Y1+i6+fy5MKjiScYgWlt0S9kcAV9HWE+XFZoXUYSYy/Uloi4BvbI
         UU3UO+wOTP3/TZ4o2e4U1EOLZ0lf5YScZfWHO3Px6TxS9LACXQ4yyndm4IaGzrfolzjk
         OzJhGOQiyFoHy+Lp0Vp9ZRaxoCfZCNSPAjKAtyGkh+CoQQWEP6iXQK53R30bX0SrPdkS
         n6piCbyTwG+/dVw/Zk+PJodXTxNlN+tayXQ/orAXEhDUXa8CEXIrAfc+G/OnaGaTRnmF
         r4eg==
X-Gm-Message-State: AOAM532yyFH8azyVw8pPXEmfE5yQtr9kLvuS+i/efzGSFSQLFCSotzcc
	1pr17EZ8oNXfaCE5TRmnQcNePndGhK9Wlxn+jsQ=
X-Google-Smtp-Source: ABdhPJyfLBBgGllidb7NAcQrFQAgWCf64mHsE+XhnHypw8pyOO95gBOvwHAQ4d4ro4CvliGahtB4Us0+v8HwOfw2eVY=
X-Received: by 2002:a6b:d617:: with SMTP id w23mr5477083ioa.188.1590737850608;
 Fri, 29 May 2020 00:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
In-Reply-To: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
Date: Fri, 29 May 2020 13:07:19 +0530
Message-ID: <CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000842e8e05a6c484e2"

--000000000000842e8e05a6c484e2
Content-Type: text/plain; charset="UTF-8"

Hello Pankaj,

  Try below mentioned steps, Hope it helps you, (there my image
was"core-image-base-raspberrypi3.rpi-sdimg"  replace it by your image )


plug sd card to pc then

$: lsblk
$: sudo umount /dev/sdb*

$: sudo dd
if=tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg
of=/dev/sdb bs=4M

  >> This task will take some time and at the end we will get the output
something similar(not exact it depends on build files) to below :

        46+0 records in
46+0 records out
192937984 bytes (193 MB, 184 MiB) copied, 10.2155 s, 18.9 MB/s


$: sync
$: sudo umount /dev/sdb*


Best Regards,
Siddhartha V

On Fri, May 29, 2020 at 12:48 PM Pankaj Vinadrao Joshi <
pankaj.vj@exaleapsemi.com> wrote:

> Hi,
> I have built the image for raspberrypi4 and i have got the following
> images
>
>
> core-image-minimal.env
>
>  rpi-ft5406-1-4.19.120+git0+9da67d7329-r0-raspberrypi4-20200521111428.dtbo
> core-image-minimal-raspberrypi4-20200518130120.rootfs.ext3
>          rpi-ft5406.dtbo
> core-image-minimal-raspberrypi4-20200518130120.rootfs.manifest
>          rpi-ft5406-raspberrypi4.dtbo
>
> core-image-minimal-raspberrypi4-20200518130120.rootfs.tar.bz2
>           rpi-hwup-image.env
>
> core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bmap
>          rpi-hwup-image-
>
> raspberrypi4-20200521111428.rootfs.ext3
>
> core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bz2
>           rpi-hwup-image-
>
> raspberrypi4-20200521111428.rootfs.manifest
>
> core-image-minimal-raspberrypi4-20200518130120.testdata.json
>          rpi-hwup-image-
>
> raspberrypi4-20200521111428.rootfs.tar.bz2
>
> core-image-minimal-raspberrypi4.ext3
>          rpi-hwup-image-raspberrypi4-
>
> 20200521111428.rootfs.wic.bmap
>
> core-image-minimal-raspberrypi4.manifest
>          rpi-hwup-image-raspberrypi4-
>
> 20200521111428.rootfs.wic.bz2
>
> core-image-minimal-raspberrypi4.tar.bz2
> core-image-minimal-raspberrypi4.testdata.json
>
> core-image-minimal-raspberrypi4.wic.bmap
>
>
> core-image-minimal-raspberrypi4.wic.bz2
>
> and  i am trying to copy core-image-minimal-raspberrypi4.wic.bz2* by
> using*
>
> *$sudo dd if=core-image-minimal-raspberrypi4.wic.bz2 of=/dev/sdb *
>
> but my image is not getting copied into sd card(used two sd cards ,tried
> formatting with FAT,Linux),i am missing anything ,do i need to copy
> anything else with this core-image-minimal.
> which extension of image i should use to bringup my RPI4??
>
> Thanks!
> 
>


-- 
Thanks and Regards.
Siddhartha V.

--000000000000842e8e05a6c484e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Pankaj,<div><br></div><div>=C2=A0 Try below mentione=
d steps, Hope it helps you, (there my image was&quot;core-image-base-raspbe=
rrypi3.rpi-sdimg&quot;=C2=A0 replace it by your image )</div><div><br></div=
><div><br>plug sd card to pc then <br><br>$: lsblk<br>$: sudo umount /dev/s=
db*<br><br>$: sudo dd if=3Dtmp/deploy/images/raspberrypi3/core-image-base-r=
aspberrypi3.rpi-sdimg of=3D/dev/sdb bs=3D4M<br><br>=C2=A0 &gt;&gt; This tas=
k will take some time and at the end we will get the output something simil=
ar(not exact it depends on build files) to below :<br><br>=C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 46+0 records in<br>	46+0 records out<br>	192937984 bytes (193 M=
B, 184 MiB) copied, 10.2155 s, 18.9 MB/s<br><br><br>$: sync<br>$: sudo umou=
nt /dev/sdb*<br></div><div><br></div><div><br></div><div>Best Regards,</div=
><div>Siddhartha V</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, May 29, 2020 at 12:48 PM Pankaj  Vinadrao J=
oshi &lt;<a href=3D"mailto:pankaj.vj@exaleapsemi.com">pankaj.vj@exaleapsemi=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:in=
herit;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;l=
ine-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-=
align:baseline;color:black">Hi,</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">I have built the image for raspberrypi4 and i have=
 got the following images=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit">core-image-minimal.env =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-f=
t5406-1-4.19.120+git0+9da67d7329-r0-raspberrypi4-20200521111428.dtbo<br></s=
pan>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.ro=
otfs.ext3 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-ft5406.dtbo</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.ro=
otfs.manifest =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rpi-ft5406-raspberrypi4.dtbo</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.ro=
otfs.tar.bz2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 rpi-hwup-image.env</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.ro=
otfs.wic.bmap =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rpi-hwup-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">raspberrypi4-20200521111428.rootfs.ext3</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.ro=
otfs.wic.bz2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 rpi-hwup-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">raspberrypi4-20200521111428.rootfs.manifest</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4-20200518130120.te=
stdata.json =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0rpi-hwup-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">raspberrypi4-20200521111428.rootfs.tar.bz2</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4.ext3 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rpi-hwup-image-raspberrypi4-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">20200521111428.rootfs.wic.bmap</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4.manifest =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r=
pi-hwup-image-raspberrypi4-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">20200521111428.rootfs.wic.bz2</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4.tar.bz2=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4.testdata.json=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">core-image-minimal-raspberrypi4.wic.bmap=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">=C2=A0</div>
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">core-image-minimal-raspberrypi4.wic.bz2 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></div=
>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit">=C2=A0</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">and=C2=A0 i am trying to copy<strong>=C2=A0</stron=
g><span style=3D"font-weight:bold">core-image-minimal-raspberrypi4.wic.bz2<=
/span><strong><span style=3D"margin:0px;padding:0px;border:0px;font-style:i=
nherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-s=
ize:inherit;line-height:inherit;vertical-align:baseline;color:inherit">=C2=
=A0by using</span></strong></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><strong>=C2=A0</strong></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit"><strong>$sudo dd if=3Dco=
re-image-minimal-raspberrypi4.wic.bz2 of=3D/dev/sdb=C2=A0</strong></span></=
div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit"><strong>=C2=A0</strong><=
/span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit">but my image is not gett=
ing copied into sd card(used two sd cards ,tried formatting with FAT,Linux)=
,i am missing anything ,do i need to copy anything else with this core-imag=
e-minimal.</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit">which extension of image=
 i should use to bringup my RPI4??</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit"><strong>=C2=A0</strong><=
/span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont:inherit;vertical-align:baseline;color:inherit">Thanks!</span></div>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks and Regards.</div>=
Siddhartha V.<div>=C2=A0</div></div></div>

--000000000000842e8e05a6c484e2--
