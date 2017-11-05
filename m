Return-Path: <yevgenyp@pointgrab.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2DBCE00C82; Sun,  5 Nov 2017 10:04:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 784D2E00AC0
	for <yocto@yoctoproject.org>; Sun,  5 Nov 2017 10:04:31 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id r68so9793081wmr.1
	for <yocto@yoctoproject.org>; Sun, 05 Nov 2017 10:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pointgrab-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=opwNDA3cwrfC2KHnJZae5OGKGCJQJlTV/reZXV76oVI=;
	b=dM8P1gtX7LYQBaSakVR4a9rQsYgRU3fPB0IA/FovzwHzO1SA799JVJijGXq6tdExaw
	NTnnLquGimwPGi3fLh5IshiprjwaIgqzPjAhmaCTxlMDkzo3crk9bircSqf2pVyi28tG
	lDpN7h9nRuPS5t1ZzzGYuKKpC4GZKXG+2tdVFifHvnS6FyuMqwn+nvn+TtR2GSYLaI7y
	Ygunyv6XnOlhtvp9sBNsrGn4NqKT5rCXaOcy12T4LZRq3IZ2zaBATdv6hf01Vbz3BAuB
	9ZyST6CzHVjU6NxDI/IWIA2gxLFSgM/nDpDhnNhmCWyw5Lc5ukA4JBAQiKi0p9pPQeKt
	tfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=opwNDA3cwrfC2KHnJZae5OGKGCJQJlTV/reZXV76oVI=;
	b=G75wpIhOejAxgBo9fyIskmqYVDAeJxsebPCULRvPBiD/5ZKFh2raO6mN73gHy/THM0
	uflk6K01UIHxaPCHC7eMNeXU0urhT0XZg76drVA9zP4i+8RfhnoDWl21kmSksRuXEYjh
	Zt/JFjBpd7PdUkwstxLziCYEOwN3VKksfVT/TFKKjhK2uQcf2qKjRP7jOw6qUtg/8W2g
	KYltfi6Xbe1X6qAVfPj8vkrtkOKHDllLsYkhPk2nz+n/N8CP6BUqdJeL8DXPt9VGmEIv
	FvEcDGUr6+S/W7adQRxpOPRFycYrkS6ahK2dp2xhN7Oy5RxqmatqrG4pdN0GtjuFjB+d
	8sjQ==
X-Gm-Message-State: AJaThX7xfcH7RBEbukAG4BEEuUjcf76vogaXeGJq+xpUz2BJ2kEGGzKz
	fL+kLE0EOGUpGbjwXLPtKTCBAj1X
X-Google-Smtp-Source: ABhQp+S8jmwhUcvgCo2zpNDGqSLzTlbcaeHP4cFekr++4KHNbAuHH9CZrA+GyMB5OmIFPGx6QK6hpA==
X-Received: by 10.28.1.199 with SMTP id 190mr3665783wmb.51.1509905071075;
	Sun, 05 Nov 2017 10:04:31 -0800 (PST)
Received: from localhost.localdomain ([194.183.182.60])
	by smtp.gmail.com with ESMTPSA id
	e131sm14943542wmg.1.2017.11.05.10.04.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 05 Nov 2017 10:04:30 -0800 (PST)
From: Yevgeny Popovych <yevgenyp@pointgrab.com>
To: yocto@yoctoproject.org
Date: Sun,  5 Nov 2017 20:04:18 +0200
Message-Id: <1509905058-65701-1-git-send-email-yevgenyp@pointgrab.com>
X-Mailer: git-send-email 2.7.4
Cc: Scott Rifenbark <srifenbark@gmail.com>,
	Yevgeny Popovych <yevgenyp@pointgrab.com>
Subject: [yocto-docs][PATCH] ref-manual: Removed misleading paragraph in siteinfo section
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
X-List-Received-Date: Sun, 05 Nov 2017 18:04:33 -0000

..on the inclusion of siteinfo.bbclass in base.bbclass.
This is not true since 2010.

Signed-off-by: Yevgeny Popovych <yevgenyp@pointgrab.com>
---
 documentation/ref-manual/ref-classes.xml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 5961d3e..fe41f9e 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -3134,12 +3134,6 @@ This check was removed for YP 2.3 release
         and <filename><link linkend='var-SITEINFO_BITS'>SITEINFO_BITS</link></filename>
         that can be used elsewhere in the metadata.
     </para>
-
-    <para>
-        Because the
-        <link linkend='ref-classes-base'><filename>base</filename></link> class
-        includes the <filename>siteinfo</filename> class, it is always active.
-    </para>
 </section>
 
 <section id='ref-classes-spdx'>
-- 
2.7.4


