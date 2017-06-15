Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40390E00B97; Thu, 15 Jun 2017 01:23:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64770E00B77
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 01:23:42 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jun 2017 01:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,342,1493708400"; d="scan'208";a="274555845"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga004.fm.intel.com with ESMTP; 15 Jun 2017 01:23:41 -0700
Date: Thu, 15 Jun 2017 11:23:32 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Andersen, Christian" <c.andersen@kostal.com>
Message-ID: <20170615082332.GC19437@mbabyjoh-desk.ger.corp.intel.com>
References: <c683cf9b78e04d5e912e0c0a8a0a59b4@DEBEMAIL002.kostal.int>
	<20170614152552.GA18997@mbabyjoh-desk.ger.corp.intel.com>
	<273d47d96cf74bb98bb7b5c46693b0e2@DEBEMAIL002.kostal.int>
MIME-Version: 1.0
In-Reply-To: <273d47d96cf74bb98bb7b5c46693b0e2@DEBEMAIL002.kostal.int>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Thu, 15 Jun 2017 08:23:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Christian,

On Wed, Jun 14, 2017 at 04:13:04PM +0000, Andersen, Christian wrote:
> Hi Maxin,
> 
> > Here, could you try to build again with an additional DEPENDENCY on shadow-
> > native:
> > ie: instead of
> > >DEPENDS = "puck-base"
> > DEPENDS = "puck-base shadow-native"
> > 
> > To be sure, please cleansstate the puck-base and test before build.
> 
> Thanks! I tried as you suggested (cleansstate and then build) and with shadow-native it is working now.

Good to hear that !

> Do I have to add shadow-native in all these recipes or is it a bug / regression in pyro?

It is one of those "known" limitations which fell through the cracks.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=8078

Thanks for bringing this up. We need to address this for pyro/master.

> Regards,
> Christian

Best Regards,
Maxin

