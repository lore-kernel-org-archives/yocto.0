Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F32E00C8F; Thu,  1 Dec 2016 09:35:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E24E00C65
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 09:35:10 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2016 09:35:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,282,1477983600"; d="scan'208";a="37876610"
Received: from fang-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.183.65])
	by fmsmga005.fm.intel.com with ESMTP; 01 Dec 2016 09:35:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 02 Dec 2016 06:35:05 +1300
Message-ID: <1865791.yBGQ8Ql6od@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.8-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
References: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Shared state doesn't live up to its name?
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
X-List-Received-Date: Thu, 01 Dec 2016 17:35:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 01 Dec 2016 10:27:50 Gary Thomas wrote:
> I have a build machine where I build for lots of targets.  On
> all of these targets (save a primary), I set the SSTATE_MIRROR
> to point to the sstate-cache of the primary target.  I always build
> for the primary target first, then later the secondary ones.
> 
> For the most part, the sstate mechanism works pretty well, but I
> see some anomalies.  For example, why on the same host, built back
> to back, would a secondary build target (which uses the primary
> as it's SSTATE_MIRROR and that build is complete) need to rebuild
> from scratch such NATIVE packages as openssl?  Note that these are
> native packages I'm asking about, so in my mind they should always
> be sharable.
> 
> Any ideas?  Is there something I can look at to investigate this?

bitbake-diffsigs is the basic tool to compare signatures when those have 
changed. Find the siginfo / sigdata file for one of the early tasks that 
executed and compare them to see what changed.

How are you setting SSTATE_MIRRORS in this scenario btw?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

