Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6401DE01480
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 01:27:08 -0700 (PDT)
Received: from horus27 (127.0.0.1) by horus27 (Axigen) with ESMTPSA id 01C135; 
	Fri, 9 Aug 2013 10:27:00 +0200
Received: from [172.30.250.254] by horus.es with HTTP;
	Fri, 9 Aug 2013 10:27:00 +0200
From: Diego Gonzalez <diego.gonzalez@horus.es>
Date: Fri, 9 Aug 2013 10:27:00 +0200
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1376036820114488500@horus.es>
Importance: Normal
MIME-Version: 1.0
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: glxdricommon.c error
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
X-List-Received-Date: Fri, 09 Aug 2013 08:27:17 -0000
Content-Type: multipart/alternative;
	boundary="===axigen=4579936458753763214067436913999161471169=axigen==="

--===axigen=4579936458753763214067436913999161471169=axigen===
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


Good Morning,

I have an issue compiling fsl-image-gui. I just changed to another PC and w=
hen I bitbake my compilation I get  this message:

arm-poky-linux-gnueabi-libtool: compile:  arm-poky-linux-gnueabi-gcc=20
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon=20
-mtune=3Dcortex-a9=20
--sysroot=3D/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite=20
-std=3Dgnu99 -DHAVE_CONFIG_H -I. -I../include -I../hw/xfree86/os-support=20
-I../hw/xfree86/os-support/bus -I../hw/xfree86/common=20
-I../hw/xfree86/dri -I../mi -I../hw/xfree86/dri2 -DHAVE_DIX_CONFIG_H=20
-Wall -Wpointer-arith -Wmissing-declarations -Wformat=3D2=20
-Wstrict-prototypes -Wmissing-prototypes -Wnested-externs=20
-Wbad-function-cast -Wold-style-definition -Wdeclaration-after-statement
 -Wunused -Wuninitialized -Wshadow -Wcast-qual -Wmissing-noreturn=20
-Wmissing-format-attribute -Wredundant-decls -Werror=3Dimplicit=20
-Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-brac=
es=20
-Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs=20
-Werror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress=20
-Werror=3Dint-to-pointer-cast -Werror=3Dpointer-to-int-cast=20
-fno-strict-aliasing -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/pix=
man-1
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/fre=
etype2
 -I../include -I../include -I../Xext -I../composite -I../damageext=20
-I../xfixes -I../Xi -I../mi -I../miext/sync -I../miext/shadow=20
-I../miext/damage -I../render -I../randr -I../fb -fvisibility=3Dhidden=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/lib=
drm
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/lib=
drm
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/X11=
/dri
 -DGLX_USE_TLS -DPTHREADS -O2 -pipe -g -feliminate-unused-debug-types -c
 glxscreens.c  -fPIC -DPIC -o .libs/glxscreens.o
In file included from ../include/dixstruct.h:28:0,
                 from glxserver.h:42,
                 from glxcmds.c:38:
../include/dix.h:532:22: warning: redundant redeclaration of 'ffs' [-Wredun=
dant-decls]
In file included from ../include/dixstruct.h:28:0,
                 from glxserver.h:42,
                 from glxdricommon.c:38:
../include/dix.h:532:22: warning: redundant redeclaration of 'ffs' [-Wredun=
dant-decls]
glxdricommon.c: In function 'createModeFromConfig':
glxdricommon.c:141:32: error: 'GLX_RGBA_BIT' undeclared (first use in this =
function)
glxdricommon.c:141:32: note: each undeclared identifier is reported only on=
ce for each function it appears in
glxdricommon.c:143:32: error: 'GLX_COLOR_INDEX_BIT' undeclared (first use i=
n this function)
glxdricommon.c:147:33: error: 'GLX_NON_CONFORMANT_CONFIG' undeclared (first=
 use in this function)
glxdricommon.c:149:33: error: 'GLX_SLOW_CONFIG' undeclared (first use in th=
is function)
glxdricommon.c:151:33: error: 'GLX_NONE' undeclared (first use in this func=
tion)
glxdricommon.c:156:42: error: 'GLX_TEXTURE_1D_BIT_EXT' undeclared (first us=
e in this function)
glxdricommon.c:158:42: error: 'GLX_TEXTURE_2D_BIT_EXT' undeclared (first us=
e in this function)
glxdricommon.c:160:42: error: 'GLX_TEXTURE_RECTANGLE_BIT_EXT' undeclared (f=
irst use in this function)
glxdricommon.c: In function 'glxConvertConfigs':
glxdricommon.c:188:20: error: 'GLX_TRUE_COLOR' undeclared (first use in thi=
s function)
glxdricommon.c:198:20: error: 'GLX_DIRECT_COLOR' undeclared (first use in t=
his function)
glxdricommon.c: In function 'glxProbeDriver':
glxdricommon.c:241:14: warning: cast discards '__attribute__((const))' qual=
ifier from pointer target type [-Wcast-qual]
glxdricommon.c:246:16: warning: cast discards '__attribute__((const))' qual=
ifier from pointer target type [-Wcast-qual]
make[1]: *** [glxdricommon.lo] Error 1

I'm so confused because in another PC with the same Ubuntu Distribution  I =
did't have this problem. Any Ideas?

Thank you in advance!




