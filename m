Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 189D1C433FE
	for <webhook@archiver.kernel.org>; Fri, 21 Oct 2022 07:31:46 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web08.7530.1666337502039166066
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Oct 2022 00:31:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=FufR8dOM;
 spf=pass (domain: ventanamicro.com, ip: 209.85.210.179, mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-pf1-f179.google.com with SMTP id i3so1813796pfk.9
        for <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 00:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2m74OCAhT4XIotgyWPBCU8p1lSXv7OzFJYCQjm80wkI=;
        b=FufR8dOMIpOXs5gQ1TYwCESQ41FD9y1DZyKbCWIDmLwmYtOVQsNiY/iy26VRKsMqj0
         v5efZBl3eVbOD4TJ9o6iZP1ajpgt4FGI4QbyCoPdJ7tnytwanpGY+sxaBbbkyxDoU2Y8
         CaKz8bGlJLth/vLa3swmrRwyFi9+ShGJsURmwetqtlQTkfxgSF++P3/eLMWgWkKCpObe
         AG/UiZqdCVuB4Mts2t4jBEEu2Lnh6iVYduLOnbkmbqWw0snHO/lA4e6GAV1t2OkB7g4k
         EyqCIaLmNXI0V7JiZX8qyZ0PFNinq3QyS2V425P5+qXsZFIeo5UcMS3sYDBp4uMUmG3e
         31fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2m74OCAhT4XIotgyWPBCU8p1lSXv7OzFJYCQjm80wkI=;
        b=ocr1G4WMWDOZINj9nZ1JTp1oom96xUb5z4yteN4UCsWBn5/KKwlHkUUmCcIflMh9UV
         4EuFawwgUKATs/MwxXIdYvsjQHXIDek0UAaYFolOsxEfKpQMHDYwthZgkp7ccXxTkZWg
         EcY3HFExHhT8OhD7KtCbkqDBn1se6w/GSbUeYCMgYjSyRq+QL9+HqAJGcyFCkDO6XfYB
         8ZwoWLBacyRIzCaJadWlHB/bSibvImUDLiToWowyIJzrwBDl2SEQx1hV+GL+o6LIoDZw
         zoVkWWSBCLK+8iEY6CrodYqI2X1rzrYAr3JRIniBTtFI8qStTESWH5JaFG5UaQ+GFRT/
         RBgA==
X-Gm-Message-State: ACrzQf0lReYsUUdlxvaj6wc8YGfbc8U5EFfd4BCgubCkWaZFhjGYLv82
	xZOJH+G3p22qw92vPDyZZigAADiFzTCnaYdGHBghyA==
X-Google-Smtp-Source: AMsMyM4Zs6SoMJ4JMs6g2bDnxdWY1DsNaokLwp9ZhtQbFC3r6P3W5tOkC+h9GjbRwvMZRj1Y/+OcIyCP1sajOznedO8=
X-Received: by 2002:a63:e64f:0:b0:43c:9db1:8096 with SMTP id
 p15-20020a63e64f000000b0043c9db18096mr14669492pgj.567.1666337501356; Fri, 21
 Oct 2022 00:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com>
 <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com> <CAGAf8LxrjRbk_YGX0EqYWztVv174xFgsJ_ukOcyTjrkrPSEECQ@mail.gmail.com>
In-Reply-To: <CAGAf8LxrjRbk_YGX0EqYWztVv174xFgsJ_ukOcyTjrkrPSEECQ@mail.gmail.com>
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Fri, 21 Oct 2022 13:01:30 +0530
Message-ID: <CAF=G1t7QcXAeyj8-wZ2grNCMGg7e+x7v7zrn23ozT+u_eP=xFQ@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	Laurent Gauthier <laurent.gauthier@soccasys.com>
Content-Type: multipart/alternative; boundary="000000000000d83c4105eb866e6f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 07:31:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58388

--000000000000d83c4105eb866e6f
Content-Type: text/plain; charset="UTF-8"

Hello Zoran

Yes, i have set INIT_MANAGER ?= "systemd"

it does not related to console but init

Failure logs : -

sh-5.1# ls -l /sbin/init
ls: cannot access '/sbin/init': No such file or directory

sh-5.1# ls -l /lib/systemd/
total 8
drwxr-xr-x 2 root root 4096 Mar  9  2018 system
drwxr-xr-x 2 root root 4096 Mar  9  2018 system-preset


Working Logs (after adding IMAGE_INSTALL = " systemd") :-

root@qemuriscv64:/# ls -l /sbin/init
lrwxrwxrwx 1 root root 22 Mar  9  2018 /sbin/init -> ../lib/systemd/systemd

root@qemuriscv64:/# ls /lib/systemd/
journald.conf.d  system-shutdown  systemd-growfs
 systemd-network-generator  systemd-shutdown  systemd-update-done
libsystemd-shared-250.so  system-sleep  systemd-hibernate-resume
 systemd-networkd  systemd-sleep  systemd-update-helper
logind.conf.d  system.conf.d  systemd-hostnamed
 systemd-networkd-wait-online  systemd-socket-proxyd   systemd-update-utmp
network  systemd  systemd-initctl    systemd-pstore  systemd-sulogin-shell
  systemd-user-runtime-dir
ntp-units.d  systemd-ac-power  systemd-journald    systemd-quotacheck
 systemd-sysctl  systemd-user-sessions
resolv.conf  systemd-backlight  systemd-localed    systemd-random-seed
 systemd-time-wait-sync  systemd-userdbd
system  systemd-boot-check-no-failures  systemd-logind
 systemd-remount-fs  systemd-timedated  systemd-userwork
system-generators  systemd-cgroups-agent  systemd-makefs
 systemd-reply-password  systemd-timesyncd  systemd-vconsole-setup
system-preset  systemd-fsck  systemd-modules-load    systemd-resolved
 systemd-udevd  systemd-volatile-root
root@qemuriscv64:/#


Thank you

Regards
Vaibhav Vivek Deshpande


On Fri, Oct 21, 2022 at 5:18 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > I have added systemd in rootfs by adding
> > MAGE_INSTALL = " systemd" in local.conf
> > and the issue solved is this required for the
> > latest yocto version (kirkstone)?
>
> You did set the INIT_MANAGER ?= "systemd", didn't you?
>
> And how (in which manner) systemd influences the console, or consoles
> setup?
>
> Consoles' setup should be done much earlier then systemd!?
>
> Zee
> _______
>
> On Thu, Oct 20, 2022 at 7:07 PM Vaibhav Deshpande
> <vdeshpande@ventanamicro.com> wrote:
> >
> > Helo
> >
> > I have added systemd in rootfs by adding IMAGE_INSTALL = " systemd" in
> local.conf and the issue solved
> > is this required for the latest yocto version (kirkstone)?
> >
> >
> > Thank you.
> >
> > Regards
> > Vaibhav Vivek Deshpande
> >
> >
> > On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Interesting... Looking into the log massage itself!
> >>
> >> > [    0.000000] Kernel command line: root=/dev/vda2 rootwait
> console=ttyS0 earlycon=uart8250,mmio,0x10000000
> >>
> >> Command line does not specify baud rate... Usually by default it is
> >> 115200. Just a kludge.
> >>
> >> Then:
> >>
> >> > [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options
> '')
> >> > [    0.000000] printk: bootconsole [uart8250] enabled
> >>
> >> bootconsole enabled, seems correct.
> >>
> >> Then:
> >>
> >> > [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing
> disabled
> >> > [    1.648238] printk: console [ttyS0] disabled
> >> > [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166,
> base_baud = 230400) is a 16550A
> >> > [    1.656816] printk: console [ttyS0] enabled
> >> > [    1.656816] printk: console [ttyS0] enabled
> >> > [    1.657728] printk: bootconsole [uart8250] disabled
> >> > [    1.657728] printk: bootconsole [uart8250] disabled
> >>
> >> From what we see that the base baud rate is 230400 (?), everything
> >> else is, seems, correct.
> >>
> >> So, three things, which came adhoc to my mind:
> >> [1] Please, check the baud rate;
> >> [2] Please, check to which group /dev/ttyS0 belongs (root dialout)?
> >> [3] The terminal should be interactive, but no way to check this (from
> >> the logs)???
> >>
> >> My two cent worth answer,
> >> Zee
> >> _______
> >>
> >> On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande
> >> <vdeshpande@ventanamicro.com> wrote:
> >> >
> >> > Hello
> >> >
> >> > I am trying to build a yocto image from the kirkstone branch (
> https://github.com/openembedded/openembedded-core/tree/kirkstone) build
> gets successful but at the time of linux booting I am getting below error.
> >>
> >> ...[snap]...
>

--000000000000d83c4105eb866e6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Zoran<div><br></div><div>Yes, i have set INIT_M=
ANAGER ?=3D &quot;systemd&quot;</div><div><br></div><div>it does not relate=
d=C2=A0to console but init=C2=A0</div><div><br></div><div>Failure=C2=A0logs=
 : -<br></div><div><br></div><div>sh-5.1# ls -l /sbin/init<br>ls: cannot ac=
cess &#39;/sbin/init&#39;: No such file or directory</div><div><br></div><d=
iv>sh-5.1# ls -l /lib/systemd/<br>total 8<br>drwxr-xr-x 2 root root 4096 Ma=
r =C2=A09 =C2=A02018 system<br>drwxr-xr-x 2 root root 4096 Mar =C2=A09 =C2=
=A02018 system-preset<br><br><br>Working Logs (after adding IMAGE_INSTALL =
=3D &quot; systemd&quot;) :-</div><div><br></div><div>root@qemuriscv64:/# l=
s -l /sbin/init <br>lrwxrwxrwx 1 root root 22 Mar =C2=A09 =C2=A02018 /sbin/=
init -&gt; ../lib/systemd/systemd<br></div><div><br></div><div>root@qemuris=
cv64:/# ls /lib/systemd/<br>journald.conf.d		 =C2=A0system-shutdown		 =C2=
=A0systemd-growfs	 =C2=A0 =C2=A0systemd-network-generator	 =C2=A0systemd-sh=
utdown	 =C2=A0systemd-update-done<br>libsystemd-shared-250.so =C2=A0system-=
sleep			 =C2=A0systemd-hibernate-resume =C2=A0systemd-networkd		 =C2=A0syst=
emd-sleep		 =C2=A0systemd-update-helper<br>logind.conf.d		 =C2=A0system.con=
f.d			 =C2=A0systemd-hostnamed	 =C2=A0 =C2=A0systemd-networkd-wait-online =
=C2=A0systemd-socket-proxyd =C2=A0 systemd-update-utmp<br>network			 =C2=A0=
systemd			 =C2=A0systemd-initctl	 =C2=A0 =C2=A0systemd-pstore		 =C2=A0syste=
md-sulogin-shell =C2=A0 systemd-user-runtime-dir<br>ntp-units.d		 =C2=A0sys=
temd-ac-power		 =C2=A0systemd-journald	 =C2=A0 =C2=A0systemd-quotacheck		 =
=C2=A0systemd-sysctl	 =C2=A0systemd-user-sessions<br>resolv.conf		 =C2=A0sy=
stemd-backlight		 =C2=A0systemd-localed	 =C2=A0 =C2=A0systemd-random-seed		=
 =C2=A0systemd-time-wait-sync =C2=A0systemd-userdbd<br>system			 =C2=A0syst=
emd-boot-check-no-failures =C2=A0systemd-logind	 =C2=A0 =C2=A0systemd-remou=
nt-fs		 =C2=A0systemd-timedated	 =C2=A0systemd-userwork<br>system-generator=
s	 =C2=A0systemd-cgroups-agent		 =C2=A0systemd-makefs	 =C2=A0 =C2=A0systemd=
-reply-password	 =C2=A0systemd-timesyncd	 =C2=A0systemd-vconsole-setup<br>s=
ystem-preset		 =C2=A0systemd-fsck			 =C2=A0systemd-modules-load	 =C2=A0 =C2=
=A0systemd-resolved		 =C2=A0systemd-udevd		 =C2=A0systemd-volatile-root<br>=
root@qemuriscv64:/#=C2=A0<br></div><div><br></div><div><br></div><div>Thank=
 you</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards<br></di=
v><div>Vaibhav Vivek Deshpande</div></div></div></div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct=
 21, 2022 at 5:18 AM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsa=
vljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">&gt; I have added systemd i=
n rootfs by adding<br>
&gt; MAGE_INSTALL =3D &quot; systemd&quot; in local.conf<br>
&gt; and the issue solved is this required for the<br>
&gt; latest yocto version (kirkstone)?<br>
<br>
You did set the INIT_MANAGER ?=3D &quot;systemd&quot;, didn&#39;t you?<br>
<br>
And how (in which manner) systemd influences the console, or consoles setup=
?<br>
<br>
Consoles&#39; setup should be done much earlier then systemd!?<br>
<br>
Zee<br>
_______<br>
<br>
On Thu, Oct 20, 2022 at 7:07 PM Vaibhav Deshpande<br>
&lt;<a href=3D"mailto:vdeshpande@ventanamicro.com" target=3D"_blank">vdeshp=
ande@ventanamicro.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Helo<br>
&gt;<br>
&gt; I have added systemd in rootfs by adding IMAGE_INSTALL =3D &quot; syst=
emd&quot; in local.conf and the issue solved<br>
&gt; is this required for the latest yocto version (kirkstone)?<br>
&gt;<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
&gt; Regards<br>
&gt; Vaibhav Vivek Deshpande<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic &lt;<a href=3D"mai=
lto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gm=
ail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Interesting... Looking into the log massage itself!<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: root=3D/dev/vda=
2 rootwait console=3DttyS0 earlycon=3Duart8250,mmio,0x10000000<br>
&gt;&gt;<br>
&gt;&gt; Command line does not specify baud rate... Usually by default it i=
s<br>
&gt;&gt; 115200. Just a kludge.<br>
&gt;&gt;<br>
&gt;&gt; Then:<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] earlycon: uart8250 at MMIO 0x0000000=
010000000 (options &#39;&#39;)<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 0.000000] printk: bootconsole [uart8250] enabl=
ed<br>
&gt;&gt;<br>
&gt;&gt; bootconsole enabled, seems correct.<br>
&gt;&gt;<br>
&gt;&gt; Then:<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.628806] Serial: 8250/16550 driver, 4 ports, =
IRQ sharing disabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.648238] printk: console [ttyS0] disabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.652252] 10000000.uart: ttyS0 at MMIO 0x10000=
000 (irq =3D 166, base_baud =3D 230400) is a 16550A<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.656816] printk: console [ttyS0] enabled<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disab=
led<br>
&gt;&gt; &gt; [=C2=A0 =C2=A0 1.657728] printk: bootconsole [uart8250] disab=
led<br>
&gt;&gt;<br>
&gt;&gt; From what we see that the base baud rate is 230400 (?), everything=
<br>
&gt;&gt; else is, seems, correct.<br>
&gt;&gt;<br>
&gt;&gt; So, three things, which came adhoc to my mind:<br>
&gt;&gt; [1] Please, check the baud rate;<br>
&gt;&gt; [2] Please, check to which group /dev/ttyS0 belongs (root dialout)=
?<br>
&gt;&gt; [3] The terminal should be interactive, but no way to check this (=
from<br>
&gt;&gt; the logs)???<br>
&gt;&gt;<br>
&gt;&gt; My two cent worth answer,<br>
&gt;&gt; Zee<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande<br>
&gt;&gt; &lt;<a href=3D"mailto:vdeshpande@ventanamicro.com" target=3D"_blan=
k">vdeshpande@ventanamicro.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am trying to build a yocto image from the kirkstone branch =
(<a href=3D"https://github.com/openembedded/openembedded-core/tree/kirkston=
e" rel=3D"noreferrer" target=3D"_blank">https://github.com/openembedded/ope=
nembedded-core/tree/kirkstone</a>) build gets successful but at the time of=
 linux booting I am getting below error.<br>
&gt;&gt;<br>
&gt;&gt; ...[snap]...<br>
</blockquote></div>

--000000000000d83c4105eb866e6f--

