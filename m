Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
 by mx.groups.io with SMTP id smtpd.web08.3269.1610110169679946602
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 04:49:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hwKJIg5f;
 spf=pass (domain: gmail.com, ip: 209.85.166.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f43.google.com with SMTP id q137so9587696iod.9
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 04:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BG1d5/kIgGRDTUtkOXLSSGlQBx8c717IYq7J50jXLIk=;
        b=hwKJIg5foLthfiSpyaXhmh7/Wq7ISutlFrTZqx3I1SAs6MXsTFpn1+VmJzy8ObOq7V
         bkW4Vx5aVhooUD8zRfxvrtKPSnfenC5f/LLiN6HhLjnzYG8R4fo2flSYbMwEXUFxUNm2
         QRuAkVAlhVr6qG86PEdgK8k0N3oucGkcprXFIahnYiCIKvJyth/CQl3iE9PZYKp5dKYj
         8TRkZ3/6e7HAWbQIu80VrLE51t4KmsDPYiL8TngQyJHD8al3XJ68FLPP3M5QNqp7lbmt
         wyf5ugXBw16pciO7u2xsJzfYhuxm+s7TkeXQxC3Hq58paAU9RWMi4ps6cqJC29Rr+9Sc
         ywZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BG1d5/kIgGRDTUtkOXLSSGlQBx8c717IYq7J50jXLIk=;
        b=UnfRJa1NUBSBRUoddn2Fhvh3pcMxJog7YFZygfcI6rrBWOxMXCjKiMHYlN5GF54I18
         Gu/Lhabev3rKrehGluhK8OS5g54p60G9wZ9TXejfqLOd4vX4zzBGvBW5Iv1DIPmPzaKt
         M3Ag9U5pUSyKRmLauBJnRq6gSyyCPRGQMMUKIdCgC5LOcTXZ3N7p6jVGSyZZq8gx8O5G
         wU+Ve7WuFrdP9v2LzGBJoNfxF5i2oRW8hMjMKJ/7ln/gT/FDl5l5gyyNACYK2DaUh4hf
         kGpD4OZSrBrJ+18kR0rp29BT4zVm2yKCnVRevYo0C4WYdanFujWT4znr4h4XXNOyAiwR
         KpsA==
X-Gm-Message-State: AOAM5328oHdmMHT65o5Bd7lTtKRRVZF9tbAhk9bPABZSTO8YvwGz+3vz
	w9ImTzNAl2B0m3DvSu6ReBDpdnTRHaUTqGUBt1w=
X-Google-Smtp-Source: ABdhPJwNboB0kQtCti4bncUaJn1Vhqu5S5vakSPBYyqO/uQ051RXY77hM4B/RqoQi7aEzAIgjgng8Jqy0NcgTE/5/0k=
X-Received: by 2002:a02:8622:: with SMTP id e31mr3218578jai.88.1610110168906;
 Fri, 08 Jan 2021 04:49:28 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyEXerytTB_YGmpMcZOu3MOaSdA_vYv8nvk6qMOoPUc5Q@mail.gmail.com>
 <11979.1610108932511655982@lists.yoctoproject.org>
In-Reply-To: <11979.1610108932511655982@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 8 Jan 2021 13:49:17 +0100
Message-ID: <CAGAf8Lxg2C7+z5zTPU=ef+35DGX=1R_R54rqmCUaZSZni7wnEw@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aac38305b862fc06"

--000000000000aac38305b862fc06
Content-Type: text/plain; charset="UTF-8"

> Does it mean that it will never ever work?
> Could you please try this one? This might match your kernel version:
>
https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c
>
> Zolee

[vuser@fedora33-ssd usb]$ kdiff3 huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
org.kde.kdiff3: "Loading A: /home/vuser/projects/
kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm_5.8.18.c
"
"/proc/1715042/root"
org.kde.kdiff3: Loading B:  "/home/vuser/projects/
kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm.c"
[vuser@fedora33-ssd usb]$ diff huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
[vuser@fedora33-ssd usb]$ diff -c huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
[vuser@fedora33-ssd usb]$ diff -s huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
Files huawei_cdc_ncm_5.8.18.c and huawei_cdc_ncm.c are identical
[vuser@fedora33-ssd usb]$

This is the same modul. You need to try to built-in this one in the kernel.

Obviously, you need to load some basic module, this one is dependent upon
(my best guess).

This one is missing. Maybe this one!

$ cat config-5.8.18-bone24 | grep HUAWEI
*# CONFIG_NET_VENDOR_HUAWEI is not set*
CONFIG_USB_NET_HUAWEI_CDC_NCM=m

Zee
_______

On Fri, Jan 8, 2021 at 1:29 PM Zoltan Kerenyi Nagy <
kerenyi.nagy.zoltan@gmail.com> wrote:

> Does it mean that it will never ever work?
>
> Could you please try this one? This might match your kernel version:
>
>
> https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c
> --
> Zolee
> 
>
>

--000000000000aac38305b862fc06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; Does it mean that it will never ever work?<br>&g=
t; Could you please try this one? This might match your kernel version:<br>=
&gt; <a href=3D"https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net=
/usb/huawei_cdc_ncm.c" target=3D"_blank">https://elixir.bootlin.com/linux/v=
5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c</a><span class=3D"gmail-im">=
<br>&gt;</span></div><div><span class=3D"gmail-im">&gt; Zolee<br></span></d=
iv><div><br></div><div>[vuser@fedora33-ssd usb]$ kdiff3 huawei_cdc_ncm_5.8.=
18.c huawei_cdc_ncm.c</div>org.kde.kdiff3: &quot;Loading A: /home/vuser/pro=
jects/<a href=3D"http://kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/ne=
t/usb/huawei_cdc_ncm_5.8.18.c">kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/dri=
vers/net/usb/huawei_cdc_ncm_5.8.18.c</a>&quot;<br>&quot;/proc/1715042/root&=
quot;<br>org.kde.kdiff3: Loading B: =C2=A0&quot;/home/vuser/projects/<a hre=
f=3D"http://kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei=
_cdc_ncm.c">kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei=
_cdc_ncm.c</a>&quot;<br>[vuser@fedora33-ssd usb]$ diff huawei_cdc_ncm_5.8.1=
8.c huawei_cdc_ncm.c<br>[vuser@fedora33-ssd usb]$ diff -c huawei_cdc_ncm_5.=
8.18.c huawei_cdc_ncm.c<br>[vuser@fedora33-ssd usb]$ diff -s huawei_cdc_ncm=
_5.8.18.c huawei_cdc_ncm.c<br>Files huawei_cdc_ncm_5.8.18.c and huawei_cdc_=
ncm.c are identical<br><div>[vuser@fedora33-ssd usb]$ <br></div><div><br></=
div><div>This is the same modul. You need to try to built-in this one in th=
e kernel.</div><div><br></div><div>Obviously, you need to load some basic m=
odule, this one is dependent upon (my best guess).</div><div><br></div><div=
>This one is missing. Maybe this one!</div><div><br></div><div>$ cat config=
-5.8.18-bone24 | grep HUAWEI<br><span style=3D"color:rgb(255,0,0)"><i><b># =
CONFIG_NET_VENDOR_HUAWEI is not set</b></i></span><br>CONFIG_USB_NET_HUAWEI=
_CDC_NCM=3Dm</div><div><br></div><div>Zee</div><div>_______<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Jan 8, 2021 at 1:29 PM Zoltan Kerenyi Nagy &lt;<a href=3D"mailto:kerenyi.=
nagy.zoltan@gmail.com">kerenyi.nagy.zoltan@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Does it mean that it wi=
ll never ever work?<br><br>Could you please try this one? This might match =
your kernel version:<br><br><a href=3D"https://elixir.bootlin.com/linux/v5.=
8.18/source/drivers/net/usb/huawei_cdc_ncm.c" target=3D"_blank">https://eli=
xir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c</a><b=
r>-- <br>Zolee
<br>
<br>
<br>
</blockquote></div>

--000000000000aac38305b862fc06--
