Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97052E00AF8; Wed, 17 May 2017 00:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7FA5E00B58
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:54:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 May 2017 00:54:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,353,1491289200"; d="scan'208";a="87816538"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 17 May 2017 00:54:57 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 May 2017 10:54:55 +0300
Message-Id: <076728ffdd02f78f44e3c792bf1ea6ba159cfdbb.1495007050.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495007050.git.jussi.kukkonen@intel.com>
References: <cover.1495007050.git.jussi.kukkonen@intel.com>
MIME-Version: 1.0
Subject: [libfakekey][PATCH 2/2] Handle shifted keysyms that are not in keymap
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
X-List-Received-Date: Wed, 17 May 2017 07:55:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This is based on a patch from Finn (at earthling.net):

"If my keymap is set to US and I use fakekey_press_keysym to send a Ó
the character isn't already in my keymap so fakekey adds it but then
sends ó instead. My patch now does the same check if a shift modifier
is required that's done in the code path for keys that are already in
the keymap."

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/libfakekey.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/src/libfakekey.c b/src/libfakekey.c
index df650a4..edf3006 100644
--- a/src/libfakekey.c
+++ b/src/libfakekey.c
@@ -357,7 +357,16 @@ fakekey_press_keysym(FakeKey *fk,
        * 
        * Probably better to try and grab the mapping notify *here* ?
        */
-  
+
+      if (XKeycodeToKeysym(fk->xdpy, code, 0) != keysym)
+        {
+          DBG("does not equal code for index 0, needs shift?\n");
+          /* TODO: Assumes 1st modifier is shifted  */
+          if (XKeycodeToKeysym(fk->xdpy, code, 1) == keysym)
+            flags |= FAKEKEYMOD_SHIFT; 	/* can get at it via shift */
+          else
+            DBG("attempted to add keycode to keymap but seem to have failed");
+        }
     }
 
   if (code != 0) 
-- 
2.11.0


