Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03ADE01388
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 02:29:28 -0700 (PDT)
Received: by lboj14 with SMTP id j14so403078lbo.35
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 02:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=hQ+QNGIYpJfmua1ACSHfspXZTr+tLM3dcqpYfmkle0w=;
	b=Q9vHyxaZKeaPDMfyAFmyslTzSZveuOd5re7Kl3huKQjwG7sQSi17n09VwDz5kzsbAQ
	8tKrkLg6WZv906OPMNeDl8krnL/ZQg3cUGIqBILxDpw0xAA3IWr8MW91Ph/pjbIEaNJ4
	lAg9c+V83OblGQ3c0AP9cgxShxSGnxEFlTtM2QxjX5hMopDTOmhhCveGobt+NeHaqGi8
	ZYIoPk19NpfRRIAIM0RQNdGOZZK0ULXoWTMWfdP83uNyxOI8mdrwxyfTq0FUhfdnARSE
	7u8sx+QbhwMalOhmsPkAk3r6N/LiNdjZkH0By4B36Pm1DBIsl2W1uWDeXk20SqNaVCFa
	nc2Q==
Received: by 10.152.125.116 with SMTP id mp20mr1812128lab.19.1342517367354;
	Tue, 17 Jul 2012 02:29:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Tue, 17 Jul 2012 02:29:06 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Tue, 17 Jul 2012 11:29:06 +0200
Message-ID: <CANsUPaOcZUzv_bnFbcH1JcnMh1BHvba0LTmD0jHnUM-E9TBesQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl2r8ayOaPZcJFBCPr32E41NGPnJJ+zHL6fqrP6KEDYmpztuY8+ez3OxJyjH5IGwBi1V7yK
Subject: Problem building Yocto Hello World demo on imx53QSB
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Jul 2012 09:29:29 -0000
Content-Type: multipart/alternative; boundary=f46d0435be6ec9368104c5032e2f

--f46d0435be6ec9368104c5032e2f
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I need to deploy a C application that I have made on a Freescale iMX53 QSB.
First I wanted to test the cross-compilation environment building the Hello
World demo but I got some issues.
I made the following steps:

   - download yocto denzil
   - source oe-init-build-env
   - edit local.conf and bblayers.conf files
   - run 'bitbake meta-ide-support'
   - copied the resultant sdk in /opt/poky
   - installed Yocto Eclipse plugin
   - Configured the plugin as following
      - toolchain root location: /opt/poky/1.2.1
      - sysroot
      location: /opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

When I build the project I get the following error:

