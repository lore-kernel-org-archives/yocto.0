Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F895E01470
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:59:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2013 05:59:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,715,1355126400"; d="scan'208";a="266226866"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.142])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2013 05:59:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 13:59:35 +0000
Message-Id: <610f286eb90bc84274b108380ca98e14f7543083.1361541447.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 4/4] webmin: correct net-lib.pl patch
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
X-List-Received-Date: Fri, 22 Feb 2013 13:59:42 -0000

From: Kevin Strasser <kevin.strasser@linux.intel.com>

remove absolute path from reference to debian-linux-lib.pl

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/webmin/files/net-lib.pl.patch |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/webmin/files/net-lib.pl.patch b/recipes-extended/webmin/files/net-lib.pl.patch
index 62d28db..bdba5e7 100644
--- a/recipes-extended/webmin/files/net-lib.pl.patch
+++ b/recipes-extended/webmin/files/net-lib.pl.patch
@@ -13,7 +13,7 @@ diff -Nru webmin-1.570.orig//net/net-lib.pl webmin-1.570/net/net-lib.pl
  else {
 -	do "$gconfig{'os_type'}-lib.pl";
 +	#do "$gconfig{'os_type'}-lib.pl";
-+	do "/usr/libexec/webmin/net/debian-linux-lib.pl";
++	do "debian-linux-lib.pl";
  	}
  
  # list_hosts()
-- 
1.7.10.4


