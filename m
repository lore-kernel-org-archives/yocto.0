Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web09.629.1610117051977971189
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 06:44:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZmZEjEW;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id z5so9962030iob.11
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 06:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nwy0L0U7ybTfBf1YtakZPgrm/IHiQpMxnddcgF4DCt0=;
        b=aZmZEjEW8aN8Yp/rTFbIv8vzZhkqWCtg8lDFh0PXhpcuIbzk/DEfRDK+SkA59NDxXv
         MWTaCebvsOVuK7Ej311dfEegNpwqoAYEQ8+HCa6SI4m7HkeVwEomhbUFi4FXEEBFhb2V
         YuJN6sfY6Xc5xG3vq3R7ckVbXFwEm8EDRYJujDP7jk5mM5EqrUCEzKCkNZTX23Y7yI+n
         olfnPiqakDUMp4BZcVGcCjX1IqDegZvdKvNqvUsLI85GxRlkEHcBTrcChQhhxfD3M7gn
         sQIfc2CEIiIdtyjd5sZ8573N3wHCwJcR4zHi2duejTLgL3i+dRZK+EtHyIu24W4FBRou
         9G+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nwy0L0U7ybTfBf1YtakZPgrm/IHiQpMxnddcgF4DCt0=;
        b=h6ls2yfCrIhbQnPUc//LCYUjY4jdgVuJKWaT5TExwOqAyNY4tX7vnCqn1KPQsL0Snn
         Gt/TwZWUG8egGtUxj0CM/FsdctawVNuVXCShOeffMfzWAQaojO2/lngI0sgYlyDlcjWo
         h6nX1DQ2vxLB+XUvGKtD3lIBzZkQ9ByzdW1tigXKTLkhNyISXe/nJvsgECpGfxGNAye5
         fnPctS3wJsiiUuTup4rf4iyOQnXhlEQ8NvyZJWsLeROQWfi6fI4kn6aAwkEhIqF1Rf/i
         Op818OqTpoXYhnHML+gKA38Lxv9TBokpmHw20XCC9U305luiQCF0XqgUZcCo1vHs9a4S
         mnbw==
X-Gm-Message-State: AOAM5336e37D6k6KUSPqGh/o2XclBXFhUbaQ5/E1J1iOogJ4Vz+byxA/
	WjIAj2XohbfZ6OHQwRjOmMqSbEBO7N8U/XikCC8=
X-Google-Smtp-Source: ABdhPJzQNnFguqtNNhKrAKffGmSQfGZdVFHejzG8SEaQd37CoImCfABgNeas42b+tWvfJcM1kc5vQGyhF4grMC/UklE=
X-Received: by 2002:a6b:1451:: with SMTP id 78mr5683248iou.102.1610117051200;
 Fri, 08 Jan 2021 06:44:11 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyEXerytTB_YGmpMcZOu3MOaSdA_vYv8nvk6qMOoPUc5Q@mail.gmail.com>
 <11979.1610108932511655982@lists.yoctoproject.org> <165842AB3B8C5237.7830@lists.yoctoproject.org>
In-Reply-To: <165842AB3B8C5237.7830@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 8 Jan 2021 15:43:59 +0100
Message-ID: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e23b1305b86496f6"

--000000000000e23b1305b86496f6
Content-Type: text/plain; charset="UTF-8"

Even better:

debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$ lsmod
Module                  Size  Used by


*huawei_cdc_ncm         16384  0cdc_wdm                24576  1
huawei_cdc_ncmcdc_ncm                32768  1 huawei_cdc_ncm*
spidev                 20480  0
evdev                  20480  1
usb_f_acm              20480  2
u_serial               24576  3 usb_f_acm
usb_f_ncm              24576  2
usb_f_rndis            24576  4
u_ether                24576  2 usb_f_ncm,usb_f_rndis
libcomposite           49152  16 usb_f_acm,usb_f_ncm,usb_f_rndis
8021q                  24576  0
garp                   16384  1 8021q
stp                    16384  1 garp
mrp                    16384  1 8021q
llc                    16384  2 garp,stp
iptable_nat            16384  0
nf_nat                 28672  1 iptable_nat
nf_conntrack           98304  1 nf_nat
nf_defrag_ipv6         20480  1 nf_conntrack
nf_defrag_ipv4         16384  1 nf_conntrack
iptable_mangle         16384  0
iptable_filter         16384  0
mikrobus_test          16384  1
mikrobus               32768  1 mikrobus_test
ip_tables              24576  3 iptable_mangle,iptable_filter,iptable_nat
x_tables               24576  3 iptable_mangle,ip_tables,iptable_filter
debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$

