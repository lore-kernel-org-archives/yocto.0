Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86A3FE00CD8; Mon, 11 Apr 2016 06:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE47E0092C
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 06:55:50 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id e128so124402912pfe.3
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 06:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=JjjNHWGGo6+SJqzBks/ffL3sPsnFHsD+Z2HC1pelCoY=;
	b=0me9l7AKZK8EGv4Wq3ORXoI9H1qGly9dTdd87Wa4ftk/+uKKTU+KW5YFB9Z7JtMeyH
	5Vy/Btlg1c7EitSDd1yrHyoYarMqlLKZ9pi/H0WWtKmBaJP1HHjWhByffRfNdWqpeRC6
	F3EZAK6TRxRGosovR5aZTpNQd5PEUMTDxROXCxblp8YyrJvYdjgQWzljRcP921XB/xNn
	CgkhBuellpnjXrIz9ASpNE0SitPBzu6Hf0j+27VzN8x5KfEBTVcLxvBDjZ/3RoyPpsU9
	urO6gMGm5ints8hfUl8HenGZN4Mezs6zMztClMk4IoAnUKZyHeNBYhJp5lEID/s+em5n
	gefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=JjjNHWGGo6+SJqzBks/ffL3sPsnFHsD+Z2HC1pelCoY=;
	b=e3HjR5e/Iys8/xdc/DeL8YLlbwY2DAIvciEN+YOF23YCQFbX/VvlCwasb9ueCgOp6p
	J/MfIpzCWQFOBeJzs0v1nkue7NrFB6BKqKgAeydG2lNqMA+DdWMMRqCISclCmQINAo8e
	5aCj1Fd11wAMnmCivR8gqWHEjd0cL55nIEeKTKRFH4fUAVvBTsF9aqPlAwUTpYburk/3
	tc1AHutyny1K+aHuTrXvqNVjDV2PunsTFppKU4IRfFaJTO88z2rf4d02U7WbY2jYYCjZ
	JbpDr9jwjF7IKh0/ZRBzmjrMsS0neUJQO3kKIFZY0YVrQWhZIhARMYyTzmbxpc/xaBK8
	rTrg==
X-Gm-Message-State: AD7BkJJQ79HtYwCkbaiNVWyHf4ISa869THxl9L8/ipe2wMdPR30OeHIrFpjfwcom8fIt8g==
X-Received: by 10.98.17.74 with SMTP id z71mr33078138pfi.30.1460382950346;
	Mon, 11 Apr 2016 06:55:50 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	20sm36534710pfj.80.2016.04.11.06.55.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Apr 2016 06:55:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 06:55:46 -0700
Message-Id: <1460382946-19295-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] nmap: update to 7.12
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
X-List-Received-Date: Mon, 11 Apr 2016 13:55:53 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/{nmap_7.11.bb => nmap_7.12.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/nmap/{nmap_7.11.bb => nmap_7.12.bb} (94%)

diff --git a/recipes-security/nmap/nmap_7.11.bb b/recipes-security/nmap/nmap_7.12.bb
similarity index 94%
rename from recipes-security/nmap/nmap_7.11.bb
rename to recipes-security/nmap/nmap_7.12.bb
index 27efe7b..47cd7b6 100644
--- a/recipes-security/nmap/nmap_7.11.bb
+++ b/recipes-security/nmap/nmap_7.12.bb
@@ -7,8 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a21
 
 SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 
-SRC_URI[md5sum] = "0dc7fcde978b4891ba9fd91d16f19fce"
-SRC_URI[sha256sum] = "13fa971555dec00e495a5b72c1f9efa1363b8e6c7388a2f05117cb0778c0954a"
+SRC_URI[md5sum] = "0764f4dabe7cccda3c49fc3990b62a8a"
+SRC_URI[sha256sum] = "63df082a87c95a189865d37304357405160fc6333addcf5b84204c95e0539b04"
 
 inherit autotools-brokensep pkgconfig distro_features_check
 
-- 
2.3.5


