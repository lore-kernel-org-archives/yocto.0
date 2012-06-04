Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96718E0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 01:27:42 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:40160 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SbSdY-0004ix-62
	for yocto@yoctoproject.org; Mon, 04 Jun 2012 04:27:40 -0400
Date: Mon, 4 Jun 2012 04:27:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206040421000.9995@oneiric>
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
Subject: should yocto QS guide mention SOURCE_MIRROR_URL?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Jun 2012 08:27:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  in the current QS guide, late section "Configuring the local.conf
File", is the advice:

"A good deal that goes into a Yocto Project build is simply
downloading all of the source tarballs. Maybe you have been working
with another build system (OpenEmbedded, Angstrom, etc) for which
you've built up a sizable directory of source tarballs. Or perhaps
someone else has such a directory for which you have read access. If
so, you can save time by adding the PREMIRRORS statement to your
configuration file so that local directories are first checked for
existing tarballs before running out to the net:

     PREMIRRORS_prepend = "\
     git://.*/.* file:///home/you/dl/ \n \
     svn://.*/.* file:///home/you/dl/ \n \
     cvs://.*/.* file:///home/you/dl/ \n \
     ftp://.*/.* file:///home/you/dl/ \n \
     http://.*/.* file:///home/you/dl/ \n \
     https://.*/.* file:///home/you/dl/ \n"  "


  should that be simplified to use SOURCE_MIRROR_URL, which is what i
use:

SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "1"
# BB_NO_NETWORK = "1"

rday

p.s.  does SOURCE_MIRROR_URL accept multiple URLs?  i don't see that
mentioned anywhere, but maybe i just missed it.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

