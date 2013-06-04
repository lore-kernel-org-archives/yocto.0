Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A6D5E014A1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 04:32:38 -0700 (PDT)
Received: from 76-10-154-218.dsl.teksavvy.com ([76.10.154.218]:58675
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UjpTf-0007Tv-RE
	for yocto@yoctoproject.org; Tue, 04 Jun 2013 07:32:35 -0400
Date: Tue, 4 Jun 2013 07:32:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1306040727200.4915@oneiric>
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
Subject: anyone building for the arrow sockit eval board?
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
X-List-Received-Date: Tue, 04 Jun 2013 11:32:38 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  that's this board:

http://www.rocketboards.org/foswiki/Documentation/ArrowSoCKitEvaluationBoard

there's an alleged page for downloading an appropriate layer here:

http://www.rocketboards.org/foswiki/Documentation/GitGettingSTarted#Yocto_Project

with the instructions:

$ git clone http://git.rocketboards.org/poky-socfpga.git
$ cd  poky-socfpga/
$ git checkout -b <test_branch_name> origin/danny-altera
$ source ./altera-init build
$ bitbake virtual/kernel virtual/bootloader altera-image

but those instructions clearly won't work as that checkout doesn't
include the script "altera-init" and doesn't define an "altera-image".

  there's a much larger downloadable image called
"linux-socfpga-13.02-RC10-src.bsx", but it's well over 800M and is
defined to contain *everything* you need to build (that's all the
source and everything), but i don't want to go down that road as i'm
pretty sure i have most of the source.

  so is there, in fact, a valid meta-altera(?) layer of some kind that
defines the machine, image(s) and recipes for the arrow sockit board,
without cluttering the download with 800M+ of extraneous junk? thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

