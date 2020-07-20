Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.96.1595265472540006071
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:17:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PFM4ktPT;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: chaithubkts@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id b79so2403124qkg.9
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 10:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lEIXvNff4feb2yvdjiHZk2+blDsoVBT/wOwcG5pIrNU=;
        b=PFM4ktPTrf6wO6xKjQJL+XnlxzsaAiT4VkFwkx1lDG1VEZaJpAj9HAOrzfOJhKtj2h
         DmpfvLkFs8bk08zN6hxDo44GrkPeEgJM1pIhykMP1zOjlCh7RaPYawkqDBeEDq7uCvd9
         fRD0W1kI6A6jAirDKwGRJ751MUB8P7Roqalv7hY9HhFiDrGWg78FbX3vmWUfyJXEIM3f
         zMb9ftL9IAQRS1GouW3AOPbhDWjUMNrBawOj6N2waGJiGlHyB84oPwY6emHYwL2wXMpt
         fBFtvNSETrQwQmGA4B7275P7yWmbUBUHI9z7+XBBR8tw/ROEAqlIuWcs+M73lmVdF/HX
         XVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lEIXvNff4feb2yvdjiHZk2+blDsoVBT/wOwcG5pIrNU=;
        b=T5jmB2VLj4lc5wJAkhEXdgfTmxwVf9IfVFjnEYHs0eTVDiMKj2X6EjIukFo8+lU030
         bY98xon9N36xai9wKgUVkbYGZ5EMS1lNov+Sw/5TCMIB0El6AKIwzTMg1CG7yrDSpDnO
         wtQuWmWe962oX6EOu06fQ4E7ybzZoTzPLgmCk3KtZpKst3vCzRI17+x5STdxrK7lAb0G
         j67HvpDkXraB37MoCA5/XHGFz2RD2Fgnhp3NSQFkmKhwTsJMTnQ1cTEoUPi+SKyqm3Ma
         wKk0YhoznG9M4wXpk7jrr2GM2+bTGv4YADo42rG3tmkNH3+FqaDUR6TmPc5zzbZNzJ02
         sYRA==
X-Gm-Message-State: AOAM532djalctjJsKdIBjn26Ei3KlyZrqS7T28zC8XU8yesRPwgGGiiW
	bzavwpvdPtqmqQyF8blpLQTIabV0hDWJeX7mrxny+5RE
X-Google-Smtp-Source: ABdhPJwViTiFtP4OZ6g/568jVFniuR7g1MSF3B2PH2nKJsEJA43QUSHsLd933id0J1n4m5vg+I/z6guysmpfwCgxF4Q=
X-Received: by 2002:a37:8905:: with SMTP id l5mr21763714qkd.302.1595265470955;
 Mon, 20 Jul 2020 10:17:50 -0700 (PDT)
MIME-Version: 1.0
From: "Krishna" <chaithubkts@gmail.com>
Date: Mon, 20 Jul 2020 22:47:39 +0530
Message-ID: <CAMNBVa2JdPEBkLtkN1ymHHkfe2Tc7cpstWDvcvO4KZ-1FV8Q8g@mail.gmail.com>
Subject: [meta-spdxscanner] [dunfell | sato] | gdk-pixbuf do_compile failure
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b8052405aae2afc5"

--000000000000b8052405aae2afc5
Content-Type: text/plain; charset="UTF-8"

When I build a sato image I am facing an issue with gdk-pixbuf (as shown
below), but when I build the same image without inheriting the
meta-spdxscanner, it works fine.
I see a problem with the SPDX generation for only this particular package.
Even the highlighted resource (below) was accessible and I was able to ping
sourceforge.net from my dev machine.
So no clue on what's causing the issue. Can you please help me to resolve
this issue? Thanks in advance.

*conf/local.conf*
INHERIT += "fossology-rest"
TOKEN = "eyJ0e<...yyxx...>"

INHERIT += "fossdriver-host"
SPDX_DEPLOY_DIR = "/home/spdx-outdir-dunfell"

INHERIT += "scancode-tk"

*Build issue:*
Build Configuration:
BB_VERSION           = "1.46.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "qemuarm"
DISTRO               = "poky"
DISTRO_VERSION       = "3.1"
TUNE_FEATURES        = "arm armv7ve vfp thumb neon callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "dunfell:a44b8d2856a937ca3991cbf566788b0cd541d777"
meta-oe
meta-python          = "dunfell:e413c1ef621688e69bb7830bb3151ed23b30b73e"
meta-spdxscanner     = "master:c731a5f1cc83d9d8a1e120207746c89059d5576f"

