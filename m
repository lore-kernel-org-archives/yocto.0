Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 363EEE00B28; Fri, 20 Apr 2018 14:46:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF572E00529
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 14:46:02 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id u11-v6so26352854wri.12
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 14:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ko1ebkN9fxNYui17d69sOr+PIr2p1ND3sPM9FhG+WwQ=;
	b=joxFUUxRfoh8p67g9jPAdUnDjx+NeCmxqqrCnIVJ/ibPh/bZQ/fokgYIeIni5K0d1E
	gfWD5OoXqOlR3vIQu6G6W8ouBxjRUj3ndf4C2gSB4ToHtuodAtcKCATYZnPPpnPToBeU
	1KaVofMhmup7yih5qsuq9+C68Tqlh/sUqa+czUDjtgc1eXnCdyK9MOgtsZfAcTXi23o6
	KslixoHj0SEr68VlaxWeVxZN8XsgAD7fKWdQe/IRcA4V8bocRYxKm+qdhIL71KN1KK9M
	wCzTmR6F0Z0OsEDPPpCAMekBfeqf8tCDF/99f13GIGxWF9HaO2uoXQdQrOVO9YCkEzPJ
	nUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ko1ebkN9fxNYui17d69sOr+PIr2p1ND3sPM9FhG+WwQ=;
	b=Ch6l8atG8FUGz3bCYFRhhz7f8c9mzmQA2f9lv7hvkS5kYaG1FxeiQnNq/O1d+MQVeJ
	wTBa2qymh+o0ejFef5OxyAMPwlSI0qdytu9FW8Qfdb2neOw+5wv1FN5lz+/m33OiSSd4
	3dIej2LqzwSwig4SSKCtyMo6Q90iy/njCHWzsvlN1c+nSgQVZS5WVxWMQsZYT+C1rQN0
	QPwXr3poN+iJo7hpGeMMcI4DLJG94WhwCESqgf7JvW0MtA2b5VPBmZkuHGcIv1uyLAdG
	lulJBYqRs+xlW7/NvKcqUuEknvk7Gft/05L7e4DUYfUL/N2mIf84O1ruD+0L8gO9Tgeb
	6UJg==
X-Gm-Message-State: ALQs6tCOUmJ5TlaRKchpZQX2dyBAsMl7x/D+BiPZdNXzaYWw7FVZMShn
	DHes6M8hac10eSdAZR9FHP0fEdr8
X-Google-Smtp-Source: AIpwx49EU38i9JDcazESp+okOv25VKohqjB/7M4WzZ0Vooj6/8BXBiJ3jy5RW9mafolV8PqXsJ42nQ==
X-Received: by 2002:adf:a004:: with SMTP id
	k4-v6mr9385886wrk.259.1524260761337; 
	Fri, 20 Apr 2018 14:46:01 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	u86sm1041722wma.20.2018.04.20.14.45.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Apr 2018 14:46:00 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 20 Apr 2018 22:45:55 +0100
Message-Id: <20180420214555.30932-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [PATCH][meta-mingw] diffutils: update sdiff kill() patch to be a backport
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
X-List-Received-Date: Fri, 20 Apr 2018 21:46:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../diffutils/diffutils/sdiff-no-kill.patch        | 30 ++++++++++++++++------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch b/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
index 70e7caf..c9fbc24 100644
--- a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
+++ b/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
@@ -1,18 +1,32 @@
-"kill" is not supported by mingw, so compile conditionally,
-(same condition as another instance of "kill" in the source code).
+Upstream-Status: Backport
+Signed-off-by: Ross Burton <ross.burton@intel.com>
 
-Upstream-Status: Pending
-Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
+From 56225ecca4f9598c0c9dbd7c46a51dd4816a383f Mon Sep 17 00:00:00 2001
+From: Paul Eggert <eggert@cs.ucla.edu>
+Date: Fri, 20 Apr 2018 13:39:15 -0700
+Subject: sdiff: port to mingw
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
 
+Problem reported by Ross Burton (Bug#31218).
+* src/sdiff.c (checksigs): Use ‘raise’, not ‘kill’.
+---
+ src/sdiff.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/sdiff.c b/src/sdiff.c
+index 1b23a0c..b08bc74 100644
 --- a/src/sdiff.c
 +++ b/src/sdiff.c
-@@ -805,7 +805,9 @@
+@@ -805,7 +805,7 @@ checksigs (void)
  
        /* Yield an exit status indicating that a signal was received.  */
        untrapsig (s);
-+#if HAVE_WORKING_FORK
-       kill (getpid (), s);
-+#endif
+-      kill (getpid (), s);
++      raise (s);
  
        /* That didn't work, so exit with error status.  */
        exit (EXIT_TROUBLE);
+-- 
+cgit v1.0-41-gc330
-- 
2.11.0


