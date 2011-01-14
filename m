Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D5DE4C80050
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 19:59:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 17:59:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,320,1291622400"; d="scan'208";a="592838833"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 17:59:43 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 14 Jan 2011 09:59:26 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 14 Jan 2011 09:59:20 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Jan 2011 09:59:18 +0800
Thread-Topic: [yocto] Current Build Failures for
	d82f205cfa790b40e132e11b7937050bc3b97ff3
Thread-Index: AcuzP4x5fo13+zjJQwmV3k6EIzJnBwATspxg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31BCCB6E@shsmsx501.ccr.corp.intel.com>
References: <4D2F2977.90007@intel.com>
In-Reply-To: <4D2F2977.90007@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Current Build Failures for	d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Fri, 14 Jan 2011 01:59:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> All,
>=20
> The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3
> is showing 3 build failures so far.
>=20
> Machine: qemux86
> Failure: intermittent tasks_0.18 failure at do_compile
> Description: Tasks_0.18 has failed during one buildset, however it's
> not failing on the other.
>=20
>=20
> Machine: arm
> Failure: sanity tests time out and cause cascading failures.
> Description: I'm patching the autobuilder today so that sanity tests
> timing out shouldn't cause a cascading failure, however the arm sanity
> tests are still timing out.
>=20

What's the patch you made for autobuilder? I think the patch I sent out yes=
terday can prevent the cascading failure but it has not been checked in yet=
.

> Machine: qemux86-64 Failure: linux-yocto_git failing at do_compile_perf
> Description: |     CC util/scripting-engines/trace-event-perl.o | cc1:
> warnings being treated as errors | cc1: error: include location
> "/usr/local/include" is unsafe for cross-compilation | make: ***
> [util/scripting-engines/trace-event-perl.o] Error 1
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Jiajun



