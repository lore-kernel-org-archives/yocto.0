Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C835BE0090A; Fri, 23 Sep 2016 09:33:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A2A3E0074B
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 09:33:50 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id A9104C025D; Fri, 23 Sep 2016 12:33:49 -0400 (EDT)
Date: Fri, 23 Sep 2016 12:33:49 -0400
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Message-ID: <20160923163349.GE14313@csclub.uwaterloo.ca>
References: <DB23C91B06C303459B24BC3208AF424A20F9B38A@MBX114.d.ethz.ch>
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F9B38A@MBX114.d.ethz.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Freescale DPAA drivers
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
X-List-Received-Date: Fri, 23 Sep 2016 16:33:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 23, 2016 at 02:13:43PM +0000, Anicic Damir (PSI) wrote:
> I am using Yocto 2.1, PowerPC64, default kernel 4.1.22
> Building for T2080rdb.
> 
> Everything builds, but kernel is missing DPAA Freescale drivers
> (dpaa_eth at least)
> 
> 
> It seems that DPAA Freescale drivers not in any Linux kernel (or am I wrong).
> 
> Why is that so, is Freescale not planing to include them in kernel ?

I have seen them try.  There was a v5 patch for dpaa_eth in December 2015,
but I don't know what happened after that.

There is drivers/staging/fsl-mc/ in the most recent kernel, but I am
not sure that's everything needed yet.

In fact today there was:

http://lkml.iu.edu/hypermail/linux/kernel/1609.2/04508.html
http://lkml.iu.edu/hypermail/linux/kernel/1609.2/00356.html

So they are trying again it seems.

-- 
Len Sorensen

