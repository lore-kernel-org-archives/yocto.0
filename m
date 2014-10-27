Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01237E00873; Mon, 27 Oct 2014 09:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FDD5E007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 09:46:34 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id x13so1777640wgg.5
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 09:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=cxOx3FzedTyyY/VqP8CUDdW0txg7gb62eIRh5YnaFwg=;
	b=ZShIRdFpgAcj33OqSv2k9JAS9/PLZqnOQA2LhN8AvftUGr94bZCEdFY1XJxtwVwfri
	tggaS+PffvwdddG85HwznMbYRB8JA2VDn46fgm9NKFfBbKwC+q0qyBFrslbHiPb/roNL
	FZAfOcENbjAuw7mdtf321bnRKquWbKwPyO8J3QvjfaVpHxiHX9lXUN/TILnsBd0uWDS7
	Td480Yb4I9ePmlcxtTv8oFY7XMwaFhnfZngpE50WwLLy3AjxDTcSd2qnYdqObtzIGmAx
	4MVnZdrdVKYGHRcSBzPfSn/ULRiUAR3MvqhT7WuBNDTRXdCr361r0k6EeJuAH355O13P
	kbSQ==
X-Gm-Message-State: ALoCoQnl6VanuXsl68Ua3K43RWL2hdGrrDlPJsFoDsItK2W50bHfEx8+1AYi1Cvxhk+RPy6X2wMF
X-Received: by 10.194.9.1 with SMTP id v1mr3408674wja.124.1414428393884;
	Mon, 27 Oct 2014 09:46:33 -0700 (PDT)
Received: from draco.icx.intel.com ([83.217.123.106])
	by mx.google.com with ESMTPSA id cu9sm16193690wjc.3.2014.10.27.09.46.33
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Oct 2014 09:46:33 -0700 (PDT)
From: Michael Wood <michael.g.wood@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Oct 2014 16:45:44 +0000
Message-Id: <1414428344-13904-1-git-send-email-michael.g.wood@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [error-report-web][PATCH] parser: Check for tag markup in the metadata fields
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
X-List-Received-Date: Mon, 27 Oct 2014 16:46:39 -0000

Before we commit the error report metadata to the database do a
rudimentary check on all fields that are passed to the graphs page to
avoid any XSS happening.

Signed-off-by: Michael Wood <michael.g.wood@intel.com>
---
 Post/parser.py | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Post/parser.py b/Post/parser.py
index fae9194..b180165 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -18,8 +18,21 @@ class Parser:
     def __init__(self, data):
         self.data = data
 
+    # returns true if the values contain '<' char
+    # Ignore the failures field (which is an array anyway)
+    def contains_tags (self, data):
+        for key,val in data.items():
+            if key == 'failures':
+                continue
+
+            if '<' in val:
+                return True
+        return False
+
     def parse(self):
         jsondata = json.loads(self.data)
+        if self.contains_tags(jsondata) == True:
+            return
 
         MACHINE_NAME = str(jsondata['machine'])
         NATIVELSBSTRING = str(jsondata['nativelsb'])
-- 
1.9.1


