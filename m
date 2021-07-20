Subject: c++ dmalloc library versions not building for Rocko
To: yocto@lists.yoctoproject.org
From: "forstevers" <steve@echodyne.com>
X-Originating-Location: US (50.237.172.122)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 Jul 2021 08:25:32 -0700
Message-ID: <Iod9.1626794732357180855.60UC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PKJtJWJUekMcwoA9unpp"

--PKJtJWJUekMcwoA9unpp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to produce c++ versions of dmalloc libraries.The dmalloc recipe dmal=
loc_5.5.2.bb looks to be configured to build the c++ versions with:

'EXTRA_OECONF +=3D "--enable-threads *--enable-cxx* --enable-shlib"'

But in the log.do_configure I see that the autoconf fails to find a c++ co=
mpiler, and I end up with the 'c' versions of the dmalloc library.

configure: configurations for the dmalloc library
configure: build utilities
checking for aarch64-xilinx-linux-gcc... aarch64-xilinx-linux-gcc=C2=A0 --=
sysroot=3D/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/buil=
d/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether aarch64-xilinx-linux-gcc=C2=A0 --sysroot=3D/extra_disk/ho=
me/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilin=
x-linux/dmalloc/5.5.2-r0/recipe-sysroot accepts -g... yes
checking for aarch64-xilinx-linux-gcc=C2=A0 --sysroot=3D/extra_disk/home/E=
CHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-li=
nux/dmalloc/5.5.2-r0/recipe-sysroot option to accept ISO C89... none needed
checking whether we are using the GNU C++ compiler... yes
checking whether aarch64-xilinx-linux-g++=C2=A0 --sysroot=3D/extra_disk/ho=
me/ECHODYNE.INT/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilin=
x-linux/dmalloc/5.5.2-r0/recipe-sysroot accepts -g... yes
configure: *WARNING: could not find C++ compiler*

Any suggestions on how to get this recipe to build the requested c++ versi=
ons. Is there a dependency I can add in an append file to force it to recog=
nize the compiler?

--PKJtJWJUekMcwoA9unpp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to produce c++ versions of dmalloc libraries.The dmalloc recipe dmal=
loc_5.5.2.bb looks to be configured to build the c++ versions with:<br /><b=
r />'EXTRA_OECONF +=3D "--enable-threads <strong>--enable-cxx</strong> --en=
able-shlib"'<br /><br />But in the log.do_configure I see that the autoconf=
 fails to find a c++ compiler, and I end up with the 'c' versions of the dm=
alloc library.<br /><br />configure: configurations for the dmalloc library=
<br />configure: build utilities<br />checking for aarch64-xilinx-linux-gcc=
... aarch64-xilinx-linux-gcc&nbsp; --sysroot=3D/extra_disk/home/ECHODYNE.IN=
T/steve/projects/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmallo=
c/5.5.2-r0/recipe-sysroot<br />checking whether the C compiler works... yes=
<br />checking for C compiler default output file name... a.out<br />checki=
ng for suffix of executables... <br />checking whether we are cross compili=
ng... yes<br />checking for suffix of object files... o<br />checking wheth=
er we are using the GNU C compiler... yes<br />checking whether aarch64-xil=
inx-linux-gcc&nbsp; --sysroot=3D/extra_disk/home/ECHODYNE.INT/steve/project=
s/develop/jup-bsp/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/reci=
pe-sysroot accepts -g... yes<br />checking for aarch64-xilinx-linux-gcc&nbs=
p; --sysroot=3D/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp=
/build/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot option=
 to accept ISO C89... none needed<br />checking whether we are using the GN=
U C++ compiler... yes<br />checking whether aarch64-xilinx-linux-g++&nbsp; =
--sysroot=3D/extra_disk/home/ECHODYNE.INT/steve/projects/develop/jup-bsp/bu=
ild/tmp/work/aarch64-xilinx-linux/dmalloc/5.5.2-r0/recipe-sysroot accepts -=
g... yes<br />configure: <strong>WARNING: could not find C++ compiler</stro=
ng><br /><br />Any suggestions on how to get this recipe to build the reque=
sted c++ versions. Is there a dependency I can add in an append file to for=
ce it to recognize the compiler?

--PKJtJWJUekMcwoA9unpp--
