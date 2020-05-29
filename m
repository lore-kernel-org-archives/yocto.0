Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web10.30535.1590740625734878084
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 01:23:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NcDVfHuT;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: siddhuvgowda.18695@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id j3so1601697ilk.11
        for <yocto@lists.yoctoproject.org>; Fri, 29 May 2020 01:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YTaNLfyEwA6FDgYOOa+ctUlNZpx1axrmClSPjhVZArI=;
        b=NcDVfHuTwk91pVlOt/+GBmA2bRYWT5B/jaDL4Z4mmDHciKvJVSNU43nOYGWKK0+AMG
         +fTYeu/gNvgxjR0iRVntW2Mnx/4XgyWy0fYfLxmc8KiELe5yD1J0FiHyGIAtBmvQafz1
         B5K2Mj8Oj4qbWs7RpjyjveivQnW+2iG1GrE0/pOd9CdWgX9DGIuPpOLB0eVtL0uv29Uz
         +E3ZbY9ExHiW2zNykkkx9TffUHCsgein6DhP7vUJhDUo8cZGT1KZgxIw59nH9SULWsZ9
         NOk3mV25Bwj2rzW5Gss7WY6hPVSPC+uEI1DOIWP7L0oWmynUck9R4oZAl3c0tRTR1owA
         m7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YTaNLfyEwA6FDgYOOa+ctUlNZpx1axrmClSPjhVZArI=;
        b=tTdzfRfHhgxnjbDM+dEG/ohQSn5QLcYPVq/68PpgQ5WhjO/MCJYfw8cXizKVVo61fS
         T2nBt2aICu2x9CZO68UOxR6dtKz1APFAi+QDxAU/Eniwk72j4RUgU6U2jG4GtkjQ0Pn9
         TEzTXuDxZHFH6/VuzRWFAv7nwciLXss/ecSi9OQ9TY4pwtwxXOSBfpYU1GxtpIGfZHj9
         yotugCFJyNEMVuKDcnVHHf0vReqFcfz9+dagjEhLfWp807tSnQoqUAgUJiKRRs+EdC6T
         7P3fuSyUrLVowpb+kjVfo3x37jFawUzq4JJJaNE8jm/ltaO7pmFqxxlMBQyGmWFMhOkA
         ogmw==
X-Gm-Message-State: AOAM530z934jn6SYISZ/hJ7EJXPm4ZjdfrxssLA+SEpEvEwsGwtMA+SI
	stXkxklM4iGaaTlyjzX5s4GsxLfeEPXJ0LIpGbQ=
X-Google-Smtp-Source: ABdhPJy/7So9SilFr8mr3O4UWwXUUzLzaetP6clJiftWONCBcolFpHPt+dE9XCcj0NFeGtDcz8x17RkOEJTeiEKKRSc=
X-Received: by 2002:a05:6e02:f:: with SMTP id h15mr6154729ilr.90.1590740625068;
 Fri, 29 May 2020 01:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
 <CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com> <MA1PR01MB3660114818BF26883BF11FC7EE8F0@MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB3660114818BF26883BF11FC7EE8F0@MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM>
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
Date: Fri, 29 May 2020 13:53:32 +0530
Message-ID: <CAEkELtBeyoejF_00HYgFBx3U1ULiqKGpP_kSRVrNMNRdwva=sA@mail.gmail.com>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
To: Pankaj Vinadrao Joshi <Pankaj.VJ@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e315cd05a6c529cc"

--000000000000e315cd05a6c529cc
Content-Type: text/plain; charset="UTF-8"

Please follow below steps to check the image.

In build directory :
to check the sdimage for installing on SD card.

$: ls tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg

Check the image by running above command and then follow the steps i
mentioned previously.

Regards,
Siddhartha V

On Fri, 29 May, 2020, 1:17 PM Pankaj Vinadrao Joshi, <
Pankaj.VJ@exaleapsemi.com> wrote:

