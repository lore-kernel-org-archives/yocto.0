Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD2CE0043B; Mon,  9 Jan 2017 07:51:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cos-us-iron01k.cos.keysight.com
	(cos-us-iron01k.cos.keysight.com [192.25.5.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60F91E0030B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 07:51:15 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2DtAwC9sHNYfRYYjJxeGwEBAQMBAQEJAQEBgzoBAQEBAYI?=
	=?us-ascii?q?KB45CkTOQVIRTggqGIgKCJRMBAgEBAQEBAQETAQEWMDCEaAEBAQEDOj8MBAIBC?=
	=?us-ascii?q?BEEAQEBChQJBzIUCQgBAQQOBQiIaLIBihMBAQEBAQEBAQEBAQEBAQEBAQEBAQE?=
	=?us-ascii?q?diyaESIMzgjEFiGuHbopDoilIkg0gATWBQYZ3cwGHWAGBDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.33,340,1477980000"; d="scan'208";a="44418207"
Received: from wcosexch03k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.22]) by cos-us-iron01k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jan 2017 08:51:14 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch03k.cos.is.keysight.com ([156.140.24.22]) with mapi id
	14.03.0279.002; Mon, 9 Jan 2017 08:51:06 -0700
From: <richard_allen@keysight.com>
To: <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] morty populate_sdk_ext fails for recipes inherit
	bin_package
Thread-Index: AdJmrdhZ9pbqzvy0R9qZ/7zxjaZvSQAd+EaAAA4nawAAr1iBgAAa4qLA
Date: Mon, 9 Jan 2017 15:51:05 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17E285@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
	<2244309.YxLLuVC5TP@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2244309.YxLLuVC5TP@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.71]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22814.000
x-tm-as-result: No--19.716700-8.000000-31
x-tm-as-matchedid: 150567-701625-704425-700685-700107-187067-700999-863828-7
	03788-702358-701407-106420-700405-701053-707451-700648-705388-702169-711109
	-704034-701016-701465-706817-701339-704504-708752-702039-702801-863299-7032
	83-703468-139010-139006-701960-106660-700075-110462-188199-860163-704980-10
	5700-707760-701236-707788-702020-704421-700401-704496-702796-708863-148004-
	148133-20043-42000-42003
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
X-List-Received-Date: Mon, 09 Jan 2017 15:51:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul
Thanks, I am new in this area, so could be miss-understanding some of these=
:

What I would like to occur, when=20
local.conf has:

IMAGE_INSTALL_append =3D "hals"
TOOLCHAIN_TARGET_TASK_append =3D  "hals hals-doc"=20

1) image has the "hals" runtime
2)when I use -c populate_sdk and/or -c populate_sdk_ext  ( on either an ima=
ge or meta-toolchain)
the Toolchain will contain : hals-dev, hals-staticdev, hals-tests, hals-sam=
ples"  (

Note: some of this is precompiled binaries, but sources are provided for te=
sts/samples=20

I removed the DEPENDS and=20
Tried all variants of=20

#BBCLASSEXTEND =3D "native nativesdk"
#BBCLASSEXTEND =3D "nativesdk"
BBCLASSEXTEND =3D "native"

All attempts to use -c populate_sdk_ext has errors which looks like=20

ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packages=
. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg=
 --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-ke=
ysight-linux/uninative-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/mort=
y/tmp/work/x86_64-nativesdk- linux/uninative-tarball/1.0-r0/temp/ipktemp/ -=
o /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-keysight-linux/uninat=
ive-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall=
 --prefer-arch-to-version   install hals hals-doc' returned 255:
Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'.
 * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk- -linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-J36jj9: No such fi=
le or directory.

How does one get the various hals components included tool chain without ha=
ving them installed in the image?

I must be doing something wrong (miss-understanding the purpose of some com=
mand)
Thanks
Richard Allen



> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Sunday, January 08, 2017 10:57 AM
> To: ALLEN,RICHARD (K-SantaClara,ex1) <richard_allen@keysight.com>
> Cc: yocto@yoctoproject.org; stephano.cetola@linux.intel.com
> Subject: Re: [yocto] morty populate_sdk_ext fails for recipes inherit
> bin_package
>=20
> Hi Richard,
>=20
> A few things:
>=20
> On Thu, 05 Jan 2017 14:27:39 richard_allen@keysight.com wrote:
> > #runtime depends
> > RDEPENDS_${PN} =3D " libgcc \
> >                          libstdc++ \
> >                          dtc \
> >                            "
> > DEPENDS_${PN} =3D " gtest"
> >
> > #bring in all to build toolchain
> > DEPENDS_${PN}-dev +=3D " ${PN}-doc ${PN}-tests ${PN}-samples"
>=20
> I assume you actually used RDEPENDS and not DEPENDS here?
> DEPENDS_${PN} is invalid.
>=20
> > BBCLASSEXTEND =3D "native nativesdk"
>=20
> Does it make sense to BBCLASSEXTEND to native given that this is
> precompiled for ARM?
>=20
> On Wed, 04 Jan 2017 17:21:35 richard_allen@keysight.com wrote:
> > ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install
> packages.
> > Command
> > '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/opkg
> > --volatile-cache -f
> > /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-
> ta
> > rball
> > /1.0-r0/opkg.conf -t
> > /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-
> ta
> > rball
> > /1.0-r0/temp/ipktemp/ -o
> > /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-
> ta
> > rball /1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall
> > --prefer-arch-to-version   install hals hals-doc' returned 255: Collect=
ed
> > errors:
> >  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hal=
s'.
> >  * rm_r: Failed to open dir
> > /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-
> ta
> > rball
> > /1.0-r0/temp/ipktemp//opkg-BL2Z8g: No such file or directory.
>=20
> It's interesting that this is coming up for uninative-tarball - that's no=
t normally
> something that I would expect you would need to change for something like
> this. I suspect you have inadvertently modified the configuration of that
> (perhaps by setting TOOLCHAIN_HOST_TASK / TOOLCHAIN_TARGET_TASK
> globally?).
> What does your cfgs/add-hals.conf actually set?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

