Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38812C54ED0
	for <webhook@archiver.kernel.org>; Fri, 23 May 2025 20:26:34 +0000 (UTC)
Subject: Rust project development for target (missing std)
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?VGFtw6FzIFNvw7Nz?= <tsoos99@gmail.com>
X-Originating-Location: Budapest, HU (89.223.204.162)
X-Originating-Platform: Mac Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 23 May 2025 13:15:29 -0700
Message-ID: <Dtio.1748031329810429666.lpPd@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6s0G0z5zPr4JbQ71K3fD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 May 2025 20:26:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65411

--6s0G0z5zPr4JbQ71K3fD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I=E2=80=99m building a custom image for a controller I=E2=80=99d like to us=
e in my irrigation system. I managed to create a custom distro and successf=
ully built a base image.
Now I=E2=80=99d like to use the standard SDK to develop a Rust app for the =
controller. I hit a roadblock unfortunately. I can=E2=80=99t figure out how=
 to include the Rust Standard Library for the target device in the SDK.
I saw you were involved in the development of the rust-cross-canadian recip=
e, so that=E2=80=99s why I=E2=80=99m reaching out to you.

Here=E2=80=99s the error I=E2=80=99m getting:

cargo build --target armv7-zeus-linux-gnueabihf
Compiling hello-rust v0.1.0 (/home/tamas/hello-rust)
error[E0463]: can't find crate for `std`
|
=3D note: the `armv7-zeus-linux-gnueabihf` target may not be installed
=3D help: consider downloading the target with `rustup target add armv7-zeu=
s-linux-gnueabihf`

