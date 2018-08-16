Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55B9EE00A39; Wed, 15 Aug 2018 19:13:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F146E00754
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 19:13:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7G2D57V017700
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 19:13:05 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Wed, 15 Aug 2018 19:13:03 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Date: Thu, 16 Aug 2018 10:23:39 +0800
Message-ID: <1534386219-114680-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [prelink-cross][PATCH] src/dso.c: use ehdr.e_shstrndx as index
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
X-List-Received-Date: Thu, 16 Aug 2018 02:13:08 -0000
Content-Type: text/plain

According to struct elf32_hd, the e_shnum is section header number, and the
index is e_shstrndx, not e_shnum.

This can fix segmention fault when handle libqb.so.0.18.2 from libqb_1.0.3.
It fails to handle libqb.so.0.18.2 and get errors:
Symbol section index outside of section numbers

Then segmentation fault, this is because the e_shnum is 34, while e_shstrndx is
27 (it would be 33 when no errors), I've checked several elf files to confirm
that the ones after e_shstrndx is NULL, so use e_shstrndx should be correct.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 src/dso.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/dso.c b/src/dso.c
index ae5e04d..c59d81f 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -1659,7 +1659,7 @@ close_dso_1 (DSO *dso)
     {
       int i;
 
-      for (i = 1; i < dso->ehdr.e_shnum; ++i)
+      for (i = 1; i < dso->ehdr.e_shstrndx; ++i)
 	{
 	  Elf_Scn *scn = dso->scn[i];
 	  Elf_Data *data = NULL;
-- 
2.7.4


