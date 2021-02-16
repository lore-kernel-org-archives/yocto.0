Subject: do compile error while installing openjdk-8 (meta-java) #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Feb 2021 03:14:39 -0800
Message-ID: <Yn9N.1613474079123346031.FOdn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="h9961Z11N0rSRLil05Dx"

--h9961Z11N0rSRLil05Dx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to install openjdk-8 from meta-java layer, but I got below erro=
r while installing it. Please anyone help me with this error.

| g++: error: unrecognized command line option =E2=80=98-fmacro-prefix-map=
=
=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0=
=3D/usr/src/debug/openjdk-8/272-r0=E2=80=99
| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0/jd=
k8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/makefiles=
/adlc.make:228: recipe for target '../generated/adfiles/dict2.o' failed
| make[6]: *** [../generated/adfiles/dict2.o] Error 1
| g++: error: unrecognized command line option =E2=80=98-fmacro-prefix-map=
=
=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0=
=3D/usr/src/debug/openjdk-8/272-r0=E2=80=99
| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0/jd=
k8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/makefiles=
/adlc.make:228: recipe for target '../generated/adfiles/formsopt.o' failed
| make[6]: *** [../generated/adfiles/formsopt.o] Error 1
| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0/jd=
k8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/makefiles=
/top.make:91: recipe for target 'ad_stuff' failed
| make[5]: *** [ad_stuff] Error 2
| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0/jd=
k8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/Makefile:=
284: recipe for target 'product' failed
| make[4]: *** [product] Error 2
| Makefile:230: recipe for target 'generic_build2' failed
| make[3]: *** [generic_build2] Error 2
| Makefile:177: recipe for target 'product' failed
| make[2]: *** [product] Error 2
| HotspotWrapper.gmk:44: recipe for target '/home/bl-docker/rity/bsp/tmp/w=
ork/aarch64-poky-linux/openjdk-8/272-r0/build/hotspot/_hotspot.timestamp' f=
ailed
| make[1]: *** [/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openj=
dk-8/272-r0/build/hotspot/_hotspot.timestamp] Error 2
| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0/jd=
k8u-shenandoah-aarch64-shenandoah-jdk8u272-b10//make/Main.gmk:109: recipe f=
or target 'hotspot-only' failed
| make: *** [hotspot-only] Error 2
| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/=
272-r0/temp/run.do_compile.27188:1 exit 1 from 'exit 1'
|
ERROR: Task (/home/bl-docker/rity/src/meta-java/recipes-core/openjdk/openj=
dk-8_272.bb:do_compile) failed with exit code '1'

Thanks & Regards,
Vijay Rakesh.

--h9961Z11N0rSRLil05Dx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm trying to install openjdk-8 from meta-java layer, but I =
got below error while installing it. Please anyone help me with this error.=
<br /><br />
<div>| g++: error: unrecognized command line option &lsquo;-fmacro-prefix-=
map=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0=
=
=3D/usr/src/debug/openjdk-8/272-r0&rsquo;</div>
<div>| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-=
r0/jdk8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/make=
files/adlc.make:228: recipe for target '../generated/adfiles/dict2.o' faile=
d</div>
<div>| make[6]: *** [../generated/adfiles/dict2.o] Error 1</div>
<div>| g++: error: unrecognized command line option &lsquo;-fmacro-prefix-=
map=3D/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-r0=
=
=3D/usr/src/debug/openjdk-8/272-r0&rsquo;</div>
<div>| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-=
r0/jdk8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/make=
files/adlc.make:228: recipe for target '../generated/adfiles/formsopt.o' fa=
iled</div>
<div>| make[6]: *** [../generated/adfiles/formsopt.o] Error 1</div>
<div>| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-=
r0/jdk8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/make=
files/top.make:91: recipe for target 'ad_stuff' failed</div>
<div>| make[5]: *** [ad_stuff] Error 2</div>
<div>| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-=
r0/jdk8u-shenandoah-aarch64-shenandoah-jdk8u272-b10/hotspot/make/linux/Make=
file:284: recipe for target 'product' failed</div>
<div>| make[4]: *** [product] Error 2</div>
<div>| Makefile:230: recipe for target 'generic_build2' failed</div>
<div>| make[3]: *** [generic_build2] Error 2</div>
<div>| Makefile:177: recipe for target 'product' failed</div>
<div>| make[2]: *** [product] Error 2</div>
<div>| HotspotWrapper.gmk:44: recipe for target '/home/bl-docker/rity/bsp/=
tmp/work/aarch64-poky-linux/openjdk-8/272-r0/build/hotspot/_hotspot.timesta=
mp' failed</div>
<div>| make[1]: *** [/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/=
openjdk-8/272-r0/build/hotspot/_hotspot.timestamp] Error 2</div>
<div>| /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openjdk-8/272-=
r0/jdk8u-shenandoah-aarch64-shenandoah-jdk8u272-b10//make/Main.gmk:109: rec=
ipe for target 'hotspot-only' failed</div>
<div>| make: *** [hotspot-only] Error 2</div>
<div>| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/openj=
dk-8/272-r0/temp/run.do_compile.27188:1 exit 1 from 'exit 1'</div>
<div>|</div>
<div>ERROR: Task (/home/bl-docker/rity/src/meta-java/recipes-core/openjdk/=
openjdk-8_272.bb:do_compile) failed with exit code '1'<br /><br />Thanks &a=
mp; Regards,<br />Vijay Rakesh.</div>

--h9961Z11N0rSRLil05Dx--
