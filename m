Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEC9AE00A39; Wed, 27 Sep 2017 08:20:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C4DCE007EF
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 08:20:45 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id b195so19615704wmb.5
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 08:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=gvobeyKhHvhavfGQGr2s4J0V1Wtxv0sDZLMJUz9jDYU=;
	b=sooR6Bp0I+Qs4cfBTVXPimfkPfW50i0BIQ1UFqPVw+F23NaZxD6d2DfYN2gvGUnq16
	YA0OQ9NT2G4k1J9oxEHwZT7vvgEpuyTbA22VUHuakkSbNrPZ2asXNzm9yvwFmXepZZWX
	wZDA6m0xdfquRANRId//sXD6cRD/3Ks+t4ndcEP/lqgSZHaG4cmAXLGuRIOcQHQaVZLL
	SHRvuP3OhwiKdcmHqZzUTsMQYI/o+P4H2HW7iOpyW0IMp7LsjndVw4/75xrd0ocY2tbL
	yxBd7L6iJ/opxMwk1CEm5IaiEfXXrsjMGeVm8/A78vLd0hREGZxzTt1Bt43pGDiXzXSf
	NtiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=gvobeyKhHvhavfGQGr2s4J0V1Wtxv0sDZLMJUz9jDYU=;
	b=PvOJ1gPVLXyTkOCQPCA2PSJpI6BdEHVQr8LgtD3RPE9Gua0qbX8YmDh9rQpZhNx2eC
	ER09oHnE3xM15LKLl44IghS8QAOTmtIH/Q6HhESCELP9m1nw8Y2fmvz6YGjof/7SF2ag
	QsxoGra/0xL9T+C8wKp5buvB8kkSqChxa8Oh+EaxayzQ70TPZa2v4xS7j7IYQaus+GPi
	BPUHof0jyFxFWxtE630umSWbcmIECr81ETo/PtWE7/nLZLz9M65VJZ3Y+LirWOeNxeqx
	qZuif9OpBD/pQlqMwJAHD/I8c/0BHKCah9ePQot69+3h8OYldWjY1c5qWcfjxREMoxtJ
	0T3A==
X-Gm-Message-State: AHPjjUjGjBfBEbxLK5GZ1PmJuN1hrXyKprj4yYLwzwm297THY8OedHiK
	9rO5GF2omd+2StyImi5cdoQKHQ==
X-Google-Smtp-Source: AOwi7QAJckDGZIFvIBsoRP9NvIuai0ev6rMQ5EBBuATuagpjFWM8hLRI/pwvk2yZBQUxKrIVRkX69w==
X-Received: by 10.28.211.66 with SMTP id k63mr571229wmg.33.1506525642881;
	Wed, 27 Sep 2017 08:20:42 -0700 (PDT)
Received: from localhost ([217.30.68.212])
	by smtp.gmail.com with ESMTPSA id j5sm6877979wmg.8.2017.09.27.08.20.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 08:20:41 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 27 Sep 2017 15:23:19 +0000
Message-Id: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 15:20:46 -0000

* this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
* this makes qtbase and everything which depends on some qt* recipe to
  be effectivelly MACHINE_ARCH

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
 1 file changed, 3 deletions(-)
 delete mode 100644 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend

diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
deleted file mode 100644
index ae3f1d3..0000000
--- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-# Copyright (C) 2017 O.S. Systems Software LTDA.
-
-PACKAGECONFIG_GL_rpi   = "gles2 eglfs"
-- 
2.7.4


