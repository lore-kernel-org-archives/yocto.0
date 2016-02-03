Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAE7FE00C31; Wed,  3 Feb 2016 04:50:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29880E00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 04:50:12 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id l66so68737197wml.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 04:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=ncdrryNtrFmoCEa7Y+QQfnmYOnmhkdoVwFcnBhwvp18=;
	b=XgihaXPoi3gf13kyCzhae5IipyvVjJJLMvZSBdSiJfaNuELaZIzr/YX/wSwyrvKUYX
	l98T1XtcwRwTShPiQPC7d3nLvlkwlNxjafkO2BegiBQqcJpU2QbX1lughjRkrx8yF1gD
	4eRtj4rrnw9L3Q2asajkBOf3sDtnatZ2ce3fdM1qa8K3T9OMzpmhrh5Qask8GoKiAYv5
	hs4xaUUpR/bvS92ZPFfQZIf7SIOtP3g+GRtoBk5nVoY7u+FSUq2Tq8vOOh2FUaDLgd06
	Nr5rFsQMddQi8Gu9f2ZYOyOntcaZgR3gl+5nx/mPKR/ZAHxEVzpy27Aijzt4RQWnzWMB
	u5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ncdrryNtrFmoCEa7Y+QQfnmYOnmhkdoVwFcnBhwvp18=;
	b=HL3NixEyFGctgAwPWjhayTM+87mfiVK5tJJ9oSszuXGo+nj+eda8nGEPxjM8kHy8sF
	7TvrzfvzlylLVudxF+Q1r6cl7+WBPTSwt2j8/6GIqkb8PfY6neG+IrbwrBH05ninfCyW
	6Xk83PImaFJ9Ilhs4ZtoifC1dDN2c9QCVEjt1iZtV006CCNgAHNZ9rwo7HyYsoAGSzEv
	qrlE1xP9Esj/aeeQ0bm4BthpicB2C/KEYfFHj/QSViSLCjt1Lqz0V3O4UhI1ZUtPbfQS
	61LxHLR+gL/iK5xyzyEl5OKe50FlrbBs4UwryfpbqI1Pp261XT9ad3F4cLjgqcDjGFHT
	XBTA==
X-Gm-Message-State: AG10YOT89xDpbH3wsbn0eSmlAnz959njzApwcNCzn2e37M13O6lIq7Gte7w2wrQEjnwa7SeB
X-Received: by 10.194.87.1 with SMTP id t1mr1724423wjz.170.1454503811949;
	Wed, 03 Feb 2016 04:50:11 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	i12sm7815085wmf.10.2016.02.03.04.50.10 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 03 Feb 2016 04:50:11 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Feb 2016 12:50:08 +0000
Message-Id: <1454503808-3754-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [PATCH][yocto-autobuilder] nightly-checkuri: use a single bitbake thread
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
X-List-Received-Date: Wed, 03 Feb 2016 12:50:18 -0000

To reduce the chance of errors due to FTP servers refusing multiple connections
at the same time reduce the number of bitbake threads to 1.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-checkuri.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-checkuri.conf b/buildset-config.controller/nightly-checkuri.conf
index b571429..37b8305 100644
--- a/buildset-config.controller/nightly-checkuri.conf
+++ b/buildset-config.controller/nightly-checkuri.conf
@@ -17,6 +17,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky',
                             'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n',
-                            'atextappend': 'do_checkuri_pn-lsof = ""\n'}},
+                            'atextappend': 'BB_NUMBER_THREADS = "1"\ndo_checkuri_pn-lsof = ""\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'universe -c checkuri'}}]
-- 
2.7.0


