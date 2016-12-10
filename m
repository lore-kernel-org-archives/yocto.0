Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6624FE00955; Sat, 10 Dec 2016 13:11:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3BBBE0083D
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:10:51 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id w194so2553297vkw.3
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=eIKvnUsmdRoe/6lHLT2W5ZFYUrPhvSge6jZd4396AMc=;
	b=nOcipLf0/Ha4wQH58u5CwhKIuN1uicHyXdXkndyFGLxsCqVw3mqSaaOCahsTQRY3Bj
	jFFJbIzEwSv7cb2Jge3yQu5T48gtEZqn6PUcLwfHiqN8IWw4D/QFbLUhhC6x85cNTttu
	7JC93l1/cveFs8NeKr1PuTn/GHYEFIYj0pas7CGtutZh69IBKy5IWdf8hqKFjNDYzssj
	dJg/+axDd/Dd8yzzzkCaIsUyBp8BBsWDyuc3U7vzp/SyxFqZVJTa3HVhVGW/I+Mp4THk
	3wQ8POP4wXth5+fhDWYzG8G93nuYxXFtURgf+biq/lnwEBwk3mGXUNv8gmG4lgFYASaZ
	Qv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=eIKvnUsmdRoe/6lHLT2W5ZFYUrPhvSge6jZd4396AMc=;
	b=SPf/PlrrcamwQ1tB5pMUlL/0aVBTeUsuWKY799htzD0j9UHwgNabXvnqin3HLanm3v
	YBN26EG5nK65UfXaWJ37Nu8AKa2EtTcyH0XqX3FhoWuKhXX4hURgjUXDyo2EA6qIXbhS
	lRqjBIkm98kLL7HwH4w8ddniC1pfy57zhy4WoJbYnQl61lAxdKE/HguKvH8iveVkQFyN
	2blXryiw6iGdTHB8XO9jrBsseeaHYtedigdMhjNwg2hYQ/XbwUxkZjCnzqdsoWZM5xKe
	ImSwZgK8RxR2O8W422ALmOe5LHm3q71VM5PUi1MrLJB3FjSYFHJtikgpVNXc3MewUEvJ
	z4/A==
X-Gm-Message-State: AKaTC02DioJT2ijtjCl5Lh8nvv8Cg2kVXLJjxB2cfnyz70jAI6lgwGbMxHZhg2dMIa0JC5vRuCQAxm/xhGxP7Q==
X-Received: by 10.31.153.195 with SMTP id b186mr34144449vke.140.1481404250801; 
	Sat, 10 Dec 2016 13:10:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sat, 10 Dec 2016 13:10:19 -0800 (PST)
In-Reply-To: <1481380750-28881-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1481380750-28881-1-git-send-email-philippe.coval@osg.samsung.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Dec 2016 13:10:19 -0800
Message-ID: <CAMKF1srBOEEmU7g1M6u4eMmuz11BmS10DB4OzXjztztVqLw-Cg@mail.gmail.com>
To: Philippe Coval <philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, kishen.maloor@intel.com
Subject: Re: [meta-oic][PATCH] Update for IoTivity 1.2.0
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
X-List-Received-Date: Sat, 10 Dec 2016 21:11:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 10, 2016 at 6:39 AM, Philippe Coval
<philippe.coval@osg.samsung.com> wrote:
> Note: build parameters are now aligned to upstream default.
>
> Compared to earlier recipe, configuration changes are:
>
>  - Previous WITH_RD parameter is now replaced by RD_MODE
>    (set to CLIENT by default)
>  - ROOTING was previously set to gateway (GW)
>    while default use EP, which is also used in this version.
>
> For more details please check:
> https://wiki.iotivity.org/yocto
>
> Change-Id: I3296c94baab43ec442994379b2ffaaf9a0146228
> Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
> ---
>  README                                  |   2 +-
>  recipes-core/iotivity/iotivity_1.2.0.bb | 521 ++++++++++++++++++++++++++=
++++++
>  2 files changed, 522 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-core/iotivity/iotivity_1.2.0.bb
>
> diff --git a/README b/README
> index d076963..c6cf1a7 100644
> --- a/README
> +++ b/README
> @@ -1,6 +1,6 @@
>  meta-oic
>  =3D=3D=3D=3D=3D=3D=3D=3D
> -This layer contains recipes for the IoTivity Project (v1.1.1)
> +This layer contains recipes for the IoTivity Project (v1.2.0)
>  , sample applications and related components for any Yocto target.
>
>  Contents
> diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotiv=
ity/iotivity_1.2.0.bb
> new file mode 100644
> index 0000000..3dacbb7
> --- /dev/null
> +++ b/recipes-core/iotivity/iotivity_1.2.0.bb
> @@ -0,0 +1,521 @@
> +PR =3D "r1"

