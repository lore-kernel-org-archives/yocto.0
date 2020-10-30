Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.19340.1604086541551540610
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 12:35:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtqsCjjV;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id w11so3452545pll.8
        for <yocto@lists.yoctoproject.org>; Fri, 30 Oct 2020 12:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9QrfU37XTEjLttRVNolN22UvGUOir1BLpFX+sNbb/eo=;
        b=mtqsCjjVgo2CxxyKPMXV9te2Bdz+r6uE6BgJWZhhaeMrSNwK6lOW2DL60UU/GqNcwV
         +Biu5PzcymC74x28ia9jUzN7rjFeBO3EtINPL6GaeX3rRpUdUgdNSop1iAC1BgMFDSJt
         1HxTVJymKNQSD5cNfhqZoHwGVjDU73S8Jo0F0zkF3XvXtNcWrJnhTeHfMYNTXFvCk+xm
         1k30NR5wBzF66dohXe1ti94t/ECbpw7K0zH1XbKRAi1ZnNTQ+9W19jwA7Koe7JSO+WOK
         i2oTqf6560qG+mZ89Xaa/XRBmjjRVZHNV1IYtH4M8OHsPq/GO5xdqkYzTxO4AJ3JX9hV
         +d1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9QrfU37XTEjLttRVNolN22UvGUOir1BLpFX+sNbb/eo=;
        b=podCvhl3kive7MbYnE7+VnB3ubUsy3GuQLMYYsQm1hxZSDvRaQKU8sAS3p6D1WPFYC
         BbrDV5WK0h4dA1ZL37GFfNu9T4/GJg19hmg73OcLZ9fzVDmPUeyyhzPJKnlwxazb3gBc
         v9FVRgLhJbhsucv8XJzguUEhM5ReYrVIZogmcwnffbcR/NTRYuNj/LTtsBHOkXZpsCI4
         d76XRQTYv2lxIXwCnne1XeZH5iatcdIOG4E2SOfKRiUlN31EQh4EkEVIVtK/XzLmXdZE
         WD1SOu9fwVAE5JdgPblN1EcoI5mjk6FXmWUz8o5z05wJbKiS8FzAboRJG/0dF7lahlb3
         c/bQ==
X-Gm-Message-State: AOAM533LracPe3pmXZz1YHMkCZuJb6QNRV8LOtBeTeSzvacfvavy8m9H
	meSJfdnzgQHpE8jtOHLGC0s1hX8TXIGm3rY1kF4=
X-Google-Smtp-Source: ABdhPJyIF8dL3PyRl3fV7GumOGR0G5RQmuBCRsuZe9uM7y70DD37Bc/ghalX4ZmbtSsPc0GAUMXyE676OfdOA0FQiig=
X-Received: by 2002:a17:902:a60c:b029:d5:dc92:a1ca with SMTP id
 u12-20020a170902a60cb02900d5dc92a1camr10641916plq.16.1604086540861; Fri, 30
 Oct 2020 12:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <DC32F424-95C9-4BD6-8AA2-EEE978BDC4E0@sierrawireless.com> <2C643F69-583B-4A22-835F-5D0DAD8A58E3@sierrawireless.com>
In-Reply-To: <2C643F69-583B-4A22-835F-5D0DAD8A58E3@sierrawireless.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Fri, 30 Oct 2020 12:35:29 -0700
Message-ID: <CAB=6tBT22k0rcpEMh2xRGYAQGjrO2SEWZRYoqzWcFj62hQZ22g@mail.gmail.com>
Subject: Re: [yocto] Meta-java - openjdk-8-native - fatal error: sys/sdt.h: No such file or directory
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007505f305b2e8801a"

--0000000000007505f305b2e8801a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have bumbled into a few recipes like that as well. It caused some concern
because bitbake is supposed to avoid contamination like that.

You can use the ERROR_QA variable to do compile-host-path and
install-host-path checks in your distro config. That should produce errors
when something like your issue happens.

..Ch:W..

On Fri, Oct 30, 2020 at 8:56 AM Darcy Watkins <dwatkins@sierrawireless.com=
>
wrote:

