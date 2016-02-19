Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E906E00CC6; Fri, 19 Feb 2016 02:31:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCED8E00C60
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 02:31:41 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 19 Feb 2016 02:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,470,1449561600"; d="scan'208";a="749296238"
Received: from mbabyjoh-mobl.fi.intel.com ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 19 Feb 2016 02:31:39 -0800
Date: Fri, 19 Feb 2016 12:35:14 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Vivek Per <pervivek@gmail.com>
Message-ID: <20160219103514.GA27222@mbabyjoh-mobl.fi.intel.com>
References: <CALLyC8SKmc0+7tMU8X6JwCriP9orCGvbVToFwgj6jytvpdd1GA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALLyC8SKmc0+7tMU8X6JwCriP9orCGvbVToFwgj6jytvpdd1GA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: which package/recipe produces "ss" utility
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
X-List-Received-Date: Fri, 19 Feb 2016 10:31:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Vivek,

On Fri, Feb 19, 2016 at 10:17:30AM +0530, Vivek Per wrote:
> Does any one know which package produces ss utility in yocto.
> i tried iproute2 reciepe which is not present.

Please use the "iproute2-ss" which is available in the "master" branch:

# oe-pkgdata-util list-pkgs -p iproute2
iproute2-tc
iproute2-lnstat
iproute2-ifstat
iproute2-genl
iproute2-rtacct
iproute2-nstat
iproute2-ss
iproute2-dbg
iproute2-dev
iproute2-doc
iproute2

Best Regards,
Maxin

