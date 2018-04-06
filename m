Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3DE7E00AE6; Fri,  6 Apr 2018 05:33:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B321E005A9
	for <yocto@lists.yoctoproject.org>;
	Fri,  6 Apr 2018 05:33:40 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id p9so3206312wmc.3
	for <yocto@lists.yoctoproject.org>;
	Fri, 06 Apr 2018 05:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=dJd9rG+RhKfFSdzIAdkIJGKeW1FXhTINxjehFOjQ3i8=;
	b=UIbfb/GYPMXIPQU6dcVPnQbEaYlAgYCWQFgDWmxOflrvkIh0/awHMvALQC86LzunIR
	PgM2Q/R9negJ2DW8ybGHCDgu8+n0rvcIsfm/FIo9R9mWTUukD/nKH/pSjg/OZSY+LZYP
	89iXld4M9hXAbm0ZZE3DfmuQ1Bj1VJBh9HnX1vJ1+y3wZBWZrf8YiUU65sF1WlUAxTtX
	XZhoXslgyr3HJLPk7/058hC6Gh8CiaX+NOjciMpSmf1s/g55alMPRlzDCW1x+k31s9wE
	JCc2jOFKB6toDKUNzrD+J2J+FE7m3bZMEo0e1xpYgLqHg9ckTK10mKxyZRkX0uMzxuAm
	upOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dJd9rG+RhKfFSdzIAdkIJGKeW1FXhTINxjehFOjQ3i8=;
	b=RI2XjutjaO1M6BAGDthHgSeYSEsON9Vr5yt0csbhhXp3He4jTdUvHs0E7YG3Y+9P7Y
	sSCfC35l+gWQuCL6mEik0hYZY2svbwd6OD9tP8AXrVQlaREbzlMeJ7FlhZquLsSBGYpo
	Dgjpm63slvdk/UFgB2nlJ3o9ITvThjRTYtxBuUD9LxkrpHgiu9qxOSCISK88Ok35G08b
	V9fdzryjU4UsQuDdLa8kl9pnYZK+m07C9+EKpOWqcHhnyP4J16L7OoDbvcb1mF4w1/QX
	r7TsTqz1s2pGebDolyI1xJ8GtS4RD+SYHAboOrIofZhRVeomIbwhr2AViQymDNzzmWD5
	E/tg==
X-Gm-Message-State: ALQs6tBu6U6hoPeRLJqsY+EmF69Qeg0yVsiYYXyuqDdUqpVECOD9a3cA
	coa0eUl7KWd+xZzOha7cGCapDw==
X-Google-Smtp-Source: AIpwx4+EyFbt7R6B71jkyISyFlyxm0cKiVWL7zjP0y/enaD1dGNCbY/tK5ls4oHmz7/aNpunQ8mrWQ==
X-Received: by 10.28.124.8 with SMTP id x8mr13144393wmc.36.1523018014776;
	Fri, 06 Apr 2018 05:33:34 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	o63sm11993234wmb.4.2018.04.06.05.33.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 06 Apr 2018 05:33:34 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Fri,  6 Apr 2018 12:33:33 +0000
Message-Id: <20180406123333.15393-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.15.1
Subject: [meta-gplv2][PATCH] layer.conf: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 06 Apr 2018 12:33:41 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index f5601bb..3d614dc 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,3 +13,5 @@ BBFILE_PRIORITY_gplv2 = "1"
 LAYERVERSION_gplv2 = "1"
 
 LAYERDEPENDS_gplv2 = "core"
+
+LAYERSERIES_COMPAT_gplv2 = "sumo"
-- 
2.15.1


