Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAD74E00B21; Wed,  7 May 2014 16:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 11477 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 May 2014 16:00:54 PDT
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B5CE006EF
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 16:00:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s47JngwE005644
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 May 2014 12:49:42 -0700 (PDT)
Received: from yow-asskicker.wrs.com (128.224.56.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 7 May 2014 12:49:41 -0700
From: Joe MacDonald <joe@deserted.net>
To: <yocto@yoctoproject.org>, <hongxu.jia@windriver.com>
Date: Wed, 7 May 2014 15:49:28 -0400
Message-ID: <1399492168-13096-10-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1399492168-13096-1-git-send-email-joe@deserted.net>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 9/9] linux-yocto: remove PRINC warning
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
X-List-Received-Date: Wed, 07 May 2014 23:01:07 -0000
Content-Type: text/plain

Convert PRINC to PR .= so as to not break package feeds.  Next time this
won't be necessary at all.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-kernel/linux/linux-yocto_3.10.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto_3.10.bbappend b/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 159d63b..6686974 100644
--- a/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,4 +1,4 @@
-PRINC = "1"
+PR .= "1"
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # Enable selinux support in the kernel if the feature is enabled
-- 
1.7.10.4


