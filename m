Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C4CE0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 14:20:20 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFXcp-0007Mb-T7
	for yocto@yoctoproject.org; Wed, 04 Apr 2012 17:20:19 -0400
Date: Wed, 4 Apr 2012 17:20:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1204041718320.14168@oneiric>
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
Subject: [PATCH] scripts: Clarify "help" info for yocto-bsp and yocto-kernel
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
X-List-Received-Date: Wed, 04 Apr 2012 21:20:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Tweak the help info for both "yocto-bsp" and "yocto-kernel" to
emphasize that those are the *complete* lists of commands, not just
the most commonly used ones.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 200a4f8..f78b09b 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -83,7 +83,7 @@ yocto_bsp_usage = """

  usage: yocto-bsp [--version] [--help] COMMAND [ARGS]

- The most commonly used 'yocto-bsp' commands are:
+ Current 'yocto-bsp' commands are:
     create            Create a new Yocto BSP
     list              List available values for options and BSP properties

@@ -336,7 +336,7 @@ yocto_kernel_usage = """

  usage: yocto-kernel [--version] [--help] COMMAND [ARGS]

- The most commonly used 'yocto-kernel' commands are:
+ Current 'yocto-kernel' commands are:
    config list       List the modifiable set of bare kernel config options for a BSP
    config add        Add or modify bare kernel config options for a BSP
    config rm         Remove bare kernel config options from a BSP

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

