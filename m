Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59C59E0105D; Wed, 24 Aug 2016 04:16:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0328FE01057
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 04:16:31 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 24 Aug 2016 04:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,570,1464678000"; d="scan'208";a="160273670"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2016 04:16:29 -0700
Date: Wed, 24 Aug 2016 14:15:57 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Mark Schnell <Mark_Schnell@cree.com>
Message-ID: <20160824111557.GA13684@mbabyjoh-desk.ger.corp.intel.com>
References: <23A9A04933719643AB17AC8E235C8A9A024345E303E4@SCDEXVS01.cree.com>
MIME-Version: 1.0
In-Reply-To: <23A9A04933719643AB17AC8E235C8A9A024345E303E4@SCDEXVS01.cree.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oracle-java][BUG-REPORT
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
X-List-Received-Date: Wed, 24 Aug 2016 11:16:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

>On Wed, Aug 17, 2016 at 09:19:49AM -0400, Mark Schnell wrote:
>
>Good day;
>
> Short version:
>
>The ARM architecture for the meta-oracle-java layer still points to Java v7u60.
>
>  Long version:

<snip>
 
Good catch. I missed that part while upgrading it. Will update it this week :)

Best Regards,
Maxin

