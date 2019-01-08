Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D250E00C5F; Tue,  8 Jan 2019 15:48:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
	[209.85.221.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E0E7E00BC8
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 15:48:01 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id b18so1286301vke.2
	for <yocto@yoctoproject.org>; Tue, 08 Jan 2019 15:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/isNKRjcnBujIlWgWey4TZmviWm/uPA03oLPL3Ij5Uc=;
	b=VVOz5qbH6egcwY/X96NXO2FP/+v1AkRP/z6IqwAxI9asiP3qTiP5CBrxy+pSHMAFfq
	ylmUZ5/vPJ1WWWPM6i0ZwLZ0BQOGJzfbYrGlcBv5jO10a5sNzEYO28r6Mnz74jhzkQno
	i1xn6hWYZKi8RIi3xpHYJ+oEL92HgIGeqVVZqVzLY2aLBIe9m7vTFlryWJAnbJhdsILJ
	udlIs2MPun00ajGZvSbBgt265Fn5WqvJlMSty2Lo/UJ4cGQt5tjO39lVUjzm8rEvXQ3C
	UNRwAE9FEiogwCeRKAdqMsYf+3FSQBZmO/LPnn37L6mWnMukk+vqurod3xMT6+o7LoTM
	8oxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/isNKRjcnBujIlWgWey4TZmviWm/uPA03oLPL3Ij5Uc=;
	b=dQ+sPU7ISIN2tZ3qsqeQL35Dcu2p7MqaaC+S/Q62KZcaiEiUHKew6XEKxN2kbI1Upw
	aoJw8xnzJqP5eh6st728PiyBtMIrCP4vQhjmsmNqTMMKIzUvp1mhk4lrjnLvG/T5/pZJ
	YKm1Sm9CC4Qc4cyTfBmRSYsQHFXt9n+FBg0hdcO7LEd8qSuc6M7vnu+XOniw2KBcdfC3
	fu/im7Dt7H7obWKnakCbdtRXroJIteZPPNlYTcSC5wWUdrqN8FwcLWiW9tEKJauonSuJ
	bbcq2CF2VVi/AZS1KCEzLN51akzkjvlnsTmXTUPnOyNZLTJg6h2XYC/dJ+sAuOhtlsiE
	CSCA==
X-Gm-Message-State: AJcUukeZftdn3L7h3FBICMRQsGXizvxYItkEMqsBEBbWlp4May5XfDZW
	lcQrk+wIPyKZQvwKVKQTqMQqOKdW4yxq/9cwxkNL6RGC
X-Google-Smtp-Source: ALg8bN6WkoNI3E56Ubv36adVz31nl8F827FCglN0OQpg0XukXKIUJ34jlhuwYmBqiqmZq/LyROXPhxtjR+kmuFseVPI=
X-Received: by 2002:a1f:7d02:: with SMTP id y2mr1381097vkc.62.1546991280492;
	Tue, 08 Jan 2019 15:48:00 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Wed, 9 Jan 2019 00:47:49 +0100
Message-ID: <CAKRytNzADpC_185uPi3W+7-fUkKPtOXNp0DLH3_oOf76rPT8fQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Subject: Cannot update dhcpcd receipe from v6.11.5 to v7.x.x
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
X-List-Received-Date: Tue, 08 Jan 2019 23:48:03 -0000
Content-Type: multipart/alternative; boundary="000000000000be9641057efaf927"

--000000000000be9641057efaf927
Content-Type: text/plain; charset="UTF-8"

Hi!
I'm using Yocto THUD and I'm trying to update dhcpcd
(meta-openembedded/meta-networking) from 6.11.5 to 7.0.8 (
https://roy.marples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz) only to do
some experiments, however I think that it's correct to migrate to the new
version.

I modified the recipe to download version 7.0.8, but when it's building it
throws this error:

ERROR: dhcpcd-7.0.8-r0 do_configure: configure failed
ERROR: dhcpcd-7.0.8-r0 do_configure: Function failed: do_configure (log
file is located at
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)
ERROR: Logfile of failure stored in:
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| NOTE: Running ./configure  --build=x86_64-linux
--host=arm-poky-linux-gnueabi    --target=arm-poky-linux-gnueabi
--prefix=/usr    --exec_prefix=/usr    --bindir=/usr/bin
--sbindir=/usr/sbin    --libexecdir=/usr/libexec    --datadir=/usr/share
--sysconfdir=/etc    --sharedstatedir=/com    --localstatedir=/var
--libdir=/usr/lib    --includedir=/usr/include
--oldincludedir=/usr/include    --infodir=/usr/share/info
--mandir=/usr/share/man    --disable-silent-rules
--disable-dependency-tracking
--with-libtool-sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
--enable-ipv4 --disable-static  --enable-ipv6 --with-udev
| configure args: --build=x86_64-linux --host=arm-poky-linux-gnueabi
--target=arm-poky-linux-gnueabi --prefix=/usr --exec_prefix=/usr
--bindir=/usr/bin --sbindir=/usr/sbin --libexecdir=/usr/libexec
--datadir=/usr/share --sysconfdir=/etc --sharedstatedir=/com
--localstatedir=/var --libdir=/usr/lib --includedir=/usr/include
--oldincludedir=/usr/include --infodir=/usr/share/info
--mandir=/usr/share/man --disable-silent-rules
--disable-dependency-tracking
--with-libtool-sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
--enable-ipv4 --disable-static --enable-ipv6 --with-udev
| ./configure: WARNING: unknown option --exec_prefix
| ./configure: WARNING: unknown option --sharedstatedir
| ./configure: WARNING: unknown option --oldincludedir
| ./configure: WARNING: unknown option --with-libtool-sysroot
| ./configure: WARNING: unknown option --with-udev
| Deriving operating system from ... arm-poky-linux-gnueabi
| Configuring dhcpcd for ... linux
| Enabling INET support
| Enabling ARP support
| Enabling ARPing support
| Enabling IPv4LL support
| Enabling INET6 support
| Enabling DHCPv6 support
| Enabling Authentication
| Using compiler .. arm-poky-linux-gnueabi-gcc  -march=armv7ve -mthumb
-mfpu=neon -mfloat-abi=hard -mcpu=cortex-a7
 --sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
| arm-poky-linux-gnueabi-gcc  -march=armv7ve -mthumb -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a7
 --sysroot=/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot
does not create executables
| NOTE: The following config.log files may provide further information.
| NOTE:
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/dhcpcd-7.0.8/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)

Also, the content of "config.log" is :
*       cc1: error: include location "/usr/include" is unsafe for
cross-compilation [-Werror=poison-system-directories]*
       cc1: all warnings being treated as errors

I compared configure files of versions 6.11.5 and 7.0.8 and they are quite
similar with some additions, in particular "-I|--includedir)
INCLUDEDIR="$INCLUDEDIR${INCLUDEDIR:+ }-I$var";;".

In not an expert of autotools and so on, so I don't know how to fix this.
Do you have suggestions?

I added also Khem Raj, but I'm not sure if it's the maintainer of dhcpcd
recipe.

Thank u.

--000000000000be9641057efaf927
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div>I&#39;m using Yocto THUD and I&#39;m trying =
to update dhcpcd (meta-openembedded/meta-networking) from 6.11.5 to 7.0.8 (=
<a href=3D"https://roy.marples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz">h=
ttps://roy.marples.name/downloads/dhcpcd/dhcpcd-7.0.8.tar.xz</a>) only to d=
o some experiments, however I think that it&#39;s correct to migrate to the=
 new version.<div><br></div><div>I modified the recipe to download version =
7.0.8, but when it&#39;s building it throws this error:</div><div><div><br>=
</div><div><div>ERROR: dhcpcd-7.0.8-r0 do_configure: configure failed</div>=
<div>ERROR: dhcpcd-7.0.8-r0 do_configure: Function failed: do_configure (lo=
g file is located at /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-p=
oky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)</div><div>ER=
ROR: Logfile of failure stored in: /home/ks89/git/poky/build/tmp/work/corte=
xa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966=
</div><div>Log data follows:</div><div>| DEBUG: SITE files [&#39;endian-lit=
tle&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;co=
mmon-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linu=
x-gnueabi&#39;, &#39;common&#39;]</div><div>| DEBUG: Executing shell functi=
on autotools_preconfigure</div><div>| DEBUG: Shell function autotools_preco=
nfigure finished</div><div>| DEBUG: Executing python function autotools_acl=
ocals</div><div>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#=
39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;c=
ommon-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;co=
mmon&#39;]</div><div>| DEBUG: Python function autotools_aclocals finished</=
div><div>| DEBUG: Executing shell function do_configure</div><div>| NOTE: R=
unning ./configure=C2=A0 --build=3Dx86_64-linux=C2=A0<span style=3D"white-s=
pace:pre">		</span>=C2=A0 --host=3Darm-poky-linux-gnueabi=C2=A0<span style=
=3D"white-space:pre">		</span>=C2=A0 --target=3Darm-poky-linux-gnueabi=C2=
=A0<span style=3D"white-space:pre">		</span>=C2=A0 --prefix=3D/usr=C2=A0<sp=
an style=3D"white-space:pre">		</span>=C2=A0 --exec_prefix=3D/usr=C2=A0<spa=
n style=3D"white-space:pre">		</span>=C2=A0 --bindir=3D/usr/bin=C2=A0<span =
style=3D"white-space:pre">		</span>=C2=A0 --sbindir=3D/usr/sbin=C2=A0<span =
style=3D"white-space:pre">		</span>=C2=A0 --libexecdir=3D/usr/libexec=C2=A0=
<span style=3D"white-space:pre">		</span>=C2=A0 --datadir=3D/usr/share=C2=
=A0<span style=3D"white-space:pre">		</span>=C2=A0 --sysconfdir=3D/etc=C2=
=A0<span style=3D"white-space:pre">		</span>=C2=A0 --sharedstatedir=3D/com=
=C2=A0<span style=3D"white-space:pre">	</span>=C2=A0 --localstatedir=3D/var=
=C2=A0<span style=3D"white-space:pre">		</span>=C2=A0 --libdir=3D/usr/lib=
=C2=A0<span style=3D"white-space:pre">		</span>=C2=A0 --includedir=3D/usr/i=
nclude=C2=A0<span style=3D"white-space:pre">		</span>=C2=A0 --oldincludedir=
=3D/usr/include=C2=A0<span style=3D"white-space:pre">		</span>=C2=A0 --info=
dir=3D/usr/share/info=C2=A0<span style=3D"white-space:pre">	</span>=C2=A0 -=
-mandir=3D/usr/share/man=C2=A0<span style=3D"white-space:pre">		</span>=C2=
=A0 --disable-silent-rules=C2=A0<span style=3D"white-space:pre">		</span>=
=C2=A0 --disable-dependency-tracking=C2=A0<span style=3D"white-space:pre">	=
	</span>=C2=A0 --with-libtool-sysroot=3D/home/ks89/git/poky/build/tmp/work/=
cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot --enabl=
e-ipv4 --disable-static=C2=A0 --enable-ipv6 --with-udev</div><div>| configu=
re args: --build=3Dx86_64-linux --host=3Darm-poky-linux-gnueabi --target=3D=
arm-poky-linux-gnueabi --prefix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr=
/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/usr/sha=
re --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/var --lib=
dir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D/usr/include -=
-infodir=3D/usr/share/info --mandir=3D/usr/share/man --disable-silent-rules=
 --disable-dependency-tracking --with-libtool-sysroot=3D/home/ks89/git/poky=
/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe=
-sysroot --enable-ipv4 --disable-static --enable-ipv6 --with-udev</div><div=
>| ./configure: WARNING: unknown option --exec_prefix</div><div>| ./configu=
re: WARNING: unknown option --sharedstatedir</div><div>| ./configure: WARNI=
NG: unknown option --oldincludedir</div><div>| ./configure: WARNING: unknow=
n option --with-libtool-sysroot</div><div>| ./configure: WARNING: unknown o=
ption --with-udev</div><div>| Deriving operating system from ... arm-poky-l=
inux-gnueabi</div><div>| Configuring dhcpcd for ... linux</div><div>| Enabl=
ing INET support</div><div>| Enabling ARP support</div><div>| Enabling ARPi=
ng support</div><div>| Enabling IPv4LL support</div><div>| Enabling INET6 s=
upport</div><div>| Enabling DHCPv6 support</div><div>| Enabling Authenticat=
ion</div><div>| Using compiler .. arm-poky-linux-gnueabi-gcc=C2=A0 -march=
=3Darmv7ve -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a7=C2=A0 =
=C2=A0--sysroot=3D/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky=
-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot</div><div>| arm-poky-linux-gn=
ueabi-gcc=C2=A0 -march=3Darmv7ve -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -m=
cpu=3Dcortex-a7=C2=A0 =C2=A0--sysroot=3D/home/ks89/git/poky/build/tmp/work/=
cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot does no=
t create executables</div><div>| NOTE: The following config.log files may p=
rovide further information.</div><div>| NOTE: /home/ks89/git/poky/build/tmp=
/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/dhcpcd-7.0.8/con=
fig.log</div><div>| ERROR: configure failed</div><div>| WARNING: exit code =
1 from a shell command.</div><div>| ERROR: Function failed: do_configure (l=
og file is located at /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-=
poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)</div></div>=
</div><div><br></div><div>Also, the content of &quot;config.log&quot; is :<=
/div><div><div><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0cc1: error: include location &=
quot;/usr/include&quot; is unsafe for cross-compilation [-Werror=3Dpoison-s=
ystem-directories]</b></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0cc1: all warnin=
gs being treated as errors</div></div><div><br></div><div>I compared config=
ure files of versions 6.11.5 and 7.0.8 and they are quite similar with some=
 additions, in particular &quot;-I|--includedir) INCLUDEDIR=3D&quot;$INCLUD=
EDIR${INCLUDEDIR:+ }-I$var&quot;;;&quot;.</div><div><br></div><div>In not a=
n expert of autotools and so on, so I don&#39;t know how to fix this.</div>=
<div>Do you have suggestions?</div><div><br></div><div>I added also Khem Ra=
j, but I&#39;m not sure if it&#39;s the maintainer of dhcpcd recipe.</div><=
div><br></div><div>Thank u.</div></div>

--000000000000be9641057efaf927--
