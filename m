Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62CBFE00A16; Fri,  3 Mar 2017 01:09:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE32E0094C
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 01:09:24 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 03 Mar 2017 01:09:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,236,1484035200"; d="scan'208";a="231827339"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga004.fm.intel.com with ESMTP; 03 Mar 2017 01:09:23 -0800
Date: Fri, 3 Mar 2017 11:11:24 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Adrian Calianu <adrian.calianu@enea.com>
Message-ID: <20170303091124.GA26965@mbabyjoh-desk.ger.corp.intel.com>
References: <1488459017-15312-1-git-send-email-adrian.calianu@enea.com>
MIME-Version: 1.0
In-Reply-To: <1488459017-15312-1-git-send-email-adrian.calianu@enea.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 0/3] Fix build for per-recipe sysroot
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
X-List-Received-Date: Fri, 03 Mar 2017 09:09:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Adrian,

On Thu, Mar 02, 2017 at 01:50:14PM +0100, Adrian Calianu wrote:
> Fix was done according to latest changes where dependencies
> are installed into a per-recipe sysroot.
> 
> Adrian Calianu (3):
>   classpath-native: fix build dependencies
>   libecj: fix build issues by adding missing dependencies
>   jamvm: add missing dependencies
> 
>  recipes-core/classpath/classpath-native_0.99.bb | 2 +-
>  recipes-core/ecj/libecj-bootstrap.inc           | 2 +-
>  recipes-core/jamvm/jamvm.inc                    | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
Thanks lot for these fixes. Pushed to master-next.

Warm Regards,
Maxin

