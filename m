Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79032E005B7; Wed,  2 Dec 2015 16:33:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CB8E00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 16:33:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2015 16:33:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,375,1444719600"; d="scan'208";a="863458291"
Received: from afshjern.zpn.intel.com ([10.219.5.144])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2015 16:33:15 -0800
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Dec 2015 18:34:02 -0600
Message-Id: <1449102843-27936-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.6.3
Cc: paul.eggleton@intel.com
Subject: [PATCHv3 0/1] [layerindex-web] Recipe blacklisted information
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
X-List-Received-Date: Thu, 03 Dec 2015 00:33:23 -0000

Display blacklisted information for recipes.

Changes since v2: hover fix and added documentation link
Changes since v1: added hover feature

Alex Franco (1):
  Recipe blacklisted information

 .../0010_auto__add_field_recipe_blacklisted.py     | 197 +++++++++++++++++++++
 layerindex/models.py                               |   1 +
 layerindex/static/css/additional.css               |  19 +-
 layerindex/update.py                               |   1 +
 templates/layerindex/detail.html                   |   3 +-
 templates/layerindex/recipedetail.html             |  14 +-
 templates/layerindex/recipes.html                  |   3 +-
 7 files changed, 233 insertions(+), 5 deletions(-)
 create mode 100644 layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py

-- 
2.6.3


