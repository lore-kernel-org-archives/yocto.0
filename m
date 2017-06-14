Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D5F4E00B83; Wed, 14 Jun 2017 03:44:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAE80E00BD5
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 03:44:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2017 03:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,340,1493708400"; d="scan'208";a="1160350911"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2017 03:44:26 -0700
Date: Wed, 14 Jun 2017 13:44:16 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20170614104416.GC36175@mbabyjoh-desk.ger.corp.intel.com>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
	<20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
MIME-Version: 1.0
In-Reply-To: <20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 10:44:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Anders,

On Wed, Jun 14, 2017 at 11:20:57AM +0200, Anders Darander wrote:
> * Maxin B. John <maxin.john@intel.com> [170614 10:24]:
> 
> > Hi Paul,
> 
> > On Tue, Jun 13, 2017 at 04:24:38PM -0700, Paul D. DeRocco wrote:
> > > In order to try out the much more recent compiler in the Yocto SDK (and to
> > > prepare for converting to a different architecture in the future), I built
> > > a standard SDK by using do_populate_sdk on my image. I managed to modify
> > > my project to use the toolchain and libraries in the sysroot in the SDK,
> > > and it successfully produces an executable. But when I copy this into my
> > > system, it barfs because there is no libstdc++.o (and perhaps other
> > > libraries) on my system. And there is no libstdc++.a in the SDK.
> 
> > Had a similar experience with respect to the availability of static libraries
> > in the SDK.
> 
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=5347
> 
> > One way to fix this will be to include required static libraries in the image
> > before building SDK - eg: for glibc static development libraries:
> 
> > IMAGE_INSTALL_append = " glibc-staticdev"
> 
> Why install it to the image? 
> 
> TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"
> 
> would be better, as it'll only add this package to the SDK.

Thanks for the suggestion. This looks much better. 

Time to update the documentation :) 

> Cheers,
> Anders

Best Regards,
Maxin

