Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05FC2E00779; Thu, 26 Feb 2015 14:17:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C71E0074C
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 14:17:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 26 Feb 2015 14:11:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,655,1418112000"; d="scan'208";a="691350513"
Received: from gaponcec-mobl2.amr.corp.intel.com (HELO [10.219.4.48])
	([10.219.4.48])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2015 14:17:23 -0800
Message-ID: <54EF9B73.3050905@linux.intel.com>
Date: Thu, 26 Feb 2015 16:17:23 -0600
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20150223142243.GB11425@ulm-bmuc496424.bmw-carit.de>
	<20150226144237.GP11425@ulm-bmuc496424.bmw-carit.de>
In-Reply-To: <20150226144237.GP11425@ulm-bmuc496424.bmw-carit.de>
Subject: Re: [PATCH] bitbake: fetch2: Revalidate checksums, YOCTO #5571
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
X-List-Received-Date: Thu, 26 Feb 2015 22:17:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Clemens,

On 23/02/15 08:22, Clemens Lang wrote:

This is the problem I see, I am not sure we want to import extra 
libraries here, as you state the use of pickle might be ok since it 
avoids the overhead of calculating the checksums each time, but I don't 
know if it is actually worth it, since checksums are calculated fairly 
quick anyway, this is my personal opinion, you may still submit it for 
review.
>   
> +try:
> +    import cPickle as pickle
> +except ImportError:
> +    import pickle
> +    logger.info("Importing cPickle failed. "
> +                "Falling back to a very slow implementation.")
> +
>
On 26/02/15 08:42, Clemens Lang wrote:
> Hi,
>
> On Mon, Feb 23, 2015 at 03:22:43PM +0100, Clemens Lang wrote:
>> [YOCTO #5571] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=5571
> Can somebody review this? Is there anything I need to do to get this
> considered for merging?
And perhaps the reason it hasn't been reviewed is that I believe this 
patch should go to bitbake-devel@lists.openembedded.org instead.

I also had this WIP branch on contrib, its from a couple of months back 
its "dirty" but in case you'd like to look around.

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=hsalejandro/5571&id=2f59e26e534dc6b6d4c5bb8d78c574042e0fe7a7

