Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9C534C80039
	for <yocto@yoctoproject.org>; Sat, 18 Dec 2010 16:28:36 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Dec 2010 14:28:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,194,1291622400"; d="scan'208";a="688510235"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 18 Dec 2010 14:28:36 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Sat, 18 Dec 2010 14:28:36 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 18 Dec 2010 14:28:09 -0800
Thread-Topic: Autobuilder changes and Milestone2
Thread-Index: AQHLnt9iWnzICsvLRUuXn8fA6v+1cZOmqAiwgAAf60s=
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6E3@orsmsx504.amr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E2@orsmsx504.amr.corp.intel.com>,
	<9AFCD584B0B67B48AE8D8585BE30BA9504A84473@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504A84473@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Autobuilder changes and Milestone2
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
X-List-Received-Date: Sat, 18 Dec 2010 22:28:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

That is correct.=20

-b
________________________________________
From: Zhang, Jessica
Sent: Saturday, December 18, 2010 12:35 PM
To: Flanagan, Elizabeth; yocto@yoctoproject.org
Subject: RE: Autobuilder changes and Milestone2

I also removed all the non-IA arch  sdk builds from milestone-internal.
Building these happens on milestone-external and is not needed.

Beth, so all the non-IA arch sdk will be built for M2 but just will be buil=
t
on milestone-external, right?

Thanks,
Jessica