> Hi,
> i dont have image with .rpi-sdimg i have image with
>
> core-image-minimal-raspberrypi4.wic.bz2
> core-image-minimal-raspberrypi4.wic.bmap
> core-image-minimal-raspberrypi4.testdata.json
> core-image-minimal-raspberrypi4.tar.bz2
> core-image-minimal-raspberrypi4.manifest
> core-image-minimal-raspberrypi4.ext3
>
> dont have core-image-base-raspberrypi3.rpi-sdimg
>
> ------------------------------
> *From:* siddhartha v <siddhuvgowda.18695@gmail.com>
> *Sent:* Friday, May 29, 2020 1:07 PM
> *To:* Pankaj Vinadrao Joshi <Pankaj.VJ@exaleapsemi.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
>
> Hello Pankaj,
>
>   Try below mentioned steps, Hope it helps you, (there my image
> was"core-image-base-raspberrypi3.rpi-sdimg"  replace it by your image )
>
>
> plug sd card to pc then
>
> $: lsblk
> $: sudo umount /dev/sdb*
>
> $: sudo dd
> if=tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg
> of=/dev/sdb bs=4M
>
>   >> This task will take some time and at the end we will get the output
> something similar(not exact it depends on build files) to below :
>
>         46+0 records in
> 46+0 records out
> 192937984 bytes (193 MB, 184 MiB) copied, 10.2155 s, 18.9 MB/s
>
>
> $: sync
> $: sudo umount /dev/sdb*
>
>
> Best Regards,
> Siddhartha V
>
> On Fri, May 29, 2020 at 12:48 PM Pankaj Vinadrao Joshi <
> pankaj.vj@exaleapsemi.com> wrote:
>
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
>
>
> --
> Thanks and Regards.
> Siddhartha V.
>
> [EXT]
>

--000000000000e315cd05a6c529cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">P=
lease follow below steps to check the image.=C2=A0</span><br style=3D"font-=
family:sans-serif;font-size:12.8px"><br style=3D"font-family:sans-serif;fon=
t-size:12.8px"><span style=3D"font-family:sans-serif;font-size:12.8px">In b=
uild directory :</span><br style=3D"font-family:sans-serif;font-size:12.8px=
"><span style=3D"font-family:sans-serif;font-size:12.8px">to check the sdim=
age for installing on SD card.</span><br style=3D"font-family:sans-serif;fo=
nt-size:12.8px"><br style=3D"font-family:sans-serif;font-size:12.8px"><span=
 style=3D"font-family:sans-serif;font-size:12.8px">$: ls tmp/deploy/images/=
