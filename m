Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web11.2146.1587390223956816774
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 06:43:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mjo.se, ip: 209.85.222.196, mailfrom: dw@mjo.se)
Received: by mail-qk1-f196.google.com with SMTP id 20so10477356qkl.10
        for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2020 06:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SQssKUXSznQ/FVwGBVu23wD9gwSd9+fpZL10Pks+9UU=;
        b=bHgwe/qQrz/na859Oag2adJ1DmyUNCvyWV5r6h8tVTPTv7WtX4xTCEQAlAvLYy7pMb
         gSqNlUP1x3oMMiYfz385XfUKKEogdVDVxmZ+v+7cVOLihN5vl5L44LZHum8vbsGRifwS
         RCs2H0TMvdapawvPT5hLnXODTeduGzaoeVjh+R3AdzzE0BE868kQrX6kOB7ukyU6mjty
         5l696ew9pcOnkzP6hxI1kgMncw0SRCKPSQ0EYkGTzGWAis+MqbkMDKhxIc/OYHIcd4qj
         7uoHZ04/SKaoI6v+3tEO/0EeUx6Dgt0ZKrtmu0rH95s4hldkkF61vz9pZoMLDmsSfQ7I
         1UFQ==
X-Gm-Message-State: AGi0PuYo4NnWGp6mI1dlR5v1Q3NBQ7SmySY8mkSx1tdVnE9Mmat1FING
	hgOO+HlG3eMIBKM9inHyej2IE0lJoX+vbZ+vGjlSd9D+NYdrTg==
X-Google-Smtp-Source: APiQypLr8bKo3+3FNrJgg6Gwz3EVrVMuWshilfmsUx8Suyr3o0O4wxlfgnjCudOLxlxMoVfxNwQ8ibKu5f5+q0UAsCo=
X-Received: by 2002:a37:71c4:: with SMTP id m187mr16069707qkc.4.1587390221135;
 Mon, 20 Apr 2020 06:43:41 -0700 (PDT)
MIME-Version: 1.0
From: yocto@mjo.se
Date: Mon, 20 Apr 2020 15:43:15 +0200
Message-ID: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
Subject: Autotools bitbake recepie unexpected parameters
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000040494e05a3b91611"

--00000000000040494e05a3b91611
Content-Type: text/plain; charset="UTF-8"

 Hi.

I am trying to add a bitbake recipe for https://github.com/quiet/libfec

This is my libfec/libfec_1.0.bb:







*FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"EXTRA_OECONF =
"--prefix=${D}/usr/local"SRCREV =
"9750ca0a6d0a786b506e44692776b541f90daa91"SRC_URI =
"git://github.com/quiet/libfec.git <http://github.com/quiet/libfec.git>"S =
"${WORKDIR}/git"inherit autotools*

When I bake it (bitbake -c clean libfec && bitbake libfec -v), I get the
following error:



















*ERROR: Function failed: do_install (log file is located at
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/temp/log.do_install.14765)ERROR:
Logfile of failure stored in:
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/temp/log.do_install.14765Log
data follows:| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'arm-32', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']| DEBUG: Executing shell function do_install| + cd
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/build|
+ do_install| + autotools_do_install| + oe_runmake
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install| + oe_runmake_call
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install| + bbnote make -j 8
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install| + echo NOTE: make -j 8
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install| NOTE: make -j 8
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install| + make -j 8
DESTDIR=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image
install|| mkdir -p /usr/lib|| install -m 644 -p libfec.so libfec.a
/usr/lib|| install: cannot create regular file '/usr/lib/libfec.so':
Permission denied*

This seems to be due to configure getting lots of parameters that I have
not actively specified (bindir, sbindir, libexecdir, ...):



















