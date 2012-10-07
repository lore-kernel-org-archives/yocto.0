Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2423EE0045F
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 19:00:19 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Oct 2012 19:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,545,1344236400"; d="scan'208";a="153286581"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Oct 2012 19:00:18 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.10.146]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.116]) with mapi id
	14.01.0355.002; Sat, 6 Oct 2012 19:00:17 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Chris Tapp <opensource@keylevel.com>, "yocto@yoctoproject.org Project"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs
	in	the kernel
Thread-Index: AQHNpCUs4P3GmjGBhke8k44+XUA8A5etFAEA
Date: Sun, 7 Oct 2012 02:00:16 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
In-Reply-To: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in	the kernel
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
X-List-Received-Date: Sun, 07 Oct 2012 02:00:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Try adding the unionfs feature (below) to your kernel:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta/cfg/ker=
nel-cache/features/unionfs?h=3Dmeta

create a file my_cedartrail.scc with following line:
include features/unionfs/unionfs.scc

put this file in a dir linux-yocto, the dir being created in

meta-cedartrail/recipes-kernel/linux

add following line in  meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0=
.bbappend

SRC_URI +=3D"file://my_cedartrail.scc"

Rebuild..

Thanks
Rahul


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Tapp
Sent: Saturday, October 06, 2012 5:43 PM
To: yocto@yoctoproject.org Project
Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs in t=
he kernel

I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail BSP und=
er Denzil 7.0.1.

However, the CONFIG_UNION_FS config flag isn't in the .config ...

Is there something else I need to enable, or do I need to find another way?

Chris Tapp

opensource@keylevel.com
www.keylevel.com



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