--===axigen=4579936458753763214067436913999161471169=axigen===
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style id=3D"axi-htmleditor-style" type=3D"text/css">p { margin=
: 0px; }</style></head><body style=3D"font-size: 10pt; font-family: Arial; =
background-image: none; background-repeat: repeat; background-attachment: f=
ixed;"><br><div><div><div style=3D"font-family: Arial; font-size: 10pt;"><s=
tyle id=3D"axi-htmleditor-style" type=3D"text/css">p { margin: 0px</style>G=
ood Morning,<br><br>I have an issue compiling fsl-image-gui. I just changed=
 to another PC and when I bitbake my compilation I get&nbsp; this message:<=
br><br>arm-poky-linux-gnueabi-libtool: compile:&nbsp; arm-poky-linux-gnueab=
i-gcc=20
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon=20
-mtune=3Dcortex-a9=20
--sysroot=3D/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite=20
-std=3Dgnu99 -DHAVE_CONFIG_H -I. -I../include -I../hw/xfree86/os-support=20
-I../hw/xfree86/os-support/bus -I../hw/xfree86/common=20
-I../hw/xfree86/dri -I../mi -I../hw/xfree86/dri2 -DHAVE_DIX_CONFIG_H=20
-Wall -Wpointer-arith -Wmissing-declarations -Wformat=3D2=20
-Wstrict-prototypes -Wmissing-prototypes -Wnested-externs=20
-Wbad-function-cast -Wold-style-definition -Wdeclaration-after-statement
 -Wunused -Wuninitialized -Wshadow -Wcast-qual -Wmissing-noreturn=20
-Wmissing-format-attribute -Wredundant-decls -Werror=3Dimplicit=20
-Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-brac=
es=20
-Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs=20
-Werror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress=20
-Werror=3Dint-to-pointer-cast -Werror=3Dpointer-to-int-cast=20
-fno-strict-aliasing -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/pix=
man-1
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/fre=
etype2
 -I../include -I../include -I../Xext -I../composite -I../damageext=20
-I../xfixes -I../Xi -I../mi -I../miext/sync -I../miext/shadow=20
-I../miext/damage -I../render -I../randr -I../fb -fvisibility=3Dhidden=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/lib=
drm
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/lib=
drm
=20
-I/home/dgg/rootfs_buider/build/tmp/sysroots/imx6qsabrelite/usr/include/X11=
/dri
 -DGLX_USE_TLS -DPTHREADS -O2 -pipe -g -feliminate-unused-debug-types -c
 glxscreens.c&nbsp; -fPIC -DPIC -o .libs/glxscreens.o<br>In file included f=
rom ../include/dixstruct.h:28:0,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from glxserver.h:=
42,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from glxcmds.c:38:<br>../include/dix.h:532:22:=
 warning: redundant redeclaration of 'ffs' [-Wredundant-decls]<br>In file i=
ncluded from ../include/dixstruct.h:28:0,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from glx=
server.h:42,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from glxdricommon.c:38:<br>../include=
/dix.h:532:22: warning: redundant redeclaration of 'ffs' [-Wredundant-decls=
]<br>glxdricommon.c: In function 'createModeFromConfig':<br>glxdricommon.c:=
141:32: error: 'GLX_RGBA_BIT' undeclared (first use in this function)<br>gl=
xdricommon.c:141:32: note: each undeclared identifier is reported only once=
 for each function it appears in<br>glxdricommon.c:143:32: error: 'GLX_COLO=
R_INDEX_BIT' undeclared (first use in this function)<br>glxdricommon.c:147:=
33: error: 'GLX_NON_CONFORMANT_CONFIG' undeclared (first use in this functi=
on)<br>glxdricommon.c:149:33: error: 'GLX_SLOW_CONFIG' undeclared (first us=
e in this function)<br>glxdricommon.c:151:33: error: 'GLX_NONE' undeclared =
(first use in this function)<br>glxdricommon.c:156:42: error: 'GLX_TEXTURE_=
1D_BIT_EXT' undeclared (first use in this function)<br>glxdricommon.c:158:4=
2: error: 'GLX_TEXTURE_2D_BIT_EXT' undeclared (first use in this function)<=
br>glxdricommon.c:160:42: error: 'GLX_TEXTURE_RECTANGLE_BIT_EXT' undeclared=
 (first use in this function)<br>glxdricommon.c: In function 'glxConvertCon=
figs':<br>glxdricommon.c:188:20: error: 'GLX_TRUE_COLOR' undeclared (first use in this function)<br>glxdri=
common.c:198:20: error: 'GLX_DIRECT_COLOR' undeclared (first use in this fu=
nction)<br>glxdricommon.c: In function 'glxProbeDriver':<br>glxdricommon.c:=
241:14: warning: cast discards '__attribute__((const))' qualifier from poin=
ter target type [-Wcast-qual]<br>glxdricommon.c:246:16: warning: cast disca=
rds '__attribute__((const))' qualifier from pointer target type [-Wcast-qua=
l]<br>make[1]: *** [glxdricommon.lo] Error 1<br><br>I'm so confused because=
 in another PC with the same Ubuntu Distribution&nbsp; I did't have this pr=
oblem. Any Ideas?<br><br>Thank you in advance!<br><div class=3D"x-axi-signa=
ture"><br><div class=3D"x-axi-signature" style=3D"; font-size: 10pt; font-f=
amily: Arial;"><br><br></div></div></div></div></div></body></html>

--===axigen=4579936458753763214067436913999161471169=axigen===--
