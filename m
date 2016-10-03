Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D17FEE0045D; Mon,  3 Oct 2016 11:23:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3FAE00444
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 11:23:55 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 588C5C006C; Mon,  3 Oct 2016 14:23:54 -0400 (EDT)
Date: Mon, 3 Oct 2016 14:23:54 -0400
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20161003182354.GF14313@csclub.uwaterloo.ca>
References: <HE1PR01MB18837CF7986BCE6EEFE81B6492CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<1475145104.30475.109.camel@linuxfoundation.org>
	<37548ba8-2126-9072-2580-23466670d74f@windriver.com>
MIME-Version: 1.0
In-Reply-To: <37548ba8-2126-9072-2580-23466670d74f@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: build a toolchain compiler with ARM hard-float support
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
X-List-Received-Date: Mon, 03 Oct 2016 18:23:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 29, 2016 at 08:17:47AM -0500, Mark Hatle wrote:
> The machine configuration file should be setting the 'DEFAULTTUNE' variable to
> an appropriate ISA and ABI (hard float) for your configuration.  If it is not,
> you may have to create your own variant and change the DEFAULTTUNE setting --
> assuming the board supports the necessary hard float components.  (And yes,
> there are some armv7a variants that people removed the VFP instructions from --
> even though it's theoretically against spec.)

ARM says the Cortex-A5 and A9 are both optional VFP, so I don't think
it is against the spec in any way.

-- 
Len Sorensen

