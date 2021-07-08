Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.11866.1625750543908978764
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 06:22:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@acevin-com.20150623.gappssmtp.com header.s=20150623 header.b=gJ3bSRdy;
 spf=none, err=permanent DNS error (domain: acevin.com, ip: 209.85.167.54, mailfrom: sohils@acevin.com)
Received: by mail-lf1-f54.google.com with SMTP id p16so15561433lfc.5
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jul 2021 06:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=acevin-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oRlynAhS1tDUUOv+ivYNWZxvIwKJ99j/Mq6bHWClhnw=;
        b=gJ3bSRdyM6kVwZrOoqVaVUYMxM7eBb4EWWi5oH/crjs+hUqomq5FDzFzHWNja6VzNa
         QW07zormhfFHqbJLSLQcRJ7c1otwfVvyYSQr72F1GeOvzxmA32XOOzF0bSon6GSIMgXo
         z6SWlBTP1pi8fHbC5fP1KVBFXnx1GXH+v4h48llc20cDy34IcxcysvDnH6SB9rTDfPbm
         BORuf9Ybm8N8T/PKmVvVCL/HQS0x3cnonDBqwSyXzPRdx4fd1X5dvHwMRiW5Y+HeNQ28
         Gh6R17Q2JLpkzZVN3fparUGaHpwXTjMvs+Zj5v520+BQsi5nFU8n7iKfiJEP3OCdXY5m
         DnQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oRlynAhS1tDUUOv+ivYNWZxvIwKJ99j/Mq6bHWClhnw=;
        b=B/zUM9F1IU8ILh+37bwUo6M0FyKf5ChEW9/LUVtOhSDChhlz7DF7oDcoEJy9CC7v8A
         ElujzMfiktcKtgwk/642SivYg/I+pzQKec7eVAmJntTDiE/TRnK1eFoh+gssnVMY9ESc
         1dE7vI/s3PqHZKkVfAc6n7oP+N3oMrWZ5f2EeIHuQy4gGC7AVLv5/aK54zUOUQLlyvPr
         CcM3dXp4K9XphmFITXYdtVOSLq00rvA61GtJiBLEs6NNLDvNXwYL8/mW9lfAVqNYUqsa
         N3vZ4THVQbZqJezNBRgL6NuyvnjgEs8lCglUT+X8Tsi968lGtFsRXoZg2aDlgFl7rZDi
         7hoQ==
X-Gm-Message-State: AOAM530/Of7lL420GKFtf596OUT3zw+t9PWfSSU2chrC3JW6XvEU3myi
	0FMOiWdmAPcicKV+F1/46YbH/w37Z7mw86YiEsF65g==
X-Google-Smtp-Source: ABdhPJyywuK02vUql9i6Elz39Y2P0VWipMYvier4ifegq4uL07823uUOlYNnqhracOX9noTLJV2eahjYn0tsHfXfF0Q=
X-Received: by 2002:a2e:b8cc:: with SMTP id s12mr24697015ljp.66.1625750541658;
 Thu, 08 Jul 2021 06:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAOUGpkzEaRMPFUu86F-QLTGe2StVCLkrQP=VLGSG8oq9vxj3KQ@mail.gmail.com>
 <BN6PR16MB3329DC187A67E738E3A0C26DCE1A9@BN6PR16MB3329.namprd16.prod.outlook.com>
In-Reply-To: <BN6PR16MB3329DC187A67E738E3A0C26DCE1A9@BN6PR16MB3329.namprd16.prod.outlook.com>
From: "Sohil Shah" <sohils@acevin.com>
Date: Thu, 8 Jul 2021 18:52:10 +0530
Message-ID: <CAOUGpky-wLFuA7Z+iuSDZzz0tM6=+N0UdanS16W8C4R8_eoj_A@mail.gmail.com>
Subject: Re: [yocto] Question regarding custom device tree update
To: Robert Calhoun <rcalhoun@shotspotter.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000877b4a05c69c8b34"

--000000000000877b4a05c69c8b34
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

Thank you for your reply.
This works and I got my dtb generated in my build directory!

Best wishes,
Sohil


On Wed, Jul 7, 2021 at 10:29 PM Robert Calhoun <rcalhoun@shotspotter.com>
wrote:

> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Sohil Shah <sohils@acevin.com>
> > Sent: Wednesday, June 30, 2021 09:46
> > To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: [yocto] Question regarding custom device tree update
> >
> > (...)
> > I want to build the image using my custom dts file where I enable
> certain peripherals and disable the ones not required. (A test to update
> dtb's in future).
> >
> > I tried different methods found here
> >
> https://stackoverflow.com/questions/38917745/quick-rebuild-of-device-tree-only-with-yocto-bitbake
> >
> > But, I seem to run into some errors when I try to build the image.
> >
> > Please help and let me know if I missed any required information from my
> side.
> >
> >Thank you and Regards,
> > Sohil
>
> Hi Sohil,
>
> First make a custom layer for you modifications and add it to
> bblayers.conf. Then modify your machine definition of KERNEL_DEVICETREE (in
> meta-yourlayer/conf/machine/machinname.conf) to specify multiple device
> trees, e.g.
>
> KERNEL_DEVICETREE = "at91-sama5d27_wlsom1_ek.dtb
> at91-sama5d27_wlsom1_ek_custom.dtb"
>
> Note this should specify the "dtb" (compiled device tree name), not the
> "dts" (source.)
>
> Next, make a .bbappend for your linux recipe that will provide the .dts
> source, something like:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> SRC_URI += " \
>  file://at91-sama5d27_wlsom1_ek_custom.dts;subdir=git/arch/arm/boot/dts \
> "
>
> Make a subdirectory with package name (e.g. linux-yocto) and put your dts
> in there. The "subdir" directive tells bitbake to drop the dts into the
> appropriate directory for the linux build process to find it. The device
> tree(s) will be built along with linux and put in the image's /boot
> directory. You can select which device tree you want to boot with via
> u-boot, or by manipulating the symbolic links in the /boot directory.
>
> Best wishes,
>
> Rob Calhoun

--000000000000877b4a05c69c8b34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Robert,</div><div><br></div><div>Thank you for you=
r reply.</div><div>This works and I got my dtb generated in my build direct=
ory!</div><div><br></div><div>Best wishes,</div><div>Sohil<br></div><div><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Jul 7, 2021 at 10:29 PM Robert Calhoun &lt;<a href=3D"mailt=
o:rcalhoun@shotspotter.com">rcalhoun@shotspotter.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; From: <a href=3D"m=
ailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproj=
ect.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_=
blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Sohil Shah &lt;<a =
href=3D"mailto:sohils@acevin.com" target=3D"_blank">sohils@acevin.com</a>&g=
t;<br>
&gt; Sent: Wednesday, June 30, 2021 09:46<br>
&gt; To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">=
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; Subject: [yocto] Question regarding custom device tree update <br>
&gt;<br>
&gt; (...)<br>
&gt; I want to build the image using my custom dts file where I enable cert=
ain peripherals and disable the ones not required. (A test to update dtb&#3=
9;s in future).<br>
&gt;<br>
&gt; I tried different methods found here<br>
&gt; <a href=3D"https://stackoverflow.com/questions/38917745/quick-rebuild-=
of-device-tree-only-with-yocto-bitbake" rel=3D"noreferrer" target=3D"_blank=
">https://stackoverflow.com/questions/38917745/quick-rebuild-of-device-tree=
-only-with-yocto-bitbake</a><br>
&gt;<br>
&gt; But, I seem to run into some errors when I try to build the image.<br>
&gt;<br>
&gt; Please help and let me know if I missed any required information from =
my side.<br>
&gt;<br>
&gt;Thank you and Regards,<br>
&gt; Sohil<br>
<br>
Hi Sohil,<br>
<br>
First make a custom layer for you modifications and add it to bblayers.conf=
. Then modify your machine definition of KERNEL_DEVICETREE (in meta-yourlay=
er/conf/machine/machinname.conf) to specify multiple device trees, e.g.<br>
<br>
KERNEL_DEVICETREE =3D &quot;at91-sama5d27_wlsom1_ek.dtb at91-sama5d27_wlsom=
1_ek_custom.dtb&quot;<br>
<br>
Note this should specify the &quot;dtb&quot; (compiled device tree name), n=
ot the &quot;dts&quot; (source.)<br>
<br>
Next, make a .bbappend for your linux recipe that will provide the .dts sou=
rce, something like:<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
SRC_URI +=3D &quot; \<br>
=C2=A0file://at91-sama5d27_wlsom1_ek_custom.dts;subdir=3Dgit/arch/arm/boot/=
dts \<br>
&quot;<br>
<br>
Make a subdirectory with package name (e.g. linux-yocto) and put your dts i=
n there. The &quot;subdir&quot; directive tells bitbake to drop the dts int=
o the appropriate directory for the linux build process to find it. The dev=
ice tree(s) will be built along with linux and put in the image&#39;s /boot=
 directory. You can select which device tree you want to boot with via u-bo=
ot, or by manipulating the symbolic links in the /boot directory.<br>
<br>
Best wishes,<br>
<br>
Rob Calhoun</blockquote></div>

--000000000000877b4a05c69c8b34--
