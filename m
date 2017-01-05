Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF45E00A51; Thu,  5 Jan 2017 12:12:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cos-us-iron02k.cos.keysight.com
	(cos-us-iron02k.cos.keysight.com [192.25.5.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4755E00A04
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 12:12:32 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2CFAQBqqG5YfRUYjJxdGwEBAQMBAQEJAQEBgzgBAQEBAYI?=
	=?us-ascii?q?KB41QcpNUkFWEUoIJhiICggsUAQIBAQEBAQEBEwEBFjAwhGgBAQEBAgE6PwwEA?=
	=?us-ascii?q?gEIEQQBAQEKFAkHMhQJCAEBBA4FCIhgCLImihsBAQEBAQEBAQEBAQEBAQEBAQE?=
	=?us-ascii?q?BAQEdiyaESIMzgjEFiGqGKYFCijuiHUiRfh83gTyGa3MBh1gBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.33,322,1477980000"; d="scan'208";a="43954626"
Received: from wcosexch02k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.21]) by cos-us-iron02k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Jan 2017 13:12:22 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch02k.cos.is.keysight.com ([169.254.2.150]) with mapi id
	14.03.0279.002; Thu, 5 Jan 2017 13:12:14 -0700
From: <richard_allen@keysight.com>
To: <stephano.cetola@linux.intel.com>
Thread-Topic: [yocto] morty populate_sdk_ext fails for recipes inherit
	bin_package
Thread-Index: AdJmrdhZ9pbqzvy0R9qZ/7zxjaZvSQAd+EaAAA4nawAAGH0EAAAMIZRg
Date: Thu, 5 Jan 2017 20:12:13 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17DA53@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
	<20170105185754.GA13163@schillax-mobl.gar.corp.intel.com>
In-Reply-To: <20170105185754.GA13163@schillax-mobl.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.70]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22806.002
x-tm-as-result: No--18.551900-8.000000-31
x-tm-as-matchedid: 144069-150567-701625-704425-700685-701347-702020-709584-1
	88198-701407-704761-188019-704421-701053-707451-700648-705388-702169-711109
	-704034-701016-701465-706817-701339-704504-708797-701927-701305-701604-1390
	06-701960-106660-700075-139010-701708-702113-707654-701005-703283-709137-70
	2187-860163-701232-704568-862883-711664-139504-704496-188199-702118-711740-
	705861-700978-709755-148004-148133-20043-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Thu, 05 Jan 2017 20:12:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Appreciate your suggestions.
The ipk's are there

$ find tmp/deploy/ipk/ -name hals*
tmp/deploy/ipk/cortexa9hf-neon/hals-tests_5.0.0-r0_cortexa9hf-neon.ipk
tmp/deploy/ipk/cortexa9hf-neon/hals_5.0.0-r0_cortexa9hf-neon.ipk
tmp/deploy/ipk/cortexa9hf-neon/hals-dev_5.0.0-r0_cortexa9hf-neon.ipk
tmp/deploy/ipk/cortexa9hf-neon/hals-doc_5.0.0-r0_cortexa9hf-neon.ipk
tmp/deploy/ipk/cortexa9hf-neon/hals-dbg_5.0.0-r0_cortexa9hf-neon.ipk

But error persist (no issues with -c populate_sdk)..



$ bitbake core-image-minimal -R cfgs/add-hals.conf -c populate_sdk_ext

NOTE: Executing RunQueue Tasks
ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages=
. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg=
 --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-ke=
ysight-linux/uninative-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/mort=
y/tmp/work/x86_64-nativesdk-keysight-linux/uninative-tarball/1.0-r0/temp/ip=
ktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-keysight-linu=
x/uninative-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_pos=
tinstall --prefer-arch-to-version   install hals-doc hals' returned 255:
Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals-do=
c'.
 * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-keysight-linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-HSRjMc: No =
