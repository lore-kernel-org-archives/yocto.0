Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE0994C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 17:42:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 15:42:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="575697734"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2010 15:42:18 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 20 Nov 2010 07:42:17 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 20 Nov 2010 07:42:16 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Sat, 20 Nov 2010 07:42:15 +0800
Thread-Topic: [yocto] RFC: Rapid iterative development
Thread-Index: AcuIP46YHqrlLuDLTQC0pkwVK/RNTAAA2/zQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3667ECAD@shsmsx502.ccr.corp.intel.com>
References: <4CE704C6.6010203@linux.intel.com>
In-Reply-To: <4CE704C6.6010203@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: RFC: Rapid iterative development
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
X-List-Received-Date: Fri, 19 Nov 2010 23:42:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Darren Hart
>Sent: Saturday, November 20, 2010 7:14 AM
>
>While working on a single package, I need to be able to tweak a variable
>in the new recipe, change the MACHINE in local.conf, etc. I'd like to be
>able to rapidly test my changes, but some of these changes trigger a
>long list of dependencies for various commands. While working on a new
>linux kernel recipe, I found it rebuilding a number of things that were
>either -native (can I force it to use the system version rather than
>building one) or seemed unrelated to the process at hand.

That's interesting. Did you build from scratch or incrementally? Ideally on=
ly
recipes being changed will be rebuilt in incremental way.

>
>Are there some best practices for iterative recipe development that
>speed things along?
>

"bitbake -k" is one method if you're sure the dependency doesn't change.
But if you change MACHINE, I think a whole rebuild except -native will
be required as it's the fundamental bit for target recipes.

Thanks
Kevin

