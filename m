Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A1A1E0137D
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 03:11:39 -0700 (PDT)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.3.83.0; Tue, 27 Mar 2012 18:10:49 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.3.83.0; Tue, 27 Mar 2012
	18:11:29 +0800
Message-ID: <1332842944.25277.42.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Jack Mitchell <ml@communistcode.co.uk>
Date: Tue, 27 Mar 2012 18:09:04 +0800
In-Reply-To: <4F717F1A.8090108@communistcode.co.uk>
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: who are using archlinux?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Mar 2012 10:11:40 -0000
X-Groupsio-MsgNum: 5576
Content-Type: multipart/mixed; boundary="=-dgB0v8a6i7mhmFoiEb2u"

--=-dgB0v8a6i7mhmFoiEb2u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

thanks your reply, indeed, this is not the first email thread about the
gconf compile problem. it in there only because of no echo.

I have installed python2, and made a symlink in the build directory, and
exported to the env var PATH.

this is the script I used to build (located in the build directory):
	#!/bin/bash
	loc_dir="`pwd`"
	. ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
	export PATH="${loc_dir}:$PATH"
	bitbake $@

OS: x86-64 arch / desktop env: gnome 3.2
local.conf ( modified section ):
	MACHINE ??= "qemux86-64"
	DISTRO ?= "poky-lsb"
	SOURCE_MIRROR_URL = "http://10.10.20.149/optimussources/"
	INHERIT += "own-mirrors"
	BB_GENERATE_MIRROR_TARBALLS = "0"
	INHERIT += "rm_work"
	CCACHE = ""

when build gconf, got error:
 /usr/lib/../lib/libXrandr.so.2: undefined reference to
`memcpy@GLIBC_2.14'
when 'do_compile' at sanity-check step.

the log of do_compile is attached, here is the last cmd (only reserve
rpath):
	../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib

the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in the
command explicitly.

I have add --verbose in the command, and found the ld find it in the
host's rootfs, but it should search it in the sysroot arg.

If remove the rpath arg or with the rpath arg prefixed by sysroot arg, I
can build success. (wich will search the libXrandr in the sysroot arg
correctly)

so I think the error is focused on the `ld' which should search in the
sysroot arg at first for implicit dependended libs, but not host's
rootfs.



On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
> On 27/03/12 03:33, Ni Qingliang wrote:
> > who are using archlinux? I want to talk about gconf compile fail
> > problem.
> >
> >
> 
> I use Archlinux for OE/Yocto, could you post your error so we can get an 
> idea of the problem you are having?
> 
> One note for Archlinux is that it ships Python 3 as default, to you must 
> install Python2 from the repositories then symlink python2 to python in 
> /usb/bin.
> 
> Regards,
> 

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com

--=-dgB0v8a6i7mhmFoiEb2u
Content-Disposition: attachment; filename="do_compile"
Content-Type: text/plain; name="do_compile"; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Description: do_compile

DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-64=
', 'x86_64-linux', 'common']
ERROR: Function failed: do_compile (see /media/pangu/lsbt/tmp/work/x86_64-p=
oky-linux/gconf-3.2.3-r8/temp/log.do_compile.1084 for further information)
NOTE: make
make  all-recursive
make[1]: Entering directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/g=
conf-3.2.3-r8/GConf-3.2.3'
Making all in gconf
make[2]: Entering directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/g=
conf-3.2.3-r8/GConf-3.2.3/gconf'
make  all-am
make[3]: Entering directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/g=
conf-3.2.3-r8/GConf-3.2.3/gconf'
../x86_64-poky-linux-libtool  --tag=3DCC   --mode=3Dlink x86_64-poky-linux-=
gcc    -m64 --sysroot=3D/media/pangu/lsbt/tmp/sysroots/qemux86-64  -O2 -pip=
e -g -feliminate-unused-debug-types -Wall -DGCONF_ENABLE_DEBUG=3D1  -Wl,-O1=
 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o gconf-sanity-check-2 gconf-sanit=
y-check.o libgconf-2.la   -pthread -Wl,--export-dynamic -lgtk-x11-2.0 -lgdk=
-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2=
.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 =
-lgthread-2.0 -lrt -lglib-2.0 -lxml2  =20
x86_64-poky-linux-libtool: link: x86_64-poky-linux-gcc -m64 --sysroot=3D/me=
dia/pangu/lsbt/tmp/sysroots/qemux86-64 -O2 -pipe -g -feliminate-unused-debu=
g-types -Wall -DGCONF_ENABLE_DEBUG=3D1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,-=
-as-needed -o .libs/gconf-sanity-check-2 gconf-sanity-check.o -pthread -Wl,=
--export-dynamic  ./.libs/libgconf-2.so /media/pangu/lsbt/tmp/sysroots/qemu=
x86-64/usr/lib/libdbus-glib-1.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/=
usr/lib/libdbus-1.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libg=
tk-x11-2.0.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libgdk-x11-=
2.0.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libatk-1.0.so /med=
ia/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libpangocairo-1.0.so /media/p=
angu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libpangoft2-1.0.so /media/pangu/l=
sbt/tmp/sysroots/qemux86-64/usr/lib/../lib/libstdc++.so /media/pangu/lsbt/t=
mp/sysroots/qemux86-64/usr/lib/libgdk_pixbuf-2.0.so /media/pangu/lsbt/tmp/s=
ysroots/qemux86-64/usr/lib/libgio-2.0.so -lresolv /media/pangu/lsbt/tmp/sys=
roots/qemux86-64/usr/lib/libcairo.so /media/pangu/lsbt/tmp/sysroots/qemux86=
-64/usr/lib/libpixman-1.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/li=
b/libpng12.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libXrender.=
so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libX11.so /media/pangu=
/lsbt/tmp/sysroots/qemux86-64/usr/lib/libxcb.so /media/pangu/lsbt/tmp/sysro=
ots/qemux86-64/usr/lib/libXau.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/=
usr/lib/libXdmcp.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libpa=
ngo-1.0.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libfontconfig.=
so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libfreetype.so /media/=
pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/libexpat.so /media/pangu/lsbt/tm=
p/sysroots/qemux86-64/usr/lib/libgobject-2.0.so /media/pangu/lsbt/tmp/sysro=
ots/qemux86-64/usr/lib/libffi.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/=
usr/lib/libgmodule-2.0.so /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib=
/libgthread-2.0.so -lpthread /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/=
lib/libglib-2.0.so -lrt /media/pangu/lsbt/tmp/sysroots/qemux86-64/usr/lib/l=
ibxml2.so -ldl -lz -lm -pthread -Wl,-rpath -Wl,/usr/lib/../lib
/usr/lib/../lib/libXrandr.so.2: undefined reference to `memcpy@GLIBC_2.14'
collect2: ld returned 1 exit status
make[3]: *** [gconf-sanity-check-2] Error 1
make[3]: Leaving directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/gc=
onf-3.2.3-r8/GConf-3.2.3/gconf'
make[2]: *** [all] Error 2
make[2]: Leaving directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/gc=
onf-3.2.3-r8/GConf-3.2.3/gconf'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/media/pangu/lsbt/tmp/work/x86_64-poky-linux/gc=
onf-3.2.3-r8/GConf-3.2.3'
make: *** [all] Error 2
ERROR: oe_runmake failed


--=-dgB0v8a6i7mhmFoiEb2u--
