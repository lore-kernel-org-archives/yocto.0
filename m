Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 499EC4C810AF
	for <yocto@yoctoproject.org>; Fri,  7 Jan 2011 02:27:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Jan 2011 00:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="371357361"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 07 Jan 2011 00:27:05 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 16:26:57 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 7 Jan 2011
	16:26:57 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Fri, 7 Jan 2011 16:26:51 +0800
Thread-Topic: Setup repository for ADT installer
Thread-Index: AcutRxxxA4sxJgSDT+mYZXrRUtXeMwA+3aEA
Message-ID: <789F9655DD1B8F43B48D77C5D3065973315F11FE@shsmsx501.ccr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F1E4A315F86@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1E4A315F86@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setup repository for ADT installer
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
X-List-Received-Date: Fri, 07 Jan 2011 08:27:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I also have a question for the repository after I tried another local repo =
today.

1) one is where to put the qemu .bin and rootfs file.

Take Lianhao's machine as an example, he now put many images under:
http://llu-piketon.sh.intel.com/rootfs/

2) And also where to put all those native ipk files. It's defined in
Opkg configuration file, also take lianhao's current setting as an example:

src oe http://llu-piketon.sh.intel.com/ipk_sdknew
src oe-all http://llu-piketon.sh.intel.com/ipk_sdknew/all
src oe-i586-nativesdk http://llu-piketon.sh.intel.com/ipk_sdknew/i586-nativ=
esdk

Actually he now put all archs of ipk files under folder of=20
http://llu-piketon.sh.intel.com/ipk_sdknew/


So my question is that seems we need to define the repository, organize it =
reasonably.

Since the repository should be a stable snapshot of one days result,
it would be nice that there're some scripts, which helps to extract one sta=
ble day's
build result and set up the repository automatically. On release day, after=
 running
the script, the qualified repository will be accessible to external users.

Folder org should not be a big problem, something like:

Parent folder [root of repository]
  qemu_images
    qemu_arm (contains arm qemu bin, rootfs tarball)
    qemu_x86 (contains x86 qemu bin, rootfs tarball)
		.........
  ipk_images=20
    all
    armv5te/
    i586-nativesdk/


How do you think of it?

Thanks a lot for your help!
criping












> -----Original Message-----
> From: Lu, Lianhao
> Sent: Thursday, January 06, 2011 10:12 AM
> To: Flanagan, Elizabeth; Zhang, Jessica
> Cc: Ke, Liping; yocto@yoctoproject.org
> Subject: Setup repository for ADT installer
>=20
> Hi Beth and Jessica,
>=20
> Here is a summary of how I set up the IPK repo for ADT installer on my
> local machine. Currently, there are 10 combinations (based on the
> following 2 variables in conf/local.conf) needs to be built for setting
> up the ADT installer repo.
>=20
> MACHINE: qemux86, qemuarm, qemuppc, qemumips, qemux86-64
> SDKMACHINE: i586, x86_64
>=20
> NOTE: Please make sure the PACKAGE_CLASSES has the value of
> "package_ipk".
>=20
> First, we need to generate the kernel/target rootfs images, as well as
> the ipk files and the repository index files. Then we need to make
> those generated files available through HTTP protocol.
>=20
> 1. Generate kernel/target rootfs images, as well as the ipk files and
> repository index files.
> For each of the combinations:
> 1.1) bitbake poky-image-sdk
> 1.2) bitbake meta-toolchain-sdk
>=20
> Step 1.2) will generate more ipk files than the ADT installer needs,
> and also create the meta-toolchain-sdk-XXX.tar.gz under deploy/sdk
> which is not used by the ADT installer. We may split step 1.2) into the
> following commands if we just want to generate the files only for ADT
> installer.
>=20
> bitbake task-sdk-host
> 	#generate ipk files for host utils
> bitbake task-cross-canadian-<TRNASLATED_TARGET_ARCH>  	#generate
> ipk files for cross-canadian tool chain
> bitbake package-index
> 	#generate the repository index files
>=20
> The <TRNASLATED_TARGET_ARCH> is based on the MACHINE configuration in
> conf/local.conf
> MACHINE    <TRANSLATED_TARGET_ARCH>
> qemux86     i586
> qemuarm     arm
> qemuppc     powerpc
> qemumips    mips
> qemux86-64  x86-64
>=20
> 2. Setup a web server for adt-installer to access the files through
> http protocol
> The ADT-installer needs to access the following directories through
> http, so we need to set up a web server for user to access.
>=20
> ${BUILD_DIR}/tmp/deploy/ipk
> ${BUILD_DIR}/tmp/deploy/images
>=20
>=20
> b.t.w. I think the final directory layout of the repo	will influence
> adt installer, because currently the repo's top level layout is hard
> coded in the installer. Here are something we think need to consider
> (Liping, pls add more information here):
> - yocto release version
> - file name conventions for the built kernel
>=20
> Best Regards,
> -Lianhao Lu


