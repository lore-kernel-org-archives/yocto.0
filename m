Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D0A9E00AF0; Sat, 27 May 2017 03:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFABFE0085D
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:15:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4RAFxIM013607
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 27 May 2017 03:15:59 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 27 May 2017 03:15:59 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 03:15:50 -0700
Message-ID: <20170527101553.15014-6-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20170527101553.15014-1-liezhi.yang@windriver.com>
References: <20170527101553.15014-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][5/8] update.py: fix -l option
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
X-List-Received-Date: Sat, 27 May 2017 10:16:00 -0000
Content-Type: text/plain

Fixed:
$ ./update.py -l meta-oe,not_existed

It should report error that "not_existed" doesn't exist, but it didn't, this was
because __in matches any of them.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 9c131cb..541155f 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -152,10 +152,13 @@ def main():
         sys.exit(1)
 
     if options.layers:
-        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=options.layers.split(','))
-        if layerquery.count() == 0:
-            logger.error('No layers matching specified query "%s"' % options.layers)
-            sys.exit(1)
+        layers = options.layers.split(',')
+        for layer in layers:
+            layerquery = LayerItem.objects.filter(classic=False).filter(name=layer)
+            if layerquery.count() == 0:
+                logger.error('No layers matching specified query "%s"' % layer)
+                sys.exit(1)
+        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=layers)
     else:
         # We deliberately exclude status == 'X' ("no update") here
         layerquery = LayerItem.objects.filter(classic=False).filter(status='P')
-- 
2.10.2


