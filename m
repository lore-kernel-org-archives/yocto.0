Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814EAE00A38; Mon, 26 Mar 2018 07:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06AC1E0070F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 07:46:46 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id o102-v6so28530828lfg.8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 07:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=e3EjZmhNR3gdUSA9rqXFx3hvyEBx8DQguMBXTuXlR08=;
	b=cykav6boMAL+ibOLLcQI0iDlhAvNwM7wNY0L9ZHKquenaKj+DheU42OwbKLX/n6Lkx
	pgIrHW9dCiyai1e/Yt2AK8UiFgX5znQJJdGngtglWPH2NmXJCX6mvShDK9d+AqfftiaQ
	GBwPun8Y8T/lJJXIa3vj/TAoJmZTVPs2+/NGOUd8rBjfChB1wnROHT7S3ifoQymckHdq
	21kKW5YtaktbFatI5WHcwfpZ8pvcONwi9iCxjjjx91D/OI2VqBsP6RrxpCCHm1Ri4llq
	/eZuGaKrzb3yH1yq042Vtg5I3FHhaLkVVnWLyK3vDwDQp4hAZZbpJorc2BPUcu4SFaSc
	V6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=e3EjZmhNR3gdUSA9rqXFx3hvyEBx8DQguMBXTuXlR08=;
	b=G0j85/er+8FSU3qaA/5U3t/4QJhid7+eh4TR6jV0IEmMD4AFaeW3qd3YLsg8pBTQTq
	oHEtMhxzLt8uG7h4vF+dQHnNsQ1NbSpIg/bQZemfzeTqjAmbg4rqiExb7+oBMka0SAFs
	sBpvHIY2/6aBjIfCwAPw01x2pqnJcR/+jlIOdC1lfW3myGc7Sbfjdi6qCYGtDvMJFY4b
	2mdvUqH/BPvygFZ969Gbv8PbPz/rK010x8RK1AIHFpWippPCOGRmzQkjYSF0KzLAiRol
	rANst8uFKrlGuQtBAA07LwT2yi8sKv5wVizoJezOx/e3UtmKt0KV6m4rd/ESy17F75/X
	ii9g==
X-Gm-Message-State: AElRT7FtDXiKa1TDFSjS7qdZJ5O+r826VCorWFXhNdWD0cj24nPrgxN9
	7NvGA+w/zdZQG73hm1WNQZGL53HXVNCvClBTFXjhsR8y
X-Google-Smtp-Source: AIpwx486ecmc018i/7Opa5G8jQptSD5j39d2Cu+WnuE8LGM8J56ALOBJnlFujm2xNzHdHp7KTOY5pJVUmnpixBtL/T4=
X-Received: by 10.46.129.7 with SMTP id d7mr2943936ljg.148.1522075605344; Mon,
	26 Mar 2018 07:46:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:deda:0:0:0:0:0 with HTTP; Mon, 26 Mar 2018 07:46:44
	-0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 26 Mar 2018 15:46:44 +0100
Message-ID: <CABatt_wJWubqY_6c6CSTZSR4Si9+5ROM4QgB21EY72BiBATVyA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: chrpath error: Building SDK fails after porting to Rocko
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
X-List-Received-Date: Mon, 26 Mar 2018 14:46:48 -0000
Content-Type: multipart/alternative; boundary="f4f5e80decbcc7268c056851d732"

