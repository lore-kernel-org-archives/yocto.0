Subject: Linker error undefined reference to `_rtld_global_ro'
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jul 2020 04:21:09 -0700
Message-ID: <EDk7.1594639269271279456.HLoQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WmdQXfUqHOmdRyYP3d3d"

--WmdQXfUqHOmdRyYP3d3d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am new to the Yocto project and need some help in solving a linker issue=
 when compiling/linking an application using the SDK. It seems, that the co=
mpilation is completed, but the linker could not resolve to "_rtld_global_r=
o". Here is the output of the last stage
<snip>
...
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: /opt/mydistro/1.0.0/sy=
sroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(getcontext.o): i=
n function `getcontext':
/usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/arm/get=
context.S:101: undefined reference to `_rtld_global_ro'
/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: /opt/mydistro/1.0.0/sy=
sroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(setcontext.o): i=
n function `__startcontext':
/usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/arm/set=
context.S:100: undefined reference to `_rtld_global_ro'
collect2: error: ld returned 1 exit status
makefile:116: recipe for target 'ortable' failed
make: *** [ortable] Error 1
</snip>

What I can see from the output is, that both getcontext.S and setcontext.S=
 are referencing to "_rtld_global_ro". What I do not understand is, why the=
 glibc is located in the debug folder? Is this probably the issue?

I have sourced the SDK using following command:
source /opt/mydistro/1.0.0/environment-setup-cortexa9t2hf-neon-poky-linux-=
gnueabi

Here's image bb file (which I have used for building the SDK using this co=
mmand (bitbake my-image -c populate_sdk).

require recipes-extended/images/core-image-full-cmdline.bb

IMAGE_INSTALL_append =3D " \
emmy-w1-driver-sdiosdio \
emmy-w1-systemd \
eth-systemd \
can-systemd \
can-utils \
lighttpd \
dnsmasq \
parted \
swupdate \
swupdate-www \
u-boot-fw-utils \
linux-firmware-imx-sdma-imx6q \
"

TOOLCHAIN_HOST_TASK_append =3D " nativesdk-perl-modules"
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"

Any help on resolving this issue would be greatly appreciated.

Thanks.
--

Rob

--WmdQXfUqHOmdRyYP3d3d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am new to the Yocto project and need some help in solvi=
ng a linker issue when compiling/linking an application using the SDK. It s=
eems, that the compilation is completed, but the linker could not resolve t=
o "_rtld_global_ro". Here is the output of the last stage<br />&lt;snip&gt;=
<br />...<br />
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: /opt/mydistro/1.0=
.0/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(getcontext.=
o): in function `getcontext':</div>
<div>/usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/ar=
m/getcontext.S:101: undefined reference to `_rtld_global_ro'</div>
<div>/opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: /opt/mydistro/1.0=
.0/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(setcontext.=
o): in function `__startcontext':</div>
<div>/usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/ar=
m/setcontext.S:100: undefined reference to `_rtld_global_ro'</div>
<div>collect2: error: ld returned 1 exit status</div>
<div>makefile:116: recipe for target 'ortable' failed</div>
<div>make: *** [ortable] Error 1</div>
<div>&lt;/snip&gt;</div>
<br />What I can see from the output is, that both getcontext.S and setcon=
text.S are referencing to "_rtld_global_ro". What I do not understand is, w=
hy the glibc is located in the debug folder? Is this probably the issue?<br=
 /><br />I have sourced the SDK using following command:<br />source /opt/m=
ydistro/1.0.0/environment-setup-cortexa9t2hf-neon-poky-linux-gnueabi<br /><=
br />Here's image bb file (which I have used for building the SDK using thi=
s command (bitbake my-image -c populate_sdk).<br /><br />
<div>require recipes-extended/images/core-image-full-cmdline.bb</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL_append =3D " \</div>
<div>&nbsp; &nbsp; emmy-w1-driver-sdiosdio \</div>
<div>&nbsp; &nbsp; emmy-w1-systemd \</div>
<div>&nbsp; &nbsp; eth-systemd \</div>
<div>&nbsp; &nbsp; can-systemd \</div>
<div>&nbsp; &nbsp; can-utils \</div>
<div>&nbsp; &nbsp; lighttpd \</div>
<div>&nbsp; &nbsp; dnsmasq \</div>
<div>&nbsp; &nbsp; parted \</div>
<div>&nbsp; &nbsp; swupdate \</div>
<div>&nbsp; &nbsp; swupdate-www \</div>
<div>&nbsp; &nbsp; u-boot-fw-utils \</div>
<div>&nbsp; &nbsp; linux-firmware-imx-sdma-imx6q \</div>
<div>&nbsp; &nbsp; "</div>
<div>&nbsp;</div>
<div>TOOLCHAIN_HOST_TASK_append =3D " nativesdk-perl-modules"</div>
<div>SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"</div>
<div>&nbsp;</div>
Any help on resolving this issue would be greatly appreciated.<br /><br />=
Thanks.<br />-- <br /><br />Rob

--WmdQXfUqHOmdRyYP3d3d--
