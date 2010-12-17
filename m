Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5BC34C80B70
	for <yocto@yoctoproject.org>; Fri, 17 Dec 2010 17:32:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Dec 2010 15:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="363366448"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 17 Dec 2010 15:32:12 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 17 Dec 2010 15:32:11 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 17 Dec 2010 15:32:11 -0800
Thread-Topic: Milestone releases FYI
Thread-Index: AQHLnkKg75QVpcsVBkS+5UuMYEBxTQ==
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6E1@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Milestone releases FYI
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
X-List-Received-Date: Fri, 17 Dec 2010 23:32:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The current milestone release builders have a slight bug in a script called=
 the final build steps that generate the release tarball. I found it this a=
fternoon after milestone-internal failed on tarball generation. I'll have t=
o fix this on monday, but in the meantime, I've run the fixed script by han=
d on the internal and will fix the one on external and run it by hand tomor=
row after milestone-external finishes up.=20

-b=