> Hi,
>
>
>
> My host OS has systemtap-sdt-devel installed for some reason.  I
> temporarily renamed the sdt.h to get it out of the way and the build wor=
ked.
>
>
>
> If all I have to do is remove that package (and hopefully not need
> something that depends on it) then that works out OK.
>
>
>
> On the other hand, this could be an indication that when building
> openjdk-8-native, the recipe is not properly distinguishing the native
> (target) sysroot versus the host sysroot (for the GCC on the system).  O=
r
> the fact that the buildtools are used doesn=E2=80=99t prevent it from st=
ill
> checking the host system=E2=80=99s sysroot.
>
>
>
> For now, the answer is don=E2=80=99t have systemtap-sdt-devel on your Ce=
ntOS7
> system (or use a docker container without it).
>
>
>
>
>
>
>
> *Regards,*
>
>
>
> *Darcy*
>
>
>
> *Darcy Watkins ::  Senior Staff Engineer, Firmware*
>
>
>
> *SIERRA WIRELESS*
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>
>
>
> *From: *Darcy Watkins <dwatkins@sierrawireless.com>
> *Date: *Thursday, October 29, 2020 at 8:39 AM
> *To: *"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
> *Subject: *Meta-java - openjdk-8-native - fatal error: sys/sdt.h: No suc=
h
> file or directory
>
>
>
> Hi,
>
>
>
> Openjdk-8-native breaks due to some mixup related to sdt.h not found
>
>
>
> Dunfell branch built on CentOS7 with the buildtools installed.
>
>
>
> This is first attempt with dunfell.  Warrior built openjdk-8-native OK
>
>
>
> I remember seeing something like this long ago but I don=E2=80=99t remem=
ber the
> fix.
>
>
>
>
>
> --------
>
>
>
> |
> /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x8=
6_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga/hotspot/src/share/vm/u=
tilities/dtrace.hpp:31:10:
> fatal error: sys/sdt.h: No such file or directory
>
> |    31 | #include <sys/sdt.h>
>
> |       |          ^~~~~~~~~~~
>
> | compilation terminated.
>
> | make[6]: ***
> [/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x=
86_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga/hotspot/make/linux/ma=
kefiles/vm.make:310:
> precompiled.hpp.gch] Error 1
>
> | make[5]: ***
> [/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x=
86_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga/hotspot/make/linux/ma=
kefiles/top.make:119:
> the_vm] Error 2
>
> | make[4]: ***
> [/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x=
86_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga/hotspot/make/linux/Ma=
kefile:284:
> product] Error 2
>
> | make[3]: *** [Makefile:231: generic_build2] Error 2
>
> | make[2]: *** [Makefile:177: product] Error 2
>
> | make[1]: *** [HotspotWrapper.gmk:45:
> /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x8=
6_64-linux/openjdk-8-native/272-r0/build/hotspot/_hotspot.timestamp]
> Error 2
>
> | make: ***
> [/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x=
86_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga//make/Main.gmk:110:
> hotspot-only] Error 2
>
> | WARNING:
> /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x8=
6_64-linux/openjdk-8-native/272-r0/temp/run.do_compile.27136:1
> exit 1 from 'exit 1'
>
> |
>
> ERROR: Task
> (/home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/upstream/yocto/m=
eta-java/recipes-core/openjdk/openjdk-8-native_272.bb:do_compile)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 973 tasks of which 966 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-MG-os/upstream/yocto/me=
ta-java/recipes-core/openjdk/openjdk-8-native_272.bb:
> do_compile
>
> Summary: There was 1 WARNING message shown.
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
>
>
>
>
>
>
>
>
>
> *Regards,*
>
>
>
> *Darcy*
>
>
>
> *Darcy Watkins ::  Senior Staff Engineer, Firmware*
>
>
>
> *SIERRA WIRELESS*
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>
>=20
>
>

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000007505f305b2e8801a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have bumbled into a few recipes like that as well. =
It caused some concern because bitbake is supposed to avoid contamination l=
ike that.</div><div><br></div><div>You can use the ERROR_QA variable to do =
compile-host-path and install-host-path checks in your distro config. That =
should produce errors when something like your issue happens.</div><div><br=
></div><div>..Ch:W..<br></div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Fri, Oct 30, 2020 at 8:56 AM Darcy Watkin=
s &lt;<a href=3D"mailto:dwatkins@sierrawireless.com">dwatkins@sierrawireles=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-CA">
<div class=3D"gmail-m_-3505909838115742910WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My host OS has systemtap-sdt-devel installed for so=
me reason.=C2=A0 I temporarily renamed the sdt.h to get it out of the way a=
nd the build worked.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If all I have to do is remove that package (and hop=
efully not need something that depends on it) then that works out OK.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">On the other hand, this could be an indication that=
 when building openjdk-8-native, the recipe is not properly distinguishing =
the native (target) sysroot versus the host sysroot (for the GCC on the sys=
tem).=C2=A0 Or the fact that the buildtools
 are used doesn=E2=80=99t prevent it from still checking the host system=
=E2=80=99s sysroot.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">For now, the answer is don=E2=80=99t have systemtap=
-sdt-devel on your CentOS7 system (or use a docker container without it).<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span la=
ng=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::=C2=A0=C2=
=A0Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red" lang=3D"EN-US">SIERRA =
WIRELESS</span></b><span style=3D"color:red" lang=3D"EN-US"><u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct=C2=A0 +1 604 233 7989=
=C2=A0 =C2=A0::=C2=A0=C2=A0Fax=C2=A0=C2=A0+1 604 231 1109=C2=A0 ::=C2=A0=
=C2=A0Main=C2=A0=C2=A0+1 604 231 1100<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way=C2=A0 ::=C2=
=
=A0Richmond, BC Canada V6V 3A4<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sie=
rrawireless.com" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">dwat=
kins@sierrawireless.com</span></a>=C2=A0::=C2=A0<a href=3D"http://www.sierr=
awireless.com/" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">www.s=
ierrawireless.com</span></a>
</span><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:rgb(181,196,223) currentcolor currentcolor;bord=
er-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm=
">
<p class=3D"MsoNormal"><b><span style=3D"font-size:12pt;color:black">From:=
 </span></b><span style=3D"font-size:12pt;color:black">Darcy Watkins &lt;<a=
 href=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank">dwatkins@sie=