error: cannot find macro `println` in this scope
--> src/ main.rs ( http://main.rs/ ) :2:5
|
2 | =C2=A0 =C2=A0 println!("Hello, world!");
| =C2=A0 =C2=A0 ^^^^^^^

error: requires `sized` lang_item

For more information about this error, try `rustc --explain E0463`.
error: could not compile `hello-rust` (bin "hello-rust") due to 3 previous =
errors

And indeed libstd for the target isn=E2=80=99t found anywhere inside the SD=
K=E2=80=99s sysroot. Building the app for the host target x86_64-pokysdk-li=
nux-gnu works just fine, since there=E2=80=99s a libstd in the sysroot for =
it.
Here=E2=80=99s the toolchain config from my image=E2=80=99s recipe as well:

RUST =3D "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
TOOLCHAIN_HOST_TASK:append =3D " \
${@all_multilib_tune_values(d, 'RUST')} \
nativesdk-libstd-rs \
nativesdk-binutils \
nativesdk-gcc \
nativesdk-glibc-dev \
nativesdk-libgcc-dev \
nativesdk-rust \
nativesdk-cargo \
nativesdk-rust-tools-clippy \
nativesdk-rust-tools-rustfmt \
=E2=80=9C

I=E2=80=99m on the latest version of Yocto Scarthgap.

Additionally here are my env vars after running the SDK environment setup s=
cript, at least the ones I found important:

SHELL=3D/bin/bash
OECORE_TUNE_CCARGS=3D -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcorte=
x-a8
BB_ENV_PASSTHROUGH_ADDITIONS=3D SSL_CERT_DIR SSL_CERT_FILE
OECORE_SDK_VERSION=3D0.1.0
PKG_CONFIG_PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeu=
s-linux-gnueabi/usr/lib/pkgconfig:/home/tamas/sdk/zeus/0.1.0/sysroots/corte=
xa8t2hf-neon-zeus-linux-gnueabi/usr/share/pkgconfig
GDB=3Darm-zeus-linux-gnueabi-gdb
SDKTARGETSYSROOT=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-ze=
us-linux-gnueabi
OECORE_BASELIB=3Dlib
CPP=3Darm-zeus-linux-gnueabi-gcc -E =C2=A0-mthumb -mfpu=3Dneon -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a8 -fstack-protector-strong =C2=A0-O2 -D_FORTIFY_SOU=
RCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security -D_TIME_BITS=
=3D64 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysro=
ots/cortexa8t2hf-neon-zeus-linux-gnueabi
TARGET_PREFIX=3Darm-zeus-linux-gnueabi-
OE_CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX=3D
PWD=3D/home/tamas/hello-rust
OECORE_TARGET_OS=3Dlinux-gnueabi
CXX=3Darm-zeus-linux-gnueabi-g++ =C2=A0-mthumb -mfpu=3Dneon -mfloat-abi=3Dh=
ard -mcpu=3Dcortex-a8 -fstack-protector-strong =C2=A0-O2 -D_FORTIFY_SOURCE=
=3D2 -Wformat -Wformat-security -Werror=3Dformat-security -D_TIME_BITS=3D64=
 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/c=
ortexa8t2hf-neon-zeus-linux-gnueabi
CXXFLAGS=3D -O2 -pipe -g -feliminate-unused-debug-types
CARGO_TARGET_X86_64_POKYSDK_LINUX_GNU_RUNNER=3D/home/tamas/sdk/zeus/0.1.0/s=
ysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2
OECORE_NATIVE_SYSROOT=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-=
linux
LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed =C2=A0-Wl,-z,relro=
,-z,now
HOME=3D/home/tamas
LANG=3DC.UTF-8
OPENSSL_CONF=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr=
/lib/ssl-3/openssl.cnf
SSL_CERT_DIR=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr=
/lib/ssl-3/certs
KCFLAGS=3D--sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon=
-zeus-linux-gnueabi
OECORE_TARGET_SYSROOT=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-ne=
on-zeus-linux-gnueabi
CARGO_HTTP_CAINFO=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linu=
x/etc/ssl/certs/ca-certificates.crt
CPPFLAGS=3D
OPENSSL_MODULES=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/=
usr/lib/ossl-modules/
LD=3Darm-zeus-linux-gnueabi-ld =C2=A0--sysroot=3D/home/tamas/sdk/zeus/0.1.0=
/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi
READELF=3Darm-zeus-linux-gnueabi-readelf
CARGO_HTTP_MULTIPLEXING=3Dfalse
AR=3Darm-zeus-linux-gnueabi-ar
ARCH=3Darm
AS=3Darm-zeus-linux-gnueabi-as
NM=3Darm-zeus-linux-gnueabi-nm
OECORE_TARGET_ARCH=3Darm
SSL_CERT_FILE=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/us=
r/lib/ssl-3/certs/ca-certificates.crt
OECORE_DISTRO_VERSION=3D0.1.0
PKG_CONFIG_SYSROOT_DIR=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-n=
eon-zeus-linux-gnueabi
OECORE_ACLOCAL_OPTS=3D-I /home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk=
-linux/usr/share/aclocal
OBJCOPY=3Darm-zeus-linux-gnueabi-objcopy
STRIP=3Darm-zeus-linux-gnueabi-strip
OBJDUMP=3Darm-zeus-linux-gnueabi-objdump
CONFIG_SITE=3D/home/tamas/sdk/zeus/0.1.0/site-config-cortexa8t2hf-neon-zeus=
-linux-gnueabi
PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr/bin:/ho=
me/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr/sbin:/home/tamas/=
sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/bin:/home/tamas/sdk/zeus/0.1.0=
/sysroots/x86_64-pokysdk-linux/sbin:/home/tamas/sdk/zeus/0.1.0/sysroots/x86=
_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:/home/tamas/sdk/zeus/=
0.1.0/sysroots/x86_64-pokysdk-linux/usr/bin/arm-zeus-linux-gnueabi:/home/ta=
mas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr/bin/arm-zeus-linux-mus=
l:/home/tamas/.local/bin:/home/tamas/.nvm/versions/node/v20.17.0/bin:/usr/l=
ocal/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/snap/bin=
:/home/tamas/.local/bin:/usr/local/bin:/usr/local/go/bin:/home/tamas/.local=
/bin:/usr/local/bin
CC=3Darm-zeus-linux-gnueabi-gcc =C2=A0-mthumb -mfpu=3Dneon -mfloat-abi=3Dha=
rd -mcpu=3Dcortex-a8 -fstack-protector-strong =C2=A0-O2 -D_FORTIFY_SOURCE=
=3D2 -Wformat -Wformat-security -Werror=3Dformat-security -D_TIME_BITS=3D64=
 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/c=
ortexa8t2hf-neon-zeus-linux-gnueabi
CFLAGS=3D -O2 -pipe -g -feliminate-unused-debug-types
CROSS_COMPILE=3Darm-zeus-linux-gnueabi-
CONFIGURE_FLAGS=3D--target=3Darm-zeus-linux-gnueabi --host=3Darm-zeus-linux=
-gnueabi --build=3Dx86_64-linux --with-libtool-sysroot=3D/home/tamas/sdk/ze=
us/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi
CARGO_TARGET_ARMV7_ZEUS_LINUX_GNUEABIHF_RUSTFLAGS=3D--sysroot=3D/home/tamas=
/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi/usr -C link-a=
rg=3D--sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus=
-linux-gnueabi
RANLIB=3Darm-zeus-linux-gnueabi-ranlib
RUST_TARGET_PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux=
/usr/lib/arm-zeus-linux-gnueabi/rustlib
OLDPWD=3D/home/tamas
CMAKE_TOOLCHAIN_FILE=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-l=
inux/usr/share/cmake/OEToolchainConfig.cmake

I hope this is enough context. Maybe I=E2=80=99m just missing another packa=
ge or I have to set some environment variable, but I couldn=E2=80=99t figur=
e it out.

Kind regards,
Tam=C3=A1s

--6s0G0z5zPr4JbQ71K3fD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"caret-color: #000000; color: #000000; font-family: Helv=
etica; font-size: 12px; font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: auto; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: auto; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; disp=
lay: inline !important; float: none;">Hi!</span></div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">I&rsquo;m=
 building a custom image for a controller I&rsquo;d like to use in my irrig=
ation system. I managed to create a custom distro and successfully built a =
base image.</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Now I&rsq=
uo;d like to use the standard SDK to develop a Rust app for the controller.=
 I hit a roadblock unfortunately. I can&rsquo;t figure out how to include t=
he Rust Standard Library for the target device in the SDK.&nbsp;</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">I saw you=
 were involved in the development of the rust-cross-canadian recipe, so tha=
t&rsquo;s why I&rsquo;m reaching out to you.&nbsp;</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Here&rsqu=
o;s the error I&rsquo;m getting:</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">
<div><span style=3D"color: #919191;">cargo build --target armv7-zeus-linux-=
gnueabihf</span></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp;Compiling hello-rust v0.1=
.0 (/home/tamas/hello-rust)</span></div>
<div><span style=3D"color: #919191;">error[E0463]: can't find crate for `st=
d`</span></div>
<div><span style=3D"color: #919191;">&nbsp; |</span></div>
<div><span style=3D"color: #919191;">&nbsp; =3D note: the `armv7-zeus-linux=
-gnueabihf` target may not be installed</span></div>
<div><span style=3D"color: #919191;">&nbsp; =3D help: consider downloading =
the target with `rustup target add armv7-zeus-linux-gnueabihf`</span></div>
<div><span style=3D"color: #919191;">&nbsp;</span></div>
<div><span style=3D"color: #919191;">error: cannot find macro `println` in =
this scope</span></div>
<div><span style=3D"color: #919191;">&nbsp;--&gt; src/<a href=3D"http://mai=
n.rs/">main.rs</a>:2:5</span></div>
<div><span style=3D"color: #919191;">&nbsp; |</span></div>
<div><span style=3D"color: #919191;">2 | &nbsp; &nbsp; println!("Hello, wor=
ld!");</span></div>
<div><span style=3D"color: #919191;">&nbsp; | &nbsp; &nbsp; ^^^^^^^</span><=
/div>
<div><span style=3D"color: #919191;">&nbsp;</span></div>
<div><span style=3D"color: #919191;">error: requires `sized` lang_item</spa=
n></div>
<div><span style=3D"color: #919191;">&nbsp;</span></div>
<div><span style=3D"color: #919191;">For more information about this error,=
 try `rustc --explain E0463`.</span></div>
<div><span style=3D"color: #919191;">error: could not compile `hello-rust` =
(bin "hello-rust") due to 3 previous errors</span></div>
</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">And indee=
d libstd for the target isn&rsquo;t found anywhere inside the SDK&rsquo;s s=
ysroot. Building the app for the host target x86_64-pokysdk-linux-gnu works=
 just fine, since there&rsquo;s a libstd in the sysroot for it.&nbsp;</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Here&rsqu=
o;s the toolchain config from my image&rsquo;s recipe as well:</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">
<div><span style=3D"color: #919191;">RUST =3D "rust-cross-canadian-${TRANSL=
ATED_TARGET_ARCH}"</span></div>
<div><span style=3D"color: #919191;">TOOLCHAIN_HOST_TASK:append =3D " \</sp=
an></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; ${@all_multilib_tune_val=
ues(d, 'RUST')} \</span></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-libstd-rs \</s=
pan></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-binutils \</sp=
an></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-gcc \</span></=
div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-glibc-dev \</s=
pan></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-libgcc-dev \</=
span></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-rust \</span><=
/div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-cargo \</span>=
</div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-rust-tools-cli=
ppy \</span></div>
<div><span style=3D"color: #919191;">&nbsp; &nbsp; nativesdk-rust-tools-rus=
tfmt \</span></div>
<div><span style=3D"color: #919191;"><span style=3D"caret-color: #919191;">=
&ldquo;</span></span></div>
</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">I&rsquo;m=
 on the latest version of Yocto Scarthgap.</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Additiona=
lly here are my env vars after running the SDK environment setup script, at=
 least the ones I found important:</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;"><span sty=
le=3D"color: #7e8c8d;">SHELL=3D/bin/bash</span><br /><span style=3D"color: =
#7e8c8d;">OECORE_TUNE_CCARGS=3D -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mc=
pu=3Dcortex-a8</span><br /><span style=3D"color: #7e8c8d;">BB_ENV_PASSTHROU=
GH_ADDITIONS=3D SSL_CERT_DIR SSL_CERT_FILE</span><br /><span style=3D"color=
: #7e8c8d;">OECORE_SDK_VERSION=3D0.1.0</span><br /><span style=3D"color: #7=
e8c8d;">PKG_CONFIG_PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-=
neon-zeus-linux-gnueabi/usr/lib/pkgconfig:/home/tamas/sdk/zeus/0.1.0/sysroo=
ts/cortexa8t2hf-neon-zeus-linux-gnueabi/usr/share/pkgconfig</span><br /><sp=
an style=3D"color: #7e8c8d;">GDB=3Darm-zeus-linux-gnueabi-gdb</span><br /><=
span style=3D"color: #7e8c8d;">SDKTARGETSYSROOT=3D/home/tamas/sdk/zeus/0.1.=
0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><span style=3D"=
color: #7e8c8d;">OECORE_BASELIB=3Dlib</span><br /><span style=3D"color: #7e=
8c8d;">CPP=3Darm-zeus-linux-gnueabi-gcc -E &nbsp;-mthumb -mfpu=3Dneon -mflo=
at-abi=3Dhard -mcpu=3Dcortex-a8 -fstack-protector-strong &nbsp;-O2 -D_FORTI=
FY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security -D_TIME_=
BITS=3D64 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/home/tamas/sdk/zeus/0.1.0/s=
ysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><span style=3D"col=
or: #7e8c8d;">TARGET_PREFIX=3Darm-zeus-linux-gnueabi-</span><br /><span sty=
le=3D"color: #7e8c8d;">OE_CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX=3D</span><br=
 /><span style=3D"color: #7e8c8d;">PWD=3D/home/tamas/hello-rust</span><br /=
><span style=3D"color: #7e8c8d;">OECORE_TARGET_OS=3Dlinux-gnueabi</span><br=
 /><span style=3D"color: #7e8c8d;">CXX=3Darm-zeus-linux-gnueabi-g++ &nbsp;-=
mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 -fstack-protector-=
strong &nbsp;-O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=
=3Dformat-security -D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/=
home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</sp=
an><br /><span style=3D"color: #7e8c8d;">CXXFLAGS=3D -O2 -pipe -g -felimina=
te-unused-debug-types</span><br /><span style=3D"color: #7e8c8d;">CARGO_TAR=
GET_X86_64_POKYSDK_LINUX_GNU_RUNNER=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x=
86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2</span><br /><span style=3D"col=
or: #7e8c8d;">OECORE_NATIVE_SYSROOT=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x=
86_64-pokysdk-linux</span><br /><span style=3D"color: #7e8c8d;">LDFLAGS=3D-=
Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed &nbsp;-Wl,-z,relro,-z,now</sp=
an><br /><span style=3D"color: #7e8c8d;">HOME=3D/home/tamas</span><br /><sp=
an style=3D"color: #7e8c8d;">LANG=3DC.UTF-8</span><br /><span style=3D"colo=
r: #7e8c8d;">OPENSSL_CONF=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-poky=
sdk-linux/usr/lib/ssl-3/openssl.cnf</span><br /><span style=3D"color: #7e8c=
8d;">SSL_CERT_DIR=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linu=
x/usr/lib/ssl-3/certs</span><br /><span style=3D"color: #7e8c8d;">KCFLAGS=
=3D--sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-l=
inux-gnueabi</span><br /><span style=3D"color: #7e8c8d;">OECORE_TARGET_SYSR=
OOT=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnue=
abi</span><br /><span style=3D"color: #7e8c8d;">CARGO_HTTP_CAINFO=3D/home/t=
amas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/etc/ssl/certs/ca-certific=
ates.crt</span><br /><span style=3D"color: #7e8c8d;">CPPFLAGS=3D</span><br =
/><span style=3D"color: #7e8c8d;">OPENSSL_MODULES=3D/home/tamas/sdk/zeus/0.=
1.0/sysroots/x86_64-pokysdk-linux/usr/lib/ossl-modules/</span><br /><span s=
tyle=3D"color: #7e8c8d;">LD=3Darm-zeus-linux-gnueabi-ld &nbsp;--sysroot=3D/=
home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</sp=
an><br /><span style=3D"color: #7e8c8d;">READELF=3Darm-zeus-linux-gnueabi-r=
eadelf</span><br /><span style=3D"color: #7e8c8d;">CARGO_HTTP_MULTIPLEXING=
=3Dfalse</span><br /><span style=3D"color: #7e8c8d;">AR=3Darm-zeus-linux-gn=
ueabi-ar</span><br /><span style=3D"color: #7e8c8d;">ARCH=3Darm</span><br /=
><span style=3D"color: #7e8c8d;">AS=3Darm-zeus-linux-gnueabi-as</span><br /=
><span style=3D"color: #7e8c8d;">NM=3Darm-zeus-linux-gnueabi-nm</span><br /=
><span style=3D"color: #7e8c8d;">OECORE_TARGET_ARCH=3Darm</span><br /><span=
 style=3D"color: #7e8c8d;">SSL_CERT_FILE=3D/home/tamas/sdk/zeus/0.1.0/sysro=
ots/x86_64-pokysdk-linux/usr/lib/ssl-3/certs/ca-certificates.crt</span><br =
/><span style=3D"color: #7e8c8d;">OECORE_DISTRO_VERSION=3D0.1.0</span><br /=
><span style=3D"color: #7e8c8d;">PKG_CONFIG_SYSROOT_DIR=3D/home/tamas/sdk/z=
eus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><span s=
tyle=3D"color: #7e8c8d;">OECORE_ACLOCAL_OPTS=3D-I /home/tamas/sdk/zeus/0.1.=
0/sysroots/x86_64-pokysdk-linux/usr/share/aclocal</span><br /><span style=
=3D"color: #7e8c8d;">OBJCOPY=3Darm-zeus-linux-gnueabi-objcopy</span><br /><=
span style=3D"color: #7e8c8d;">STRIP=3Darm-zeus-linux-gnueabi-strip</span><=
br /><span style=3D"color: #7e8c8d;">OBJDUMP=3Darm-zeus-linux-gnueabi-objdu=
mp</span><br /><span style=3D"color: #7e8c8d;">CONFIG_SITE=3D/home/tamas/sd=
k/zeus/0.1.0/site-config-cortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><=
span style=3D"color: #7e8c8d;">PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x=
86_64-pokysdk-linux/usr/bin:/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-poky=
sdk-linux/usr/sbin:/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux=
/bin:/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/sbin:/home/ta=
mas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-=
linux/bin:/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/usr/bin/=
arm-zeus-linux-gnueabi:/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-l=
inux/usr/bin/arm-zeus-linux-musl:/home/tamas/.local/bin:/home/tamas/.nvm/ve=
rsions/node/v20.17.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:=
/sbin:/bin:/usr/games:/snap/bin:/home/tamas/.local/bin:/usr/local/bin:/usr/=
local/go/bin:/home/tamas/.local/bin:/usr/local/bin</span><br /><span style=
=3D"color: #7e8c8d;">CC=3Darm-zeus-linux-gnueabi-gcc &nbsp;-mthumb -mfpu=3D=
neon -mfloat-abi=3Dhard -mcpu=3Dcortex-a8 -fstack-protector-strong &nbsp;-O=
2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securit=
y -D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64 --sysroot=3D/home/tamas/sdk/ze=
us/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><span st=
yle=3D"color: #7e8c8d;">CFLAGS=3D -O2 -pipe -g -feliminate-unused-debug-typ=
es</span><br /><span style=3D"color: #7e8c8d;">CROSS_COMPILE=3Darm-zeus-lin=
ux-gnueabi-</span><br /><span style=3D"color: #7e8c8d;">CONFIGURE_FLAGS=3D-=
-target=3Darm-zeus-linux-gnueabi --host=3Darm-zeus-linux-gnueabi --build=3D=
x86_64-linux --with-libtool-sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/c=
ortexa8t2hf-neon-zeus-linux-gnueabi</span><br /><span style=3D"color: #7e8c=
8d;">CARGO_TARGET_ARMV7_ZEUS_LINUX_GNUEABIHF_RUSTFLAGS=3D--sysroot=3D/home/=
tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon-zeus-linux-gnueabi/usr -C l=
ink-arg=3D--sysroot=3D/home/tamas/sdk/zeus/0.1.0/sysroots/cortexa8t2hf-neon=
-zeus-linux-gnueabi</span><br /><span style=3D"color: #7e8c8d;">RANLIB=3Dar=
m-zeus-linux-gnueabi-ranlib</span><br /><span style=3D"color: #7e8c8d;">RUS=
T_TARGET_PATH=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux/us=
r/lib/arm-zeus-linux-gnueabi/rustlib</span><br /><span style=3D"color: #7e8=
c8d;">OLDPWD=3D/home/tamas</span><br /><span style=3D"color: #7e8c8d;">CMAK=
E_TOOLCHAIN_FILE=3D/home/tamas/sdk/zeus/0.1.0/sysroots/x86_64-pokysdk-linux=
/usr/share/cmake/OEToolchainConfig.cmake</span></div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">I hope th=
is is enough context. Maybe I&rsquo;m just missing another package or I hav=
e to set some environment variable, but I couldn&rsquo;t figure it out.</di=
v>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</d=
iv>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Kind rega=
rds,</div>
<div style=3D"caret-color: #000000; color: #000000; font-family: Helvetica;=
 font-size: 12px; font-style: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: auto; text-align: start; text-inde=
nt: 0px; text-transform: none; white-space: normal; widows: auto; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">Tam&aacut=
e;s</div>

--6s0G0z5zPr4JbQ71K3fD--

