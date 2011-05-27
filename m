Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 276254C80AB1
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="8744337"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 13:46:34 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:07 -0500
Message-Id: <d0bd71fda367d2bff35b169c71547a541d70effc.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 13/14][KERNEL] meta: remove 'not set' lines from netfilter.cfg
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
X-List-Received-Date: Fri, 27 May 2011 20:46:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The 'not set' lines override intentional config options and
unintentionally turn them off.  Remove them to avoid this behavior.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/netfilter/netfilter.cfg  |   34 --------------------
 1 files changed, 0 insertions(+), 34 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/netfilter/netfilter.cfg b/meta/cfg/kernel-cache/features/netfilter/netfilter.cfg
index 1befe03..6b56e6b 100644
--- a/meta/cfg/kernel-cache/features/netfilter/netfilter.cfg
+++ b/meta/cfg/kernel-cache/features/netfilter/netfilter.cfg
@@ -1,5 +1,4 @@
 CONFIG_NETFILTER=y
-# CONFIG_NETFILTER_DEBUG is not set
 CONFIG_NETFILTER_ADVANCED=y
 
 #
@@ -11,8 +10,6 @@ CONFIG_NETFILTER_NETLINK_LOG=m
 CONFIG_NF_CONNTRACK=m
 CONFIG_NF_CT_ACCT=y
 CONFIG_NF_CONNTRACK_MARK=y
-# CONFIG_NF_CONNTRACK_EVENTS is not set
-# CONFIG_NF_CT_PROTO_DCCP is not set
 CONFIG_NF_CT_PROTO_GRE=m
 CONFIG_NF_CT_PROTO_SCTP=m
 CONFIG_NF_CT_PROTO_UDPLITE=m
@@ -26,7 +23,6 @@ CONFIG_NF_CONNTRACK_SANE=m
 CONFIG_NF_CONNTRACK_SIP=m
 CONFIG_NF_CONNTRACK_TFTP=m
 CONFIG_NF_CT_NETLINK=m
-# CONFIG_NETFILTER_TPROXY is not set
 CONFIG_NETFILTER_XTABLES=m
 CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
 CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
@@ -36,11 +32,8 @@ CONFIG_NETFILTER_XT_TARGET_MARK=m
 CONFIG_NETFILTER_XT_TARGET_NFLOG=m
 CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
 CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
-# CONFIG_NETFILTER_XT_TARGET_RATEEST is not set
 CONFIG_NETFILTER_XT_TARGET_TRACE=m
 CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
-# CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set
-# CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set
 CONFIG_NETFILTER_XT_MATCH_COMMENT=m
 CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
 CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
@@ -52,28 +45,21 @@ CONFIG_NETFILTER_XT_MATCH_ESP=m
 CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
 CONFIG_NETFILTER_XT_MATCH_HELPER=m
 CONFIG_NETFILTER_XT_MATCH_HL=m
- CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set
 CONFIG_NETFILTER_XT_MATCH_LENGTH=m
 CONFIG_NETFILTER_XT_MATCH_LIMIT=m
 CONFIG_NETFILTER_XT_MATCH_MAC=m
 CONFIG_NETFILTER_XT_MATCH_MARK=m
 CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
-# CONFIG_NETFILTER_XT_MATCH_OWNER is not set
 CONFIG_NETFILTER_XT_MATCH_POLICY=m
 CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
 CONFIG_NETFILTER_XT_MATCH_QUOTA=m
-# CONFIG_NETFILTER_XT_MATCH_RATEEST is not set
 CONFIG_NETFILTER_XT_MATCH_REALM=m
-# CONFIG_NETFILTER_XT_MATCH_RECENT is not set
 CONFIG_NETFILTER_XT_MATCH_SCTP=m
 CONFIG_NETFILTER_XT_MATCH_STATE=m
 CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
 CONFIG_NETFILTER_XT_MATCH_STRING=m
 CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
-# CONFIG_NETFILTER_XT_MATCH_TIME is not set
 CONFIG_NETFILTER_XT_MATCH_U32=m
-# CONFIG_NETFILTER_XT_MATCH_OSF is not set
-# CONFIG_IP_VS is not set
 
 #
 # IP: Netfilter Configuration
@@ -115,26 +101,6 @@ CONFIG_IP_NF_RAW=m
 CONFIG_IP_NF_ARPTABLES=m
 CONFIG_IP_NF_ARPFILTER=m
 CONFIG_IP_NF_ARP_MANGLE=m
-# CONFIG_IP_DCCP is not set
-# CONFIG_IP_SCTP is not set
-# CONFIG_RDS is not set
-# CONFIG_TIPC is not set
-# CONFIG_ATM is not set
-# CONFIG_BRIDGE is not set
-# CONFIG_NET_DSA is not set
-# CONFIG_VLAN_8021Q is not set
-# CONFIG_DECNET is not set
-# CONFIG_LLC2 is not set
-# CONFIG_IPX is not set
-# CONFIG_ATALK is not set
-# CONFIG_X25 is not set
-# CONFIG_LAPB is not set
-# CONFIG_ECONET is not set
-# CONFIG_WAN_ROUTER is not set
-# CONFIG_PHONET is not set
-# CONFIG_IEEE802154 is not set
-# CONFIG_NET_SCHED is not set
 CONFIG_NET_CLS_ROUTE=y
-# CONFIG_DCB is not set
 
 CONFIG_NET_SCHED=y
-- 
1.7.0.4


