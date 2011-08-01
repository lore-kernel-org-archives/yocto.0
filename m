Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7158C4C80053
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2011 11:14:49 -0500 (CDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Aug 2011 09:12:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,301,1309762800"; 
   d="scan'208";a="3064092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Aug 2011 09:12:45 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 1 Aug 2011 09:12:44 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.75]) with mapi id
	14.01.0289.001; Mon, 1 Aug 2011 09:12:44 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "Ke, Liping" <liping.ke@intel.com>
Thread-Topic: POKY_DISTRO_VERSION or OECORE_DISTRO_VERSION?
Thread-Index: AcxQHt8hPoJ0FXH3TgGADW6cAFR/PgARpf6g
Date: Mon, 1 Aug 2011 16:12:43 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C136FD380@ORSMSX101.amr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2C844F9745@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F2C844F9745@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: POKY_DISTRO_VERSION or OECORE_DISTRO_VERSION?
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
X-List-Received-Date: Mon, 01 Aug 2011 16:14:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lianhao,

For DISTRO_VERSION, we still need to use POKY_DISTRO_VERSION since our dist=
ro is "POKY" as to other rename to OECORE, are those variables that're dist=
ro neutral.  Hope you get the idea.  I've asked RP the same question and hi=
s answer is before we can figure out a mechanism to make everything distro =
neutral, we have stay with the existing POKY naming convention for certain =
variables that are specific to the distro.

Thanks,
Jessica

-----Original Message-----
From: Lu, Lianhao
Sent: Monday, August 01, 2011 12:45 AM
To: Zhang, Jessica; Ke, Liping
Cc: yocto@yoctoproject.org
Subject: POKY_DISTRO_VERSION or OECORE_DISTRO_VERSION?

Hi Jessica,

I noticed the we still use POKY_DISTRO_VERSION in the environment while som=
e other variables have changed their prefix to OECORE_ (e.g. OECORE_NATIVE_=
SYSROOT, etc.)

Which prefix should we use for those version related variables in the envir=
onment files? OECORE_ or POKY_?

-Lianhao

