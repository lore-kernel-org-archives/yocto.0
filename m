Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E1D7E01473
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2012 02:53:31 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:41408 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SlGqQ-00031U-3W; Sun, 01 Jul 2012 05:53:30 -0400
Date: Sun, 1 Jul 2012 05:53:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1207010542550.12323@oneiric>
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
Subject: brief observations on poky ref manual
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
X-List-Received-Date: Sun, 01 Jul 2012 09:53:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  some potential fixes for poky reference manual, i'll graciously
allow scott rifenbark to do all the work.  :-)

  working in appendix F (variable glossary):

* INITSCRIPT_PACKAGES: it seems that it's not only if there are
multiple packages that you'll need to append the package names to
subsequent INITSCRIPT_* variables, it's also if there's just a single
package but it's not equal to ${PN}, as in:

meta/recipes-connectivity/openssh/openssh_6.0p1.bb:INITSCRIPT_PACKAGES = "${PN}-sshd"
meta/recipes-connectivity/openssh/openssh_6.0p1.bb:INITSCRIPT_NAME_${PN}-sshd = "sshd"
meta/recipes-connectivity/openssh/openssh_6.0p1.bb:INITSCRIPT_PARAMS_${PN}-sshd = "defaults 9"

  in the above, there's only one initscript package related to
openssh, but since its name differs from ${PN}, you need to be
explicit, yes?  the current glossary entry doesn't make that clear.


* just below that, INITSCRIPT_PARAMS is listed as "mandatory".  not
really -- its assigned a default value of "defaults" in
meta/classes/update-rc.d.bbclass, so if that's fine for your recipe,
there's no need to assign anything.  (in fact, there's a small number
of recipes that unnecessarily set that value.)

  and in appendix G.2.1, AUTHOR is listed as a required variable --
i'm pretty sure that's not true as numerous recipes have no listed
author.  on the other hand, there's no mention of other recipe-level
variables, such as SUMMARY.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

