Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B2E94C80FA7
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:21:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 21:21:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="858833600"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 21:21:44 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 13:21:17 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 18 Nov 2010 13:21:10 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Saul Wold <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Date: Thu, 18 Nov 2010 13:21:08 +0800
Thread-Topic: [yocto] Bugzilla Reorg Take 2
Thread-Index: AcuGr7dTDkr6jygNS7+dxh43U+TjgQAMEtGQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D31419DC1@shsmsx502.ccr.corp.intel.com>
References: <4CE46608.1010708@linux.intel.com>
In-Reply-To: <4CE46608.1010708@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Bugzilla Reorg Take 2
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
X-List-Received-Date: Thu, 18 Nov 2010 05:21:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Saul Wold
>Sent: Thursday, November 18, 2010 7:32 AM
>
>
>Folks,
>
>After reviewing the emails from the first attempt and review bugzilla,
>there are a couple of different approaches that can be taken. It's
>important to note that bugzilla supports 3 layers, Classification,
>Product and Components, version are tracked at the Product level.
>
>Since we have 3 Layers, there are 2 possible scenarios:
>
>This is the Yocto Projects Bugzilla, so each "project" can have it's
>own classification, I am not sure that this is the best since some of
>the projects are pretty flat the extra level does not make sense.
>
>I am proposing the following top level classifications, containing the
>following projects (products/components) :
>
>Yocto Projects
>  - Cross-prelink
>    - general
>    - poky integration
>  - Swabber
>    - general
>    - poky integration
>  - Pseudo
>    - general
>    - poky integration
>  - Eclipse Plugin
>  - Anjuta Plugin
>  - Yocto Image Creator (is this really standalone)?
>  - Kernel
>     - build
>     - configuration
>     - runtime
>  - BSPs
>     - by board??
>  - Test Suite
>
>Yocto Infrastructure
>  - Autobuilder
>  - Bugzilla
>  - Website
>
>Poky
>  - Build System
>    - bitbake
>    - configuration
>    - layers
>    - general

is it too subtle here? Just 'build system' may be easier to understand...

Thanks
Kevin

>  - Recipes
>    - connectivity
>    - core
>    - devtools / tool chain
>    - graphics
>    - multimedia
>    - demoapps
>    - general
>  - Documentation
>    - Handbook
>    - SDK
>  - Security
>  - SDK
>    - tools
>    - general
>
>Comments?
>
>
>--
>     Sau!
>
>Saul Wold
>Yocto Component Wrangler @ Intel
>Yocto Project / Poky Build System
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

