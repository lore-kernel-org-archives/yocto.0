Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web11.9597.1620887115077995761
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 23:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6ei7OQR;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: rohitbjadhav1@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id h4so6816063uap.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 23:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k01VfKd9VDxdHqQTYRvZUbqZO8QzbOf4El4YEx46AWI=;
        b=K6ei7OQREXVAjIO8O+UF7ZZYPZn3h5u2lBZU735v6MTPitYfzDcMww+zhlbksYRXpA
         RVt4Z+ywcd6NSFEASENOspT2aH01qVoLVxCXjnvghOV+QuVwUE2l3A9m2GjzlgcW4+s4
         BiTQy08A6hehpjEiO/u7bKn/ZxUPJU5Dijz01wTb0AEXN+OxpEk2Sjss8bWM7zibs/9s
         7DRyNzGQdLcec6Lsb/ptYG/EKewWurmpk84dY8FVzZ1RxtaEfyU9t0yqM82Ul/LzdtKM
         Rq4joGs3jja3zFfR1tjTXqXqUs93frotr/pDzyZQaQHFVEOGCkCr1ADlNqT4M5v7CtE/
         wHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k01VfKd9VDxdHqQTYRvZUbqZO8QzbOf4El4YEx46AWI=;
        b=pZoPjkSVYmJvoDvJ7TgmtbHEAmFFCDd+ulp2RHcb/H7YTy4LwdFKEH7+KjkoLg0bHd
         Oe++c1mAqRNBNFjxkyQtiVeGnQoIaXYxsYB2d9kch5KhV1/g4276hg2pPRFvx3IJ36SP
         N+WhSsfbuC6swsjaQ3xrJXH78f0xdINAWEs51EK42zhDb7rMsh33s7c6MTrn1vV38vjv
         rQf81cfVAC1ryPQFTcO8Tzje+r++xWt03IesARY13VCBwF6f1JzT4/R0JuS3YTQfIhgX
         AU00FUeU0b8EKVTmujP1yKsmHzE4+58sqsIEBfJ4KVS68kcKzPj4HQ7rxzj4dCf6Cjk9
         Ojjw==
X-Gm-Message-State: AOAM532AU8t77Gon7iIMQIKen92bMLrzYZRewZ9nDs+YaIbd9kGYpf/m
	9b7GFfRaiE1trD/+ApaCJp0SPBeo25eCwKxCS80=
X-Google-Smtp-Source: ABdhPJweE4/ZT931K8F8zMYEdtXBozoNwTQ0U4CSJwi5ZTV1sJclCQKP5QgBfgGz5msX/LeuYWg9g1KSxuvV7U4cF/0=
X-Received: by 2002:ab0:2b01:: with SMTP id e1mr36417324uar.85.1620887114069;
 Wed, 12 May 2021 23:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
 <CAGAf8Ly_r-CoF9c+7OuSuZUb9wsFxsDdb28mEVmdw1jk9YMXtw@mail.gmail.com>
 <CAGqYRWHupwJo4-TPC13yAr=cmu7A97ki8b6YcmnyV8Wu00qs2g@mail.gmail.com> <CAGAf8LxqL40KhhdmEtaN39xsK+je_SiNhsKHuCz-3NxoeQ+Jjw@mail.gmail.com>
In-Reply-To: <CAGAf8LxqL40KhhdmEtaN39xsK+je_SiNhsKHuCz-3NxoeQ+Jjw@mail.gmail.com>
From: "rohit jadhav" <rohitbjadhav1@gmail.com>
Date: Thu, 13 May 2021 11:55:02 +0530
Message-ID: <CAGqYRWEeRNYYxyRDsPTk6nd3R=kXT_euzcU6bf0zznf0pZJpqQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Zeus : facing error regarding hostapd #zeus
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a7b95a05c23030ae"

--000000000000a7b95a05c23030ae
Content-Type: text/plain; charset="UTF-8"

Hi Zoran,
   log.do_rootfs.31340is linked to log.do_rootfs I have checked with ls
command, So both files are identical.

While surfing I found similar thread but its for different package  its as
follows :
https://github.com/Xilinx/meta-virtualization/issues/4

Can you please help out with this for our Package Hostapd ?

Thanks and Regards
Rohit