Zolee, U need (based upon this lsmod on my target) to solve the problem
(homework for you).

( U owe me double Glenmorangie on rocks! )

Zee
_______

On Fri, Jan 8, 2021 at 1:49 PM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:

> > Does it mean that it will never ever work?
> > Could you please try this one? This might match your kernel version:
> >
> https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c
> >
> > Zolee
>
> [vuser@fedora33-ssd usb]$ kdiff3 huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
> org.kde.kdiff3: "Loading A: /home/vuser/projects/
> kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm_5.8.18.c
> "
> "/proc/1715042/root"
> org.kde.kdiff3: Loading B:  "/home/vuser/projects/
> kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm.c"
> [vuser@fedora33-ssd usb]$ diff huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
> [vuser@fedora33-ssd usb]$ diff -c huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
> [vuser@fedora33-ssd usb]$ diff -s huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c
> Files huawei_cdc_ncm_5.8.18.c and huawei_cdc_ncm.c are identical
> [vuser@fedora33-ssd usb]$
>
> This is the same modul. You need to try to built-in this one in the kernel.
>
> Obviously, you need to load some basic module, this one is dependent upon
> (my best guess).
>
> This one is missing. Maybe this one!
>
> $ cat config-5.8.18-bone24 | grep HUAWEI
> *# CONFIG_NET_VENDOR_HUAWEI is not set*
> CONFIG_USB_NET_HUAWEI_CDC_NCM=m
>
> Zee
> _______
>
> On Fri, Jan 8, 2021 at 1:29 PM Zoltan Kerenyi Nagy <
> kerenyi.nagy.zoltan@gmail.com> wrote:
>
>> Does it mean that it will never ever work?
>>
>> Could you please try this one? This might match your kernel version:
>>
>>
>> https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c
>> --
>> Zolee
>>
>>
>>
> 
>
>

--000000000000e23b1305b86496f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Even better:<div><br></div><div>debian@arm:/lib/modules/5.=
8.18-bone24/kernel/drivers/net/usb$ lsmod<br>Module =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Size =C2=A0Used by<br><b><i><font=
 color=3D"#ff0000">huawei_cdc_ncm =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384 =C2=A00=
<br>cdc_wdm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A024576 =
=C2=A01 huawei_cdc_ncm<br>cdc_ncm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A032768 =C2=A01 huawei_cdc_ncm</font></i></b><br>spidev =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20480 =C2=A00<br>evde=
v =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A020480 =C2=
=A01<br>usb_f_acm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A020480 =
=C2=A02<br>u_serial =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576=
 =C2=A03 usb_f_acm<br>usb_f_ncm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A024576 =C2=A02<br>usb_f_rndis =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A024576 =C2=A04<br>u_ether =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A024576 =C2=A02 usb_f_ncm,usb_f_rndis<br>libcomposite =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 49152 =C2=A016 usb_f_acm,usb_f_ncm,usb_f_rndis<br=
>8021q =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A024576 =
=
=C2=A00<br>garp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 16384 =C2=A01 8021q<br>stp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016384 =C2=A01 garp<br>mrp =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016384 =C2=A01 8021q<br=
>llc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=
6384 =C2=A02 garp,stp<br>iptable_nat =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A016384 =C2=A00<br>nf_nat =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 28672 =C2=A01 iptable_nat<br>nf_conntrack =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 98304 =C2=A01 nf_nat<br>nf_defrag_ipv6 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 20480 =C2=A01 nf_conntrack<br>nf_defrag_ipv4 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 16384 =C2=A01 nf_conntrack<br>iptable_mangle =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 16384 =C2=A00<br>iptable_filter =C2=A0 =C2=A0 =C2=A0 =C2=A0 16384 =
=C2=A00<br>mikrobus_test =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016384 =C2=A01<b=
r>mikrobus =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32768 =C2=A01 m=
ikrobus_test<br>ip_tables =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02=
4576 =C2=A03 iptable_mangle,iptable_filter,iptable_nat<br>x_tables =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 24576 =C2=A03 iptable_mangle,ip_=
tables,iptable_filter<br>debian@arm:/lib/modules/5.8.18-bone24/kernel/drive=
rs/net/usb$<br></div><div><br></div><div>Zolee, U need (based upon this lsm=
od on my target) to solve the problem (homework for you).<br></div><div><br=
></div><div>( U owe me double Glenmorangie on rocks! )</div><div><br></div>=
<div>Zee</div><div>_______</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 8, 2021 at 1:49 PM Zoran via <a=
 href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoprojec=
