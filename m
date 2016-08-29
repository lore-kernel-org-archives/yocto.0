Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3279BE00F1D; Mon, 29 Aug 2016 04:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD323E00F18
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 04:51:37 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 29 Aug 2016 04:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,596,1464678000"; d="scan'208";a="754630995"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Aug 2016 04:51:36 -0700
Date: Mon, 29 Aug 2016 14:49:14 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160829114913.GB5724@mbabyjoh-desk.ger.corp.intel.com>
References: <94135907-910a-eea9-263d-89e9ef21bf56@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <94135907-910a-eea9-263d-89e9ef21bf56@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: X display touch calibration
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
X-List-Received-Date: Mon, 29 Aug 2016 11:51:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gary,

On Mon, Aug 29, 2016 at 11:09:25AM +0200, Gary Thomas wrote:
> How is the touchscreen calibration supposed to work now (after
> the recent changes dropping pointercal, tslib, etc)?  I can
> see when I launch X that the screen calibration program runs,
> but I think only briefly as the main [matchbox] screen immediately
> comes up and without calibration, my pointer (touchscreen) is pretty
> useless...

Could you share some more details about the device that you are using?

Most likely, the layer which supports your device, already provides a
default "/etc/pointercal.xinput" file. Removing that file and restarting
the device should bring back the screen calibration program during boot.

> Ideas / pointers?

Please update that .bbappend file or provide a "reasonable"(which works
with the latest xinput_calibrator) set of default values in the
pointercal.xinput file.

> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

Best Regards,
Maxin

