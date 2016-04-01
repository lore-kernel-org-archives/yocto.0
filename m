Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD826E00C92; Fri,  1 Apr 2016 01:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E492E00C31
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 01:39:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 01 Apr 2016 01:39:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,426,1455004800"; d="scan'208";a="945910143"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2016 01:39:22 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id A803A6A4002;
	Fri,  1 Apr 2016 02:27:02 -0700 (PDT)
Date: Fri, 1 Apr 2016 09:19:30 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Karl Voelker <karl@karlv.net>
Message-ID: <20160401061930.GA12298@linux.intel.com>
References: <1459363701.3311990.563914570.78E2C83E@webmail.messagingengine.com>
MIME-Version: 1.0
In-Reply-To: <1459363701.3311990.563914570.78E2C83E@webmail.messagingengine.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Can wic split rootfs files across partitions?
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
X-List-Received-Date: Fri, 01 Apr 2016 08:39:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 30, 2016 at 11:48:21AM -0700, Karl Voelker wrote:
> I am trying to build a multi-partition image with wic, with separate
> partitions for / and /var. So, the / partition should get all the files
> except those under /var, and the /var partition should get the files
> under /var.
> 
> I thought this was possible because of the suggestion in the docs that
> the mntpoint arg of a "part" command could be /usr or /home (see
> http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#command-part-or-partition).
>
> However, after trying a few different things in my wks file, and looking
> through a lot of the wic source code, I am starting to wonder if this
> kind of thing is not actually supported. If it is supported, is there an
> example somewhere? None of the examples in scripts/lib/wic/canned-wks
> appear to cover this situation.
> 

I'm afraid it's not possible. Wic takes rootfs directories and puts them
to partitions. It doesn't split subdirectories to different partitions
and in my opinion it shouldn't. It's a job of build recipe to prepare
rootfs directories.

Regarding documentation. /usr and /home are mentioned there just as
examples of mount points. If you have rootfs directory to put into /usr
you can put /usr to .wks file and wic will put content of your rootfs
into separate partition and add one line to fstab to mount it to /usr.

I think it's possible to write source plugin to take subdirectory
instead of whole rootfs directory and put it into partition, but I'd
not suggest this. It's much more simpler to create or modify build
recipes to prepare one rootfs directory per partition.

--
Regards,
Ed

