Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A21DE00DFC; Mon, 11 Jul 2016 03:52:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC1BDE00DCA
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 03:52:06 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2016 03:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,346,1464678000"; d="scan'208";a="732493225"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2016 03:52:05 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 13:51:57 +0300
Message-Id: <b5643d2a8d71b0b76290df9e114a00577a8f320b.1468233661.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
References: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1468233661.git.jussi.kukkonen@intel.com>
References: <cover.1468233661.git.jussi.kukkonen@intel.com>
Subject: [libmatchbox][PATCH 2/4] Use correct size with memset calls
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
X-List-Received-Date: Mon, 11 Jul 2016 10:52:07 -0000

Found with -Wsizeof-pointer-memaccess.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 libmb/hash.c   | 2 +-
 libmb/mbmenu.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/libmb/hash.c b/libmb/hash.c
index 0226c7d..a867883 100644
--- a/libmb/hash.c
+++ b/libmb/hash.c
@@ -75,7 +75,7 @@ struct nlist *hash_add(struct hash *h, char *key, char *val)
 
 void hash_empty(struct hash *h)
 {
-   memset(h->hashtab, 0, sizeof(h->hashtab));
+   memset(h->hashtab, 0, sizeof(*h->hashtab));
 }
 
 void 
diff --git a/libmb/mbmenu.c b/libmb/mbmenu.c
index 5e4106e..6e35bed 100644
--- a/libmb/mbmenu.c
+++ b/libmb/mbmenu.c
@@ -1065,7 +1065,7 @@ static MBMenuMenu *
 new_menu(MBMenu *mb, char *title, int depth)
 {
   MBMenuMenu *menu = (MBMenuMenu *)malloc(sizeof(MBMenuMenu));
-   memset(menu, 0, sizeof(menu));
+   memset(menu, 0, sizeof(*menu));
    menu->items = NULL;
 
    MENUDBG("adding menu -> %s, (%i) \n", title, depth);
-- 
2.8.1