*autoreconf: configure.in <http://configure.in>: not using
Automakeautoreconf: running: gnu-configizeautoreconf: Leaving directory
`.'+ cd
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/build+
[ -e
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
]+ oe_runconf+
cfgscript=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure+
[ -x
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
]+ bbnote Running
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
 --build=x86_64-linux             --host=arm-oe-linux-gnueabi
--target=arm-oe-linux-gnueabi                   --prefix=/usr
    --exec_prefix=/usr              --bindir=/usr/bin
--sbindir=/usr/sbin             --libexecdir=/usr/lib/libfec
 --datadir=/usr/share            --sysconfdir=/etc
--sharedstatedir=/com                   --localstatedir=/var
 --libdir=/usr/lib               --includedir=/usr/include
--oldincludedir=/usr/include            --infodir=/usr/share/info
    --mandir=/usr/share/man                 --disable-silent-rules
         --disable-dependency-tracking
--with-libtool-sysroot=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/sysroots/zynq-soft-nanosdr-mb-v2
--prefix=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local+
echo NOTE: Running
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
 --build=x86_64-linux                 --host=arm-oe-linux-gnueabi
  --target=arm-oe-linux-gnueabi                   --prefix=/usr
      --exec_prefix=/usr              --bindir=/usr/bin
--sbindir=/usr/sbin             --libexecdir=/usr/lib/libfec
 --datadir=/usr/share            --sysconfdir=/etc
--sharedstatedir=/com                   --localstatedir=/var
 --libdir=/usr/lib               --includedir=/usr/include
--oldincludedir=/usr/include            --infodir=/usr/share/info
    --mandir=/usr/share/man                 --disable-silent-rules
         --disable-dependency-tracking
--with-libtool-sysroot=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/sysroots/zynq-soft-nanosdr-mb-v2
--prefix=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/localNOTE:
Running
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
 --build=x86_64-linux                --host=arm-oe-linux-gnueabi
--target=arm-oe-linux-gnueabi                   --prefix=/usr
    --exec_prefix=/usr              --bindir=/usr/bin
--sbindir=/usr/sbin             --libexecdir=/usr/lib/libfec
 --datadir=/usr/share            --sysconfdir=/etc
--sharedstatedir=/com                   --localstatedir=/var
 --libdir=/usr/lib               --includedir=/usr/include
--oldincludedir=/usr/include            --infodir=/usr/share/info
    --mandir=/usr/share/man                 --disable-silent-rules
         --disable-dependency-tracking
--with-libtool-sysroot=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/sysroots/zynq-soft-nanosdr-mb-v2
--prefix=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local+
set +e+
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configure
--build=x86_64-linux --host=arm-oe-linux-gnueabi
--target=arm-oe-linux-gnueabi --prefix=/usr --exec_prefix=/usr
--bindir=/usr/bin --sbindir=/usr/sbin --libexecdir=/usr/lib/libfec
--datadir=/usr/share --sysconfdir=/etc --sharedstatedir=/com
--localstatedir=/var --libdir=/usr/lib --includedir=/usr/include
--oldincludedir=/usr/include --infodir=/usr/share/info
--mandir=/usr/share/man --disable-silent-rules
--disable-dependency-tracking
--with-libtool-sysroot=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/sysroots/zynq-soft-nanosdr-mb-v2
--prefix=/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image/usr/local*

I *think* I need to find why these parameters are passed, and make sure
they are not passed so ./configure can fall back to just using --prefix.
Could anyone give me any hints on how to troubleshoot this?

Best regards
Mikael

--00000000000040494e05a3b91611
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Hi.</div><div><br></div><div>I am trying to add a bitbake recipe for <=
a href=3D"https://github.com/quiet/libfec" target=3D"_blank">https://github=
.com/quiet/libfec</a></div><div><br></div><div>This is my libfec/<a href=3D=
"http://libfec_1.0.bb" target=3D"_blank">libfec_1.0.bb</a>:</div><div><b><s=
pan style=3D"font-family:monospace">FILESEXTRAPATHS_prepend :=3D &quot;${TH=
ISDIR}/${PN}-${PV}:&quot;<br>EXTRA_OECONF =3D &quot;--prefix=3D${D}/usr/loc=
al&quot;<br><br>SRCREV =3D &quot;9750ca0a6d0a786b506e44692776b541f90daa91&q=
uot;<br>SRC_URI =3D &quot;git://<a href=3D"http://github.com/quiet/libfec.g=
it" target=3D"_blank">github.com/quiet/libfec.git</a>&quot;<br>S =3D &quot;=
${WORKDIR}/git&quot;<br><br>inherit autotools</span></b><br></div><div><br>=
</div><div>When I bake it (bitbake -c clean libfec &amp;&amp; bitbake libfe=
c -v), I get the following error:</div><div><b><span style=3D"font-family:m=
onospace">ERROR: Function failed: do_install (log file is located at /home/=
atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linu=
x-gnueabi/libfec/1.0-r0/temp/log.do_install.14765)<br>ERROR: Logfile of fai=
lure stored in: /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/arm=
v7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/temp/log.do_install.14765<br>=
Log data follows:<br>|
 DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-com=
mon&#39;, &#39;arm-32&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]<br>| DEBUG: Executing shell function do_install<br>| + cd=
 /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-=
oe-linux-gnueabi/libfec/1.0-r0/build<br>| + do_install<br>| + autotools_do_=
install<br>| + oe_runmake DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/buil=
d/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image ins=
tall<br>| + oe_runmake_call DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace/bu=
ild/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/image i=
nstall<br>| + bbnote make -j 8 DESTDIR=3D/home/atlas/git/z7000-sdr-gomspace=
/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/imag=
e install<br>| + echo NOTE: make -j 8 DESTDIR=3D/home/atlas/git/z7000-sdr-g=
omspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-=
r0/image install<br>| NOTE: make -j 8 DESTDIR=3D/home/atlas/git/z7000-sdr-g=
omspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-=
r0/image install<br>| + make -j 8 DESTDIR=3D/home/atlas/git/z7000-sdr-gomsp=
ace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/i=
mage install<br>|<br>| mkdir -p /usr/lib<br>|<br>| install -m 644 -p libfec=
.so libfec.a /usr/lib<br>|<br>| install: cannot create regular file &#39;/u=
sr/lib/libfec.so&#39;: Permission denied</span></b></div><div><br></div><di=
v>This
 seems to be due to configure getting lots of parameters that I have not
 actively specified (bindir, sbindir, libexecdir, ...):</div><div><br></div=
><div><b><span style=3D"font-family:monospace">autoreconf: <a href=3D"http:=
//configure.in" target=3D"_blank">configure.in</a>: not using Automake<br>a=
utoreconf: running: gnu-configize<br><br>autoreconf: Leaving directory `.&#=
39;<br><br>+ cd /home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/arm=
v7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/build<br>+ [ -e /home/atlas/g=
it/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnuea=
bi/libfec/1.0-r0/git/configure ]<br>+ oe_runconf<br>+ cfgscript=3D/home/atl=
as/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-g=
nueabi/libfec/1.0-r0/git/configure<br>+ [ -x /home/atlas/git/z7000-sdr-goms=
pace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/=
git/configure ]<br><br>+ bbnote Running /home/atlas/git/z7000-sdr-gomspace/=
build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/c=
onfigure =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --host=3Darm-oe-linux-gnueabi<br>=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/usr =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_prefix=3D/u=
sr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/usr/bin =C2=
=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 --libexecdir=3D/usr/lib/libfec =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0--sysconfdir=3D/etc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=20
--sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 --localstatedir=3D/var =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
=C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
--includedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
 --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--=