Drop PR

> +SUMMARY =3D "IoTivity framework and SDK sponsored by the Open Connectivi=
ty Foundation."
> +DESCRIPTION =3D "IoTivity is an open source software framework enabling =
seamless device-to-device connectivity to address the emerging needs of the=
 Internet of Things."
> +HOMEPAGE =3D "https://www.iotivity.org/"
> +DEPENDS =3D "boost virtual/gettext chrpath-replacement-native expat open=
ssl util-linux curl glib-2.0"
> +EXTRANATIVEPATH +=3D "chrpath-native"
> +SECTION =3D "libs"
> +LICENSE =3D "Apache-2.0"
> +LIC_FILES_CHKSUM =3D "file://LICENSE.md;md5=3D22bf216f3077c279aed7b36b1f=
a9e6d1"
> +
> +branch_iotivity =3D "1.2-rel"
> +SRCREV =3D "1a2e71f9c470c7cc17157f83deb4488ee83050a4"
> +SRC_URI =3D "git://github.com/iotivity/iotivity.git;destsuffix=3D${S};br=
anch=3D${branch_iotivity};protocol=3Dhttp;"
> +
> +url_tinycbor =3D "git://github.com/01org/tinycbor.git"
> +SRCREV_tinycbor =3D "31c7f81d45d115d2007b1c881cbbd3a19618465c"
> +SRC_URI +=3D "${url_tinycbor};name=3Dtinycbor;destsuffix=3D${S}/extlibs/=
tinycbor/tinycbor;protocol=3Dhttp"
> +
> +url_gtest =3D "http://pkgs.fedoraproject.org/repo/pkgs/gtest/gtest-1.7.0=
.zip/2d6ec8ccdf5c46b05ba54a9fd1d130d7/gtest-1.7.0.zip"
> +SRC_URI[gtest.md5sum] =3D "2d6ec8ccdf5c46b05ba54a9fd1d130d7"
> +SRC_URI[gtest.sha256sum] =3D "247ca18dd83f53deb1328be17e4b1be31514cedfc1=
e3424f672bf11fd7e0d60d"
> +SRC_URI +=3D "${url_gtest};name=3Dgtest;subdir=3D${BP}/extlibs/gtest"
> +
> +url_hippomocks =3D "git://github.com/dascandy/hippomocks.git"
> +SRCREV_hippomocks =3D "dca4725496abb0e41f8b582dec21d124f830a8e5"
> +SRC_URI +=3D "${url_hippomocks};name=3Dhippomocks;destsuffix=3D${S}/extl=
ibs/hippomocks-master;protocol=3Dhttp"
> +SRC_URI +=3D "file://hippomocks_mips_patch"
> +
> +url_sqlite =3D "http://www.sqlite.org/2015/sqlite-amalgamation-3081101.z=
ip"
> +SRC_URI[sqlite3.md5sum] =3D "94907e831502e2080b76e281cfa24dde"
> +SRC_URI[sqlite3.sha256sum] =3D "a3b0c07d1398d60ae9d21c2cc7f9be6b1bc5b016=
8cd94c321ede9a0fce2b3cd7"
> +SRC_URI +=3D "${url_sqlite};name=3Dsqlite3;subdir=3D${BP}/extlibs/sqlite=
3;unpack=3Dfalse"
> +
> +SRCREV_mbedtls =3D "master"
> +SRCREV_mbedtls =3D "85c2a928ed352845793db000e78e2b42c8dcf055"

srcrev is being set twice