--f4f5e80decbcc7268c056851d732
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've just ported my build to Rocko but I now can't build the SDK, the
offending package is u-boot-tools which I have based on u-boot-mkimage
(which also fails with the same error message).  Does anyone have any idea
on how to debug/fix this?

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal-4.8"
TARGET_SYS           =3D "arm-bia-linux-gnueabi"
MACHINE              =3D "varsomam43"
DISTRO               =3D "bia"
DISTRO_VERSION       =3D "20180207-requiem-r11029"
TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard
cortexa9"
TARGET_FPU           =3D "hard"
meta-bia-distro
meta-martin
meta-martin-bsp  =3D "<unknown>:<unknown>"
meta-python
meta-oe
meta-webserver
meta-filesystems     =3D "rocko:a65c1acb1822966c3553de9fc98d8bb6be705c4e"
meta-ti              =3D "rocko:4a746c78c3b7060a51cd6a876f69eead363c757c"
meta-networking      =3D "rocko:a65c1acb1822966c3553de9fc98d8bb6be705c4e"
meta
meta-poky            =3D "rocko:1648bcafa3d0e46acee61a34d0a07fabb85b1f8d"
meta-security-isafw  =3D "HEAD:489abdc65cefb566d696c8b218aa0b9b99a350ae"

NOTE: Fetching uninative binary shim from
http://downloads.yoctoproject.org/releases/uninative/1.8/x86_64-nativesdk-l=
ibc.tar.bz2;sha256sum=3Dde4947e98e09e1432d069311cc2093974ecb9138a714fd5466f=
73524de66a693
Initialising tasks: 100%
|##########################################################################=
######################################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: nativesdk-u-boot-tools-v2016.03+gitAUTOINC+df61a74e68-r0 do_package:
nativesdk-u-boot-tools: chrpath command failed with exit code 7:
b'/home/martin/bia-precision-rocko/build/tmp/work/x86_64-nativesdk-biasdk-l=
inux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a74e68-r0/package/opt/b=
ia/20180207-requiem-r11029/sysroots/x86_64-biasdk-linux/usr/bin/uboot-dumpi=
mage:
RPATH=3D/home/martin/bia-precision-rocko/build/tmp/work/x86_64-nativesdk-bi=
asdk-linux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a74e68-r0/recipe-=
sysroot-native/usr/lib:/home/martin/bia-precision-rocko/build/tmp/work/x86_=
64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a7=
4e68-r0/recipe-sysroot-native/lib\n'b"new
rpath
'$ORIGIN/../../../../../../../home/martin/bia-precision-rocko/build/tmp/wor=
k/x86_64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+=
df61a74e68-r0/recipe-sysroot-native/usr/lib:$ORIGIN/../../../../../../../ho=
me/martin/bia-precision-rocko/build/tmp/work/x86_64-nativesdk-biasdk-linux/=
nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a74e68-r0/recipe-sysroot-nat=
ive/lib'
too large; maximum length 333\n"
ERROR: nativesdk-u-boot-tools-v2016.03+gitAUTOINC+df61a74e68-r0 do_package:
Function failed: perform_packagecopy
ERROR: Logfile of failure stored in:
/home/martin/bia-precision-rocko/build/tmp/work/x86_64-nativesdk-biasdk-lin=
ux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a74e68-r0/temp/log.do_pac=
kage.9810
ERROR: Task
(virtual:nativesdk:/home/martin/bia-precision-rocko/build/../yocto/martin/m=
eta-martin-bsp/recipes-bsp/u-boot/u-boot-tools_2016.03.bb:do_package)
failed with exit code '1'SUMMARY =3D "U-Boot native tools"

Here's the recipe

LICENSE =3D "GPLv2+"
LIC_FILES_CHKSUM =3D
"file://Licenses/README;md5=3Da2c678cfd4a4d97135585cad908541c6"
SECTION =3D "bootloader"

DEPENDS =3D "openssl"

# This revision corresponds to the tag "v2016.03"
# We use the revision in order to avoid having to fetch it from the
# repo during parse
SRCREV =3D "df61a74e6845ec9bdcdd48d2aff5e9c2c6debeaa"

PV =3D "v2016.03+git${SRCPV}"

SRC_URI =3D "git://git.denx.de/u-boot.git;branch=3Dmaster"

S =3D "${WORKDIR}/git"

