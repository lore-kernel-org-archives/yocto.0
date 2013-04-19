Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D915E014DD
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 05:37:40 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:54102 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTAZP-0005um-LJ
	for yocto@yoctoproject.org; Fri, 19 Apr 2013 08:37:39 -0400
Date: Fri, 19 Apr 2013 08:37:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304190827410.4247@oneiric>
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
Subject: clarification about BSP layer names and bblayers.conf file?
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
X-List-Received-Date: Fri, 19 Apr 2013 12:37:40 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  from section 1.1 of BSP developers guide:

http://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-layers

first, it's not actually *required* that a layer name start with the
prefix "meta-", is it?  pretty sure it's not and, if it isn't, that
should be made abundantly clear. it's fine to point out that it's a
well-established convention but it should still be mentioned
explicitly that it's not necessary.

  second, the BBLAYERS example there seems overly complicated and
potentially confusing to beginners. the fact that meta-yocto is listed
as NON_REMOVABLE might make readers wonder how they're supposed to
know that. why not go with something a lot more people will see, like,
say:

     BBLAYERS = ?" \                  <-- and that looks like a typo
       /usr/local/src/yocto/meta \
       /usr/local/src/yocto/meta-ti \
       "

     BBLAYERS_NON_REMOVABLE ?= " \
       /usr/local/src/yocto/meta \
       "

  finally, the passing reference to layers that contain sub-BSP-layers
is good, but show an example, such as the fact that the meta-crownbay
layer.conf file has a dependency on meta-intel:

...
LAYERDEPENDS_crownbay = "intel"

  never pass up the opportunity to reinforce an idea with a few lines
of actual code. :-)

  more shortly ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


