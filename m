Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8D40E00887; Thu,  6 Apr 2017 07:22:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04231E007BA
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 07:22:09 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 06 Apr 2017 07:22:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,160,1488873600"; d="scan'208";a="85728600"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga006.fm.intel.com with ESMTP; 06 Apr 2017 07:22:08 -0700
Message-ID: <1491489030.31049.11.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Matthew Phillips <matthew1phillips@gmail.com>
Date: Thu, 06 Apr 2017 09:30:30 -0500
In-Reply-To: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
References: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Local repo no network help request
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
X-List-Received-Date: Thu, 06 Apr 2017 14:22:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
> Hi all,
> 
> I am trying to do the following:
> 
> I have a local git repo, pulled manually from a remote repo (via a script).
> I have a .bb file set up referencing this repo. This .bb file includes
> (among other things):
> 
> >> SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
> >> SRCREV = "${AUTOREV}"
> 

did you get the same result if you hard-coded the pathname? 




> I do not want to use the network (so BB_NO_NETWORK is 1).
> 
> Although the SRC_URI is pointing to the correct path, the yocto build
> fails because it tries to access the network.
> 
> How should I be doing this instead?
> 
> I can run a script (preferably bash atm) before the build if doing
> something pre-build will help simplify anything.
> 
> Thank you,
> M



