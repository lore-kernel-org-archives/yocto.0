Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Jan 2021 02:24:20 -0800
References: <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
In-Reply-To: <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
Message-ID: <20128.1610101460089237791@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4huGacR8UQzwH7p75ubD"

--4huGacR8UQzwH7p75ubD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Makefile: huawei_cdc_ncm-y :=3D=C2=A0=C2=A0=C2=A0 huawei_cdc_ncm.o obj-m +=
=
=3D huawei_cdc_ncm.o KDIR ?=3D /lib/modules/`uname -r`/build all: make -C =
$(KDIR) M=3D$(PWD) modules clean: make -C $(KDIR) M=3D$(PWD) clean install:=
 cp *.ko /lib/modules/$(shell uname -r)/kernel/drivers/misc/ depmod -a

This one doesnt work:
DEBUG: Executing shell function do_compile NOTE: make -j 8 KERNEL_SRC=3D/h=
ome/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-sourc=
e KERNEL_PATH=3D/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ip=
am400/kernel-source KERNEL_VERSION=3D4.10.0 CC=3Darm-oe-linux-gnueabi-gcc=
=C2=A0=C2=A0 -fuse-ld=3Dbfd LD=3Darm-oe-linux-gnueabi-ld.bfd=C2=A0=C2=A0 A=
R=3Darm-oe-linux-gnueabi-ar=C2=A0 O=3D/home/kerenyiz/oe-core/build/tmp-glib=
c/work-shared/barix-ipam400/kernel-build-artifacts KBUILD_EXTRA_SYMBOLS=3D =
ERROR: oe_runmake failed make -C /lib/modules/`uname -r`/build M=3D/home/ke=
renyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1=
.1-r0 modules make[1]: warning: jobserver unavailable: using -j1.=C2=A0 Add=
 '+' to parent make rule. make[1]: Entering directory '/usr/src/linux-heade=
rs-4.15.0-88-generic' make[2]: Entering directory '/home/kerenyiz/oe-core/b=
uild/tmp-glibc/work-shared/barix-ipam400/kernel-build-artifacts' make[3]: C=
ircular /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-=
gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o <- /home/kerenyiz/oe-core/build/tmp-=
glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o de=
pendency dropped. LD [M]=C2=A0 /home/kerenyiz/oe-core/build/tmp-glibc/work/=
barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o arm-oe-linux-=
gnueabi-ld.bfd: no input files /usr/src/linux-headers-4.15.0-88-generic/scr=
ipts/Makefile.build:578: recipe for target '/home/kerenyiz/oe-core/build/tm=
p-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o'=
 failed make[3]: *** [/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipa=
m400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o] Error 1 /usr/src/linu=
x-headers-4.15.0-88-generic/Makefile:1577: recipe for target '_module_/home=
/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawe=
i/1.1-r0' failed make[2]: *** [_module_/home/kerenyiz/oe-core/build/tmp-gli=
bc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0] Error 2 make[2]: Leav=
ing directory '/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipa=
m400/kernel-build-artifacts' Makefile:146: recipe for target 'sub-make' fai=
led make[1]: *** [sub-make] Error 2 make[1]: Leaving directory '/usr/src/li=
nux-headers-4.15.0-88-generic' Makefile:25: recipe for target 'all' failed =
make: *** [all] Error 2 ERROR: F --
Zolee

--4huGacR8UQzwH7p75ubD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />Makefile:
<h6>huawei_cdc_ncm-y :=3D&nbsp;&nbsp;&nbsp; huawei_cdc_ncm.o&nbsp;&nbsp;&n=
bsp;</h6>
<h6>obj-m +=3D huawei_cdc_ncm.o</h6>
<h6>KDIR ?=3D /lib/modules/`uname -r`/build</h6>
<h6>all:</h6>
<h6>&nbsp;&nbsp;&nbsp; make -C $(KDIR) M=3D$(PWD) modules</h6>
<h6>clean:</h6>
<h6>&nbsp;&nbsp;&nbsp; make -C $(KDIR) M=3D$(PWD) clean</h6>
<h6>install:</h6>
<h6>&nbsp;&nbsp;&nbsp; cp *.ko /lib/modules/$(shell uname -r)/kernel/drive=
rs/misc/</h6>
<h6>&nbsp;&nbsp;&nbsp; depmod -a</h6>
<br /><br />This one doesnt work:<br />
<h6>DEBUG: Executing shell function do_compile</h6>
<h6>NOTE: make -j 8 KERNEL_SRC=3D/home/kerenyiz/oe-core/build/tmp-glibc/wo=
rk-shared/barix-ipam400/kernel-source KERNEL_PATH=3D/home/kerenyiz/oe-core/=
build/tmp-glibc/work-shared/barix-ipam400/kernel-source KERNEL_VERSION=3D4.=
10.0 CC=3Darm-oe-linux-gnueabi-gcc&nbsp;&nbsp; -fuse-ld=3Dbfd LD=3Darm-oe-l=
inux-gnueabi-ld.bfd&nbsp;&nbsp; AR=3Darm-oe-linux-gnueabi-ar&nbsp; O=3D/hom=
e/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-build-a=
rtifacts KBUILD_EXTRA_SYMBOLS=3D</h6>
<h6>ERROR: oe_runmake failed</h6>
<h6>make -C /lib/modules/`uname -r`/build M=3D/home/kerenyiz/oe-core/build=
/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0 modules</h6>
<h6>make[1]: warning: jobserver unavailable: using -j1.&nbsp; Add '+' to p=
arent make rule.</h6>
<h6>make[1]: Entering directory '/usr/src/linux-headers-4.15.0-88-generic'=
</h6>
<h6>make[2]: Entering directory '/home/kerenyiz/oe-core/build/tmp-glibc/wo=
rk-shared/barix-ipam400/kernel-build-artifacts'</h6>
<h6>make[3]: Circular /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ip=
am400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o &lt;- /home/kerenyiz/=
oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/h=
uawei_cdc_ncm.o dependency dropped.</h6>
<h6>&nbsp; LD [M]&nbsp; /home/kerenyiz/oe-core/build/tmp-glibc/work/barix_=
ipam400-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o</h6>
<h6>arm-oe-linux-gnueabi-ld.bfd: no input files</h6>
<h6>/usr/src/linux-headers-4.15.0-88-generic/scripts/Makefile.build:578: r=
ecipe for target '/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400=
-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o' failed</h6>
<h6>make[3]: *** [/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam40=
0-oe-linux-gnueabi/huawei/1.1-r0/huawei_cdc_ncm.o] Error 1</h6>
<h6>/usr/src/linux-headers-4.15.0-88-generic/Makefile:1577: recipe for tar=
get '_module_/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-l=
inux-gnueabi/huawei/1.1-r0' failed</h6>
<h6>make[2]: *** [_module_/home/kerenyiz/oe-core/build/tmp-glibc/work/bari=
x_ipam400-oe-linux-gnueabi/huawei/1.1-r0] Error 2</h6>
<h6>make[2]: Leaving directory '/home/kerenyiz/oe-core/build/tmp-glibc/wor=
k-shared/barix-ipam400/kernel-build-artifacts'</h6>
<h6>Makefile:146: recipe for target 'sub-make' failed</h6>
<h6>make[1]: *** [sub-make] Error 2</h6>
<h6>make[1]: Leaving directory '/usr/src/linux-headers-4.15.0-88-generic'<=
/h6>
<h6>Makefile:25: recipe for target 'all' failed</h6>
<h6>make: *** [all] Error 2</h6>
<h6>ERROR: F</h6>
-- <br />Zolee

--4huGacR8UQzwH7p75ubD--
