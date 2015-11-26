Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5401CE00BD5; Wed, 25 Nov 2015 21:36:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF2FE00BC6
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 21:36:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tAQ5anvQ009006
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 21:36:49 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Wed, 25 Nov 2015 21:36:48 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 26 Nov 2015 13:25:49 +0800
Message-ID: <1448515549-24417-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][yocto-kernel-cache] netfilter: enable several netfilter options
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
X-List-Received-Date: Thu, 26 Nov 2015 05:36:53 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

the below kernel options are enabled:
    LOG target support
    IPv6 connection tracking support,
    "addrtype" address type match support
    "recent" match support

the default configuration of ufw(Uncomplicated Firewall) asked them.

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 features/netfilter/netfilter.cfg | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/features/netfilter/netfilter.cfg b/features/netfilter/netfilter.cfg
index 8ecef4a..7bb8490 100644
--- a/features/netfilter/netfilter.cfg
+++ b/features/netfilter/netfilter.cfg
@@ -62,12 +62,16 @@ CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
 CONFIG_NETFILTER_XT_MATCH_STRING=m
 CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
 CONFIG_NETFILTER_XT_MATCH_U32=m
+CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
+CONFIG_NETFILTER_XT_MATCH_RECENT=m
+CONFIG_NETFILTER_XT_TARGET_LOG=m
 
 #
 # IP: Netfilter Configuration
 #
 CONFIG_NF_DEFRAG_IPV4=m
 CONFIG_NF_CONNTRACK_IPV4=m
+CONFIG_NF_CONNTRACK_IPV6=m
 CONFIG_NF_CONNTRACK_PROC_COMPAT=y
 CONFIG_IP_NF_IPTABLES=m
 CONFIG_IP_NF_MATCH_AH=m
-- 
1.9.1