such file or directory.

ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-keysight-linux/uninative-tarball/1.0-r0/temp/log.do_populate_=
sdk.39088
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/uninative-tarball=
.bb:do_populate_sdk) failed with exit code '1'
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install package=
s. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opk=
g --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-k=
eysight-linux/buildtools-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/mo=
rty/tmp/work/x86_64-nativesdk-keysight-linux/buildtools-tarball/1.0-r0/temp=
/ipktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-keysight-l=
inux/buildtools-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force=
_postinstall --prefer-arch-to-version   install hals-doc hals' returned 255=
:
Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals-do=
c'.
 * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-keysight-linux/buildtools-tarball/1.0-r0/temp/ipktemp//opkg-eTg08o: No=
 such file or directory.

ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: do_popul=
ate_sdk
ERROR: Logfile of failure stored in: /home/rcallen/proto/morty/tmp/work/x86=
_64-nativesdk-keysight-linux/buildtools-tarball/1.0-r0/temp/log.do_populate=
_sdk.39087
ERROR: Task (/opt/yocto/morty/poky/meta/recipes-core/meta/buildtools-tarbal=
l.bb:do_populate_sdk) failed with exit code '1'


-----Original Message-----
From: Stephano Cetola [mailto:stephano.cetola@linux.intel.com]=20
Sent: Thursday, January 05, 2017 10:58 AM
To: ALLEN,RICHARD (K-SantaClara,ex1) <richard_allen@keysight.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] morty populate_sdk_ext fails for recipes inherit bin_p=
ackage

On 01/05, richard_allen@keysight.com wrote:
> Hi
> 1) I had just successfully built an image with all the recipes ( hals,=20
> hals-doc)  [and yes, there these are non-empty]
> 2) I had then successfully built image with -c populate_sdk
> 3) The bitbake image -c populate_sdk_ext is what is failing [ The=20
> above works with Krogoth, only on Morty am I getting the errors during=20
> populate_sdk_ext
>=20
> May be the recipe is wrong for Morty? ( I have several other recipes,=20
> same thing, same structure)

Nothing jumps out about that recipe. If you do a `find` in tmp/deploy/ipk f=
or hals*, does anything show up? That's where opkg will be looking for the =
packages, so I assume it is not there.

>=20
> inherit bin_package
>=20
> SUMMARY =3D "HALs "
> DESCRIPTION =3D "HALs"
>=20
> LICENSE =3D "CLOSED"
> LIC_FILES_CHKSUM =3D ""
>=20
> # this can be overridden in local.conf HALS_TARBALL_URI ?=3D=20
> "file:///opt/packages/${PN}-${PV}-arm.tar.gz"
>=20
> SRC_URI =3D "${HALS_TARBALL_URI}"
>=20
> # the tar has a root directory , which has the files under=20
> HALS_TAR_ROOT_DIR_NAME ?=3D "${PN}-${PV}-arm"
>=20
> #make the source directory start in this directory S =3D=20
> "${WORKDIR}/${HALS_TAR_ROOT_DIR_NAME}"
>=20
> #runtime depends
> RDEPENDS_${PN} =3D " libgcc \
>                          libstdc++ \
>                          dtc \
>                            "
> DEPENDS_${PN} =3D " gtest"
>=20
> #bring in all to build toolchain
> DEPENDS_${PN}-dev +=3D " ${PN}-doc ${PN}-tests ${PN}-samples"
>=20
> PACKAGES =3D+ "${PN}-tests ${PN}-samples "
>=20
> FILES_${PN}-staticdev +=3D "  ${libdir}/*/*.a"
> FILES_${PN}-dev           +=3D "${includedir} ""
> FILES_${PN}-samples   +=3D "${bindir}/*"
> FILES_${PN}-tests     +=3D "${bindir}/*[tT]est"
> FILES_${PN}-doc       +=3D "${prefix}/src/doc"
>=20
>=20
> # this stops an QA issue
>=20
> INSANE_SKIP_hals +=3D "dev-so"
> BBCLASSEXTEND =3D "native nativesdk"
>=20
>=20