rrawireless.com</a>&gt;<br>
<b>Date: </b>Thursday, October 29, 2020 at 8:39 AM<br>
<b>To: </b>&quot;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D=
"_blank">yocto@lists.yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto=
@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>=
&gt;<br>
<b>Subject: </b>Meta-java - openjdk-8-native - fatal error: sys/sdt.h: No =
such file or directory<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Openjdk-8-native breaks due to some mixup related t=
o sdt.h not found<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Dunfell branch built on CentOS7 with the buildtools=
 installed.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">This is first attempt with dunfell.=C2=A0 Warrior b=
uilt openjdk-8-native OK<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I remember seeing something like this long ago but =
I don=E2=80=99t remember the fix.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">--------<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">| /home/dwatkins/workspace/zeta/upgrade-yocto_mg90-=
MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/jdk8u-jdk8u272-ga=
/hotspot/src/share/vm/utilities/dtrace.hpp:31:10: fatal error: sys/sdt.h: N=
o such file or directory<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0 31 | #include &lt;sys/sdt.h&gt;=
<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~<u></u><u></u></p>
<p class=3D"MsoNormal">| compilation terminated.<u></u><u></u></p>
<p class=3D"MsoNormal">| make[6]: *** [/home/dwatkins/workspace/zeta/upgra=
de-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/jdk=
8u-jdk8u272-ga/hotspot/make/linux/makefiles/vm.make:310: precompiled.hpp.gc=
h] Error 1<u></u><u></u></p>
<p class=3D"MsoNormal">| make[5]: *** [/home/dwatkins/workspace/zeta/upgra=
de-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/jdk=
8u-jdk8u272-ga/hotspot/make/linux/makefiles/top.make:119: the_vm] Error 2<u=
></u><u></u></p>
<p class=3D"MsoNormal">| make[4]: *** [/home/dwatkins/workspace/zeta/upgra=
de-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/jdk=
8u-jdk8u272-ga/hotspot/make/linux/Makefile:284: product] Error 2<u></u><u><=
/u></p>
<p class=3D"MsoNormal">| make[3]: *** [Makefile:231: generic_build2] Error=
 2<u></u><u></u></p>
<p class=3D"MsoNormal">| make[2]: *** [Makefile:177: product] Error 2<u></=
u><u></u></p>
<p class=3D"MsoNormal">| make[1]: *** [HotspotWrapper.gmk:45: /home/dwatki=
ns/workspace/zeta/upgrade-yocto_mg90-MG-os/build/tmp/work/x86_64-linux/open=
jdk-8-native/272-r0/build/hotspot/_hotspot.timestamp] Error 2<u></u><u></u>=
</p>
<p class=3D"MsoNormal">| make: *** [/home/dwatkins/workspace/zeta/upgrade-=
yocto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/jdk8u-=
jdk8u272-ga//make/Main.gmk:110: hotspot-only] Error 2<u></u><u></u></p>
<p class=3D"MsoNormal">| WARNING: /home/dwatkins/workspace/zeta/upgrade-yo=
cto_mg90-MG-os/build/tmp/work/x86_64-linux/openjdk-8-native/272-r0/temp/run=
.do_compile.27136:1 exit 1 from &#39;exit 1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">| <u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Task (/home/dwatkins/workspace/zeta/upgrade-=
yocto_mg90-MG-os/upstream/yocto/meta-java/recipes-core/openjdk/openjdk-8-na=
tive_272.bb:do_compile) failed with exit code &#39;1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 973 tasks of which 9=
66 didn&#39;t need to be rerun and 1 failed.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 /home/dwatkins/workspace/zeta/upgrade-yocto_=
mg90-MG-os/upstream/yocto/meta-java/recipes-core/openjdk/openjdk-8-native_2=
72.bb:do_compile<u></u><u></u></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<u></u><=
u></u></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returni=
ng a non-zero exit code.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><u></u><=
u></u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::=C2=A0=C2=
=A0Senior Staff Engineer, Firmware</span></b><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red" lang=3D"EN-US">SIERRA =
WIRELESS</span></b><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct=C2=A0 +1 604 233 7989=
=C2=A0 =C2=A0::=C2=A0=C2=A0Fax=C2=A0=C2=A0+1 604 231 1109=C2=A0 ::=C2=A0=
=C2=A0Main=C2=A0=C2=A0+1 604 231 1100</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way=C2=A0 ::=C2=
=
=A0Richmond, BC Canada V6V 3A4</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sie=
rrawireless.com" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">dwat=
kins@sierrawireless.com</span></a>=C2=A0::=C2=A0<a href=3D"http://www.sierr=
awireless.com/" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">www.s=
ierrawireless.com</span></a>
</span><u></u><u></u></p>
</div>
</div>

<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--0000000000007505f305b2e8801a--
