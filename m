Subject: How to develop kernel modules on the target?
To: yocto@lists.yoctoproject.org
From: p32@tuta.io
X-Originating-Location: Graben-Neudorf, Baden-Württemberg, DE (129.13.134.208)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Dec 2020 05:40:32 -0800
Message-ID: <ErhJ.1609162832527601245.Tg4o@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VtCr1ILcCBiVv9VVYZsc"

--VtCr1ILcCBiVv9VVYZsc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am using the Yocto-based build system provided by NXP (primarily via the=
 meta-freescale layer) to create Linux images for an i.MX 8M board and woul=
d like to develop small kernel modules without going through the build proc=
ess of the entire image after each modification. Therefore, I would prefer =
to compile the kernel modules on the target architecture and have added the=
 following items to the IMAGE_INSTALL variable via my local.conf:
- packagegroup-core-buildessential
- kernel-modules
- kernel-dev
- kernel-devsrc

I then tried to follow the the official build instructions ( https://www.k=
ernel.org/doc/html/latest/kbuild/modules.html ) on the target but was unabl=
e to create a kernel module:
imx8mqevk:~# make -C /lib/modules/$(uname -r)/build M=3D$PWD
make: Entering directory '/lib/modules/5.4.47-2.2.0+g5ec03d06f54e/build'
CC [M]=C2=A0 /root/hello.o
In file included from ./include/linux/types.h:6,
from ./include/linux/list.h:5,
from ./include/linux/module.h:9,
from /root/hello.c:1:
./include/uapi/linux/types.h:5:10: fatal error: asm/types.h: No such file =
or directory
[...]
compilation terminated.

What am I missing here? Is there something else I have to do on the target=
 before I can compile kernel modules on the target?

For the sake of completeness: The build is based on the Zeus release and t=
he following repo manifest file:
https://source.codeaurora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.=
2.0.xml?h=3Dimx-linux-zeus

Thanks!

--VtCr1ILcCBiVv9VVYZsc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,<br /><br />I am using the Yocto-based build system provided=
 by NXP (primarily via the meta-freescale layer) to create Linux images for=
 an i.MX 8M board and would like to develop small kernel modules without go=
ing through the build process of the entire image after each modification. =
Therefore, I would prefer to compile the kernel modules on the target archi=
tecture and have added the following items to the IMAGE_INSTALL variable vi=
a my local.conf:<br />&nbsp;- packagegroup-core-buildessential<br />&nbsp;-=
 kernel-modules<br />&nbsp;- kernel-dev<br />&nbsp;- kernel-devsrc<br /><br=
 />I then tried to follow the the official build instructions (<a href=3D"h=
ttps://www.kernel.org/doc/html/latest/kbuild/modules.html" target=3D"_blank=
" rel=3D"noopener">https://www.kernel.org/doc/html/latest/kbuild/modules.ht=
ml</a>) on the target but was unable to create a kernel module:<br />imx8mq=
evk:~# make -C /lib/modules/$(uname -r)/build M=3D$PWD<br />make: Entering =
directory '/lib/modules/5.4.47-2.2.0+g5ec03d06f54e/build'<br />&nbsp; CC [M=
]&nbsp; /root/hello.o<br />In file included from ./include/linux/types.h:6,=
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; from ./include/linux/list.h:5,<br />&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; from ./include/linux/module.h:9,<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from=
 /root/hello.c:1:<br />./include/uapi/linux/types.h:5:10: fatal error: asm/=
types.h: No such file or directory<br />&nbsp;&nbsp;&nbsp; [...]<br />compi=
lation terminated.<br /><br />What am I missing here? Is there something el=
se I have to do on the target before I can compile kernel modules on the ta=
rget?<br /><br />For the sake of completeness: The build is based on the Ze=
us release and the following repo manifest file:<br /><a href=3D"https://so=
urce.codeaurora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.2.0.xml?h=
=3Dimx-linux-zeus" target=3D"_blank" rel=3D"noopener">https://source.codea=
urora.org/external/imx/imx-manifest/tree/imx-5.4.47-2.2.0.xml?h=3Dimx-linux=
-zeus</a><br /><br />Thanks!

--VtCr1ILcCBiVv9VVYZsc--
