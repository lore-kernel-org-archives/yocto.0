Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFECCE00E78; Mon, 21 Sep 2015 22:01:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [203.254.224.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99017E00A81
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 22:01:14 -0700 (PDT)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NV200G0YBA07090@mailout2.samsung.com> for
	yocto@yoctoproject.org; Tue, 22 Sep 2015 14:01:12 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 0E.78.05342.890E0065;
	Tue, 22 Sep 2015 14:01:12 +0900 (KST)
X-AuditID: cbfee690-f794e6d0000014de-c4-5600e0980656
Received: from epmmp1.local.host ( [203.254.227.16])
	by epcpsbgm1new.samsung.com (EPCPMTA) with SMTP id 20.FB.23663.890E0065;
	Tue, 22 Sep 2015 14:01:12 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp1.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NV2007HVB9NREI0@mmp1.samsung.com>;
	Tue, 22 Sep 2015 14:01:12 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Tue, 22 Sep 2015 10:29:11 +0530
Message-id: <1442897951-21575-1-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRsSkSnfGA4Ywgy03TSwOz29jsdj0/CCL
	xb03W5ksDp2cy2gx6eUaNgdWj74tqxg91m/ZyuTRfqKPLYA5issmJTUnsyy1SN8ugSujffZx
	loK7QhUnbx9namBczdfFyMkhIWAiMWtpDxuELSZx4d56IJuLQ0hgBaPE4Rn/WWGK7n/cxA6R
	WMoo8XD7Qaiqn4wSnSues4BUsQnoSazatQfI5uAQEZCReP2NCyTMLFAkMf3NerBBwgK2Eosa
	bjCB2CwCqhJ3jrSCbeYVcJe40jWbHaRVQkBBYs4kG5DxEgLP2SQ27fnNClEvIPFt8iEWiBpZ
	iU0HmCFuk5Q4uOIGywRGwQWMDKsYRVMLkguKk9KLTPSKE3OLS/PS9ZLzczcxAsPx9L9nE3Yw
	3jtgfYhRgINRiYfXo48hTIg1say4MvcQoynQhonMUqLJ+cCgzyuJNzQ2M7IwNTE1NjK3NFMS
	530t9TNYSCA9sSQ1OzW1ILUovqg0J7X4ECMTB6dUA6P2H+btaklNd+4X2ErLOCx57qx7d+cH
	83qPlg1LG/uvMTgtXBb8uHBryaTPc2PtHO4tv19ryrWhQWqNhZWsXta75tdvfLn6HaOY9kXq
	sr9Ji57effSEl9pGzdK1voUdNfc7IzJqD+xMFw7Lepj7fJdZYO/5jOjEphqup48OTrz4dG+0
	RMejLiWW4oxEQy3mouJEAAGvhVRCAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDLMWRmVeSWpSXmKPExsVy+t9jAd0ZDxjCDDqWaFkcnt/GYrHp+UEW
	i3tvtjJZHDo5l9Fi0ss1bA6sHn1bVjF6rN+ylcmj/UQfWwBzVAOjTUZqYkpqkUJqXnJ+SmZe
	uq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QUiWFssScUqBQQGJxsZK+HaYJoSFu
	uhYwjRG6viFBcD1GBmggYQ1jRvvs4ywFd4UqTt4+ztTAuJqvi5GTQ0LAROL+x03sELaYxIV7
	69m6GLk4hASWMko83H4QyvnJKNG54jkLSBWbgJ7Eql17gGwODhEBGYnX37hAwswCRRLT36xn
	BbGFBWwlFjXcYAKxWQRUJe4caWUDsXkF3CWudM1mB2mVEFCQmDPJZgIj9wJGhlWMEqkFyQXF
	Sem5hnmp5XrFibnFpXnpesn5uZsYwSH/TGoH48Fd7ocYBTgYlXh4P3QzhAmxJpYVV+YeYpTg
	YFYS4Y1YChTiTUmsrEotyo8vKs1JLT7EaAq0fyKzlGhyPjAe80riDY1NzE2NTS1NLEzMLJXE
	eW8cAmoSSE8sSc1OTS1ILYLpY+LglGpgnDVTrSjJUvOk1iP11WHr2z+0xQg+yl9kVB+mcWar
	Y2HvtKopGZ+iq3776Yt3veG+9Pasy86y/Zbit1kN1XO3B27mb4lhfeH6YN1qkaa1bB91LgVx
	J1y6JjNnys/tdRUzYt13JW5lndT4wONr89me06cToqzMFxybURoy5f1DZ3V+O67MH9evKbEU
	ZyQaajEXFScCACMLWUuPAgAA
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: v.narang@samsung.com, yocto@yoctoproject.org,
	Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 1/1] rtld.c: LD_PRELOAD bugfix
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
X-List-Received-Date: Tue, 22 Sep 2015 05:01:17 -0000

This patch do following things:-
1. 	Fixes bug of adding preloaded libs in search scope of dependent 
	libraries which results in search scope of few symbols becomes 
	same for executable and library, so conflict doesn't occur for 
	those symbols and hence resulted in less number of conflicts.
2. 	Reduce code redundancy.
3. 	Buffer Overflow fix.

Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Reviewed-by: Doha Hwang <doha.hwang@samsung.com>
---
 trunk/src/rtld/rtld.c |   27 ++++++++++++++++-----------
 1 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/trunk/src/rtld/rtld.c b/trunk/src/rtld/rtld.c
index 50461b6..8af5052 100644
--- a/trunk/src/rtld/rtld.c
+++ b/trunk/src/rtld/rtld.c
@@ -606,7 +606,7 @@ load_dsos (DSO *dso, int host_paths)
 {
   struct dso_list *dso_list, *dso_list_tail, *cur_dso_ent, *new_dso_ent;
   struct stat64 st;
-  int total_preload = 0;
+  int total_preload = 0, temp_total_preload = 0;
   char * libname[MAX_PRELOADED_LIBS] = {NULL};
 
   /* Assume it's static unless we find DT_NEEDED entries */
@@ -632,19 +632,19 @@ load_dsos (DSO *dso, int host_paths)
 
   if(dso->ehdr.e_type == ET_EXEC && ld_preload) {
       char *next_lib =  ld_preload;
-      libname[total_preload] = ld_preload;
-      total_preload++;
-      next_lib=strchr(ld_preload,':');
-      while(next_lib!=NULL){
-	  *next_lib = '\0';
-	  next_lib++;
-	  libname[total_preload] = next_lib;
-	  total_preload++;
-	  next_lib=strchr(next_lib,':');
-      }
+      while(*next_lib != '\0' && (total_preload < MAX_PRELOADED_LIBS)){
+        libname[total_preload++] = next_lib;
+        next_lib=strchrnul(next_lib,':');
+        if(*next_lib == '\0')
+          break;
+        *next_lib = '\0';
+        next_lib++;
+     }
+    temp_total_preload = total_preload;
   }
   else {
       total_preload = 0;
+      temp_total_preload = 0;
   }
   while (cur_dso_ent != NULL)
     {
@@ -666,6 +666,11 @@ load_dsos (DSO *dso, int host_paths)
 	{
 	  int ndx, maxndx;
 	  maxndx = data->d_size / cur_dso->shdr[cur_dso->dynamic].sh_entsize;
+      if(!(cur_dso->ehdr.e_type == ET_EXEC))
+        total_preload = 0;
+      else
+        total_preload = temp_total_preload;
+
 	  for (ndx = 0; ndx < maxndx + total_preload; ++ndx)
 	    {
 
-- 
1.7.1


