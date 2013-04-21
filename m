Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF5BBE01498
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 12:53:31 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:52698 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UU0KH-0005dY-JQ
	for yocto@yoctoproject.org; Sun, 21 Apr 2013 15:53:29 -0400
Date: Sun, 21 Apr 2013 15:53:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304211541540.9853@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: looking to "yoctify" mips-based ubiquiti edgerouter lite
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
X-List-Received-Date: Sun, 21 Apr 2013 19:53:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  bruce ashfield will know what i'm talking about as i've been
torturing him over the last few days with this cool, new 64-bit, dual
core MIPS router that looks like a perfectly respectable replacement
for the current MIPS yocto reference board, the routerstation pro
(both being from ubiquiti).

  this is what i'm talking about:

  http://ubnt.ca/en/edgemax/61-edgemax.html

salient specs:

 * dual-core 500MHz, MIPS64 (cavium octeon+)
 * 512MB DDR2 RAM
 * 2 GB onboard flash storage

anyway, i wrote a bunch of wiki pages on it starting here:

  http://www.crashcourse.ca/wiki/index.php/EdgeRouter_Lite

i've already downloaded the source so i have the kernel and the
.config file and was interested in building the toolchain so i could
at least compile and test the kernel.

  i know next to nothing about MIPS but, based on what i've read and
the possible tunings being:

AVAILTUNES += "mips mips64-n32 mips64 mipsel mips64el-n32 mips64el
mips-nf mips64-nf-n32 mips64-nf mipsel-nf mips64el-nf-n32 mips64el-nf"

i would think what i want is "mips64-nf", but anyone who's a MIPS
expert is welcome to correct me.

  this seems like a perfectly respectable MIPS platform for
experimenting, and it seems like it wouldn't be hard to come up with a
yocto machine definition for it.

rday

p.s.  one of the ubnt engineers i've been chatting with is adamant
that they're keeping the price of this thing at $99 USD (MSRP), so
it's certainly affordable for hackers.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

