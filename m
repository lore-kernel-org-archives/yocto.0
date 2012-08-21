Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D20ADE00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 00:14:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7L7E2TX027956;
	Tue, 21 Aug 2012 08:14:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25661-09; Tue, 21 Aug 2012 08:13:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7L7DrkM027950
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 21 Aug 2012 08:13:54 +0100
Message-ID: <1345533233.3907.42.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>
Date: Tue, 21 Aug 2012 08:13:53 +0100
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto <yocto@yoctoproject.org>
Subject: ia32-base.inc: Drop glibc --with-tls option, its now the only option for glibc
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
X-List-Received-Date: Tue, 21 Aug 2012 07:14:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This option is unused by (e)glibc since 2011 and is the default. It has been
shown to interact badly with the configure option in atom-pc from meta-yocto 
causing a rebuild of the whole system despite the only change being an 
assignment with += vs =. The easiest fix is simply to drop it.
    
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 99ac352..17ff714 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -21,7 +21,6 @@ SERIAL_CONSOLE ?= "115200 ttyS0"
 # glibc-related variables
 #
 GLIBC_ADDONS ?= "nptl"
-GLIBC_EXTRA_OECONF += "--with-tls"
 
 #
 # kernel-related variables



