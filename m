Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E716CE014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:59:19 -0700 (PDT)
Received: from 76-10-154-218.dsl.teksavvy.com ([76.10.154.218]:33201
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ujrle-0005N3-0W; Tue, 04 Jun 2013 09:59:18 -0400
Date: Tue, 4 Jun 2013 09:59:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jack Mitchell <ml@communistcode.co.uk>
In-Reply-To: <51ADDCE1.9020400@communistcode.co.uk>
Message-ID: <alpine.DEB.2.02.1306040952080.21331@oneiric>
References: <alpine.DEB.2.02.1306040727200.4915@oneiric>
	<51ADD7C0.60707@communistcode.co.uk>
	<alpine.DEB.2.02.1306040814300.5416@oneiric>
	<51ADDCE1.9020400@communistcode.co.uk>
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
Cc: yocto@yoctoproject.org
Subject: Re: anyone building for the arrow sockit eval board?
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
X-List-Received-Date: Tue, 04 Jun 2013 13:59:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 4 Jun 2013, Jack Mitchell wrote:

> The interesting ones in there are meta-altera and meta-linaro; it
> would also be interesting to see if anything else is modified or if
> it is vanilla Yocto. I have a sinking feeling it may not be...
> mainly due to the tightly coupled DT and socfpga implementation with
> the Altera tools.
>
> Could you post the altera-init script; I would imagine that hides
> the demons ;)

  i've finished adding a couple more things to this page:

http://www.crashcourse.ca/wiki/index.php/SoCKit_Yocto_bsx_build

showing a successful build of an "altera-image-minimal" image, at
least with respect to the artifacts that show up in the "images/"
directory, so that's a good sign (although i haven't boot-tested that
stuff yet).

  i may spend some time perusing the contents of the meta-altera/
directory to see how easy it would be to just extract that as a
separate layer and use stock layers for everything else -- doesn't
look like it would be hard as i would prefer to use the latest "git
pull" content when possible.

rday

p.s. i know nothing about the issues involving the combination of the
device tree and FPGA, but the build process did generate dtb files, so
maybe it really is self-contained. feel free to follow along with that
page and see if it all works for you as well.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

