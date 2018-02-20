Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 403F7E00F45; Mon, 19 Feb 2018 19:46:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D49E00F22
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 19:46:44 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 19:46:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208,217";a="28405922"
Received: from ngorski-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.197])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2018 19:46:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Feb 2018 16:45:55 +1300
Message-Id: <20180220034558.14341-3-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
References: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/6] Show layer description with newlines in layer detail
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
X-List-Received-Date: Tue, 20 Feb 2018 03:46:45 -0000

A lot of people enter line breaks in their layer descriptions hoping
that these will show up in the layer description, but of course since
they are being displayed as part of an HTML document, they don't by
default. Use a style in the description paragraph to ensure that they
do.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/layerindex/detail.html | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
index 0747421..3081ef3 100644
--- a/templates/layerindex/detail.html
+++ b/templates/layerindex/detail.html
@@ -76,9 +76,7 @@
 
             <div class="row-fluid">
                 <div class="description span7">
-                    <p>
-                       {{ layeritem.description }}
-                    </p>
+                    <p style="white-space: pre">{{ layeritem.description }}</p>
                     <p>
                         {% if layeritem.usage_url %}
                             <span class="label label-info">
-- 
2.14.3


