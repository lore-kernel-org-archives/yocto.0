Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7752FE0070C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 03:46:40 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S49tf-0006nr-Gz
	for yocto@yoctoproject.org; Sun, 04 Mar 2012 06:46:39 -0500
Date: Sun, 4 Mar 2012 06:46:25 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203040640350.31728@oneiric>
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
Subject: meta-ti conf/machine files for pandaboard seem confusing
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
X-List-Received-Date: Sun, 04 Mar 2012 11:46:40 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'm perfectly prepared to be told this is not the right forum to
mention this, but i just cloned the meta-ti layer and in conf/machine,
there appear to be two pandaboard-related files:

  omap4430-panda.conf:

#@TYPE: Machine
#@NAME: OMAP4430 Panda
#@DESCRIPTION: Machine configuration for the OMAP4430 Panda

require conf/machine/include/omap3.inc

... snip ...

  pandaboard.conf:

#@TYPE: Machine
#@NAME: Pandaboard
#@DESCRIPTION: Machine configuration for the OMAP4430 Panda

require conf/machine/include/omap4.inc
... snip ...

  besides the first file requiring omap3.inc (which seems odd for
omap4430), both files clearly advertise themselves for the OMAP4430 so
there's nothing mentioned for the ES.  clarification?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

