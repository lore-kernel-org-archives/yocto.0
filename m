Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8FEC4C80FAD
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 20:12:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 18:12:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,280,1291622400"; d="scan'208";a="370695033"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 18:12:26 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 10:12:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 6 Jan 2011
	10:12:05 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Thu, 6 Jan 2011 10:12:04 +0800
Thread-Topic: Setup repository for ADT installer
Thread-Index: AcutRxxxA4sxJgSDT+mYZXrRUtXeMw==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1E4A315F86@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Setup repository for ADT installer
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
X-List-Received-Date: Thu, 06 Jan 2011 02:12:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Beth and Jessica,

Here is a summary of how I set up the IPK repo for ADT installer on my loca=
l machine. Currently, there are 10 combinations (based on the following 2 v=
ariables in conf/local.conf) needs to be built for setting up the ADT insta=
ller repo.

MACHINE: qemux86, qemuarm, qemuppc, qemumips, qemux86-64
SDKMACHINE: i586, x86_64

NOTE: Please make sure the PACKAGE_CLASSES has the value of "package_ipk".

First, we need to generate the kernel/target rootfs images, as well as the =
ipk files and the repository index files. Then we need to make those genera=
ted files available through HTTP protocol.=20

1. Generate kernel/target rootfs images, as well as the ipk files and repos=
itory index files.=20
For each of the combinations:
1.1) bitbake poky-image-sdk  =20
1.2) bitbake meta-toolchain-sdk

Step 1.2) will generate more ipk files than the ADT installer needs, and al=
so create the meta-toolchain-sdk-XXX.tar.gz under deploy/sdk which is not u=
sed by the ADT installer. We may split step 1.2) into the following command=
s if we just want to generate the files only for ADT installer.

bitbake task-sdk-host    								#generate ipk files for host utils
bitbake task-cross-canadian-<TRNASLATED_TARGET_ARCH>  	#generate ipk files =
for cross-canadian tool chain
bitbake package-index									#generate the repository index files

The <TRNASLATED_TARGET_ARCH> is based on the MACHINE configuration in conf/=
local.conf
MACHINE    <TRANSLATED_TARGET_ARCH>
qemux86     i586
qemuarm     arm
qemuppc     powerpc
qemumips    mips
qemux86-64  x86-64

2. Setup a web server for adt-installer to access the files through http pr=
otocol
The ADT-installer needs to access the following directories through http, s=
o we need to set up a web server for user to access.

${BUILD_DIR}/tmp/deploy/ipk
${BUILD_DIR}/tmp/deploy/images


b.t.w. I think the final directory layout of the repo	will influence adt in=
staller, because currently the repo's top level layout is hard coded in the=
 installer. Here are something we think need to consider (Liping, pls add m=
ore information here):
- yocto release version
- file name conventions for the built kernel

Best Regards,
-Lianhao Lu


