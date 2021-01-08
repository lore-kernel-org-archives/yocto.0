Subject: rebuild issues using sstate mirror
To: yocto@lists.yoctoproject.org
From: "Markus Volk" <f_l_k@t-online.de>
X-Originating-Location: Heidenheim, Bavaria, DE (84.163.47.225)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Jan 2021 03:16:41 -0800
Message-ID: <dIdz.1610104601246301759.o5My@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NKWSrKK4CBSNytKadysK"

--NKWSrKK4CBSNytKadysK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Folks,
i did some research on building a custom yocto image using gatesgarth bran=
ch. The testcase was building an image on one machine and rebuild it on ano=
ther using sstate mirror.
I encountered two issues witch i was able to fix in a way that may also be=
 interesting upstream.

The first error:
| /home/flk/yocto/build/poky-3.2/hd51/tmp/work/cortexa15hf-neon-vfpv4-oe-l=
inux-gnueabi/gobject-introspection/1.64.1-r0/recipe-sysroot-native/usr/bin/=
bison: error while loading shared libraries: libreadline.so.7: cannot open =
shared object file: No such file or directory

the solution for me was to add 'readline'=C2=A0 to DEPENDS in bison_3.7.2.=
bb .

configure log for bison-native changed from:
checking for readline... no
checking readline/readline.h usability... no
checking readline/readline.h presence... no
checking for readline/readline.h... no
checking readline/history.h usability... no
checking readline/history.h presence... no
checking for readline/history.h... no

to:
checking for readline... yes
checking how to link with libreadline... /home/flk/yocto/build/poky-3.2/hd=
51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/li=
b/libreadline.so -Wl,-rpath -Wl,/home/flk/yocto/build/poky-3.2/hd51/tmp/wor=
k/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/lib
checking readline/readline.h usability... yes
checking readline/readline.h presence... yes
checking for readline/readline.h... yes
checking readline/history.h usability... yes
checking readline/history.h presence... yes
checking for readline/history.h... yes

and the error disappeared

The second error:

ERROR: neutrino-image-1.0-r0 do_rootfs: Unable to update the package index=
 files. Command '/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux=
-gnueabi/neutrino-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatil=
e-cache -f /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnuea=
bi/neutrino-image/1.0-r0/opkg.conf -t /home/flk/yocto/build/poky-3.2/hd60/t=
mp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/temp/ipktemp/ -o /home/=
flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image=
/1.0-r0/rootfs=C2=A0 --force_postinstall --prefer-arch-to-version=C2=A0=C2=
=A0 update' returned 127:
/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrin=
o-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg: error while loading shar=
ed libraries: libcharset.so.1: cannot open shared object file: No such file=
 or directory

after some research why libiconv libs are=C2=A0 being used (which i didn't=
 have installed on the rebuild machine) i found this in libarchive:
configure.ac ( https://github.com/libarchive/libarchive/blob/858fa8eaa9435=
340d2bda988715e0d9023089bec/configure.ac#L380%20 )

and was able to avoid the error by including 'gettext' to the inherit line=
 in libarchive_3.4.3.bb

Kind regards

--NKWSrKK4CBSNytKadysK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Folks, <br />i did some research on building a custom yocto image using =
gatesgarth branch. The testcase was building an image on one machine and re=
build it on another using sstate mirror. <br />I encountered two issues wit=
ch i was able to fix in a way that may also be interesting upstream. <br />=
&nbsp;<br />The first error: <br />| /home/flk/yocto/build/poky-3.2/hd51/tm=
p/work/cortexa15hf-neon-vfpv4-oe-linux-gnueabi/gobject-introspection/1.64.1=
-r0/recipe-sysroot-native/usr/bin/bison: error while loading shared librari=
es: libreadline.so.7: cannot open shared object file: No such file or direc=
tory <br />&nbsp;<br />the solution for me was to add 'readline'&nbsp; to D=
EPENDS in bison_3.7.2.bb . <br />&nbsp;<br />configure log for bison-native=
 changed from: <br />&nbsp;checking for readline... no <br />checking readl=
ine/readline.h usability... no <br />checking readline/readline.h presence.=
.. no <br />checking for readline/readline.h... no <br />checking readline/=
history.h usability... no <br />checking readline/history.h presence... no =
<br />checking for readline/history.h... no <br />&nbsp;<br />to: <br />che=
cking for readline... yes <br />checking how to link with libreadline... /h=
ome/flk/yocto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-=
r0/recipe-sysroot-native/usr/lib/libreadline.so -Wl,-rpath -Wl,/home/flk/yo=
cto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-=
sysroot-native/usr/lib <br />checking readline/readline.h usability... yes =
<br />checking readline/readline.h presence... yes <br />checking for readl=
ine/readline.h... yes <br />checking readline/history.h usability... yes <b=
r />checking readline/history.h presence... yes <br />checking for readline=
/history.h... yes <br />&nbsp;<br />and the error disappeared <br />&nbsp;<=
br />The second error: <br />&nbsp;<br />ERROR: neutrino-image-1.0-r0 do_ro=
otfs: Unable to update the package index files. Command '/home/flk/yocto/bu=
ild/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/reci=
pe-sysroot-native/usr/bin/opkg --volatile-cache -f /home/flk/yocto/build/po=
ky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/opkg.conf =
-t /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutr=
ino-image/1.0-r0/temp/ipktemp/ -o /home/flk/yocto/build/poky-3.2/hd60/tmp/w=
ork/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/rootfs&nbsp; --force_postin=
stall --prefer-arch-to-version&nbsp;&nbsp; update' returned 127: <br />/hom=
e/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-ima=
ge/1.0-r0/recipe-sysroot-native/usr/bin/opkg: error while loading shared li=
braries: libcharset.so.1: cannot open shared object file: No such file or d=
irectory <br />&nbsp;<br />after some research why libiconv libs are&nbsp; =
being used (which i didn't have installed on the rebuild machine) i found t=
his in libarchive: <br /><a href=3D"https://github.com/libarchive/libarchiv=
e/blob/858fa8eaa9435340d2bda988715e0d9023089bec/configure.ac#L380%20" targe=
t=3D"_blank" rel=3D"noopener">configure.ac</a><br />&nbsp;<br />and was abl=
e to avoid the error by including 'gettext' to the inherit line in libarchi=
ve_3.4.3.bb<br /><br />Kind regards

--NKWSrKK4CBSNytKadysK--
