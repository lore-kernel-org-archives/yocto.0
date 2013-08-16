Return-Path: <erik.boto@pelagicore.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6883AE0073F
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 05:07:14 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id f8so1956857obp.36
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 05:07:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=B6PQxjEWIPH1NVTp+XiUmbbr/TDd2o+Ol+gve0W2/vA=;
	b=fCMYIWajb/qu3sVCBeAh+FiasYi8jhHWojGmb8m5xy1P6x/lFMslHGPAoRcx4WYHRA
	jhu1sqHn5GDs8LBh+phS1vx3jAJXBzXz1EAfwy1W0qn4EOVxvmrMMoe2o7f0E4GxDnim
	ya1fHyfrBmJ/l97KMvdgiG6DxEflVkRDn3mgmNqBvbAKqW1tR6TfUSNBW0nJBVbctzjx
	hsBL9SZXX2OLp38kt12dum0PYcoE3hC+jdP9kpUMEbHF4j/4QvoOjSr9LarGNNHvkTFC
	wyyGbA3XQ6ZcfQ25xZuCweTGT+CLUvWYUnafSInDdN3Hblj1xcIsBCfUIzDlKV8+T390
	zWyg==
X-Gm-Message-State: ALoCoQkYLjvE5lWmlMQP8Lib5Blly2GI2TdX2ost+O6bVCLsvI2LQBk2OzBNrTEc9cZCNpVk/90y
MIME-Version: 1.0
X-Received: by 10.182.144.231 with SMTP id sp7mr1082720obb.14.1376654834348;
	Fri, 16 Aug 2013 05:07:14 -0700 (PDT)
Received: by 10.76.174.6 with HTTP; Fri, 16 Aug 2013 05:07:14 -0700 (PDT)
In-Reply-To: <520E07FD.3010109@mlbassoc.com>
References: <520D564D.5070103@mlbassoc.com>
	<520E07FD.3010109@mlbassoc.com>
Date: Fri, 16 Aug 2013 14:07:14 +0200
Message-ID: <CA+AhUGzi07cSsOrPJB4x1XGYjgiSP0yMzQQF4t6wE6etGa-NiQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Aug 2013 12:07:16 -0000
Content-Type: multipart/alternative; boundary=089e0153686c614a3e04e40f6e64

--089e0153686c614a3e04e40f6e64
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

There's a bug in the bugzilla for this,
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4843 . You can also loo=
k
at a mail thread,
http://lists.openembedded.org/pipermail/openembedded-core/2013-June/080328.=
html
for
some more context.

If you just want to get past it you can do something like the below. It's
not a real fix but a work around.

diff --git a/meta/classes/qemu.bbclass b/meta/classes/qemu.bbclass
index 3d437b0..0f6e882 100644
--- a/meta/classes/qemu.bbclass
+++ b/meta/classes/qemu.bbclass
@@ -30,6 +30,6 @@ def qemu_run_binary(data, rootfs_path, binary):
     libdir =3D rootfs_path + data.getVar("libdir", False)
     base_libdir =3D rootfs_path + data.getVar("base_libdir", False)
-    return "PSEUDO_UNLOAD=3D1 " + qemu_binary + " -L " + rootfs_path\
+    return "PSEUDO_UNLOAD=3D1 " + qemu_binary + " -U LD_PRELOAD -L " +
rootfs_path\
             + " -E LD_LIBRARY_PATH=3D" + libdir + ":" + base_libdir + " "\
             + rootfs_path + binary


Cheers,
Erik Bot=F6