EXTRA_OEMAKE_class-target =3D 'CROSS_COMPILE=3D"${TARGET_PREFIX}" CC=3D"${C=
C}
${CFLAGS} ${LDFLAGS}" HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS=
}"
STRIP=3Dtrue V=3D1'
EXTRA_OEMAKE_class-native =3D 'CC=3D"${BUILD_CC} ${BUILD_CFLAGS}
${BUILD_LDFLAGS}" HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}"
STRIP=3Dtrue V=3D1'
EXTRA_OEMAKE_class-nativesdk =3D 'CROSS_COMPILE=3D"${HOST_PREFIX}" CC=3D"${=
CC}
${CFLAGS} ${LDFLAGS}" HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS=
}"
STRIP=3Dtrue V=3D1'

do_compile () {
oe_runmake sandbox_defconfig
oe_runmake cross_tools NO_SDL=3D1
}

do_install () {
install -d ${D}${bindir}
# MJT: Looks like these are now part of U-Boot native package so commenting
out
#      Can remove once this is confirmed.
# install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage
# ln -sf uboot-mkimage ${D}${bindir}/mkimage

install -m 0755 tools/mkenvimage ${D}${bindir}/uboot-mkenvimage
ln -sf uboot-mkenvimage ${D}${bindir}/mkenvimage

install -m 0755 tools/dumpimage ${D}${bindir}/uboot-dumpimage
ln -sf uboot-dumpimage ${D}${bindir}/dumpimage

install -m 0755 tools/img2brec.sh ${D}${bindir}/uboot-img2brec.sh
ln -sf uboot-img2brec.sh ${D}${bindir}/img2brec.sh

install -m 0755 tools/img2srec ${D}${bindir}/uboot-img2srec
ln -sf uboot-img2srec ${D}${bindir}/img2srec

install -m 0755 tools/jtagconsole ${D}${bindir}/uboot-jtagconsole
ln -sf uboot-jtagconsole ${D}${bindir}/jtagconsole

install -m 0755 tools/netconsole ${D}${bindir}/uboot-netconsole
ln -sf uboot-netconsole ${D}${bindir}/netconsole
}

BBCLASSEXTEND =3D "native nativesdk"


Many Thanks in advance, Martin.

