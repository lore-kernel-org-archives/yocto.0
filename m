Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A9BE0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 06:33:17 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SALfA-00061I-NZ
	for yocto@yoctoproject.org; Wed, 21 Mar 2012 09:33:16 -0400
Date: Wed, 21 Mar 2012 09:33:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203210926200.7835@oneiric>
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
Subject: is it possible to centralize defns of KERNEL_IMAGETYPE and KERNEL_ALT_IMAGETYPE?
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
X-List-Received-Date: Wed, 21 Mar 2012 13:33:18 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  poking around the conf files and i noticed the following two files
(one from oe-core, obviously) had the following definitions:

$ grep -r KERNEL.*IMAGETYPE.*vmlinux *
meta/conf/machine/qemumips.conf:KERNEL_IMAGETYPE = "vmlinux"
meta/conf/machine/qemumips.conf:KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
... snip ppc line ...
meta-yocto/conf/machine/routerstationpro.conf:KERNEL_IMAGETYPE = "vmlinux"
meta-yocto/conf/machine/routerstationpro.conf:KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
$

  obviously, the above represents the MIPS architecture in both cases
and, unsurprisingly, assign the same values to those variables.

  since both of those files contain the line:

require conf/machine/include/tune-mips32.inc

under what circumstances could you move those common lines down into
the corresponding tune-<arch>.inc file?  i know next to nothing about
MIPS cross-compiling so i have no idea whether that's feasible, or
whether it's reasonable to set default values and let the BSP override
them.

  does this question make any sense?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

