Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7AF614C800A1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 11:39:01 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QkIke-0006yN-Ql
	for yocto@yoctoproject.org; Fri, 22 Jul 2011 12:39:00 -0400
Date: Fri, 22 Jul 2011 12:38:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107221237080.10614@localhost6.localdomain6>
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
Subject: "sat-solver" package fails to fetch
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
X-List-Received-Date: Fri, 22 Jul 2011 16:39:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  this is something i noticed a couple days back -- trying to "bitbake
-c fetchall world" failed on the sat-solver package:


NOTE: Running task 478 of 1358 (ID: 486,
/home/rpjday/yocto/poky.git/meta/recipes-extended/sat-solver/sat-solver_git.bb,
do_fetch)
NOTE: package
sat-solver-0.0-git1+0a7378d5f482f477a01cf1690d76871ab8bdcc32-r11: task
do_fetch: Started
ERROR: Function 'Fetcher failure for URL:
'git://gitorious.org/opensuse/sat-solver.git;protocol=git'. Unable to
fetch URL git://gitorious.org/opensuse/sat-solver.git;protocol=git
from any source.' failed
ERROR: Logfile of failure stored in:
/home/rpjday/yocto/build/tmp/work/qemux86-poky-linux/sat-solver-0.0-git1+0a7378d5f482f477a01cf1690d76871ab8bdcc32-r11/temp/log.do_fetch.10656
Log data follows:
| fatal: Not a git repository (or any of the parent directories): .git
|  fatal: Not a git repository (or any of the parent directories):
.git
| ERROR: Function 'Fetcher failure for URL:
'git://gitorious.org/opensuse/sat-solver.git;protocol=git'. Unable to
fetch URL git://gitorious.org/opensuse/sat-solver.git;protocol=git
from any source.' failed
|
NOTE: package
sat-solver-0.0-git1+0a7378d5f482f477a01cf1690d76871ab8bdcc32-r11: task
do_fetch: Failed


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

