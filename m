Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A77C54C80B70
	for <yocto@yoctoproject.org>; Thu,  6 Jan 2011 03:33:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2011 01:33:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="694123886"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 01:33:11 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 17:31:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 6 Jan 2011
	17:31:48 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 6 Jan 2011 17:31:47 +0800
Thread-Topic: Eclipse Plugin EGit investigation result
Thread-Index: AcutSeVRx5xyz374R3m7VDHz84KUOwADlsuQAAIMsmAAAW3yUAAHdHQg
Message-ID: <789F9655DD1B8F43B48D77C5D3065973315F0D6E@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973315F0A03@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504CAFF51@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973315F0B94@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504CAFF8A@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504CAFF8A@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin EGit investigation result
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
X-List-Received-Date: Thu, 06 Jan 2011 09:33:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I verified that if we use git from shell to clone a tree first, create the =
new project, and then use egit to manage the project,
everything is fine.
It will detect that .git repository is there and will not repeatedly create=
 one.=20
So egit will not conflict with native command line git operations. The two =
actually
Share the same .git database.

So I think egit has covered all we need. We can suggest user use that plugi=
n to manage
his local changes,patches,commits.


Thanks& Regards,
criping





