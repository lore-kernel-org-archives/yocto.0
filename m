Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web10.30751.1590742298415365674
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 01:51:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BAOZhZFf;
 spf=pass (domain: gmail.com, ip: 209.85.166.169, mailfrom: siddhuvgowda.18695@gmail.com)
Received: by mail-il1-f169.google.com with SMTP id t8so1184220ilm.7
        for <yocto@lists.yoctoproject.org>; Fri, 29 May 2020 01:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IVLenylpminC9kXzxpGJNIDnEtGGIJesrV+v0CTGdj4=;
        b=BAOZhZFfWwQo/ajugkUgdnXhs36Iair0xZP3TcX/TAdwB3BUmW09idt/49h90sySzJ
         s+RiEyBYWmdELOung6FSQl1BjNF0epMF/Hoo356Qm0a0UyTwdJZmdskrHOwnyl3VG5Yu
         G0qNTHBvWhJj8dHCdmdMd5TKMweYKM2IbSZDn0fRNgpgV9OvgdkRKR6mhElF5qFUXST0
         +FglbVOjEE+3SLCPg0fowQqtCCN0cd/dSolmPMzdddz4AuYJEWItVeO5rY/e7Mod1tw4
         2TY4MK2r7ZwUX/Mym5/kYlwE0RN+9mtWA3oapJja+FAxyopn+QyL3VMp9tJrvf9x4qhf
         zzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IVLenylpminC9kXzxpGJNIDnEtGGIJesrV+v0CTGdj4=;
        b=dq9Fdzp1qriXRV8nHsTkuSArwRCkzBdhwaAzRF3GnoGgb4hLYjjIl0aXobJMbWvqUE
         xCc/ipBt1BIJauwguMucpcso4JsGIHMhTX9zaEayab0TjQKPjszGYL8/0CGoVfI7FpzG
         nPMxAlwrgezz/e4rUO9kcJfID9311o7mYrhlGu0o7FItNf0sB2jSfbUqU10Q6XJrxC9o
         Eg1PNEDQdPDTP1K6uLV9L9kNCAdwHS3rwbJSikiFY0RPlgw+18YtR2ogC36PAoCRQGfK
         2QxfYb6Tayuof5Qkd3p5jHva6lqly8Fkxal1Q6pdfvO/A3tOXC1J6bor57yK9BZFzyXw
         ygig==
X-Gm-Message-State: AOAM533SeIPRvPGlWrvWNACX7+Ahzy9e7OEQLRaDIhPhg3fJqpVbENNm
	uRuAIdL2WcUMj0aDRAudJfNpWMoBJtDusUa7Bms=
X-Google-Smtp-Source: ABdhPJxDdj9MXGcVnlMhU70GPUkDMyzyIKs4FA63ncbQJ3MFM8x0xe5+diu4gD0dOUIIXxFSaM4RjbROJvf52Zcpnr8=
X-Received: by 2002:a92:8744:: with SMTP id d4mr6308815ilm.54.1590742297798;
 Fri, 29 May 2020 01:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
 <CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com>
 <MA1PR01MB3660114818BF26883BF11FC7EE8F0@MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM>
 <CAEkELtBeyoejF_00HYgFBx3U1ULiqKGpP_kSRVrNMNRdwva=sA@mail.gmail.com> <CAM9ZRVsyYuT5YyJdkCm8s9Zas1DC727OCWjFEobppi8u5Xf8KQ@mail.gmail.com>
In-Reply-To: <CAM9ZRVsyYuT5YyJdkCm8s9Zas1DC727OCWjFEobppi8u5Xf8KQ@mail.gmail.com>
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
Date: Fri, 29 May 2020 14:21:25 +0530
Message-ID: <CAEkELtAGh03Zr7aDNFvDxkMZ0Ptk_WATf0K7V-x8Ue+zOkmH+Q@mail.gmail.com>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
To: Paul Barker <pbarker@konsulko.com>
Cc: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000096ee1405a6c58dc5"

--00000000000096ee1405a6c58dc5
Content-Type: text/plain; charset="UTF-8"

Am soory paul,

 But i was actually trying to check if sdimage is generated or not. I was
unaware of . wic. bz2 image. So suggested the above commands.

Sorry pankaj.


Thanks
Siddhartha V

On Fri, 29 May, 2020, 2:13 PM Paul Barker, <pbarker@konsulko.com> wrote:

> On Fri, 29 May 2020 at 09:23, Siddhartha V <Siddhuvgowda.18695@gmail.com>
> wrote:
> >
> > Please follow below steps to check the image.
> >
> > In build directory :
> > to check the sdimage for installing on SD card.
> >
> > $: ls
> tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg
> >
> > Check the image by running above command and then follow the steps i
> mentioned previously.
>
> Siddhartha, you're confusing the issue here by giving inaccurate advice.
>
> The original command posted by Pankaj was nearly correct: `sudo dd
> if=core-image-minimal-raspberrypi4.wic.bz2 of=/dev/sdb`. The only
> issue is that the data in the wic.bz2 file needs to be de-compressed
> before writing to an SD card.
>
> I recommend installing bmap-tools and using that to copy the data, it
> handles decompression automatically and uses the block map in the
> wic.bmap file to allow it to only write blocks which actually contain
> data (saving lots of time that would be otherwise wasted writing
> blocks of zeros). You can run `sudo bmaptool copy
> core-image-minimal-raspberrypi4.wic.bz2 /dev/sdb`.
>
> Thanks,
> Paul
>
> --
> Paul Barker
> Konsulko Group
>

--00000000000096ee1405a6c58dc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Am soory paul,<div dir=3D"auto"><br></div><div dir=3D"aut=
o">=C2=A0But i was actually trying to check if sdimage is generated or not.=
 I was unaware of . wic. bz2 image. So suggested the above commands.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Sorry pankaj.=C2=A0</div><div =
dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=
=C2=A0</div><div dir=3D"auto">Siddhartha V</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 29 May, 2020, 2:13 =
PM Paul Barker, &lt;<a href=3D"mailto:pbarker@konsulko.com" target=3D"_blan=
k" rel=3D"noreferrer">pbarker@konsulko.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Fri, 29 May 2020 at 09:23, Siddhartha V &lt;<a hr=
ef=3D"mailto:Siddhuvgowda.18695@gmail.com" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">Siddhuvgowda.18695@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Please follow below steps to check the image.<br>
&gt;<br>
&gt; In build directory :<br>
&gt; to check the sdimage for installing on SD card.<br>
&gt;<br>
&gt; $: ls tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-=
sdimg<br>
&gt;<br>
&gt; Check the image by running above command and then follow the steps i m=
entioned previously.<br>
<br>
Siddhartha, you&#39;re confusing the issue here by giving inaccurate advice=
.<br>
<br>
The original command posted by Pankaj was nearly correct: `sudo dd<br>
if=3Dcore-image-minimal-raspberrypi4.wic.bz2 of=3D/dev/sdb`. The only<br>
issue is that the data in the wic.bz2 file needs to be de-compressed<br>
before writing to an SD card.<br>
<br>
I recommend installing bmap-tools and using that to copy the data, it<br>
handles decompression automatically and uses the block map in the<br>
wic.bmap file to allow it to only write blocks which actually contain<br>
data (saving lots of time that would be otherwise wasted writing<br>
blocks of zeros). You can run `sudo bmaptool copy<br>
core-image-minimal-raspberrypi4.wic.bz2 /dev/sdb`.<br>
<br>
Thanks,<br>
Paul<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--00000000000096ee1405a6c58dc5--
