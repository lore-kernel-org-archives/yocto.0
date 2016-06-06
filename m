Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07295E00DDA; Mon,  6 Jun 2016 05:05:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC33E00DC8
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 05:05:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 06 Jun 2016 05:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,426,1459839600"; d="scan'208";a="969773291"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2016 05:04:51 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id E2B866A4006
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 05:52:17 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Jun 2016 15:05:18 +0300
Message-Id: <1465214718-1852-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [PATCH] maintainers.inc: change maintainer of db package
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
X-List-Received-Date: Mon, 06 Jun 2016 12:05:11 -0000

As discussed in the mail, change db maintainership.
http://lists.openembedded.org/pipermail/openembedded-core/2016-June/122460.html

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index dbc33fc..125613b 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -123,7 +123,7 @@ RECIPE_MAINTAINER_pn-cups = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-curl = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cwautomacros = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-damageproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-db = "Maxin B. John <maxin.john@intel.com>"
+RECIPE_MAINTAINER_pn-db = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-glib = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-test = "Chen Qi <Qi.Chen@windriver.com>"
-- 
2.4.0


