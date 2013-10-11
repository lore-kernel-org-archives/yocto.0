Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33EBBE01566
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 02:49:35 -0700 (PDT)
Received: from [173.34.6.101] (port=60535 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VUZLh-0000R8-CM
	for yocto@yoctoproject.org; Fri, 11 Oct 2013 05:49:33 -0400
Date: Fri, 11 Oct 2013 05:49:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310110544270.6380@oneiric>
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
Subject: why does meta-intel crownbay-noemgd.conf not require "meta-intel"?
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
X-List-Received-Date: Fri, 11 Oct 2013 09:49:38 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  perusing sample machine conf files and BSP definitions, looking for
nice examples to use in a class in a couple weeks, and i noticed the
following oddity under meta-intel/meta-crownbay.

  while crownbay.conf contains:

require conf/machine/include/tune-atom.inc
require conf/machine/include/ia32-base.inc
require conf/machine/include/meta-intel.inc
require conf/machine/include/meta-intel-emgd.inc

  crownbay-noemgd.conf contains only:

require conf/machine/include/tune-atom.inc
require conf/machine/include/ia32-base.inc

  i would have thought the latter would still need to require
"meta-intel.inc" for consistency.

  i'm sure if i poked around for a few seconds, it would make sense
but, just from a visual point of view -- if someone is reading the
files trying to understand how to define a BSP -- it looks confusing,
no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

