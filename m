Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D44BE00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 08:57:53 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RMM9P-00021B-Iv
	for yocto@yoctoproject.org; Fri, 04 Nov 2011 11:57:51 -0400
Date: Fri, 4 Nov 2011 11:57:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
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
Subject: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 15:57:54 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  stumbled over this so i did a more thorough search:

$ grep -w PARALLEL_MAKE $(find . -name *.bb)
./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE = ""
./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE = ""
./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE = ""
./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE = ""
./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE = ""
./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=""
./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE = ""
./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE = ""
./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE = ""
... more snipped ...

  why are individual recipes setting PARALLEL_MAKE to the empty
string?  it's a *build* option, why would it have any relevance to
individual .bb files?

  conversely, i don't see a single .bb file that sets
BB_NUMBER_THREADS.  the above just looks ... odd.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

