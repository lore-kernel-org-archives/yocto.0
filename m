Return-Path: <erwin.rieger@ibrieger.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EFEAE00D6F; Wed,  6 Dec 2017 16:11:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.237.142.245 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0004]
X-Greylist: delayed 1438 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Dec 2017 16:11:42 PST
Received: from relay08.alfahosting-server.de (relay08.alfahosting-server.de
	[109.237.142.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C0BE00D6D
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 16:11:42 -0800 (PST)
Received: by relay01.alfahosting-server.de (Postfix, from userid 1001)
	id E2A9F32C0775; Thu,  7 Dec 2017 00:47:43 +0100 (CET)
Received: from alfa3023.alfahosting-server.de (alfa3023.alfahosting-server.de
	[109.237.140.44])
	by relay01.alfahosting-server.de (Postfix) with ESMTPS id 6207732C0775
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 00:47:41 +0100 (CET)
Received: from venus.ibrieger.local
	(HSI-KBW-078-043-088-202.hsi4.kabel-badenwuerttemberg.de
	[78.43.88.202])
	by alfa3023.alfahosting-server.de (Postfix) with ESMTPA id 21DBF224C001
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 00:47:41 +0100 (CET)
Message-ID: <1512604009.9473.18.camel@ibrieger.de>
From: Erwin Rieger <erwin.rieger@ibrieger.de>
To: yocto@yoctoproject.org
Organization: Ing. Buero Rieger
Date: Thu, 07 Dec 2017 00:46:49 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.12.9-1+b1 
Subject: Q: Kernel SCC files: shouldn't a changed patch trigger a rebuild?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: erwin.rieger@ibrieger.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Dec 2017 00:11:43 -0000
Content-Type: text/plain; charset="ISO-8859-2"
Content-Transfer-Encoding: 7bit


Hello list,

i have written a kernel recipe derived from linux-yocto-custom. The
SRC_URI includes a SCC file that in turn includes a kernel patch.

First of all, this works as expected, the patch is applied to the kernel
source and my custom kernel is built.

But the kernel is NOT rebuilt if i modify the kernel patch (without
touching the SCC file). In other words: changed files that are directly
named in the SRC_URI variable trigger a rebuild, but indirectly included
changed input files (through a SCC file) do not.

Is this the intended behaviour?


PS: 
I can provide more info and my test files if needed.






-- 
Mit freundlichen Gruessen Erwin Rieger

--------------------------------------------------------------------
| Ingenieurbuero Rieger, Software Entwicklung
| EMail: erwin.rieger@ibrieger.de
--------------------------------------------------------------------