</span><span style=3D"font-family:sans-serif;font-size:12.8px">raspberrypi3=
/core-image-base-</span><span style=3D"font-family:sans-serif;font-size:12.=
8px">raspberrypi3.rpi-sdimg</span><br style=3D"font-family:sans-serif;font-=
size:12.8px"><div dir=3D"auto"><span style=3D"font-family:sans-serif;font-s=
ize:12.8px"><br></span></div><div dir=3D"auto"><span style=3D"font-family:s=
ans-serif;font-size:12.8px">Check the image by running above command and th=
en follow the steps i mentioned previously.=C2=A0</span></div><div dir=3D"a=
uto"><span style=3D"font-family:sans-serif;font-size:12.8px"><br></span></d=
iv><div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px=
">Regards,=C2=A0</span></div><div dir=3D"auto"><span style=3D"font-family:s=
ans-serif;font-size:12.8px">Siddhartha V=C2=A0</span></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 29 May, =
2020, 1:17 PM Pankaj  Vinadrao Joshi, &lt;<a href=3D"mailto:Pankaj.VJ@exale=
apsemi.com">Pankaj.VJ@exaleapsemi.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
i dont have image with .rpi-sdimg i have image with=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.wic.bz2</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.wic.bmap <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.testdata.json <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.tar.bz2 =C2=A0<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.manifest =C2=A0<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
core-image-minimal-raspberrypi4.ext3 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
dont have=C2=A0<span style=3D"color:rgb(32,31,30);font-family:&quot;Segoe =
UI&quot;,&quot;Segoe UI Web (West European)&quot;,&quot;Segoe UI&quot;,-app=
le-system,BlinkMacSystemFont,Roboto,&quot;Helvetica Neue&quot;,sans-serif;f=
ont-size:15px;background-color:rgb(255,255,255);display:inline!important">c=
ore-image-base-raspberrypi3.rpi-sdimg</span></div>
<div id=3D"m_36519021008172656appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_36519021008172656divRplyFwdMsg" dir=3D"ltr"><font face=3D"Cal=
ibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> s=
iddhartha v &lt;<a href=3D"mailto:siddhuvgowda.18695@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">siddhuvgowda.18695@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, May 29, 2020 1:07 PM<br>
<b>To:</b> Pankaj Vinadrao Joshi &lt;<a href=3D"mailto:Pankaj.VJ@exaleapse=
mi.com" target=3D"_blank" rel=3D"noreferrer">Pankaj.VJ@exaleapsemi.com</a>&=
gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k" rel=3D"noreferrer">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailt=
o:yocto@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto@=
lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yoct=
o</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hello Pankaj,
<div><br>
</div>
<div>=C2=A0 Try below mentioned steps, Hope it helps you, (there my image =
was&quot;core-image-base-raspberrypi3.rpi-sdimg&quot;=C2=A0 replace it by y=
our image )</div>
<div><br>
</div>
<div><br>
plug sd card to pc then <br>
<br>
$: lsblk<br>
$: sudo umount /dev/sdb*<br>
<br>
$: sudo dd if=3Dtmp/deploy/images/raspberrypi3/core-image-base-raspberrypi=
3.rpi-sdimg of=3D/dev/sdb bs=3D4M<br>
<br>
=C2=A0 &gt;&gt; This task will take some time and at the end we will get t=
he output something similar(not exact it depends on build files) to below :=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 46+0 records in<br>
46+0 records out<br>
192937984 bytes (193 MB, 184 MiB) copied, 10.2155 s, 18.9 MB/s<br>
<br>
<br>
$: sync<br>
$: sudo umount /dev/sdb*<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Best Regards,</div>
<div>Siddhartha V</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, May 29, 2020 at 12:48 PM Pankaj Vinadrao Joshi &l=
t;<a href=3D"mailto:pankaj.vj@exaleapsemi.com" target=3D"_blank" rel=3D"nor=
eferrer">pankaj.vj@exaleapsemi.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
Hi,</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
I have built the image for raspberrypi4 and i have got the following image=
s=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">core-image-minimal.env =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-ft5406-1-4.19.120+git0+9d=
a67d7329-r0-raspberrypi4-20200521111428.dtbo<br>
</span>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.ext3 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rpi-ft5406.dtbo</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.manifest =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-ft54=
06-raspberrypi4.dtbo</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.tar.bz2 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rpi-hwu=
p-image.env</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bmap =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup=
-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
raspberrypi4-20200521111428.rootfs.ext3</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bz2 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rpi-hwu=
p-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
raspberrypi4-20200521111428.rootfs.manifest</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4-20200518130120.testdata.json =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-h=
wup-image-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
raspberrypi4-20200521111428.rootfs.tar.bz2</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4.ext3 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup-image-=
raspberrypi4-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
20200521111428.rootfs.wic.bmap</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4.manifest =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup-image-raspberrypi=
4-</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
20200521111428.rootfs.wic.bz2</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4.tar.bz2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4.testdata.json=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
core-image-minimal-raspberrypi4.wic.bmap=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-alig=
n:baseline;color:inherit">
=C2=A0</div>
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">core-image-minimal-raspberrypi4.wic.bz2 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></div=
>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">=C2=A0</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
and=C2=A0 i am trying to copy<strong>=C2=A0</strong><span style=3D"font-we=
ight:bold">core-image-minimal-raspberrypi4.wic.bz2</span><strong><span styl=
e=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inhe=
rit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:=
inherit;vertical-align:baseline;color:inherit">=C2=A0by
 using</span></strong></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<strong>=C2=A0</strong></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit"><strong>$sudo dd if=3Dcore-image-minimal-raspber=
rypi4.wic.bz2 of=3D/dev/sdb=C2=A0</strong></span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit"><strong>=C2=A0</strong></span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">but my image is not getting copied into sd card(=
used two sd cards ,tried formatting with FAT,Linux),i am missing anything ,=
do i need to copy anything else
 with this core-image-minimal.</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">which extension of image i should use to bringup=
 my RPI4??</span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit"><strong>=C2=A0</strong></span></div>
<div style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inher=
it;font-variant-east-asian:inherit;font-stretch:inherit;font-size:12pt;line=
-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-ali=
gn:baseline;color:black">
<span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-ali=
gn:baseline;color:inherit">Thanks!</span></div>
<br>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>Thanks and Regards.</div>
Siddhartha V.
<div>=C2=A0</div>
</div>
</div>
[EXT] </div>
</div>

</blockquote></div>

--000000000000e315cd05a6c529cc--