Initialising tasks: 100%
|###################################################################################################################################################################|
Time: 0:00:08
Sstate summary: Wanted 108 Found 6 Missed 102 Current 2486 (5% match, 96%
complete)
NOTE: Executing Tasks
ERROR: gdk-pixbuf-2.40.0-r0 do_compile: Execution of
'/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.2120'
failed with exit code 1:
[1/2]
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
FAILED: docs/gdk-pixbuf-csource.1
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
I/O error : Attempt to load network entity
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
warning: failed to load external entity "
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
cannot parse
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
ninja: build stopped: subcommand failed.
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in:
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.2120
Log data follows:
| DEBUG: Executing shell function do_compile
| [1/2]
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
| FAILED: docs/gdk-pixbuf-csource.1
|
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
| I/O error : Attempt to load network entity
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
| warning: failed to load external entity "
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
| cannot parse
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
| ninja: build stopped: subcommand failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.2120'
failed with exit code 1:
| [1/2]
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
| FAILED: docs/gdk-pixbuf-csource.1
|
/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
--nonet --stringparam man.output.quietly 1 --stringparam funcsynopsis.style
ansi --stringparam man.th.extra1.suppress 1 --stringparam
man.authors.section.enabled 0 --stringparam man.copyright.section.enabled 0
-o docs/gdk-pixbuf-csource.1
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml
| I/O error : Attempt to load network entity
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
| warning: failed to load external entity "
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
| cannot parse
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
| ninja: build stopped: subcommand failed.
| WARNING: exit code 1 from a shell command.
|
ERROR: Task
(/home/yocto/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1907 tasks of which 1906 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/yocto/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


-- 
Regards,
Krishna Chaithanya B

--000000000000b8052405aae2afc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div></div><div>When I build a sato image I am facing an issue with <span s=
tyle=3D"font-family:monospace">
<span style=3D"font-family:comic sans ms,sans-serif">gdk-pixbuf</span><span=
 style=3D"font-family:arial,sans-serif"> (as shown below), but when I build=
 the same image without inheriting the <span style=3D"font-family:monospace=
"><span style=3D"font-family:comic sans ms,sans-serif">meta-spdxscanner</sp=
an>,</span> it works fine. <br></span></span></div><div><span style=3D"font=
-family:monospace"><span style=3D"font-family:arial,sans-serif">I
 see a problem with the SPDX generation for only this particular=20
package. Even the highlighted resource (below) was accessible and I was=20
able to ping <a href=3D"http://sourceforge.net" target=3D"_blank">sourcefor=
ge.net</a> from my dev machine.</span></span></div><div><span style=3D"font=
-family:monospace"><span style=3D"font-family:arial,sans-serif">So no clue =
on what&#39;s causing the issue. Can you please help me to resolve this iss=
ue? Thanks in advance.<br></span></span></div><div><span style=3D"font-fami=
ly:monospace"><span style=3D"font-family:arial,sans-serif"><br></span></spa=
n></div><div><span style=3D"font-family:monospace"><span style=3D"font-fami=
ly:arial,sans-serif"><u><b>conf/local.conf</b></u><br></span></span></div><=
div><span style=3D"font-family:monospace">INHERIT +=3D &quot;fossology-rest=
&quot;<br>TOKEN =3D &quot;eyJ0e&lt;...yyxx...&gt;&quot;<br><br>INHERIT +=3D=
 &quot;fossdriver-host&quot;<br>SPDX_DEPLOY_DIR =3D &quot;/home/spdx-outdir=
-dunfell&quot;<br><br>INHERIT +=3D &quot;scancode-tk&quot;</span></div><div=
><br></div><div><u><b>Build issue:</b></u><br></div><div><span style=3D"fon=
t-family:monospace">Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =3D &quot;1.46.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=
=A0 =C2=A0=3D &quot;universal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemuarm&quot;<br>DISTRO =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VE=
RSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;3.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve vfp thumb neon callconvention-hard&q=
uot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<=
br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>meta-po=
ky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;dunfell:a44b8d2856a937ca3991cbf566788b0cd541d777&quot;=
<br>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>meta-python=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:e413c1ef621688e69bb783=
0bb3151ed23b30b73e&quot;<br>meta-spdxscanner =C2=A0 =C2=A0 =3D &quot;master=
:c731a5f1cc83d9d8a1e120207746c89059d5576f&quot;<br><br>Initialising tasks: =
100% |#####################################################################=
###########################################################################=
###################| Time: 0:00:08<br>Sstate summary: Wanted 108 Found 6 Mi=
ssed 102 Current 2486 (5% match, 96% complete)<br>NOTE: Executing Tasks<br>=
<span style=3D"color:rgb(255,0,0)">ERROR: gdk-pixbuf-2.40.0-r0 do_compile: =
Execution of &#39;/home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gn=
ueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.2120&#39; failed with exit c=
ode 1:</span><br>[1/2] /home/yocto/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"color:rgb(255,0,0)">FAILED: docs/gdk-pixbuf-csource.1 </span><br>/hom=
e/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.=
0-r0/recipe-sysroot-native/usr/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"background-color:rgb(255,255,0)">I/O error : Attempt to load network =
entity <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manpag=
es/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/xs=
l/current/manpages/docbook.xsl</a><br>warning: failed to load external enti=
ty &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/manp=
ages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/=
xsl/current/manpages/docbook.xsl</a>&quot;<br>cannot parse <a href=3D"http:=
//docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" target=
=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/doc=
book.xsl</a></span><br><span style=3D"color:rgb(255,0,0)">ninja: build stop=
ped: subcommand failed.<br>WARNING: exit code 1 from a shell command.<br></=
span><br>ERROR: Logfile of failure stored in: /home/yocto/build/tmp/work/ar=
mv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/log.do_compile.=
2120<br>Log data follows:<br>| DEBUG: Executing shell function do_compile<b=
r>| [1/2] /home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gd=
k-pixbuf/2.40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"color:rgb(255,0,0)">| FAILED: docs/gdk-pixbuf-csource.1</span><br>| /=
home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.=
40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"background-color:rgb(255,255,0)">| I/O error : Attempt to load networ=
k entity <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manp=
ages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/=
xsl/current/manpages/docbook.xsl</a><br>| warning: failed to load external =
entity &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/=
manpages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/rele=
ase/xsl/current/manpages/docbook.xsl</a>&quot;<br>| cannot parse <a href=3D=
"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" t=
arget=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpage=
s/docbook.xsl</a></span><br><span style=3D"color:rgb(255,0,0)">| ninja: bui=
ld stopped: subcommand failed.<br>| WARNING: exit code 1 from a shell comma=
nd.</span><br>| ERROR: Execution of &#39;/home/yocto/build/tmp/work/armv7ve=
t2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/temp/run.do_compile.2120&=
#39; failed with exit code 1:<br>| [1/2] /home/yocto/build/tmp/work/armv7ve=
t2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.40.0-r0/recipe-sysroot-native/usr=
/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"color:rgb(255,0,0)">| FAILED: docs/gdk-pixbuf-csource.1</span><br>| /=
home/yocto/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/gdk-pixbuf/2.=
40.0-r0/recipe-sysroot-native/usr/bin/xsltproc
 --nonet --stringparam man.output.quietly 1 --stringparam=20
funcsynopsis.style ansi --stringparam man.th.extra1.suppress 1=20
--stringparam man.authors.section.enabled 0 --stringparam=20
man.copyright.section.enabled 0 -o docs/gdk-pixbuf-csource.1 <a href=3D"htt=
p://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" targe=
t=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpages/do=
cbook.xsl</a> ../gdk-pixbuf-2.40.0/docs/gdk-pixbuf-csource.xml<br><span sty=
le=3D"background-color:rgb(255,255,0)">| I/O error : Attempt to load networ=
k entity <a href=3D"http://docbook.sourceforge.net/release/xsl/current/manp=
ages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/release/=
xsl/current/manpages/docbook.xsl</a><br>| warning: failed to load external =
entity &quot;<a href=3D"http://docbook.sourceforge.net/release/xsl/current/=
manpages/docbook.xsl" target=3D"_blank">http://docbook.sourceforge.net/rele=
ase/xsl/current/manpages/docbook.xsl</a>&quot;<br>| cannot parse <a href=3D=
"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl" t=
arget=3D"_blank">http://docbook.sourceforge.net/release/xsl/current/manpage=
s/docbook.xsl</a></span><br>| ninja: build stopped: subcommand failed.<br>|=
 WARNING: exit code 1 from a shell command.<br>| <br><span style=3D"color:r=
gb(255,0,0)">ERROR: Task (/home/yocto/poky/meta/recipes-gnome/gdk-pixbuf/gd=
k-pixbuf_2.40.0.bb:do_compile) failed with exit code &#39;1&#39;</span><br>=
NOTE: Tasks Summary: Attempted 1907 tasks of which 1906 didn&#39;t need to =
be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/yocto=
/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.40.0.bb:do_compile<br>Summ=
ary: There was 1 ERROR message shown, returning a non-zero exit code.</span=
></div>

<br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><span style=3D"color:rgb(51,51,255)">Regard=
s,</span><span style=3D"color:rgb(51,51,255)"><br>Krishna Chaithanya B</spa=
n></div></div>

--000000000000b8052405aae2afc5--