--f4f5e80decbcc7268c056851d732
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve just ported my =
build to Rocko but I now can&#39;t build the SDK, the offending package is =
u-boot-tools which I have based on u-boot-mkimage (which also fails with th=
e same error message).=C2=A0 Does anyone have any idea on how to debug/fix =
this?</div><div><br></div><div>Build Configuration:</div><div>BB_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&quot;</div><div>BUIL=
D_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;=
</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot=
;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;ar=
m-bia-linux-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;varsomam43&quot;</div><div>DISTRO=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;bia&quot;</div><div>DIST=
RO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;20180207-requiem-r11029&quot=
;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a v=
fp thumb neon callconvention-hard cortexa9&quot;</div><div>TARGET_FPU=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;</div><div>meta-bia-=
distro=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-martin=C2=A0 =C2=A0 =C2=A0=
=C2=A0</div><div>meta-martin-bsp=C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknow=
n&gt;&quot;</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</=
div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div=
><div>meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-filesystems=
=C2=A0 =C2=A0 =C2=A0=3D &quot;rocko:a65c1acb1822966c3553de9fc98d8bb6be705c4=
e&quot;</div><div>meta-ti=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;rocko:4a746c78c3b7060a51cd6a876f69eead363c757c&quot;</div><div>me=
ta-networking=C2=A0 =C2=A0 =C2=A0 =3D &quot;rocko:a65c1acb1822966c3553de9fc=
98d8bb6be705c4e&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;rocko:1648bcafa3d0e46acee61a34d0a07fabb85b1f8d&quot;</=
div><div>meta-security-isafw=C2=A0 =3D &quot;HEAD:489abdc65cefb566d696c8b21=
8aa0b9b99a350ae&quot;</div><div><br></div><div>NOTE: Fetching uninative bin=
ary shim from <a href=3D"http://downloads.yoctoproject.org/releases/uninati=
ve/1.8/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dde4947e98e09e1432d069311cc=
2093974ecb9138a714fd5466f73524de66a693">http://downloads.yoctoproject.org/r=
eleases/uninative/1.8/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dde4947e98e0=
9e1432d069311cc2093974ecb9138a714fd5466f73524de66a693</a></div><div>Initial=
ising tasks: 100% |########################################################=
########################################################################| T=
ime: 0:00:01</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Execu=
ting RunQueue Tasks</div><div>ERROR: nativesdk-u-boot-tools-v2016.03+gitAUT=
OINC+df61a74e68-r0 do_package: nativesdk-u-boot-tools: chrpath command fail=
ed with exit code 7:</div><div>b&#39;/home/martin/bia-precision-rocko/build=
/tmp/work/x86_64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/v2016.03+git=
AUTOINC+df61a74e68-r0/package/opt/bia/20180207-requiem-r11029/sysroots/x86_=
64-biasdk-linux/usr/bin/uboot-dumpimage: RPATH=3D/home/martin/bia-precision=
-rocko/build/tmp/work/x86_64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/=
v2016.03+gitAUTOINC+df61a74e68-r0/recipe-sysroot-native/usr/lib:/home/marti=
n/bia-precision-rocko/build/tmp/work/x86_64-nativesdk-biasdk-linux/nativesd=
k-u-boot-tools/v2016.03+gitAUTOINC+df61a74e68-r0/recipe-sysroot-native/lib\=
n&#39;b&quot;new rpath &#39;$ORIGIN/../../../../../../../home/martin/bia-pr=
ecision-rocko/build/tmp/work/x86_64-nativesdk-biasdk-linux/nativesdk-u-boot=
-tools/v2016.03+gitAUTOINC+df61a74e68-r0/recipe-sysroot-native/usr/lib:$ORI=
GIN/../../../../../../../home/martin/bia-precision-rocko/build/tmp/work/x86=
_64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a=
74e68-r0/recipe-sysroot-native/lib&#39; too large; maximum length 333\n&quo=
t;</div><div>ERROR: nativesdk-u-boot-tools-v2016.03+gitAUTOINC+df61a74e68-r=
0 do_package: Function failed: perform_packagecopy</div><div>ERROR: Logfile=
 of failure stored in: /home/martin/bia-precision-rocko/build/tmp/work/x86_=
