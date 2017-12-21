Return-Path: <richard.purdie@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34AA8E00D32; Thu, 21 Dec 2017 06:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59169E00C78
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 06:44:01 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 06:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="186090115"
Received: from anadara1-mobl2.gar.corp.intel.com (HELO hex) ([10.252.172.192])
	by orsmga005.jf.intel.com with ESMTP; 21 Dec 2017 06:43:55 -0800
Message-ID: <1513867433.16507.94.camel@intel.com>
From: Richard Purdie <richard.purdie@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Lock, Joshua G" <joshua.g.lock@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Thu, 21 Dec 2017 14:43:53 +0000
In-Reply-To: <58D9E2E50A021A45AD740492365FCDC532A48868@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A48868@fmsmsx107.amr.corp.intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>, "Yeoh,
	Ee Peng" <ee.peng.yeoh@intel.com>
Subject: Re: QA cycle report for 2.3.3 RC1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Dec 2017 14:44:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-12-20 at 20:25 -0800, Cruz, Libertad wrote:
> Hello All,
> Enjoy viewing the full Report for 2.3.3 RC1:  https://wiki.yoctoproje
> ct.org/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3.3_rc1
> 
> ======= Summary ========
> 
> The QA cycle for release 2.3.3 RC1 is complete.  There are 4 new bugs
> from which so far none of them are high. QA has two big concerns:
> 
>         1.  Performance report shows an increase of 30% build time on
> the eSDK in fedora 23, bug has not been created until further
> investigation with setup outside of the GDC environment. 

Could you confirm when the performance test machines were last
rebooted? We've had issues before where the benchmarks drift with
machine uptime. If the've been running for more than about 3 weeks I'd
like to run the benchmarks again after a reboot.

Thanks!

Richard

