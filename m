Return-Path: <ismo.puustinen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9788CE00B01; Thu,  1 Jun 2017 06:15:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15870E00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 06:15:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jun 2017 06:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,279,1493708400"; d="scan'208";a="975566561"
Received: from ipuustin-desk.fi.intel.com ([10.237.72.72])
	by orsmga003.jf.intel.com with ESMTP; 01 Jun 2017 06:15:20 -0700
From: Ismo Puustinen <ismo.puustinen@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Jun 2017 16:09:13 +0300
Message-Id: <20170601130913.30155-1-ismo.puustinen@intel.com>
X-Mailer: git-send-email 2.9.4
Subject: [PATCH] nftables: add more configuration options.
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
X-List-Received-Date: Thu, 01 Jun 2017 13:15:23 -0000

Add support for sets and IPv4 masquarade.

Signed-off-by: Ismo Puustinen <ismo.puustinen@intel.com>
---
 features/nf_tables/nf_tables.cfg | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/features/nf_tables/nf_tables.cfg b/features/nf_tables/nf_tables.cfg
index 5e085ce..5f518f1 100644
--- a/features/nf_tables/nf_tables.cfg
+++ b/features/nf_tables/nf_tables.cfg
@@ -3,9 +3,15 @@ CONFIG_NF_TABLES_INET=m
 CONFIG_NFT_EXTHDR=m
 CONFIG_NFT_META=m
 CONFIG_NFT_CT=m
+CONFIG_NFT_SET_RBTREE=m
+CONFIG_NFT_SET_HASH=m
 CONFIG_NFT_RBTREE=m
 CONFIG_NFT_HASH=m
 CONFIG_NFT_COUNTER=m
+CONFIG_NFT_MASQ=m
+CONFIG_NFT_MASQ_IPV4=m
+CONFIG_NFT_REDIR=m
+CONFIG_NFT_REDIR_IPV4=m
 CONFIG_NFT_LOG=m
 CONFIG_NFT_LIMIT=m
 CONFIG_NFT_NAT=m
@@ -17,6 +23,7 @@ CONFIG_NF_TABLES_IPV4=m
 CONFIG_NFT_CHAIN_ROUTE_IPV4=m
 CONFIG_NFT_CHAIN_NAT_IPV4=m
 CONFIG_NFT_REJECT_IPV4=m
+CONFIG_NFT_REJECT_IPV6=m
 CONFIG_NF_TABLES_ARP=m
 CONFIG_NF_TABLES_IPV6=m
 CONFIG_NFT_CHAIN_ROUTE_IPV6=m
-- 
2.9.4