t.org</a> &lt;zoran.stojsavljevic=3D<a href=3D"mailto:gmail.com@lists.yocto=
project.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>&gt; Does it mean that it will never ever work?<br>&gt; Could you=
 please try this one? This might match your kernel version:<br>&gt; <a href=
=
=3D"https://elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei=
_cdc_ncm.c" target=3D"_blank">https://elixir.bootlin.com/linux/v5.8.18/sour=
ce/drivers/net/usb/huawei_cdc_ncm.c</a><span><br>&gt;</span></div><div><spa=
n>&gt; Zolee<br></span></div><div><br></div><div>[vuser@fedora33-ssd usb]$ =
kdiff3 huawei_cdc_ncm_5.8.18.c huawei_cdc_ncm.c</div>org.kde.kdiff3: &quot;=
Loading A: /home/vuser/projects/<a href=3D"http://kernel.bb/bb-kernel-5.8.1=
8-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm_5.8.18.c" target=3D"_blank">=
kernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm_5.8=
.18.c</a>&quot;<br>&quot;/proc/1715042/root&quot;<br>org.kde.kdiff3: Loadin=
g B: =C2=A0&quot;/home/vuser/projects/<a href=3D"http://kernel.bb/bb-kernel=
-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm.c" target=3D"_blank">k=
ernel.bb/bb-kernel-5.8.18-bone24/KERNEL/drivers/net/usb/huawei_cdc_ncm.c</a=
>&quot;<br>[vuser@fedora33-ssd usb]$ diff huawei_cdc_ncm_5.8.18.c huawei_cd=
c_ncm.c<br>[vuser@fedora33-ssd usb]$ diff -c huawei_cdc_ncm_5.8.18.c huawei=
_cdc_ncm.c<br>[vuser@fedora33-ssd usb]$ diff -s huawei_cdc_ncm_5.8.18.c hua=
wei_cdc_ncm.c<br>Files huawei_cdc_ncm_5.8.18.c and huawei_cdc_ncm.c are ide=
ntical<br><div>[vuser@fedora33-ssd usb]$ <br></div><div><br></div><div>This=
 is the same modul. You need to try to built-in this one in the kernel.</di=
v><div><br></div><div>Obviously, you need to load some basic module, this o=
ne is dependent upon (my best guess).</div><div><br></div><div>This one is =
missing. Maybe this one!</div><div><br></div><div>$ cat config-5.8.18-bone2=
4 | grep HUAWEI<br><span style=3D"color:rgb(255,0,0)"><i><b># CONFIG_NET_VE=
NDOR_HUAWEI is not set</b></i></span><br>CONFIG_USB_NET_HUAWEI_CDC_NCM=3Dm<=
/div><div><br></div><div>Zee</div><div>_______<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 8, 2021=
 at 1:29 PM Zoltan Kerenyi Nagy &lt;<a href=3D"mailto:kerenyi.nagy.zoltan@g=
mail.com" target=3D"_blank">kerenyi.nagy.zoltan@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Does it mean that =
it will never ever work?<br><br>Could you please try this one? This might m=
atch your kernel version:<br><br><a href=3D"https://elixir.bootlin.com/linu=
x/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c" target=3D"_blank">https:=
//elixir.bootlin.com/linux/v5.8.18/source/drivers/net/usb/huawei_cdc_ncm.c<=
/a><br>-- <br>Zolee
<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000e23b1305b86496f6--
