Subject: Building eSDK fails #sdk
To: yocto@lists.yoctoproject.org
From: alexander.troff@deveritec.com
X-Originating-Location: Dresden, Saxony, DE (178.249.26.90)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Feb 2021 09:43:42 -0800
Message-ID: <hvee.1612460622520345943.gVz7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DZw12n4TMZOGGsTxyZlS"

--DZw12n4TMZOGGsTxyZlS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I build the SDK with bitbake core-image-base -c populate_sdk and it works =
just fine. But trying to build the eSDK with bitbake core-image-base -c pop=
ulate_sdk_ext results in this error:

ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install packag=
es. Command '/opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-=
tarball/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /opt/=
build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/opk=
g.conf -t /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tar=
ball/1.0-r0/temp/ipktemp/ -o /opt/build/tmp/work/x86_64-nativesdk-pokysdk-l=
inux/buildtools-tarball/1.0-r0/sdk/image/opt/my-os/0.1/sysroots/none=C2=A0 =
--force_postinstall --prefer-arch-to-version=C2=A0=C2=A0 install cppzmq-dev=
 googletest-dev libappcommunicator-dev liblogger-dev libmodbus-dev libmyos-=
common-dev protobuf-c zeromq-staticdev' returned 255:
Collected errors:
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'cppzmq-=
dev'.

ERROR: Logfile of failure stored in: /opt/build/tmp/work/x86_64-nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.155
ERROR: Task (/opt/yocto/poky/meta/recipes-core/meta/buildtools-tarball.bb:=
do_populate_sdk) failed with exit code '1'

The listed Packeges are set in the TOOLCHAIN_TARGET_TASK variable. I tryed=
 using IMAGE_INSTALL_append but this didn't help.
Does someone have an idea?

greetings
Alex

--DZw12n4TMZOGGsTxyZlS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I build the SDK with bitbake core-image-base -c populate_sdk an=
d it works just fine. But trying to build the eSDK with bitbake core-image-=
base -c populate_sdk_ext results in this error:<br /><br />ERROR: buildtool=
s-tarball-1.0-r0 do_populate_sdk: Unable to install packages. Command '/opt=
/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/re=
cipe-sysroot-native/usr/bin/opkg --volatile-cache -f /opt/build/tmp/work/x8=
6_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/opkg.conf -t /opt/bu=
ild/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/=
ipktemp/ -o /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-t=
arball/1.0-r0/sdk/image/opt/my-os/0.1/sysroots/none&nbsp; --force_postinsta=
ll --prefer-arch-to-version&nbsp;&nbsp; install cppzmq-dev googletest-dev l=
ibappcommunicator-dev liblogger-dev libmodbus-dev libmyos-common-dev protob=
uf-c zeromq-staticdev' returned 255:<br />Collected errors:<br />&nbsp;* op=
kg_prepare_url_for_install: Couldn't find anything to satisfy 'cppzmq-dev'.=
<br /><br />ERROR: Logfile of failure stored in: /opt/build/tmp/work/x86_64=
-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk=
.155<br />ERROR: Task (/opt/yocto/poky/meta/recipes-core/meta/buildtools-ta=
rball.bb:do_populate_sdk) failed with exit code '1'<br /><br /><br />The li=
sted Packeges are set in the TOOLCHAIN_TARGET_TASK variable. I tryed using =
IMAGE_INSTALL_append but this didn't help.<br />Does someone have an idea?<=
br /><br />greetings<br />Alex

--DZw12n4TMZOGGsTxyZlS--
