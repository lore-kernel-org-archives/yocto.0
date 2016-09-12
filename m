Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3510E00A54; Mon, 12 Sep 2016 14:00:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C64E009E7
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 14:00:17 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id F1DEFC0086; Mon, 12 Sep 2016 17:00:16 -0400 (EDT)
Date: Mon, 12 Sep 2016 17:00:16 -0400
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160912210016.GC14313@csclub.uwaterloo.ca>
References: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
	<CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Striping cross-compiled paths
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
X-List-Received-Date: Mon, 12 Sep 2016 21:00:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 12, 2016 at 08:16:02PM +0100, Burton, Ross wrote:
> If those paths come from __FILE__ and so on, then currently no.  It would
> be great if GCC could do this, but currently it can not.

__FILE__ contains whatever was passed to gcc, so if you ask it to do:

gcc file.c

then __FILE__ will be just file.c, while if you do:

gcc /full/path/to/my/file.c

then __FILE__ will be /full/path/to/my/file.c

So it really depends on how the makefile does things, and what bitbake
passes to the build.  It is not gcc's fault at all.

-- 
Len Sorensen

