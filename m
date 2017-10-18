Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76085E00D1B; Wed, 18 Oct 2017 06:05:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6AC4E00CEC
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 06:05:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Oct 2017 06:05:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,396,1503385200"; 
   d="scan'208";a="210440"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by orsmga002.jf.intel.com with SMTP; 18 Oct 2017 06:05:04 -0700
Date: Wed, 18 Oct 2017 08:14:53 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-Id: <20171018081453.3c4ca40cb55fa939ebab94d4@linux.intel.com>
In-Reply-To: <698a7870-f4b8-39a1-473a-1a3b9ba2d45f@linux.intel.com>
References: <20171018110810.678FB440F6B@auh.yoctoproject.org>
	<698a7870-f4b8-39a1-473a-1a3b9ba2d45f@linux.intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: auh@auh.yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [AUH] Upgrade status: 2017-10-18
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
X-List-Received-Date: Wed, 18 Oct 2017 13:05:08 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 18 Oct 2017 14:29:08 +0300
Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:

> On 10/18/2017 02:08 PM, auh@auh.yoctoproject.org wrote:
> >      TOTAL: attempted=147 succeeded=25(17.01%) failed=122(82.99%)
> 
> With this kind of success rate, should we continue to run and develop 
> the thing?
> 
> I think it's better to just send notifications to maintainers without 
> attempting to update anything, as most of the time version updates need 
> manual rebasing of patches or other tweaks anyway.
> 
> I've submitted a small script to do just that:
> http://lists.openembedded.org/pipermail/openembedded-core/2017-October/143510.html
> 
> Instead, I'd rather see RRS fixed/improved - lots of issues there, some 
> of them very old.

About the AUH/RSS, this is an important point to discuss on the 2.5 planning and the best way is to point those old bugs in this phase. 

In the upgrade area, 'devtool upgrade' helps a lot in the starting phase of the upgrade (rebasing patches old version into new version) but as you mentioned, upgrades are not as easy as changing the revisions and of course once it 'builds', manual testing is needed, at least the basic stuff. 

> 
> 
> Alex
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