On Thu, May 13, 2021 at 10:18 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> From the log log.do_rootfs.31340 file, there are the following:
>
> [1] ERROR: Postinstall scriptlets of ['hostapd'] have failed.
>
> HOSTAP stands for: HOST Access Point Daemon. I could not conclude too much
> from:
> https://en.wikipedia.org/wiki/Hostapd
>
> It is kind of a hot spot, as my best understanding is.
>
> [2] Details of the failure are in
>
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
>
> So, my best guess, looking into log.do_rootfs will tell us much more.
>
> Please, attach this one for our review as well.
>
> Thank you,
> Zoran
> _______
>
> On Wed, May 12, 2021 at 5:29 PM rohit jadhav <rohitbjadhav1@gmail.com>
> wrote:
> >
> > Hi Zoran ,
> > I have attached the log file for your reference.
> > Thank You
> > Regards
> > Rohit
> >
> > On Wed, May 12, 2021 at 7:50 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> > Log file in:
> >> > /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/
> >> > imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/
> >> log.do_rootfs.31340
> >>
> >> Could you, please, attach a log file?
> >>
> >> Thank you,
> >> Zoran
> >> _______
> >>
> >>
> >> On Wed, May 12, 2021 at 2:01 PM rohit jadhav <rohitbjadhav1@gmail.com>
> wrote:
> >>>
> >>> Facing following issue :
> >>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['hostapd'] have failed. If the intention is to defer them to first boot,
> >>> then please place them into pkg_postinst_ontarget_${PN} ().
> >>> Deferring to first boot via 'exit 1' is no longer supported.
> >>> Details of the failure are in
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
> >>> ERROR: Logfile of failure stored in:
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.31340
> >>> ERROR: Task
> (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
> >>>
> >>> Please guide me if anyone have any idea to resolve.
> >>>
> >>> Thanks in advance.
> >>> 
> >>>
>

--000000000000a7b95a05c23030ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Zoran, <br></div><div>=C2=A0=C2=A0 log.do_rootfs.3=
1340is linked to log.do_rootfs I have checked with ls command, So both file=
s are identical.</div><div><br></div><div>While surfing I found similar thr=
ead but its for different package=C2=A0 its as follows :</div><div><a href=
=3D"https://github.com/Xilinx/meta-virtualization/issues/4">https://github=
.com/Xilinx/meta-virtualization/issues/4</a></div><div><br></div><div>Can y=
ou please help out with this for our Package Hostapd ?</div><div><br></div>=
<div>Thanks and Regards</div><div>Rohit<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 13, 2021 at 10=
:18 AM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.=
com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">From the log log.do_rootfs.31340 file, th=
ere are the following:<br>
<br>
[1] ERROR: Postinstall scriptlets of [&#39;hostapd&#39;] have failed.<br>
<br>
HOSTAP stands for: HOST Access Point Daemon. I could not conclude too much=
 from:<br>
<a href=3D"https://en.wikipedia.org/wiki/Hostapd" rel=3D"noreferrer" targe=
t=3D"_blank">https://en.wikipedia.org/wiki/Hostapd</a><br>
<br>
It is kind of a hot spot, as my best understanding is.<br>
<br>
[2] Details of the failure are in<br>
/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x=
14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.<br>
<br>
So, my best guess, looking into log.do_rootfs will tell us much more.<br>
<br>
Please, attach this one for our review as well.<br>
<br>
Thank you,<br>
Zoran<br>
_______<br>
<br>
On Wed, May 12, 2021 at 5:29 PM rohit jadhav &lt;<a href=3D"mailto:rohitbj=
adhav1@gmail.com" target=3D"_blank">rohitbjadhav1@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Hi Zoran ,<br>
&gt; I have attached the log file for your reference.<br>
&gt; Thank You<br>
&gt; Regards<br>
&gt; Rohit<br>
&gt;<br>
&gt; On Wed, May 12, 2021 at 7:50 PM Zoran Stojsavljevic &lt;<a href=3D"ma=
ilto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Log file in:<br>
&gt;&gt; &gt; /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/w=
ork/<br>
&gt;&gt; &gt; imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0=
/temp/<br>
&gt;&gt; log.do_rootfs.31340<br>
&gt;&gt;<br>
&gt;&gt; Could you, please, attach a log file?<br>
&gt;&gt;<br>
&gt;&gt; Thank you,<br>
&gt;&gt; Zoran<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, May 12, 2021 at 2:01 PM rohit jadhav &lt;<a href=3D"mailt=
o:rohitbjadhav1@gmail.com" target=3D"_blank">rohitbjadhav1@gmail.com</a>&gt=
; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Facing following issue :<br>
&gt;&gt;&gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scrip=
tlets of [&#39;hostapd&#39;] have failed. If the intention is to defer them=
 to first boot,<br>
&gt;&gt;&gt; then please place them into pkg_postinst_ontarget_${PN} ().<b=
r>
&gt;&gt;&gt; Deferring to first boot via &#39;exit 1&#39; is no longer sup=
ported.<br>
&gt;&gt;&gt; Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yo=
cto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-im=
age-minimal/1.0-r0/temp/log.do_rootfs.<br>
&gt;&gt;&gt; ERROR: Logfile of failure stored in: /home/tel/imx_yocto_bsp_=
Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/temp/log.do_rootfs.31340<br>
&gt;&gt;&gt; ERROR: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources=
/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with=
 exit code &#39;1&#39;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Please guide me if anyone have any idea to resolve.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks in advance.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;<br>
</blockquote></div>

--000000000000a7b95a05c23030ae--
