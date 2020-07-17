Subject: Re: Linker error undefined reference to `_rtld_global_ro'
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jul 2020 00:51:50 -0700
References: <8b7bd962-4d27-501d-d72d-6c72b63b2672@gmail.com>
In-Reply-To: <8b7bd962-4d27-501d-d72d-6c72b63b2672@gmail.com>
Message-ID: <31567.1594972310474932989@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GhV8twfNfuUnWib1xWaf"

--GhV8twfNfuUnWib1xWaf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If have searched for GLIBCPIE within all meta-files, but it seems that GLIB=
CPIE is already empty.

varga-r@ubuntu:~/projects/yocto-tq-mba6x$ grep -rnI "GLIBCPIE"
poky/meta/conf/distro/include/security_flags.inc:9:# If static PIE is know=
n to work well, GLIBCPIE=3D"--enable-static-pie" can be set
poky/meta/conf/distro/include/security_flags.inc:34:GLIBCPIE_powerpc =3D "=
"
poky/meta/recipes-core/glibc/glibc_2.29.bb:73:GLIBCPIE ??=3D ""
poky/meta/recipes-core/glibc/glibc_2.29.bb:89:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${GLIBCPIE} \

Then I searched for "pie" within the generated glibc sources... and found =
many search results including " *-pie* " or " *-fpie* " as passed compiler =
parameter for various files (note that I pasted two lines only!):
varga-r@ubuntu:~/projects/yocto-tq-mba6x$ grep -rnI "pie" build/tmp/work/c=
ortexa9t2hf-neon-poky-linux-gnueabi/glibc
<snip>
...
build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/temp/log=
.do_compile.90521:10133:arm-poky-linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dne=
on -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/varga-r/pro=
jects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/gl=
ibc/2.29-r0/recipe-sysroot *-pie* -Wl,-O1 -nostdlib -nostartfiles -o /home/=
varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux=
-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/iconv/iconvconfig=C2=A0=
 -fuse-ld=3Dbfd=C2=A0 -Wl,-z,combreloc -Wl,-z,relro -Wl,--hash-style=3Dboth=
 /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-pok=
y-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/csu/Scrt1.o /hom=
e/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-lin=
ux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/csu/crti.o `arm-poky-=
linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcor=
tex-a9=C2=A0 --sysroot=3D/home/varga-r/projects/yocto-tq-mba6x/build/tmp/wo=
rk/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recipe-sysroot=C2=A0 =
--print-file-name=3DcrtbeginS.o` /home/varga-r/projects/yocto-tq-mba6x/buil=
d/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-pok=
y-linux-gnueabi/iconv/iconvconfig.o /home/varga-r/projects/yocto-tq-mba6x/b=
uild/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-=
poky-linux-gnueabi/iconv/strtab.o /home/varga-r/projects/yocto-tq-mba6x/bui=
ld/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-po=
ky-linux-gnueabi/iconv/xmalloc.o /home/varga-r/projects/yocto-tq-mba6x/buil=
d/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-pok=
y-linux-gnueabi/iconv/hash-string.o=C2=A0 -Wl,-dynamic-linker=3D/lib/ld-lin=
ux-armhf.so.3 -Wl,-rpath-link=3D/home/varga-r/projects/yocto-tq-mba6x/build=
/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky=
-linux-gnueabi:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa=
9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/ma=
th:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-p=
oky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/elf:/home/varg=
a-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnu=
eabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/dlfcn:/home/varga-r/project=
s/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/=
2.29-r0/build-arm-poky-linux-gnueabi/nss:/home/varga-r/projects/yocto-tq-mb=
a6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build=
-arm-poky-linux-gnueabi/nis:/home/varga-r/projects/yocto-tq-mba6x/build/tmp=
/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-lin=
ux-gnueabi/rt:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9=
t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/res=
olv:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-=
poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/mathvec:/home=
/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linu=
x-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/support:/home/varga-r/=
projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi=
/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nptl /home/varga-r/projects/yoc=
to-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-=
r0/build-arm-poky-linux-gnueabi/libc.so.6 /home/varga-r/projects/yocto-tq-m=
ba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/buil=
d-arm-poky-linux-gnueabi/libc_nonshared.a -Wl,--as-needed /home/varga-r/pro=
jects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/gl=
ibc/2.29-r0/build-arm-poky-linux-gnueabi/elf/ld.so -Wl,--no-as-needed -lgcc=
 /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-pok=
y-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/elf/libgcc-stubs=
.a `arm-poky-linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/varga-r/projects/yocto-tq-mba6x=
/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recipe-s=
ysroot=C2=A0 --print-file-name=3DcrtendS.o` /home/varga-r/projects/yocto-tq=
-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/bu=
ild-arm-poky-linux-gnueabi/csu/crtn.o
...
build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/temp/log=
.do_compile.90521:14335:arm-poky-linux-gnueabi-gcc=C2=A0 -mthumb -mfpu=3Dne=
on -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=C2=A0 --sysroot=3D/home/varga-r/pro=
jects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/gl=
ibc/2.29-r0/recipe-sysroot res_hconf.c -c -std=3Dgnu11 -fgnu89-inline=C2=A0=
 -O2 -pipe -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/varga-=
r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnuea=
bi/glibc/2.29-r0=3D/usr/src/debug/glibc/2.29-r0 -fdebug-prefix-map=3D/home/=
varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux=
-gnueabi/glibc/2.29-r0=3D/usr/src/debug/glibc/2.29-r0 -fdebug-prefix-map=3D=
/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky=
-linux-gnueabi/glibc/2.29-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/v=
arga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-=
gnueabi/glibc/2.29-r0/recipe-sysroot-native=3D -Wall -Wwrite-strings -Wunde=
f -Werror -fmerge-all-constants -frounding-math -fno-stack-protector -Wstri=
ct-prototypes -Wold-style-definition -fmath-errno -DHAVE_EPOLL -DHAVE_INOTI=
FY -DHAVE_NETLINK *-fpie* -I../include -I/home/varga-r/projects/yocto-tq-mb=
a6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build=
-arm-poky-linux-gnueabi/nscd=C2=A0 -I/home/varga-r/projects/yocto-tq-mba6x/=
build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm=
-poky-linux-gnueabi=C2=A0 -I../sysdeps/unix/sysv/linux/arm=C2=A0 -I../sysde=
ps/arm/nptl=C2=A0 -I../sysdeps/unix/sysv/linux/include -I../sysdeps/unix/sy=
sv/linux=C2=A0 -I../sysdeps/nptl=C2=A0 -I../sysdeps/pthread=C2=A0 -I../sysd=
eps/gnu=C2=A0 -I../sysdeps/unix/inet=C2=A0 -I../sysdeps/unix/sysv=C2=A0 -I.=
./sysdeps/unix/arm=C2=A0 -I../sysdeps/unix=C2=A0 -I../sysdeps/posix=C2=A0 -=
I../sysdeps/arm/armv7/multiarch=C2=A0 -I../sysdeps/arm/armv7=C2=A0 -I../sys=
deps/arm/armv6t2=C2=A0 -I../sysdeps/arm/armv6=C2=A0 -I../sysdeps/arm/includ=
e -I../sysdeps/arm=C2=A0 -I../sysdeps/wordsize-32=C2=A0 -I../sysdeps/ieee75=
4/flt-32=C2=A0 -I../sysdeps/ieee754/dbl-64=C2=A0 -I../sysdeps/ieee754=C2=A0=
 -I../sysdeps/generic=C2=A0 -I.. -I../libio -I. -nostdinc -isystem /home/va=
rga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-g=
nueabi/glibc/2.29-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/.=
./../lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/include -i=
system /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-ne=
on-poky-linux-gnueabi/glibc/2.29-r0/recipe-sysroot-native/usr/bin/arm-poky-=
linux-gnueabi/../../lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8=
.3.0/include-fixed -isystem /home/varga-r/projects/yocto-tq-mba6x/build/tmp=
/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recipe-sysroot/usr=
/include=C2=A0 -D_LIBC_REENTRANT -include /home/varga-r/projects/yocto-tq-m=
ba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/buil=
d-arm-poky-linux-gnueabi/libc-modules.h -DMODULE_NAME=3Dnscd -include ../in=
clude/libc-symbols.h=C2=A0 -DPIC -D_FORTIFY_SOURCE=3D2=C2=A0 =C2=A0 -DTOP_N=
AMESPACE=3Dglibc -o /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/co=
rtexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnuea=
bi/nscd/res_hconf.o -MD -MP -MF /home/varga-r/projects/yocto-tq-mba6x/build=
/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky=
-linux-gnueabi/nscd/res_hconf.o.dt -MT /home/varga-r/projects/yocto-tq-mba6=
x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-a=
rm-poky-linux-gnueabi/nscd/res_hconf.o
...
</snip>

I am not sure, if this is relevant... just in case.

Thanks for your support.

--
Rob

--GhV8twfNfuUnWib1xWaf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If have searched for GLIBCPIE within all meta-files, but it seems that GLIB=
CPIE is already empty.<br /><br />
<div><span style=3D"font-family: courier_newregular, courier;">varga-r@ubu=
ntu:~/projects/yocto-tq-mba6x$ grep -rnI "GLIBCPIE"</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">poky/meta/c=
onf/distro/include/security_flags.inc:9:# If static PIE is known to work we=
ll, GLIBCPIE=3D"--enable-static-pie" can be set</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">poky/meta/c=
onf/distro/include/security_flags.inc:34:GLIBCPIE_powerpc =3D ""</span></di=
v>
<div><span style=3D"font-family: courier_newregular, courier;">poky/meta/r=
ecipes-core/glibc/glibc_2.29.bb:73:GLIBCPIE ??=3D ""</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">poky/meta/r=
ecipes-core/glibc/glibc_2.29.bb:89:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; ${GLIBCPIE} \</span><br /><br />Then I searched for "pie" w=
ithin the generated glibc sources... and found many search results includin=
g "<strong>-pie</strong>" or "<strong>-fpie</strong>" as passed compiler pa=
rameter for various files (note that I pasted two lines only!):</div>
<div><span style=3D"font-family: courier_newregular, courier;">varga-r@ubu=
ntu:~/projects/yocto-tq-mba6x$ grep -rnI "pie" build/tmp/work/cortexa9t2hf-=
neon-poky-linux-gnueabi/glibc<br />&lt;snip&gt;</span><br /><span style=3D"=
font-family: courier_newregular, courier;">...</span><br />
<div><span style=3D"font-family: courier_newregular, courier;">build/tmp/w=
ork/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/temp/log.do_compile.=
90521:10133:arm-poky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneon -mfloat-a=
bi=3Dhard -mcpu=3Dcortex-a9&nbsp; --sysroot=3D/home/varga-r/projects/yocto-=
tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/=
recipe-sysroot <strong>-pie</strong> -Wl,-O1 -nostdlib -nostartfiles -o /ho=
me/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-li=
nux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/iconv/iconvconfig&nb=
sp; -fuse-ld=3Dbfd&nbsp; -Wl,-z,combreloc -Wl,-z,relro -Wl,--hash-style=3Db=
oth /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-=
poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/csu/Scrt1.o /=
home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-=
linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/csu/crti.o `arm-po=
ky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3D=
cortex-a9&nbsp; --sysroot=3D/home/varga-r/projects/yocto-tq-mba6x/build/tmp=
/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recipe-sysroot&nbs=
p; --print-file-name=3DcrtbeginS.o` /home/varga-r/projects/yocto-tq-mba6x/b=
uild/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-=
poky-linux-gnueabi/iconv/iconvconfig.o /home/varga-r/projects/yocto-tq-mba6=
x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-a=
rm-poky-linux-gnueabi/iconv/strtab.o /home/varga-r/projects/yocto-tq-mba6x/=
build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm=
-poky-linux-gnueabi/iconv/xmalloc.o /home/varga-r/projects/yocto-tq-mba6x/b=
uild/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-=
poky-linux-gnueabi/iconv/hash-string.o&nbsp; -Wl,-dynamic-linker=3D/lib/ld-=
linux-armhf.so.3 -Wl,-rpath-link=3D/home/varga-r/projects/yocto-tq-mba6x/bu=
ild/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-p=
oky-linux-gnueabi:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cort=
exa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi=
/math:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neo=
n-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/elf:/home/v=
arga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-=
gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/dlfcn:/home/varga-r/proj=
ects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/gli=
bc/2.29-r0/build-arm-poky-linux-gnueabi/nss:/home/varga-r/projects/yocto-tq=
-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/bu=
ild-arm-poky-linux-gnueabi/nis:/home/varga-r/projects/yocto-tq-mba6x/build/=
tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-=
linux-gnueabi/rt:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/corte=
xa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/=
resolv:/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-ne=
on-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/mathvec:/h=
ome/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-l=
inux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/support:/home/varga=
-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnue=
abi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nptl /home/varga-r/projects/=
yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.=
29-r0/build-arm-poky-linux-gnueabi/libc.so.6 /home/varga-r/projects/yocto-t=
q-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/b=
uild-arm-poky-linux-gnueabi/libc_nonshared.a -Wl,--as-needed /home/varga-r/=
projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi=
/glibc/2.29-r0/build-arm-poky-linux-gnueabi/elf/ld.so -Wl,--no-as-needed -l=
gcc /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-=
poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/elf/libgcc-st=
ubs.a `arm-poky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneon -mfloat-abi=3D=
hard -mcpu=3Dcortex-a9&nbsp; --sysroot=3D/home/varga-r/projects/yocto-tq-mb=
a6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recip=
e-sysroot&nbsp; --print-file-name=3DcrtendS.o` /home/varga-r/projects/yocto=
-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0=
/build-arm-poky-linux-gnueabi/csu/crtn.o</span></div>
</div>
<div><span style=3D"font-family: courier_newregular, courier;">...</span><=
br />
<div><span style=3D"font-family: courier_newregular, courier;">build/tmp/w=
ork/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/temp/log.do_compile.=
90521:14335:arm-poky-linux-gnueabi-gcc&nbsp; -mthumb -mfpu=3Dneon -mfloat-a=
bi=3Dhard -mcpu=3Dcortex-a9&nbsp; --sysroot=3D/home/varga-r/projects/yocto-=
tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/=
recipe-sysroot res_hconf.c -c -std=3Dgnu11 -fgnu89-inline&nbsp; -O2 -pipe -=
feliminate-unused-debug-types -fmacro-prefix-map=3D/home/varga-r/projects/y=
octo-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.2=
9-r0=3D/usr/src/debug/glibc/2.29-r0 -fdebug-prefix-map=3D/home/varga-r/proj=
ects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/gli=
bc/2.29-r0=3D/usr/src/debug/glibc/2.29-r0 -fdebug-prefix-map=3D/home/varga-=
r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnuea=
bi/glibc/2.29-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/varga-r/proje=
cts/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glib=
c/2.29-r0/recipe-sysroot-native=3D -Wall -Wwrite-strings -Wundef -Werror -f=
merge-all-constants -frounding-math -fno-stack-protector -Wstrict-prototype=
s -Wold-style-definition -fmath-errno -DHAVE_EPOLL -DHAVE_INOTIFY -DHAVE_NE=
TLINK&nbsp; &nbsp; &nbsp; <strong>-fpie</strong>&nbsp; &nbsp; &nbsp;-I../in=
clude -I/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-n=
eon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nscd&nbsp=
; -I/home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-=
poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi&nbsp; -I../sy=
sdeps/unix/sysv/linux/arm&nbsp; -I../sysdeps/arm/nptl&nbsp; -I../sysdeps/un=
ix/sysv/linux/include -I../sysdeps/unix/sysv/linux&nbsp; -I../sysdeps/nptl&=
nbsp; -I../sysdeps/pthread&nbsp; -I../sysdeps/gnu&nbsp; -I../sysdeps/unix/i=
net&nbsp; -I../sysdeps/unix/sysv&nbsp; -I../sysdeps/unix/arm&nbsp; -I../sys=
deps/unix&nbsp; -I../sysdeps/posix&nbsp; -I../sysdeps/arm/armv7/multiarch&n=
bsp; -I../sysdeps/arm/armv7&nbsp; -I../sysdeps/arm/armv6t2&nbsp; -I../sysde=
ps/arm/armv6&nbsp; -I../sysdeps/arm/include -I../sysdeps/arm&nbsp; -I../sys=
deps/wordsize-32&nbsp; -I../sysdeps/ieee754/flt-32&nbsp; -I../sysdeps/ieee7=
54/dbl-64&nbsp; -I../sysdeps/ieee754&nbsp; -I../sysdeps/generic&nbsp; -I.. =
-I../libio -I. -nostdinc -isystem /home/varga-r/projects/yocto-tq-mba6x/bui=
ld/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-r0/recipe-sysro=
ot-native/usr/bin/arm-poky-linux-gnueabi/../../lib/arm-poky-linux-gnueabi/g=
cc/arm-poky-linux-gnueabi/8.3.0/include -isystem /home/varga-r/projects/yoc=
to-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/glibc/2.29-=
r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../lib/arm-poky-=
linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/include-fixed -isystem /home=
/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linu=
x-gnueabi/glibc/2.29-r0/recipe-sysroot/usr/include&nbsp; -D_LIBC_REENTRANT =
-include /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-=
neon-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/libc-mod=
ules.h -DMODULE_NAME=3Dnscd -include ../include/libc-symbols.h&nbsp; -DPIC =
-D_FORTIFY_SOURCE=3D2&nbsp; &nbsp; -DTOP_NAMESPACE=3Dglibc -o /home/varga-r=
/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-linux-gnueab=
i/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nscd/res_hconf.o -MD -MP -MF /=
home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neon-poky-=
linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nscd/res_hconf.o.d=
t -MT /home/varga-r/projects/yocto-tq-mba6x/build/tmp/work/cortexa9t2hf-neo=
n-poky-linux-gnueabi/glibc/2.29-r0/build-arm-poky-linux-gnueabi/nscd/res_hc=
onf.o</span></div>
<div style=3D"font-family: courier_newregular, courier;">...<br />&lt;/sni=
p&gt;</div>
</div>
<br />I am not sure, if this is relevant... just in case.<br /><br /><br /=
><br />Thanks for your support.<br /><br />-- <br />Rob

--GhV8twfNfuUnWib1xWaf--
