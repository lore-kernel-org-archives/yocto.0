Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web11.30264.1590737978448133472
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 00:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ejq/Akwi;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: siddhuvgowda.18695@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id j3so1499680ilk.11
        for <yocto@lists.yoctoproject.org>; Fri, 29 May 2020 00:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CuZtcuDuMZNtBjD5C9x3YlIge4A4d5dv4L2dRoPRffU=;
        b=Ejq/AkwiG7WptLmtX9UXvw+BqA/Cea2ikiqZ+Z7QgJBYTboy8N0wglmJ/1Uq1D5/zi
         CH2mvfrhx/E8HzeYUmvfpHihRsOLGPIinaMucCMcERxwgkO1TvmHWpXrZOQTBqJ4FGLM
         KVEMbszk6Uxim6wpEDnLyqCRfJqmezeQcyVQwv5vJi35MCF5KCkAJ/og8zD9e7EqS6F/
         9XZABKAdI9wwvSy3sTSjiEv+FgFtrP/E82FsFyBo8LKluQvSXCBYElGeQQte97C3FRRA
         fXA5iLH6OuQMIJCKXfoK3B4vR5zixVeFNPzGjNnm/je9fmvjRMOhVdtjhgzxLFRyVnil
         SJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CuZtcuDuMZNtBjD5C9x3YlIge4A4d5dv4L2dRoPRffU=;
        b=jVUIrDLLmYKRNylPTn9nFAHS/r1B9GGfzFO2Sibgse88d29Bf31YFvkpHIj/ff+cwd
         vX0zopt95vjOdIpDEjgQeXuQAey6jGAjTBPeLoTxK6U1jIx8ci0+SVl4j7/f2xqNTkeK
         JmSLYG7RKpD/EKS83pqkqLGOEpLhghQMx4hfKFC/O+j9VuIZk/RDCcro4abwGUB5qAwF
         sFhQ/uenWr8flo48zoAXxsbdYXCnUptqdG+X5OR0EQ9sgtwfikqawE70m0jso6s6DVeT
         n7BXmi9MSQEr5auuOK2IdneqfisMMgx10cR/e9Q2sY7oXFUszw6iLyCfPBnAwqG4sJfH
         EQvw==
X-Gm-Message-State: AOAM532dMkT8nMG3M3M9hEPXWC+9lzGZjBTU1EuzOCtr2oehw/llCDC0
	Ax+hmEoyPzNjSTf0+ag9qnRXU4kZp70Mwo8OjJc=
X-Google-Smtp-Source: ABdhPJx5L1gQoUA8wW5ro/4OAfWAR1aidLOhTErDhqHaY+k2ohexClCkqqQvO6/ArPRZMsj7XgV6gPBqzCj1tAQMo4k=
X-Received: by 2002:a92:5a5a:: with SMTP id o87mr5999684ilb.184.1590737977722;
 Fri, 29 May 2020 00:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
In-Reply-To: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
Date: Fri, 29 May 2020 13:09:26 +0530
Message-ID: <CAEkELtDq3ZFSMw7YSNwXWX8d7p2bNHr_aAXgBmqq=RhacMRo6w@mail.gmail.com>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000017ca8b05a6c48cee"

--00000000000017ca8b05a6c48cee
Content-Type: text/plain; charset="UTF-8"

You should have core-image-base-raspberrypi3.rpi-sdimg this should be
written to to the SD card. Please check it by following below steps. Hope
this help you.



then follow below steps to write the image on SD card.


SD_image writing



In build directory :
to check the sdimage for installing on SD card.

ls tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg



plug sd card to pc then

$: lsblk
$: sudo umount /dev/sdb*

$: sudo dd
if=tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg
of=/dev/sdb bs=4M

  >> This task will take some time and at the end we will get the output
something similar to below :

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

--00000000000017ca8b05a6c48cee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You should have=C2=A0core-image-base-raspberrypi3.rpi-sdim=
g this should be written to to the SD card. Please check it by following be=
low steps. Hope this help you.<div><br></div><div><br></div><div><br>then f=
ollow below steps to write the image on SD card.<br><br><br>SD_image writin=
g<br><br><br><br>In build directory : <br>to check the sdimage for installi=
ng on SD card.<br><br>ls tmp/deploy/images/raspberrypi3/core-image-base-ras=
pberrypi3.rpi-sdimg<br><br><br><br>plug sd card to pc then <br><br>$: lsblk=
<br>$: sudo umount /dev/sdb*<br><br>$: sudo dd if=3Dtmp/deploy/images/raspb=
errypi3/core-image-base-raspberrypi3.rpi-sdimg of=3D/dev/sdb bs=3D4M<br><br=
>=C2=A0 &gt;&gt; This task will take some time and at the end we will get t=
he output something similar to below :<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 4=
6+0 records in<br>	46+0 records out<br>	192937984 bytes (193 MB, 184 MiB) c=
opied, 10.2155 s, 18.9 MB/s<br><br><br>$: sync<br>$: sudo umount /dev/sdb*<=
br></div><div><br></div><div><br></div><div>Best Regards,</div><div>Siddhar=
tha V</div><div><div><br></div><div><br></div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 29, 2020 at=
 12:48 PM Pankaj  Vinadrao Joshi &lt;<a href=3D"mailto:pankaj.vj@exaleapsem=
i.com">pankaj.vj@exaleapsemi.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div style=3D"margin:0px;padding:0px;bord=
er:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-st=
retch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,=
Helvetica,sans-serif;vertical-align:baseline;color:black">Hi,</div>
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

--00000000000017ca8b05a6c48cee--