On Fri, Aug 16, 2013 at 1:07 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-08-15 16:29, Gary Thomas wrote:
>
>> I tried to take my existing Poky/Yocto system (using my own $DISTRO
>> which is a derivative of poky) and enable systemd.  I'm using today's
>> master:
>>    meta              =3D "cutting-edge:**ff10f72abda52315b892c64f711096*=
*
>> 772d9a4c1c"
>>
>> Sadly, building the simplest image fails with this error:
>>
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
sbin/poweroff
>> to /sbin/poweroff.sysvinit
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/last
>> to /usr/bin/last.sysvinit
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/mesg
>> to /usr/bin/mesg.sysvinit
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/utmpdump
>> to /usr/bin/utmpdump.sysvinit
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/wall
>> to /usr/bin/wall.sysvinit
>> | ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
>> preloaded: ignored.
>> |  Adding system startup for /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**
>> 0-r0/rootfs/etc/init.d/**systemd-udevd.
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/scp
>> to /usr/sbin/dropbearmulti
>> | update-alternatives: Linking /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**0-r0/rootfs//=
usr/bin/ssh
>> to /usr/sbin/dropbearmulti
>> |  Adding system startup for /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**
>> 0-r0/rootfs/etc/init.d/**dropbear.
>> |  Adding system startup for /local/p60_systemd/tmp/work/**
>> cobra3530p60-amltd-linux-**gnueabi/amltd-console-image/1.**
>> 0-r0/rootfs/etc/init.d/**networking.
>>
>> I wasn't sure what brought in the error so I pasted a number of lines
>> of context.
>>
>> Note: building the same image with 'sysvinit' in DISTRO_FEATURES
>> instead of 'systemd' works fine.
>>
>> Any ideas what's going on here?
>>
>>
> Interesting - this seems to be a host bug.  I got the above error
> when building on Ubuntu 12.04/x86_64.  I do not get the error when
> using Fedora 13/i386.  I've not yet tried any other host.
>
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoprojec=
t.org/listinfo/yocto>
>



--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Erik Bot=F6
Senior Software Engineer
Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)76 881 72 03
E-Mail: erik.boto@pelagicore.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--089e0153686c614a3e04e40f6e64
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=A0<div><br></div><div>There&#39;s a bug in the bugzill=
a for this,=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4843" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D4843</a>=A0. You can also look at a mail thread,=A0<a href=3D"http://li=
sts.openembedded.org/pipermail/openembedded-core/2013-June/080328.html">htt=
p://lists.openembedded.org/pipermail/openembedded-core/2013-June/080328.htm=
l</a>=A0for some more context.=A0</div>
<div><br></div><div>If you just want to get past it you can do something li=
ke the below. It&#39;s not a real fix but a work around.=A0</div><div><div>=
<br></div><div>diff --git a/meta/classes/qemu.bbclass b/meta/classes/qemu.b=
bclass</div>
<div>index 3d437b0..0f6e882 100644</div><div>--- a/meta/classes/qemu.bbclas=
s</div><div>+++ b/meta/classes/qemu.bbclass</div><div>@@ -30,6 +30,6 @@ def=
 qemu_run_binary(data, rootfs_path, binary):</div><div>=A0 =A0 =A0libdir =
=3D rootfs_path + data.getVar(&quot;libdir&quot;, False)</div>
<div>=A0 =A0 =A0base_libdir =3D rootfs_path + data.getVar(&quot;base_libdir=
&quot;, False)</div><div>- =A0 =A0return &quot;PSEUDO_UNLOAD=3D1 &quot; + q=
emu_binary + &quot; -L &quot; + rootfs_path\</div><div>+ =A0 =A0return &quo=
t;PSEUDO_UNLOAD=3D1 &quot; + qemu_binary + &quot; -U LD_PRELOAD -L &quot; +=
 rootfs_path\</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0+ &quot; -E LD_LIBRARY_PATH=3D&quot; + libd=
ir + &quot;:&quot; + base_libdir + &quot; &quot;\</div><div>=A0 =A0 =A0 =A0=
 =A0 =A0 =A0+ rootfs_path + binary</div></div><div><br>
</div><div><br></div><div>Cheers,=A0</div><div>Erik Bot=F6</div><div><br></=
div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Fri, Aug 16, 2013 at 1:07 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 2013-08-15 16:29, Gary =
Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I tried to take my existing Poky/Yocto system (using my own $DISTRO<br>
which is a derivative of poky) and enable systemd. =A0I&#39;m using today&#=
39;s<br>
master:<br>
=A0 =A0meta =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;cutting-edge:<u></u>ff10f7=
2abda52315b892c64f711096<u></u>772d9a4c1c&quot;<br>
<br>
Sadly, building the simplest image fails with this error:<br>
<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//sb=
in/poweroff to /sbin/poweroff.sysvinit<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/last to /usr/bin/last.sysvinit<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/mesg to /usr/bin/mesg.sysvinit<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/utmpdump to /usr/bin/utmpdump.sysvinit<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/wall to /usr/bin/wall.sysvinit<br>
| ERROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot be pre=
loaded: ignored.<br>
| =A0Adding system startup for /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs/etc=
/init.d/<u></u>systemd-udevd.<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/scp to /usr/sbin/dropbearmulti<br>
| update-alternatives: Linking /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs//us=
r/bin/ssh to /usr/sbin/dropbearmulti<br>
| =A0Adding system startup for /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs/etc=
/init.d/<u></u>dropbear.<br>
| =A0Adding system startup for /local/p60_systemd/tmp/work/<u></u>cobra3530=
p60-amltd-linux-<u></u>gnueabi/amltd-console-image/1.<u></u>0-r0/rootfs/etc=
/init.d/<u></u>networking.<br>
<br>
I wasn&#39;t sure what brought in the error so I pasted a number of lines<b=
r>
of context.<br>
<br>
Note: building the same image with &#39;sysvinit&#39; in DISTRO_FEATURES<br=
>
instead of &#39;systemd&#39; works fine.<br>
<br>
Any ideas what&#39;s going on here?<br>
<br>
</blockquote>
<br></div>
Interesting - this seems to be a host bug. =A0I got the above error<br>
when building on Ubuntu 12.04/x86_64. =A0I do not get the error when<br>
using Fedora 13/i386. =A0I&#39;ve not yet tried any other host.<div class=
=3D"HOEnZb"><div class=3D"h5"><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Erik Bot=F6=
<br>Senior Software Engineer<br>Pelagicore AB<br>Ekelundsgatan 4, 6tr, SE-4=
11 18 Gothenburg, Sweden<br>
Mobile: +46 (0)76 881 72 03<br>E-Mail: <a href=3D"mailto:erik.boto@pelagico=
re.com" target=3D"_blank">erik.boto@pelagicore.com</a><br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
</div>

--089e0153686c614a3e04e40f6e64--
