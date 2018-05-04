Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB5F2E00CC9; Fri,  4 May 2018 04:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5100E00C99
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 04:56:14 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2018 04:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,362,1520924400"; 
	d="scan'208,217";a="221609888"
Received: from sruthimx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.245])
	by orsmga005.jf.intel.com with ESMTP; 04 May 2018 04:56:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  4 May 2018 23:55:27 +1200
Message-Id: <837359e6f18aac985c2967344d035d70c05e427a.1525434801.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1525434801.git.paul.eggleton@linux.intel.com>
References: <cover.1525434801.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] detail: Fix layer description not wrapping properly
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
X-List-Received-Date: Fri, 04 May 2018 11:56:21 -0000

In 3adddf6a25977cb576f8fcefd307d947e43d637b I changed the style to allow
pre-formatted text to work in the layer description, but this broke
wrapping so that text could go behind the "Dependencies" box. Use the
"pre-wrap" style instead so that both pre-formatting and wrapping work
here.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/layerindex/detail.html | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index d1e807be..220d475b 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -76,7 +76,7 @@
 
             <div class="row-fluid">
                 <div class="description span7">
-                    <p style="white-space: pre">{{ layeritem.description }}</p>
+                    <p style="white-space: pre-wrap">{{ layeritem.description }}</p>
                     <p>
                         {% if layeritem.usage_url %}
                             <span class="label label-info">
-- 
2.14.3