64-nativesdk-biasdk-linux/nativesdk-u-boot-tools/v2016.03+gitAUTOINC+df61a7=
4e68-r0/temp/log.do_package.9810</div><div>ERROR: Task (virtual:nativesdk:/=
home/martin/bia-precision-rocko/build/../yocto/martin/meta-martin-bsp/recip=
es-bsp/u-boot/u-boot-tools_2016.03.bb:do_package) failed with exit code &#3=
9;1&#39;SUMMARY =3D &quot;U-Boot native tools&quot;</div><div><br></div><di=
v>Here&#39;s the recipe</div><div><br></div><div>LICENSE =3D &quot;GPLv2+&q=
uot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3Da2c6=
78cfd4a4d97135585cad908541c6&quot;</div><div>SECTION =3D &quot;bootloader&q=
uot;</div><div><br></div><div>DEPENDS =3D &quot;openssl&quot;</div><div><br=
></div><div># This revision corresponds to the tag &quot;v2016.03&quot;</di=
v><div># We use the revision in order to avoid having to fetch it from the<=
/div><div># repo during parse</div><div>SRCREV =3D &quot;df61a74e6845ec9bdc=
dd48d2aff5e9c2c6debeaa&quot;</div><div><br></div><div>PV =3D &quot;v2016.03=
+git${SRCPV}&quot;</div><div><br></div><div>SRC_URI =3D &quot;git://<a href=
=3D"http://git.denx.de/u-boot.git;branch=3Dmaster">git.denx.de/u-boot.git;b=
ranch=3Dmaster</a>&quot;</div><div><br></div><div>S =3D &quot;${WORKDIR}/gi=
t&quot;</div><div><br></div><div>EXTRA_OEMAKE_class-target =3D &#39;CROSS_C=
OMPILE=3D&quot;${TARGET_PREFIX}&quot; CC=3D&quot;${CC} ${CFLAGS} ${LDFLAGS}=
&quot; HOSTCC=3D&quot;${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}&quot; ST=
RIP=3Dtrue V=3D1&#39;</div><div>EXTRA_OEMAKE_class-native =3D &#39;CC=3D&qu=
ot;${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}&quot; HOSTCC=3D&quot;${BUIL=
D_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}&quot; STRIP=3Dtrue V=3D1&#39;</div><=
div>EXTRA_OEMAKE_class-nativesdk =3D &#39;CROSS_COMPILE=3D&quot;${HOST_PREF=
IX}&quot; CC=3D&quot;${CC} ${CFLAGS} ${LDFLAGS}&quot; HOSTCC=3D&quot;${BUIL=
D_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}&quot; STRIP=3Dtrue V=3D1&#39;</div><=
div><br></div><div>do_compile () {</div><div><span style=3D"white-space:pre=
">	</span>oe_runmake sandbox_defconfig</div><div><span style=3D"white-space=
:pre">	</span>oe_runmake cross_tools NO_SDL=3D1</div><div>}</div><div><br><=
/div><div>do_install () {</div><div><span style=3D"white-space:pre">	</span=
>install -d ${D}${bindir}</div><div># MJT: Looks like these are now part of=
 U-Boot native package so commenting out</div><div>#=C2=A0 =C2=A0 =C2=A0 Ca=
n remove once this is confirmed.</div><div>#<span style=3D"white-space:pre"=
>	</span>install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage</div><di=
v>#<span style=3D"white-space:pre">	</span>ln -sf uboot-mkimage ${D}${bindi=
r}/mkimage</div><div><br></div><div><span style=3D"white-space:pre">	</span=
>install -m 0755 tools/mkenvimage ${D}${bindir}/uboot-mkenvimage</div><div>=
<span style=3D"white-space:pre">	</span>ln -sf uboot-mkenvimage ${D}${bindi=
r}/mkenvimage</div><div><br></div><div><span style=3D"white-space:pre">	</s=
pan>install -m 0755 tools/dumpimage ${D}${bindir}/uboot-dumpimage</div><div=
><span style=3D"white-space:pre">	</span>ln -sf uboot-dumpimage ${D}${bindi=
r}/dumpimage</div><div><br></div><div><span style=3D"white-space:pre">	</sp=
an>install -m 0755 tools/img2brec.sh ${D}${bindir}/uboot-img2brec.sh</div><=
div><span style=3D"white-space:pre">	</span>ln -sf uboot-img2brec.sh ${D}${=
bindir}/img2brec.sh</div><div><br></div><div><span style=3D"white-space:pre=
">	</span>install -m 0755 tools/img2srec ${D}${bindir}/uboot-img2srec</div>=
<div><span style=3D"white-space:pre">	</span>ln -sf uboot-img2srec ${D}${bi=
ndir}/img2srec</div><div><br></div><div><span style=3D"white-space:pre">	</=
span>install -m 0755 tools/jtagconsole ${D}${bindir}/uboot-jtagconsole</div=
><div><span style=3D"white-space:pre">	</span>ln -sf uboot-jtagconsole ${D}=
${bindir}/jtagconsole</div><div><br></div><div><span style=3D"white-space:p=
re">	</span>install -m 0755 tools/netconsole ${D}${bindir}/uboot-netconsole=
</div><div><span style=3D"white-space:pre">	</span>ln -sf uboot-netconsole =
${D}${bindir}/netconsole</div><div>}</div><div><br></div><div>BBCLASSEXTEND=
 =3D &quot;native nativesdk&quot;</div><div><br></div><div><br></div><div>M=
any Thanks in advance, Martin.</div></div>

--f4f5e80decbcc7268c056851d732--