> +url_mbedtls=3D"git://github.com/ARMmbed/mbedtls.git"
> +SRC_URI +=3D "${url_mbedtls};name=3Dmbedtls;destsuffix=3D${S}/extlibs/mb=
edtls/mbedtls;protocol=3Dhttp"
> +
> +inherit pkgconfig scons
> +
> +
> +python () {
> +    IOTIVITY_TARGET_ARCH =3D d.getVar("TARGET_ARCH", True)
> +    d.setVar("IOTIVITY_TARGET_ARCH", IOTIVITY_TARGET_ARCH)
> +    EXTRA_OESCONS =3D d.getVar("EXTRA_OESCONS", True)
> +    EXTRA_OESCONS +=3D " TARGET_OS=3Dyocto TARGET_ARCH=3D" + IOTIVITY_TA=
RGET_ARCH + " RELEASE=3D1"
> +    EXTRA_OESCONS +=3D " VERBOSE=3D1"
> +    # Aligned to default configuration, but features can be changed here=
 (at your own risk):
> +    # EXTRA_OESCONS +=3D " ROUTING=3DGW"
> +    # EXTRA_OESCONS +=3D " SECURED=3D1"
> +    # EXTRA_OESCONS +=3D " TCP=3D1"
> +    d.setVar("EXTRA_OESCONS", EXTRA_OESCONS)
> +}
> +
> +
> +IOTIVITY_BIN_DIR =3D "/opt/${PN}"
> +IOTIVITY_BIN_DIR_D =3D "${D}${IOTIVITY_BIN_DIR}"
> +
> +do_compile_prepend() {
> +    export PKG_CONFIG_PATH=3D"${PKG_CONFIG_PATH}"
> +    export PKG_CONFIG=3D"PKG_CONFIG_SYSROOT_DIR=3D\"${PKG_CONFIG_SYSROOT=
_DIR}\" pkg-config"
> +    export LD_FLAGS=3D"${LD_FLAGS}"
> +}
> +
> +make_dir() {
> +    install -d $1
> +}
> +
> +copy_file() {
> +    install -c -m 444 $1 $2
> +}
> +
> +copy_exec() {
> +    install -c -m 555 $1 $2
> +}
> +
> +copy_file_recursive() {
> +    cd $1 && find . -type d -exec install -d $2/"{}" \;
> +    cd $1 && find . -type f -exec install -c -m 444 "{}" $2/"{}" \;
> +}
> +
> +copy_exec_recursive() {
> +    cd $1 && find . -executable -exec install -c -m 555 "{}" $2/"{}" \;
> +}
> +
> +do_install() {
> +    make_dir ${D}${libdir}
> +    #Resource
> +    #C++ APIs
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc.so ${=
D}${libdir}
> +    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', 'true', 'fal=
se', d)}; then
> +        copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/provisioning/libocprovision.so ${D}${libdir}
> +    fi
> +
> +    #Logger
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc_logge=
r.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc_logge=
r_core.so ${D}${libdir}
> +
> +    #CSDK Shared
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libconnecti=
vity_abstraction.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboctbstac=
k.so ${D}${libdir}
> +
> +    #CSDK Static
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libconnecti=
vity_abstraction.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libcoap.a $=
{D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboctbstac=
k.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libc_common=
.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libocsrm.a =
${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libroutingm=
anager.a ${D}${libdir}
> +
> +    #Resource C++ Apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    find ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/example=
s/ \
> +      -iname "*.dat"\
> +      -exec install -c -m 444 "{}"  ${IOTIVITY_BIN_DIR_D}/examples/resou=
rce/cpp/ \;
> +
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/presenceclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/presenceserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/groupclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/groupserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/roomclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/roomserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/simpleclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/simpleclientserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/simpleserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/fridgeclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/fridgeserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/garageclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/garageserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/simpleclientHQ ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/simpleserverHQ ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/devicediscoveryserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/devicediscoveryclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/threadingsample ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/ex=
amples/lightserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/examples/OI=
CMiddle/OICMiddle ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
> +    chrpath -d `find ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp/ -type =
f -perm /u+x`
> +
> +    #Resource CSDK Apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServe=
r
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/occlientcoll ${IOTIVITY_BIN_DIR_D=
}/examples/resource/c/SimpleClientServer
> +    if ${@bb.utils.contains('EXTRA_OESCONS', 'ROUTING=3DGW', 'true', 'fa=
lse', d)}; then
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/csdk/stack/samples/linux/SimpleClientServer/ocrouting ${IOTIVITY_BIN_DIR_=
D}/examples/resource/c/SimpleClientServer
> +    fi
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/ocserver ${IOTIVITY_BIN_DIR_D}/ex=
amples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/ocserverbasicops ${IOTIVITY_BIN_D=
IR_D}/examples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/occlientslow ${IOTIVITY_BIN_DIR_D=
}/examples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/ocserverslow ${IOTIVITY_BIN_DIR_D=
}/examples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/occlientbasicops ${IOTIVITY_BIN_D=
IR_D}/examples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/ocservercoll ${IOTIVITY_BIN_DIR_D=
}/examples/resource/c/SimpleClientServer
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/samples/linux/SimpleClientServer/occlient ${IOTIVITY_BIN_DIR_D}/ex=
amples/resource/c/SimpleClientServer
> +    chrpath -d ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientSer=
ver/*
> +
> +    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', 'true', 'fal=
se', d)}; then
> +        make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/csdk/stack/samples/linux/secure/ocamsservice ${IOTIVITY_BIN_DIR_D}/exampl=
es/resource/c/secure
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/csdk/stack/samples/linux/secure/ocserverbasicops ${IOTIVITY_BIN_DIR_D}/ex=
amples/resource/c/secure
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/csdk/stack/samples/linux/secure/occlientbasicops ${IOTIVITY_BIN_DIR_D}/ex=
amples/resource/c/secure
> +
> +        find ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csd=
k/stack/samples/linux \
> +          -iname "*.dat"\
> +          -exec install -c -m 444 {} ${IOTIVITY_BIN_DIR_D}/examples/reso=
urce/c/secure/ \;
> +    fi
> +
> +    #Resource Tests
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/resource
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/c_=
common/ocrandom/test/randomtests ${IOTIVITY_BIN_DIR_D}/tests/resource/ocran=
dom_tests
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/un=
ittests/unittests ${IOTIVITY_BIN_DIR_D}/tests/resource/oc_unittests
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/un=
ittests/oic_svr_db_client.dat ${IOTIVITY_BIN_DIR_D}/tests/resource
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/stack/test/stacktests ${IOTIVITY_BIN_DIR_D}/tests/resource/octbstack_tes=
ts
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/cs=
dk/connectivity/test/catests ${IOTIVITY_BIN_DIR_D}/tests/resource/ca_tests
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/oc=
_logger/examples/examples_cpp ${IOTIVITY_BIN_DIR_D}/tests/resource/logger_t=
est_cpp
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/oc=
_logger/examples/examples_c ${IOTIVITY_BIN_DIR_D}/tests/resource/logger_tes=
t_c
> +    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', 'true', 'fal=
se', d)}; then
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resourc=
e/csdk/security/unittest/unittest ${IOTIVITY_BIN_DIR_D}/tests/resource/secu=
rity_tests
> +    fi
> +    #Resource headers
> +    make_dir ${D}${includedir}/iotivity/resource/stack/
> +    make_dir ${D}${includedir}/iotivity/resource/logger/
> +    make_dir ${D}${includedir}/iotivity/resource/connectivity/api
> +    make_dir ${D}${includedir}/iotivity/resource/connectivity/external
> +    make_dir ${D}${includedir}/iotivity/resource/connectivity/common
> +    make_dir ${D}${includedir}/iotivity/resource/security/
> +    make_dir ${D}${includedir}/iotivity/resource/ocrandom/
> +    make_dir ${D}${includedir}/iotivity/resource/oc_logger/
> +
> +    copy_file_recursive ${S}/resource/include ${D}${includedir}/iotivity=
/resource
> +    copy_file_recursive ${S}/resource/csdk/stack/include ${D}${includedi=
r}/iotivity/resource/stack
> +    copy_file_recursive ${S}/resource/csdk/logger/include  ${D}${include=
dir}/iotivity/resource/logger
> +    copy_file_recursive ${S}/resource/csdk/connectivity/inc  ${D}${inclu=
dedir}/iotivity/resource/connectivity
> +    copy_file_recursive ${S}/resource/csdk/connectivity/api ${D}${includ=
edir}/iotivity/resource/connectivity/api
> +    copy_file_recursive ${S}/resource/csdk/connectivity/common/inc ${D}$=
{includedir}/iotivity/resource/connectivity/common
> +    copy_file_recursive ${S}/resource/csdk/security/include  ${D}${inclu=
dedir}/iotivity/resource/security
> +    copy_file_recursive ${S}/resource/c_common/ocrandom/include ${D}${in=
cludedir}/iotivity/resource/ocrandom
> +    copy_file_recursive ${S}/resource/oc_logger/include ${D}${includedir=
}/iotivity/resource/oc_logger
> +    copy_file ${S}/resource/c_common/oic_string/include/oic_string.h ${D=
}${includedir}/iotivity/resource
> +    copy_file ${S}/resource/c_common/oic_malloc/include/oic_malloc.h ${D=
}${includedir}/iotivity/resource
> +
> +    #ZigBee Plugin
> +    #Libraries
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libzigbee_w=
rapper.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libtelegesi=
s_wrapper.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libplugin_i=
nterface.a ${D}${libdir}
> +
> +    #Headers
> +    make_dir ${D}${includedir}/iotivity/plugins
> +    copy_file_recursive ${S}/plugins/include ${D}${includedir}/iotivity/=
plugins
> +
> +    #Samples
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/sam=
ples/linux/iotivityandzigbeeserver ${IOTIVITY_BIN_DIR_D}/examples/plugins/z=
igbee
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/sam=
ples/linux/iotivityandzigbeeclient ${IOTIVITY_BIN_DIR_D}/examples/plugins/z=
igbee
> +    chrpath -d ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee/*
> +
> +    #Tests
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/uni=
ttests/piunittests ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee
> +    chrpath -d ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee/*
> +
> +    #Service Components
> +    #Resource container
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_cont=
ainer.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_cont=
ainer.a ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libBMISenso=
rBundle.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libDISensor=
Bundle.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libHueBundl=
e.so ${D}${libdir}
> +
> +    #Resource container sample apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/HeightSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/reso=
urce-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/THSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/resource=
-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/THSensorApp1 ${IOTIVITY_BIN_DIR_D}/examples/service/resourc=
e-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/WeightSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/reso=
urce-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/ContainerSample ${IOTIVITY_BIN_DIR_D}/examples/service/reso=
urce-container/
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/ContainerSampleClient ${IOTIVITY_BIN_DIR_D}/examples/servic=
e/resource-container/
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/examples/ResourceContainerConfig.xml ${IOTIVITY_BIN_DIR_D}/=
examples/service/resource-container/
> +
> +    #Resource container tests
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/unittests/container_test ${IOTIVITY_BIN_DIR_D}/tests/servic=
e/resource-container
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/unittests/libTestBundle.so ${IOTIVITY_BIN_DIR_D}/tests/serv=
ice/resource-container
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/unittests/ResourceContainerInvalidConfig.xml ${IOTIVITY_BIN=
_DIR_D}/tests/service/resource-container
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/unittests/ResourceContainerTestConfig.xml ${IOTIVITY_BIN_DI=
R_D}/tests/service/resource-container
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-container/unittests/libTestBundle.so ${D}${libdir}
> +
> +    #Resource encapsulation
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_clie=
nt.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_clie=
nt.a ${D}${libdir}
> +
> +    #Resource encapsulation common
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_comm=
on.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_comm=
on.a ${D}${libdir}
> +
> +    #Resource encapsulation server builder
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_serv=
er.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_serv=
er.a ${D}${libdir}
> +
> +    #Resource encapsulation sample apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulati=
on
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/examples/linux/sampleResourceClient ${IOTIVITY_BIN_DIR_=
D}/examples/service/resource-encapsulation
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/examples/linux/sampleResourceServer ${IOTIVITY_BIN_DIR_=
D}/examples/service/resource-encapsulation
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/examples/linux/nestedAttributesClient ${IOTIVITY_BIN_DI=
R_D}/examples/service/resource-encapsulation
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/examples/linux/nestedAttributesServer ${IOTIVITY_BIN_DI=
R_D}/examples/service/resource-encapsulation
> +
> +    #Resource encapsulation test
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/=
resource-broker
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/=
resource-cache
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/=
common
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/=
server-builder
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/unittests/rcs_client_test ${IOTIVITY_BIN_DIR_D}/tests/s=
ervice/resource-encapsulation
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/src/resourceBroker/unittest/broker_test ${IOTIVITY_BIN_=
DIR_D}/examples/service/resource-encapsulation/resource-broker
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/src/resourceCache/unittests/cache_test ${IOTIVITY_BIN_D=
IR_D}/examples/service/resource-encapsulation/resource-cache
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/src/common/rcs_common_test ${IOTIVITY_BIN_DIR_D}/exampl=
es/service/resource-encapsulation/common
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-encapsulation/src/serverBuilder/rcs_server_test ${IOTIVITY_BIN_DIR_D}=
/examples/service/resource-encapsulation/server-builder
> +
> +    #Resource hosting
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libresource=
_hosting.a ${D}${libdir}
> +
> +    #Resource hosting sample app
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-hosting
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-hosting/SampleApp/linux/sampleconsumer ${IOTIVITY_BIN_DIR_D}/examples=
/service/resource-hosting
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-hosting/SampleApp/linux/sampleprovider ${IOTIVITY_BIN_DIR_D}/examples=
/service/resource-hosting
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/res=
ource-hosting/SampleApp/linux/sampleresourcehosting ${IOTIVITY_BIN_DIR_D}/e=
xamples/service/resource-hosting
> +
> +    #Things manager
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libTGMSDKLi=
brary.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libTGMSDKLi=
brary.a ${D}${libdir}
> +
> +    #Things manager apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/things-manager/confi=
guration
> +    copy_exec_recursive ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/s=
ervice/things-manager/sampleapp/linux/configuration ${IOTIVITY_BIN_DIR_D}/e=
xamples/service/things-manager/configuration
> +
> +    #Things manager test
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/things-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/thi=
ngs-manager/unittests/ThingsManagerTest ${IOTIVITY_BIN_DIR_D}/tests/service=
/things-manager
> +
> +    #Resource directory
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libresource=
_directory.a ${D}${libdir}
> +
> +    #Easy setup
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libESEnroll=
eeSDK.so ${D}${libdir}
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libESMediat=
orRich.so ${D}${libdir}
> +
> +    #Easy setup app
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/easy-setup
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/eas=
y-setup/sampleapp/mediator/linux/richsdk_sample/mediator_rich ${IOTIVITY_BI=
N_DIR_D}/examples/service/easy-setup
> +
> +    #Easy setup tests
> +    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', 'false', 'tr=
ue', d)}; then
> +        make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/easy-setup
> +        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service=
/easy-setup/mediator/richsdk/unittests/easysetup_mediator_test ${IOTIVITY_B=
IN_DIR_D}/tests/service/easy-setup
> +    fi
> +
> +    #Scene manager
> +    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libscene_ma=
nager.a ${D}${libdir}
> +
> +    #Scene manager apps
> +    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/sce=
ne-manager/sampleapp/linux/fanserver ${IOTIVITY_BIN_DIR_D}/examples/service=
/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/sce=
ne-manager/sampleapp/linux/lightserver ${IOTIVITY_BIN_DIR_D}/examples/servi=
ce/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/sce=
ne-manager/sampleapp/linux/sceneclient ${IOTIVITY_BIN_DIR_D}/examples/servi=
ce/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/sce=
ne-manager/sampleapp/linux/sceneserver ${IOTIVITY_BIN_DIR_D}/examples/servi=
ce/scene-manager
> +
> +    #Scene manager tests
> +    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_actio=
n_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_colle=
ction_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_list_=
test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
> +    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_test =
${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
> +
> +    #Service Headers
> +    make_dir ${D}${includedir}/iotivity/service/resource-container/
> +    make_dir ${D}${includedir}/iotivity/service/resource-encapsulation/
> +    make_dir ${D}${includedir}/iotivity/service/resource-hosting/
> +    make_dir ${D}${includedir}/iotivity/service/resource-directory/
> +    make_dir ${D}${includedir}/iotivity/service/things-manager/
> +    make_dir ${D}${includedir}/iotivity/service/easy-setup/enrollee/
> +    make_dir ${D}${includedir}/iotivity/service/easy-setup/mediator/csdk=
/
> +    make_dir ${D}${includedir}/iotivity/service/easy-setup/mediator/rich=
sdk/
> +    make_dir ${D}${includedir}/iotivity/service/scene-manager/
> +
> +    #Resource container
> +    copy_file_recursive ${S}/service/resource-container/include ${D}${in=
cludedir}/iotivity/service/resource-container
> +
> +    #Resource Encapsulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/include ${D}=
${includedir}/iotivity/service/resource-encapsulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/common/e=
xpiryTimer/include ${D}${includedir}/iotivity/service/resource-encapsulatio=
n
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/common/p=
rimitiveResource/include ${D}${includedir}/iotivity/service/resource-encaps=
ulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/common/u=
tils/include ${D}${includedir}/iotivity/service/resource-encapsulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/resource=
Broker/include ${D}${includedir}/iotivity/service/resource-encapsulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/resource=
Cache/include ${D}${includedir}/iotivity/service/resource-encapsulation
> +    copy_file_recursive ${S}/service/resource-encapsulation/src/serverBu=
ilder/include ${D}${includedir}/iotivity/service/resource-encapsulation
> +
> +    #Resource hosting
> +    copy_file_recursive ${S}/service/resource-hosting/include ${D}${incl=
udedir}/iotivity/service/resource-hosting
> +
> +    #Things manager
> +    copy_file_recursive ${S}/service/things-manager/sdk/inc ${D}${includ=
edir}/iotivity/service/things-manager
> +
> +    #Easy setup
> +    copy_file_recursive ${S}/service/easy-setup/inc ${D}${includedir}/io=
tivity/service/easy-setup
> +    copy_file_recursive ${S}/service/easy-setup/mediator/richsdk/inc/ ${=
D}${includedir}/iotivity/service/easy-setup/mediator/richsdk/
> +
> +    #Scene manager
> +    copy_file_recursive ${S}/service/scene-manager/include ${D}${include=
dir}/iotivity/service/scene-manager/
> +
> +    #Misc headers
> +    make_dir ${D}${includedir}/iotivity/extlibs/cjson
> +    make_dir ${D}${includedir}/iotivity/extlibs/timer
> +    copy_file ${S}/extlibs/cjson/cJSON.h ${D}${includedir}/iotivity/extl=
ibs/cjson
> +    copy_file ${S}/extlibs/timer/timer.h ${D}${includedir}/iotivity/extl=
ibs/timer
> +    copy_file ${S}/resource/c_common/platform_features.h ${D}${includedi=
r}/iotivity/resource
> +    copy_file ${S}/resource/c_common/platform_features.h ${D}${includedi=
r}/iotivity/resource/stack
> +    copy_file ${S}/resource/c_common/iotivity_config.h ${D}${includedir}=
/iotivity/resource
> +
> +    #Adapt unaligned pkconfig (transitionnal)
> +    sed -e 's|^prefix=3D.*|prefix=3D/usr|g' -i ${S}/iotivity.pc
> +    make_dir ${D}${libdir}/pkgconfig/
> +    copy_file ${S}/iotivity.pc ${D}${libdir}/pkgconfig/
> +    ln -s iotivity/resource ${D}${includedir}/resource
> +    ln -s iotivity/service ${D}${includedir}/service
> +    ln -s ../iotivity/resource/oc_logger/targets ${D}${includedir}/resou=
rce/
> +
> +    chrpath -d ${D}${libdir}/*.so
> +}
> +
> +#IOTIVITY packages:
> +#Resource: iotivity-resource, iotivity-resource-dev, iotivity-resource-t=
hin-staticdev, iotivity-resource-dbg
> +#Resource Samples: iotivity-resource-samples, iotivity-resource-samples-=
dbg
> +#Service: iotivity-service, iotivity-service-dev, iotivity-service-stati=
cdev, iotivity-service-dbg
> +#Service Samples: iotivity-service-samples, iotivity-service-samples-dbg
> +#Tests: iotivity-tests, iotivity-tests-dbg
> +
> +FILES_${PN}-resource-dev =3D "\
> +        ${includedir}/iotivity/resource \
> +        ${includedir}/iotivity/extlibs \
> +        ${libdir}/pkgconfig/iotivity.pc"
> +
> +FILES_${PN}-resource-thin-staticdev =3D "\
> +        ${libdir}/libocsrm.a \
> +        ${libdir}/libconnectivity_abstraction.a \
> +        ${libdir}/liboctbstack.a \
> +        ${libdir}/libcoap.a \
> +        ${libdir}/libc_common.a \
> +        ${libdir}/libroutingmanager.a \
> +        ${libdir}/libtimer.a"
> +
> +FILES_${PN}-plugins-staticdev =3D "\
> +        ${includedir}/iotivity/plugins \
> +        ${libdir}/libplugin_interface.a \
> +        ${libdir}/libzigbee_wrapper.a \
> +        ${libdir}/libtelegesis_wrapper.a"
> +
> +FILES_${PN}-plugins-dbg =3D "\
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/plu=
gins"
> +
> +FILES_${PN}-resource =3D "\
> +        ${libdir}/libconnectivity_abstraction.so \
> +        ${libdir}/liboc.so \
> +        ${libdir}/liboctbstack.so \
> +        ${libdir}/liboc_logger.so \
> +        ${libdir}/liboc_logger_core.so \
> +        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', '${libdir}/=
libocprovision.so', '', d)}"
> +
> +FILES_${PN}-resource-dbg =3D "\
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/res=
ource \
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/ext=
libs \
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/exa=
mples \
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/out=
 \
> +        ${libdir}/.debug/liboc.so \
> +        ${libdir}/.debug/liboctbstack.so \
> +        ${libdir}/.debug/liboc_logger.so \
> +        ${libdir}/.debug/liboc_logger_core.so \
> +        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=3D1', '${libdir}/=
.debug/libocprovision.so', '', d)}"
> +
> +FILES_${PN}-resource-samples-dbg =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/resource/cpp/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/resource/c/SimpleClientServer/.debu=
g \
> +        ${IOTIVITY_BIN_DIR}/examples/resource/c/secure/.debug"
> +
> +FILES_${PN}-resource-samples =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/resource"
> +
> +FILES_${PN}-plugins-samples =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/plugins"
> +
> +FILES_${PN}-plugins-samples-dbg =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/plugins/zigbee/.debug"
> +
> +FILES_${PN}-service-dbg =3D "\
> +        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/ser=
vice \
> +        ${libdir}/.debug"
> +
> +FILES_${PN}-service-dev =3D "\
> +        ${includedir}/iotivity/service"
> +
> +FILES_${PN}-service =3D "\
> +        ${libdir}/libBMISensorBundle.so \
> +        ${libdir}/libDISensorBundle.so \
> +        ${libdir}/librcs_server.so \
> +        ${libdir}/librcs_common.so \
> +        ${libdir}/librcs_container.so \
> +        ${libdir}/libHueBundle.so \
> +        ${libdir}/libTGMSDKLibrary.so \
> +        ${libdir}/libESEnrolleeSDK.so \
> +        ${libdir}/libESMediatorRich.so \
> +        ${libdir}/librcs_client.so \
> +        ${libdir}/libTestBundle.so"
> +
> +FILES_${PN}-service-staticdev =3D "\
> +        ${libdir}/librcs_client.a \
> +        ${libdir}/librcs_server.a \
> +        ${libdir}/librcs_common.a \
> +        ${libdir}/librcs_container.a \
> +        ${libdir}/libTGMSDKLibrary.a \
> +        ${libdir}/libresource_hosting.a \
> +        ${libdir}/libresource_directory.a \
> +        ${libdir}/libscene_manager.a"
> +
> +FILES_${PN}-service-samples-dbg =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/service/things-manager/groupaction/=
.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/resource-encapsulation/.deb=
ug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/resource-container/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/resource-hosting/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/resource-directory/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/easy-setup/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/things-manager/configuratio=
n/.debug \
> +        ${IOTIVITY_BIN_DIR}/examples/service/scene-manager/.debug"
> +
> +FILES_${PN}-service-samples =3D "\
> +        ${IOTIVITY_BIN_DIR}/examples/service"
> +
> +FILES_${PN}-tests-dbg =3D "\
> +        ${libdir}/.debug/libgtest.so \
> +        ${libdir}/.debug/libgtest_main.so \
> +        ${IOTIVITY_BIN_DIR}/tests/service/easy-setup/.debug \
> +        ${IOTIVITY_BIN_DIR}/tests/resource/.debug \
> +        ${IOTIVITY_BIN_DIR}/tests/service/things-manager/.debug \
> +        ${IOTIVITY_BIN_DIR}/tests/service/resource-container/.debug \
> +        ${IOTIVITY_BIN_DIR}/tests/service/resource-encapsulation/.debug =
\
> +        ${IOTIVITY_BIN_DIR}/tests/service/scene-manager/.debug \
> +        ${IOTIVITY_BIN_DIR}/tests/plugins/zigbee/.debug"
> +
> +FILES_${PN}-tests =3D "\
> +        ${IOTIVITY_BIN_DIR}/tests"
> +
> +PACKAGES =3D "${PN}-tests-dbg ${PN}-tests ${PN}-plugins-dbg ${PN}-plugin=
s-staticdev ${PN}-plugins-samples-dbg ${PN}-plugins-samples ${PN}-resource-=
dbg ${PN}-resource ${PN}-resource-dev ${PN}-resource-thin-staticdev ${PN}-r=
esource-samples-dbg ${PN}-resource-samples ${PN}-service-dbg ${PN}-service =
${PN}-service-dev ${PN}-service-staticdev ${PN}-service-samples-dbg ${PN}-s=
ervice-samples ${PN}-dev ${PN}"
> +ALLOW_EMPTY_${PN} =3D "1"
> +RDEPENDS_${PN} +=3D "boost"
> +RRECOMMENDS_${PN} +=3D "${PN}-resource ${PN}-service"
> +RRECOMMENDS_${PN}-dev +=3D "${PN}-resource-dev ${PN}-resource-thin-stati=
cdev ${PN}-plugins-staticdev ${PN}-service-dev ${PN}-service-staticdev"
> +RDEPENDS_${PN}-resource +=3D "glib-2.0"
> +RRECOMMENDS_${PN}-plugins-staticdev +=3D "${PN}-resource-dev ${PN}-resou=
rce-thin-staticdev ${PN}-resource"
> +RRECOMMENDS_${PN}-resource-thin-staticdev +=3D "${PN}-resource-dev"
> +RRECOMMENDS_${PN}-service-dev +=3D "${PN}-service ${PN}-service-staticde=
v ${PN}-resource"
> +RDEPENDS_${PN}-plugins-samples +=3D "${PN}-resource glib-2.0"
> +RDEPENDS_${PN}-resource-samples +=3D "${PN}-resource glib-2.0"
> +RDEPENDS_${PN}-tests +=3D "${PN}-resource ${PN}-service glib-2.0"
> +RDEPENDS_${PN}-service-samples +=3D "${PN}-service ${PN}-resource glib-2=
.0"
> +RDEPENDS_${PN}-service +=3D "${PN}-resource glib-2.0"
> +BBCLASSEXTEND =3D "native nativesdk"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

