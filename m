Return-Path: <abhishek.embsys@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28FECE0099B; Tue,  7 Apr 2015 21:11:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abhishek.embsys[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E02C2E0099A
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 21:11:43 -0700 (PDT)
Received: by labbd9 with SMTP id bd9so45538042lab.2
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 21:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=BN6Nu9hp4HPqU79glBN9Apu+WIZ4EMNlEwe1MGIqoNM=;
	b=f6VCTf9rlq3xcupWpHZW6RWwY2XvCHXj7vjVZSqn0Zr7GZl0y9roa47cMHwaME7Dfi
	jQNXX8mYPl5Irj5PuQEdqng6cXoI/XHGwYbR+g4lgc3E28mdUGCArGS0xyrHUfEqGL9C
	ReIzniTy+D22qfiW7iwCyR2mskIWSWHDdVRUQvusiI6rF9Ry3J/cNg/IFehqRBKymeQ+
	YpSjW5FXf1OGJj/aac7ylaKgqOeJoCV3sEPn3EDwgVpQI6b76ix2bo+M5VRZmJCkSHIt
	fx+7LSCN7yksxlL3CAlsMSBVBIkacj1NmG23zSW7okviRvU+C8rr5aunJZrxHw76esEt
	8aKA==
MIME-Version: 1.0
X-Received: by 10.112.166.36 with SMTP id zd4mr21513831lbb.59.1428466301102;
	Tue, 07 Apr 2015 21:11:41 -0700 (PDT)
Received: by 10.25.159.202 with HTTP; Tue, 7 Apr 2015 21:11:41 -0700 (PDT)
Date: Wed, 8 Apr 2015 09:41:41 +0530
Message-ID: <CAGj-b5L8M2DVfmE-8v62mdW5vdi9T7LM7061WJC6gXJ1oOZwHw@mail.gmail.com>
From: abhishek srivastava <abhishek.embsys@gmail.com>
To: yocto@yoctoproject.org
Subject: error on gtk-sato-engine
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
X-List-Received-Date: Wed, 08 Apr 2015 04:11:46 -0000
Content-Type: multipart/alternative; boundary=001a11c3849c73704c05132ebaba

--001a11c3849c73704c05132ebaba
Content-Type: text/plain; charset=UTF-8

Hi
Please help me to find solution of this error in yocto-dizzy for
raspberrypi

Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
| make  all-am
| make[1]: Entering directory
`/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-linux-gnueabi/gtk-sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/build'
| ./arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=link
arm-poky-linux-gnueabi-gcc  -march=armv6 -mthumb-interwork
-mfloat-abi=softfp  -mfpu=vfp
--sysroot=/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi  -O2
-pipe -g -feliminate-unused-debug-types -module -avoid-version
-no-undefined -Werror -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o
libsato-engine.la -rpath /usr/lib/gtk-2.0/2.10.0/engines sato-draw.lo
sato-draw-cairo.lo sato-main.lo sato-style.lo sato-utils.lo -lgtk-x11-2.0
-lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0
-lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype
| make[1]: *** No rule to make target `data/gtkrc', needed by `all-am'.
Stop.
| make[1]: *** Waiting for unfinished jobs....
| arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc
-march=armv6 -mthumb-interwork -mfloat-abi=softfp  -mfpu=vfp
--sysroot=/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi
-shared  -fPIC -DPIC  .libs/sato-draw.o .libs/sato-draw-cairo.o
.libs/sato-main.o .libs/sato-style.o .libs/sato-utils.o
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgtk-x11-2.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgdk-x11-2.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libpangocairo-1.0.so -L=/usr/lib
-L/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libharfbuzz.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libatk-1.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libcairo.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libpixman-1.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb-shm.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb-render.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXrender.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXext.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libX11.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXau.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXdmcp.so
-lrt /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgdk_pixbuf-2.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libpng16.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgio-2.0.so -lz -lresolv
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libpangoft2-1.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libpango-1.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgmodule-2.0.so -ldl
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgthread-2.0.so -lm
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libgobject-2.0.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libffi.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/
libglib-2.0.so -lpthread
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libfontconfig.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libexpat.so
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libfreetype.so
-march=armv6 -mthumb-interwork -mfloat-abi=softfp -mfpu=vfp
--sysroot=/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi -O2
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed   -pthread -Wl,-soname
-Wl,libsato-engine.so -o .libs/libsato-engine.so
| arm-poky-linux-gnueabi-libtool: link: ( cd ".libs" && rm -f "
libsato-engine.la" && ln -s "../libsato-engine.la" "libsato-engine.la" )
| make[1]: Leaving directory
`/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-linux-gnueabi/gtk-sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-linux-gnueabi/gtk-sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/temp/log.do_compile.23728)
ERROR: Task 2592
(/home/abhi/yocto_new/poky-dizzy-12.0.1/meta-yphone/recipes-yphone/gtk-engines/
gtk-sato-engine_git.bb, do_compile) failed with exit code '1'

--001a11c3849c73704c05132ebaba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi<br></div>Please help me to find solution of this e=
rror in yocto-dizzy for raspberrypi <br><br>Log data follows:<br>| DEBUG: S=
ITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;,=
 &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;=
arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell funct=
ion do_compile<br>| NOTE: make -j 4<br>| make=C2=A0 all-am<br>| make[1]: En=
tering directory `/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-=
linux-gnueabi/gtk-sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/build&#39;<br>=
| ./arm-poky-linux-gnueabi-libtool=C2=A0 --tag=3DCC=C2=A0=C2=A0 --mode=3Dli=
nk arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv6 -mthumb-interwork -mfloa=
t-abi=3Dsoftfp=C2=A0 -mfpu=3Dvfp --sysroot=3D/home/abhi/yocto_new/build-diz=
zy/tmp/sysroots/raspberrypi=C2=A0 -O2 -pipe -g -feliminate-unused-debug-typ=
es -module -avoid-version -no-undefined -Werror -Wl,-O1 -Wl,--hash-style=3D=
gnu -Wl,--as-needed -o <a href=3D"http://libsato-engine.la" target=3D"_blan=
k">libsato-engine.la</a> -rpath /usr/lib/gtk-2.0/2.10.0/engines sato-draw.l=
o sato-draw-cairo.lo sato-main.lo sato-style.lo sato-utils.lo -lgtk-x11-2.0=
 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.=
0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreety=
pe<br>| make[1]: *** No rule to make target `data/gtkrc&#39;, needed by `al=
l-am&#39;.=C2=A0 Stop.<br>| make[1]: *** Waiting for unfinished jobs....<br=
>| arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc=C2=A0 -=
march=3Darmv6 -mthumb-interwork -mfloat-abi=3Dsoftfp=C2=A0 -mfpu=3Dvfp --sy=
sroot=3D/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi -shared=
=C2=A0 -fPIC -DPIC=C2=A0 .libs/sato-draw.o .libs/sato-draw-cairo.o .libs/sa=
to-main.o .libs/sato-style.o .libs/sato-utils.o=C2=A0=C2=A0 /home/abhi/yoct=
o_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libgtk=
-x11-2.0.so" target=3D"_blank">libgtk-x11-2.0.so</a> /home/abhi/yocto_new/b=
uild-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libgdk-x11-2.=
0.so" target=3D"_blank">libgdk-x11-2.0.so</a> /home/abhi/yocto_new/build-di=
zzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libpangocairo-1.0.so=
" target=3D"_blank">libpangocairo-1.0.so</a> -L=3D/usr/lib -L/home/abhi/yoc=
to_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib /home/abhi/yocto_new/bu=
ild-dizzy/tmp/sysroots/raspberrypi/usr/lib/libharfbuzz.so /home/abhi/yocto_=
new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libatk-1=
.0.so" target=3D"_blank">libatk-1.0.so</a> /home/abhi/yocto_new/build-dizzy=
/tmp/sysroots/raspberrypi/usr/lib/libcairo.so /home/abhi/yocto_new/build-di=
zzy/tmp/sysroots/raspberrypi/usr/lib/libpixman-1.so /home/abhi/yocto_new/bu=
ild-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb-shm.so /home/abhi/yocto_n=
ew/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb-render.so /home/abhi=
/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXrender.so /home=
/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXext.so /ho=
me/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libX11.so /h=
ome/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libxcb.so /=
home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXau.so =
/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libXdmcp.=
so -lrt /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<=
a href=3D"http://libgdk_pixbuf-2.0.so" target=3D"_blank">libgdk_pixbuf-2.0.=
so</a> /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/li=
bpng16.so /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib=
/<a href=3D"http://libgio-2.0.so" target=3D"_blank">libgio-2.0.so</a> -lz -=
lresolv /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<=
a href=3D"http://libpangoft2-1.0.so" target=3D"_blank">libpangoft2-1.0.so</=
a> /home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a hre=
f=3D"http://libpango-1.0.so" target=3D"_blank">libpango-1.0.so</a> /home/ab=
hi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http:/=
/libgmodule-2.0.so" target=3D"_blank">libgmodule-2.0.so</a> -ldl /home/abhi=
/yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://l=
ibgthread-2.0.so" target=3D"_blank">libgthread-2.0.so</a> -lm /home/abhi/yo=
cto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libg=
object-2.0.so" target=3D"_blank">libgobject-2.0.so</a> /home/abhi/yocto_new=
/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libffi.so /home/abhi/yocto_ne=
w/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/<a href=3D"http://libglib-2.=
0.so" target=3D"_blank">libglib-2.0.so</a> -lpthread /home/abhi/yocto_new/b=
uild-dizzy/tmp/sysroots/raspberrypi/usr/lib/libfontconfig.so /home/abhi/yoc=
to_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libexpat.so /home/abhi/=
yocto_new/build-dizzy/tmp/sysroots/raspberrypi/usr/lib/libfreetype.so=C2=A0=
 -march=3Darmv6 -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dvfp --sysroo=
t=3D/home/abhi/yocto_new/build-dizzy/tmp/sysroots/raspberrypi -O2 -Wl,-O1 -=
Wl,--hash-style=3Dgnu -Wl,--as-needed=C2=A0=C2=A0 -pthread -Wl,-soname -Wl,=
libsato-engine.so -o .libs/libsato-engine.so<br>| arm-poky-linux-gnueabi-li=
btool: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<a href=3D"http:=
//libsato-engine.la" target=3D"_blank">libsato-engine.la</a>&quot; &amp;&am=
p; ln -s &quot;../<a href=3D"http://libsato-engine.la" target=3D"_blank">li=
bsato-engine.la</a>&quot; &quot;<a href=3D"http://libsato-engine.la" target=
=3D"_blank">libsato-engine.la</a>&quot; )<br>| make[1]: Leaving directory `=
/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-linux-gnueabi/gtk-=
sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/build&#39;<br>| make: *** [all] =
Error 2<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a shel=
l command.<br>| ERROR: Function failed: do_compile (log file is located at =
/home/abhi/yocto_new/build-dizzy/tmp/work/armv6-vfp-poky-linux-gnueabi/gtk-=
sato-engine/0.3.3+gitAUTOINC+4740ad8d53-r0/temp/log.do_compile.23728)<br>ER=
ROR: Task 2592 (/home/abhi/yocto_new/poky-dizzy-12.0.1/meta-yphone/recipes-=
yphone/gtk-engines/<a href=3D"http://gtk-sato-engine_git.bb" target=3D"_bla=
nk">gtk-sato-engine_git.bb</a>, do_compile) failed with exit code &#39;1&#3=
9;<br><br></div>

--001a11c3849c73704c05132ebaba--
