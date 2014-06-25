Return-Path: <yejun.guo@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1B70E003FA; Tue, 24 Jun 2014 17:45:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0958E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 17:45:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jun 2014 17:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,541,1400050800"; d="scan'208";a="562933774"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga002.jf.intel.com with ESMTP; 24 Jun 2014 17:45:45 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 24 Jun 2014 17:45:45 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 24 Jun 2014 17:45:45 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.81]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.209]) with mapi id
	14.03.0123.003; Wed, 25 Jun 2014 08:45:42 +0800
From: "Guo, Yejun" <yejun.guo@intel.com>
To: "MacLeod, Randy (Wind River)" <randy.macleod@windriver.com>
Thread-Topic: [yocto] how to set LICENSE for llvm in .bb file
Thread-Index: AQHPj9+b3M1GFSarVUm26vgcyqzsCJuA+PTQ
Date: Wed, 25 Jun 2014 00:45:42 +0000
Message-ID: <854E8DBA9F41904AB047E03BB6963AE501B415A8@SHSMSX101.ccr.corp.intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
	<CAJTo0LYkrBTcbrSOAyce0tZN6WZJ=9jPOSjYpdr1WnCEY5bfwA@mail.gmail.com>
	<854E8DBA9F41904AB047E03BB6963AE501A0F8F6@SHSMSX101.ccr.corp.intel.com>
	<53A9CC5F.3060407@windriver.com>
In-Reply-To: <53A9CC5F.3060407@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhao,
	Juan J" <juan.j.zhao@intel.com>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Wed, 25 Jun 2014 00:45:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Randy,

See below for the .bb file that Juan and I created to build llvm+clang 3.3,=
 one thing need to mention is that we do not put llvm-config under crossscr=
ipts (the .bb file in oe-core does so) since we want the same behavior betw=
een yocto build on host and direct build on target.

LICENSE =3D "NCSA"
DEPENDS =3D "libffi libxml2"

SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.gz;name=3Dll=
vm"
SRC_URI +=3D "http://llvm.org/releases/${PV}/cfe-${PV}.src.tar.gz;apply=3Dn=
o;name=3Dclang"
SRC_URI[llvm.md5sum] =3D "40564e1dc390f9844f1711c08b08e391"
SRC_URI[llvm.sha256sum] =3D "68766b1e70d05a25e2f502e997a3cb3937187a3296595c=
f6e0977d5cd6727578"
SRC_URI[clang.md5sum] =3D "8284891e3e311829b8e44ac813d0c9ef"
SRC_URI[clang.sha256sum] =3D "b1b55de4ab3a57d3e0331a83e0284610191c77d924e34=
46498d9113d08dfb996"

S =3D "${WORKDIR}/llvm-${PV}.src"
LIC_FILES_CHKSUM =3D "file://${S}/LICENSE.TXT;md5=3Dd0a3ef0d3e0e8f5cf59e5ff=
c273ab1f8"

inherit cmake pkgconfig python-dir pythonnative

LLVM_BUILD_DIR =3D "${S}/build"

OECMAKE_SOURCEPATH =3D ".."
OECMAKE_BUILDPATH =3D "build"
do_unpack() {
    tar -xf ${DL_DIR}/llvm-${PV}.src.tar.gz -C ${WORKDIR}
    tar -xf ${DL_DIR}/cfe-${PV}.src.tar.gz -C ${S}/tools
    mv ${S}/tools/cfe-${PV}.src ${S}/tools/clang
}

do_configure() {
    mkdir -p ${LLVM_BUILD_DIR}
    cd ${LLVM_BUILD_DIR}
    cmake \
                .. \
                -DCMAKE_INSTALL_PREFIX:PATH=3D/usr \
                -DCMAKE_INSTALL_SO_NO_EXE=3D0 \
                -DCMAKE_TOOLCHAIN_FILE=3D${WORKDIR}/toolchain.cmake \
                -DCMAKE_VERBOSE_MAKEFILE=3D1 \
                -Wno-dev
}

do_compile() {
    cd ${LLVM_BUILD_DIR}
    oe_runmake llvm-tblgen
    oe_runmake clang-tblgen
    oe_runmake
}

SYSROOT_PREPROCESS_FUNCS +=3D "llvm_sysroot_preprocess"

llvm_sysroot_preprocess() {
    install -d ${SYSROOT_DESTDIR}${bindir}
    install -m 0755 ${LLVM_BUILD_DIR}/bin/llvm-config ${SYSROOT_DESTDIR}${b=
indir}/llvm-config
    install -m 0755 ${LLVM_BUILD_DIR}/bin/llvm-as ${SYSROOT_DESTDIR}${bindi=
r}/llvm-as
    install -m 0755 ${LLVM_BUILD_DIR}/bin/llvm-link ${SYSROOT_DESTDIR}${bin=
dir}/llvm-link
    install -m 0755 ${LLVM_BUILD_DIR}/bin/clang ${SYSROOT_DESTDIR}${bindir}=
/clang
}

FILES_${PN}-dev +=3D " ${libdir}/BugpointPasses.so \
                     ${libdir}/LLVMHello.so \
                     ${libdir}/clang  \
                   "

Thanks
Yejun

-----Original Message-----
From: Randy MacLeod [mailto:randy.macleod@windriver.com]=20
Sent: Wednesday, June 25, 2014 3:07 AM
To: Guo, Yejun
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] how to set LICENSE for llvm in .bb file

On 14-04-03 04:54 AM, Guo, Yejun wrote:
> Thank you Ross, what I actually need is llvm+clang, it is a very good ref=
erence for me to resolve the license issue, and the SYSROOT_PREPROCESS_FUNC=
S knowledge to resolve llvm-config issue.
>
>
> Thanks
> Yejun

Yejun,

Did you ever produce a recipe to build clang?

Are you also trying to build all of YP with it?

A student that worked with me did some work to use clang to build yocto pac=
kages:

http://lists.openembedded.org/pipermail/openembedded-core/2013-November/086=
275.html

so I'd be interested in hearing about your work.

../Randy


>
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Thursday, April 03, 2014 2:01 PM
> To: Guo, Yejun
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] how to set LICENSE for llvm in .bb file
>
> On 3 April 2014 03:16, Guo, Yejun <yejun.guo@intel.com> wrote:
>> I'm adding package llvm which has its own license: University of Illinoi=
s/NCSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT=
 .  I tried something for LICENSE in .bb file, but is not recognized by the=
 system. Could you please let me know how to set this value? Thanks a lot!
>
> LLVM is already packaged outside of oe-core:
>
> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dllv
> m
>
> Ross
>


--
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

