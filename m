Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 754284C800A4
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 17:59:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 15:59:44 -0700
X-ExtLoop1: 1
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2011 15:59:44 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 May 2011 15:59:45 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Wed, 25 May 2011 15:59:44 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Xu, Jiajun"
	<jiajun.xu@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Wed, 25 May 2011 15:59:43 -0700
Thread-Topic: Autobuilder Change: Moving meta-toolchain-gmae builds
Thread-Index: AcwbLpaH5eqxSWlLRVSGdBxX3QME1gAAIQVA
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9501179BCED9@orsmsx504.amr.corp.intel.com>
References: <4DDD886D.8020008@intel.com>
In-Reply-To: <4DDD886D.8020008@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Autobuilder Change: Moving meta-toolchain-gmae builds
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
X-List-Received-Date: Wed, 25 May 2011 22:59:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Beth,

It should be fine since meta-toolchain-gmae generate toolchain tar ball tha=
t also contains sysroot which has extra packages for gmae, unless Jiajun is=
 using it in QA work.

Thanks,
Jessica

-----Original Message-----
From: Flanagan, Elizabeth
Sent: Wednesday, May 25, 2011 3:54 PM
To: yocto@yoctoproject.org; Zhang, Jessica; Xu, Jiajun; Wold, Saul
Subject: Autobuilder Change: Moving meta-toolchain-gmae builds

In order to even out some of the build timing, I've moved the meta-toolchai=
n-gmae builds out to:

http://autobuilder02.pokylinux.org/nightly-external-toolchain/

nightly-external was running substantially longer than other builders (30 h=
ours). This should reduce autobuilder build
time substantially, however, it does mean that meta-toolchain-gmae needs to=
 be picked up from the 02 server.

If you have any questions or issues with this, please let me know.

---------------
Elizabeth Flanagan
Yocto Project
Release Engineer

