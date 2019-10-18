Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A339E00DAE; Fri, 18 Oct 2019 09:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2B11E00D33
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 09:32:13 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id v4so4209716pff.6
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 09:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Llt4hMrgtjqusnBXQZbfrkpXMqQY9Tntl+4ubHVOAO4=;
	b=Vj6dR8dpfO3ygVYY0bnjOQPX42AaEyu4ZCWSoZp6jANXYdKzZhw/+OUt8+NiCOFJJK
	pX5kbKJmodpNJ9MNmE79MszGfju90W33X5nATY2sE2CRYZIoc+uPw+ESdrs1VoWFVJDA
	aUtvXk7gy8uE462aA/hnPesHPXPxdF5fwPkb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Llt4hMrgtjqusnBXQZbfrkpXMqQY9Tntl+4ubHVOAO4=;
	b=NHd/OX8ybiPewNQvalp/cKkV/f2qOof1cEqzRf0RCRuQv4PoEoOpskj9u2mlNWIllJ
	LRt278HKhfjdOPgKyBpVVmUqipXbTfcJ2iUa56l4WknPijDQJ76phULePaTlAVOoB9bI
	TTva3ZU/FCOmxZcms2TcaIwv4t+ATPjLV9LYGMQlHh+cBQUDLTYbY01VbmRq5iO0AHus
	WNnKaYyXsoYAQ1/BT/euystDScNtyuwtoF2ygGZlkKGlBJ9n43F9K+jhggA34i9veahe
	yCWSwXdhhIF2d2vkJ6579axxQI4ggwoM42VuyPxxnFMntg3WE/1T8cDTyTTlkK3SayCj
	QHew==
X-Gm-Message-State: APjAAAXEohU8F1xn1K/zDjIQr27LCNPRiaXMMJ69J7ZfUYLokZs7Yar5
	vsN/KhNkS/89+b5ezcpm9n/pHg/y/T++4g==
X-Google-Smtp-Source: APXvYqw8s4LBms7rb90x8izpxcVI1/vmh5o48t5ZUiS8xZkfzqjA9BjTx1dV9xWfntMWVuh1wvj8kA==
X-Received: by 2002:a17:90a:a48a:: with SMTP id
	z10mr12408574pjp.61.1571416332549; 
	Fri, 18 Oct 2019 09:32:12 -0700 (PDT)
Received: from localhost.yoctoproject.org ([2601:1c0:ce01:91e0::54c5])
	by smtp.gmail.com with ESMTPSA id
	z13sm8085919pfq.121.2019.10.18.09.32.11
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 18 Oct 2019 09:32:11 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Fri, 18 Oct 2019 09:31:05 -0700
Message-Id: <20191018163104.17281-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Cc: rpurdie@linuxfoundation.org
Subject: [yocto-autobuilder2][PATCH][v2] scheduler: make the default choice an option
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
X-List-Received-Date: Fri, 18 Oct 2019 16:32:14 -0000
Content-Transfer-Encoding: 8bit

The default choice on the force build form will select a random worker.

builder_to_workers dictionary values can no longer be strings.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.py     | 4 ++--
 schedulers.py | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.py b/config.py
index e9d6d98..1577bcf 100644
--- a/config.py
+++ b/config.py
@@ -127,7 +127,7 @@ builder_to_workers = {
     "oe-selftest-opensuse": workers_opensuse,
     "oe-selftest-centos": workers_centos,
     "meta-mingw": workers_wine,
-    "buildperf-ubuntu1604": "perf-ubuntu1604",
-    "buildperf-centos7": "perf-centos7",
+    "buildperf-ubuntu1604": ["perf-ubuntu1604"],
+    "buildperf-centos7": ["perf-centos7"],
     "default": workers
 }
diff --git a/schedulers.py b/schedulers.py
index b22f18f..671baae 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -81,7 +81,7 @@ def props_for_builder(builder):
                               default="*",
                               multiple=False,
                               strict=True,
-                              choices=worker_list))
+                              choices=worker_list + ["*"]))
     return props
 
 
-- 
2.21.0