infodir=3D/usr/share/info =C2=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-silent-rules =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependenc=
y-tracking =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=20
--with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc=
/sysroots/zynq-soft-nanosdr-mb-v2 --prefix=3D/home/atlas/git/z7000-sdr-goms=
pace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/=
image/usr/local<br>+ echo NOTE: Running /home/atlas/git/z7000-sdr-gomspace/=
build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/c=
onfigure =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 --host=3Darm-oe-linux-gnueabi<br>=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/usr
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_pref=
ix=3D/usr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/usr/b=
in =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 --libexecdir=3D/usr/lib/libfec =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0--sysconfdir=3D/etc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
 --sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 --localstatedir=3D/var =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
=C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
--includedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
 --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--=
infodir=3D/usr/share/info =C2=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-silent-rules =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependenc=
y-tracking =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=20
--with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc=
/sysroots/zynq-soft-nanosdr-mb-v2 --prefix=3D/home/atlas/git/z7000-sdr-goms=
pace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/=
image/usr/local<br>NOTE: Running /home/atlas/git/z7000-sdr-gomspace/build/t=
mp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configur=
e =C2=A0--build=3Dx86_64-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0--host=3Darm-oe-linux-gnueabi<br>=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --target=3Darm-oe-linux-gnueabi =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D/usr =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_prefix=3D/u=
sr =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--bindir=3D/usr/bin =C2=
=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --sbindir=3D/usr/sbin =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 --libexecdir=3D/usr/lib/libfec =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0--datadir=3D/usr/share =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0--sysconfdir=3D/etc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=20
--sharedstatedir=3D/com =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 --localstatedir=3D/var =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
=C2=A0--libdir=3D/usr/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
--includedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
 --oldincludedir=3D/usr/include =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--=
infodir=3D/usr/share/info =C2=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --mandir=3D/usr/share/man =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-silent-rules =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-dependenc=
y-tracking =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=20
--with-libtool-sysroot=3D/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc=
/sysroots/zynq-soft-nanosdr-mb-v2 --prefix=3D/home/atlas/git/z7000-sdr-goms=
pace/build/tmp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/=
image/usr/local<br>+ set +e<br>+ /home/atlas/git/z7000-sdr-gomspace/build/t=
mp-glibc/work/armv7ahf-vfp-neon-oe-linux-gnueabi/libfec/1.0-r0/git/configur=
e
 --build=3Dx86_64-linux --host=3Darm-oe-linux-gnueabi=20
--target=3Darm-oe-linux-gnueabi --prefix=3D/usr --exec_prefix=3D/usr=20
--bindir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/lib/libfec=20
--datadir=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com=20
--localstatedir=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include=20
--oldincludedir=3D/usr/include --infodir=3D/usr/share/info=20
--mandir=3D/usr/share/man --disable-silent-rules=20
--disable-dependency-tracking --with-libtool-sysroot=3D/home/atlas/git/z700=
0-sdr-gomspace/build/tmp-glibc/sysroots/zynq-soft-nanosdr-mb-v2 --prefix=3D=
/home/atlas/git/z7000-sdr-gomspace/build/tmp-glibc/work/armv7ahf-vfp-neon-o=
e-linux-gnueabi/libfec/1.0-r0/image/usr/local</span></b><br><br></div><div>=
I <i>think</i>
 I need to find why these parameters are passed, and make sure they are=20
not passed so ./configure can fall back to just using --prefix.</div><div>C=
ould anyone give me any hints on how to troubleshoot this?</div><div><br></=
div><div>Best regards</div><font color=3D"#888888"><div>Mikael</div></font>

</div>

--00000000000040494e05a3b91611--
