Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BA904C808B6
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2011 09:33:37 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Jun 2011 07:33:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,309,1304319600"; 
   d="scan'208";a="5947655"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.204])
	by azsmga001.ch.intel.com with ESMTP; 02 Jun 2011 07:33:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Jun 2011 15:32:07 +0100
Message-Id: <739a0db5315e4e626ccc713a4c02315fb832bc4a.1307024851.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1307024851.git.paul.eggleton@linux.intel.com>
References: <cover.1307024851.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307024851.git.paul.eggleton@linux.intel.com>
References: <cover.1307024851.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] meta-crownbay: tidy up layer configuration
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
X-List-Received-Date: Thu, 02 Jun 2011 14:33:37 -0000

* We can't use machine overrides in layer.conf because MACHINE is not
  defined yet (local.conf has not yet been parsed) so remove these
* In light of the above having a separate collection configured for
  crownbay-noemgd no longer does anything, so remove it as well.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-crownbay/conf/layer.conf |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index 4ffeb2c..9c3794b 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -7,10 +7,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS_append_crownbay += "crownbay"
+BBFILE_COLLECTIONS += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay = "6"
-
-BBFILE_COLLECTIONS_append_crownbay-noemgd += "crownbay-noemgd"
-BBFILE_PATTERN_crownbay-noemgd := "^${LAYERDIR}/"
-BBFILE_PRIORITY_crownbay-noemgd = "6"
-- 
1.7.4.1