*Invoking autogen.sh in build directory:
/home/gfoiani/workspace/idea-c-application*
*
*
*Command-line environment variables:*
* CFLAGS=" -g -O0  -march=armv7-a -fno-tree-vectorize     -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
--sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
CXXFLAGS=" -g -O0  -march=armv7-a -fno-tree-vectorize     -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
--sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
LDFLAGS="
--sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"
CPPFLAGS=" -march=armv7-a -fno-tree-vectorize     -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
--sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi"*
*
*
*sh /home/gfoiani/workspace/idea-c-application/autogen.sh
--with-libtool-sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
--target=arm-poky-linux-gnueabi --host=arm-poky-linux-gnueabi
--build=i686-linux
--with-libtool-sysroot=/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
*
*configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
valid shell variable name*
*configure.ac:24: the top level*
*autom4te: m4 failed with exit status: 1*
*aclocal: autom4te failed with exit status: 1*
*configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
valid shell variable name*
*configure.ac:24: the top level*
*autom4te: m4 failed with exit status: 1*
*configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
valid shell variable name*
*configure.ac:24: the top level*
*autom4te: m4 failed with exit status: 1*
*autoheader: '/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/autom4te'
failed with exit status: 1*
*configure.ac:24: error: AC_SUBST: `idea-c-application_CFLAGS' is not a
valid shell variable name*
*configure.ac:24: the top level*
*autom4te: m4 failed with exit status: 1*
*automake: autoconf failed with exit status: 1*
*/home/gfoiani/workspace/idea-c-application/autogen.sh: line 9:
./configure: No such file or directory*
*
*
*Configuration failed with error*
*
*
What Am I doing wrong?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--f46d0435be6ec9368104c5032e2f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I need to deploy a C application that I have made on=
 a Freescale iMX53 QSB.=A0</div><div>First I wanted to test the cross-compi=
lation environment building the Hello World demo but I got some issues.=A0<=
/div>

<div>I made the following steps:</div><div><ul><li>download yocto denzil</l=
i><li>source oe-init-build-env</li><li>edit local.conf and bblayers.conf fi=
les</li><li>run &#39;bitbake meta-ide-support&#39;</li><li>copied the=A0<sp=
an style=3D"font-family:arial,sans-serif;font-size:13px;white-space:nowrap;=
background-color:rgb(255,255,255)">resultant=A0</span>sdk in /opt/poky</li>

<li>installed Yocto Eclipse plugin</li><li>Configured the plugin as followi=
ng</li><ul><li>toolchain root location:=A0/opt/poky/1.2.1</li><li>sysroot l=
ocation:=A0/opt/poky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi</li>

</ul></ul></div><div>When I build the project I get the following error:</d=
iv><div><br></div><div><div><i>Invoking autogen.sh in build directory: /hom=
e/gfoiani/workspace/idea-c-application</i></div><div><i><br></i></div>
<div>
<i>Command-line environment variables:</i></div><div><i><span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span> CFLAGS=3D&quot; -g -O0 =A0-m=
arch=3Darmv7-a -fno-tree-vectorize =A0 =A0 -mthumb-interwork -mfloat-abi=3D=
softfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1.2.1/sysroots=
/armv7a-vfp-neon-poky-linux-gnueabi&quot; CXXFLAGS=3D&quot; -g -O0 =A0-marc=
h=3Darmv7-a -fno-tree-vectorize =A0 =A0 -mthumb-interwork -mfloat-abi=3Dsof=
tfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1.2.1/sysroots/ar=
mv7a-vfp-neon-poky-linux-gnueabi&quot; LDFLAGS=3D&quot; --sysroot=3D/opt/po=
ky/1.2.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&quot; CPPFLAGS=3D&quot=
; -march=3Darmv7-a -fno-tree-vectorize =A0 =A0 -mthumb-interwork -mfloat-ab=
i=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 --sysroot=3D/opt/poky/1.2.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi&quot;</i></div>

<div><i><br></i></div><div><i>sh /home/gfoiani/workspace/idea-c-application=
/autogen.sh --with-libtool-sysroot=3D/opt/poky/1.2.1/sysroots/armv7a-vfp-ne=
on-poky-linux-gnueabi --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-l=
inux-gnueabi --build=3Di686-linux --with-libtool-sysroot=3D/opt/poky/1.2.1/=
sysroots/armv7a-vfp-neon-poky-linux-gnueabi=A0</i></div>

<div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: error: AC_S=
UBST: `idea-c-application_CFLAGS&#39; is not a valid shell variable name</i=
></div><div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: the =
top level</i></div>

<div><i>autom4te: m4 failed with exit status: 1</i></div><div><i>aclocal: a=
utom4te failed with exit status: 1</i></div><div><i><a href=3D"http://confi=
gure.ac:24">configure.ac:24</a>: error: AC_SUBST: `idea-c-application_CFLAG=
S&#39; is not a valid shell variable name</i></div>

<div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: the top lev=
el</i></div><div><i>autom4te: m4 failed with exit status: 1</i></div><div><=
i><a href=3D"http://configure.ac:24">configure.ac:24</a>: error: AC_SUBST: =
`idea-c-application_CFLAGS&#39; is not a valid shell variable name</i></div=
>

<div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: the top lev=
el</i></div><div><i>autom4te: m4 failed with exit status: 1</i></div><div><=
i>autoheader: &#39;/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/auto=
m4te&#39; failed with exit status: 1</i></div>

<div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: error: AC_S=
UBST: `idea-c-application_CFLAGS&#39; is not a valid shell variable name</i=
></div><div><i><a href=3D"http://configure.ac:24">configure.ac:24</a>: the =
top level</i></div>

<div><i>autom4te: m4 failed with exit status: 1</i></div><div><i>automake: =
autoconf failed with exit status: 1</i></div><div><i>/home/gfoiani/workspac=
e/idea-c-application/autogen.sh: line 9: ./configure: No such file or direc=
tory</i></div>

<div><i><br></i></div><div><i>Configuration failed with error</i></div></di=
v><div><i><br></i></div><div>What Am I doing wrong?</div><div><br></div><di=
v>Thanks</div><div><br></div><div>Giovanni</div><div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
</div>

--f46d0435be6ec9368104c5032e2f--
