Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47ABFE003D6
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 11:24:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2012 11:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,613,1344236400"; d="scan'208";a="236093188"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2012 11:24:46 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.247]) with mapi id
	14.01.0355.002; Fri, 19 Oct 2012 11:24:45 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 2/3][meta-intel] meta-intel/common: Add new recipe for
	libcrypto module.
Thread-Index: AQHNrVz2Bvy53Um1nUSzl0WIz+ki35fA8vyg
Date: Fri, 19 Oct 2012 18:24:45 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D90C929@ORSMSX106.amr.corp.intel.com>
References: <cover.1350583189.git.kishore.k.bodke@intel.com>
	<dc33321b7e5d0b990e730edcd5593d27ef379d1c.1350583189.git.kishore.k.bodke@intel.com>
In-Reply-To: <dc33321b7e5d0b990e730edcd5593d27ef379d1c.1350583189.git.kishore.k.bodke@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 2/3][meta-intel] meta-intel/common: Add new recipe for libcrypto module.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2012 18:24:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Kishore,
   Will this recipe is being used for multiple BSPs? If not then it can go =
in the BSP specific layer.

Thanks,
Nitin

> -----Original Message-----
> From: Bodke, Kishore K
> Sent: Thursday, October 18, 2012 11:19 AM
> To: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org
> Cc: Bodke, Kishore K
> Subject: [PATCH 2/3][meta-intel] meta-intel/common: Add new recipe for
> libcrypto module.
>=20
> From: Kishore Bodke <kishore.k.bodke@intel.com>
>=20
> This adds a new recipe to include the Intel Quick Assist Technology libcr=
ypto
> Memory Management Module.
>=20
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../openssl-qat-module/openssl-qat-module.bb       |   54
> ++++++++++++++++++++
>  .../openssl-qat-module/openssl_qat_module.patch    |   43
> ++++++++++++++++
>  2 files changed, 97 insertions(+)
>  create mode 100644 common/recipes-connectivity/openssl-qat-
> module/openssl-qat-module.bb
>  create mode 100644 common/recipes-connectivity/openssl-qat-
> module/openssl-qat-module/openssl_qat_module.patch
>=20
> diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
> module.bb b/common/recipes-connectivity/openssl-qat-module/openssl-
> qat-module.bb
> new file mode 100644
> index 0000000..a4fe3c5
> --- /dev/null
> +++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-
> module.
> +++ bb
> @@ -0,0 +1,54 @@
> +SUMMARY =3D "libcrypto* (OpenSSL*) QAT_MEM Memory Management
> Module \ for
> +Intel Quick Assist Technology"
> +DESCRIPTION =3D "This software adds an engine that accelerates some of \
> +the libcrypto algorithms via the Intel QuickAssist Technology \
> +implemented on Intel Communications Chipset 89xx Series based
> platforms."
> +
> +HOMEPAGE =3D "http://www.openssl.org/"
> +SECTION =3D "libs/network"
> +
> +LICENSE =3D "openssl"
> +LIC_FILES_CHKSUM =3D "file://${WORKDIR}/openssl-
> ${PV}/LICENSE;md5=3Df9a8f968107345e0b75aa8c2ecaa7ec8"
> +
> +PV =3D "1.0.1"
> +PR =3D "r0"
> +
> +OPENSSL_QAT_VERSION =3D "0.4.0-012"
> +
> +SRC_URI =3D "http://www.openssl.org/source/openssl-
> ${PV}.tar.gz;name=3Dopenssl \
> +	http://downloadmirror.intel.com/19368/eng/libcrypto-openssl-
> ${PV}-qat.L.${OPENSSL_QAT_VERSION}.tar.gz;name=3Dlibcrypto \
> +	file://openssl_qat_module.patch"
> +
> +SRC_URI[openssl.md5sum]=3D"134f168bc2a8333f19f81d684841710b"
> +SRC_URI[openssl.sha256sum]=3D"4d9f0a594a9a89b28e1a04a9504c04104f6508
> ee27ad1e0efdd17a7a6dbbeeee"
> +
> +SRC_URI[libcrypto.md5sum] =3D "e4e131fa56d3aa1a52b5bdb9f8fe5a69"
> +SRC_URI[libcrypto.sha256sum] =3D
> "19a80ae6e78548934295d312148e4254c18dabd25e2fd72de5796d8ac15b1cfb"
> +
> +S =3D "${WORKDIR}/openssl-${PV}/engines/qat_engine/qat_mem"
> +
> +export KERNEL_SOURCE_ROOT =3D "${STAGING_KERNEL_DIR}"
> +inherit module
> +
> +do_patch()     {
> +	cd ${WORKDIR}/openssl-${PV}
> +	patch -p2 <
> +${WORKDIR}/libcrypto-openssl-${PV}-
> qat.L.${OPENSSL_QAT_VERSION}.patch
> +
> +	cd ${WORKDIR}
> +	patch -p1 <${WORKDIR}/openssl_qat_module.patch
> +}
> +
> +do_compile() 	{
> +	cd ${S}
> +	oe_runmake  KERNEL_CC=3D"${KERNEL_CC}"
> +}
> +
> +do_install_append() 	{
> +	install -m 0755 -d ${D}${bindir} \
> +			   ${D}${includedir}/engines/qat_engine/qat_mem
> +
> +	install -m 0755 ${S}/qat_mem_test  ${D}${bindir}
> +	install -m 0750 ${S}/*.h
> ${D}${includedir}/engines/qat_engine/qat_mem/
> +}
> +
> +FILES_${PN} +=3D "${bindir}/qat_mem_test"
> diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
> module/openssl_qat_module.patch b/common/recipes-
> connectivity/openssl-qat-module/openssl-qat-
> module/openssl_qat_module.patch
> new file mode 100644
> index 0000000..dfed3c0
> --- /dev/null
> +++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-
> module/
> +++ openssl_qat_module.patch
> @@ -0,0 +1,43 @@
> +Index:
> +openssl-qat-module-1.0.1-r0/openssl-
> 1.0.1/engines/qat_engine/qat_mem/Ma
> +kefile
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- openssl-qat-module-1.0.1-r0.orig/openssl-
> 1.0.1/engines/qat_engine/qat_mem/Makefile	2012-10-17
> 13:31:27.932376960 -0700
> ++++ openssl-qat-module-1.0.1-r0/openssl-
> 1.0.1/engines/qat_engine/qat_mem/Makefile	2012-10-17
> 13:35:40.396389410 -0700
> +@@ -9,13 +9,9 @@
> + MODULENAME 	:=3D qat_mem
> + ### should not need to change stuff below ######################
> +
> +-
> +-KDIR		:=3D /lib/modules/$(shell uname -r)/build
> +-#KDIR		:=3D /exports/linux-2.6.12.2/
> ++KDIR		:=3D $(KERNEL_SOURCE_ROOT)
> + PWD		:=3D $(shell pwd)
> +-
> +-CC		:=3D gcc -Wall -imacros /usr/src/kernels/$(shell uname -
> r)/include/linux/autoconf.h
> +-
> ++CC		:=3D $(KERNEL_CC) -Wall -imacros
> $(KERNEL_SOURCE_ROOT)/include/generated/autoconf.h
> + ifeq ($(KERNELRELEASE),)
> + all:	$(MODULENAME)_test
> + all:
> +@@ -23,20 +19,15 @@
> + else
> +   obj-m	:=3D $(MODULENAME).o
> + endif
> +-
> + $(MODULENAME)_test: $(MODULENAME)_test.c
> + 	$(CC) -g -o $(MODULENAME)_test $(MODULENAME)_test.c
> +-
> +-
> ++modules_install:
> ++	$(MAKE) -C $(KDIR) SUBDIRS=3D$(PWD) modules_install
> + load:
> + 	insmod ./$(MODULENAME).ko
> +-
> + unload:
> + 	rmmod $(MODULENAME)
> +-
> + test: all
> + 	./$(MODULENAME)_test.sh
> +-
> + clean:
> + 	rm -f *.o *.ko Modules.symvers *.mod.c .*.cmd
> $(MODULENAME)_test
> +-
> --
> 1.7.9.5


