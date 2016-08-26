Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26A0E00B58; Fri, 26 Aug 2016 05:24:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 908AFE00B46
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 05:24:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 26 Aug 2016 05:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,580,1464678000"; d="scan'208";a="1041881703"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2016 05:24:13 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.68])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 382B26A4080;
	Fri, 26 Aug 2016 05:23:54 -0700 (PDT)
Date: Fri, 26 Aug 2016 15:24:04 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Michael Habibi <mikehabibi@gmail.com>
Message-ID: <20160826122404.GA11402@linux.intel.com>
References: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Git/yocto newbie question re: submodules and multiple layers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Aug 2016 12:24:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 25, 2016 at 04:24:34PM -0500, Michael Habibi wrote:
> Hi, I am well-versed with Git but I haven't really ever had to use
> submodules. I am trying to create a git repository on our server that
> will host our yocto distribution. Our distribution will include the
> yocto repo, plus meta-openembedded repo, plus maybe some other layers.
> 
I can be completely wrong here, but isn't it what combo-layer is used
for? https://wiki.yoctoproject.org/wiki/Combo-layer

--
Regards,
Ed

