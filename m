Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C639E00D59; Thu, 21 Apr 2016 10:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DEB9E00CE8
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:43 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r12so11415460wme.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ivBo71Hf71PQMZeydxr35d5a8upldqa5gvz0lxrMyUA=;
	b=c/9WP4iIPLkysQ/p4OG7HZcPR56A4PIrtByAGPaxMZ/8rzhEa6q7AnjjW9GB+KrGHi
	wOh87wVL/LPrGuVHyljwFpp3aj+D1by/2JlOCSh+T/koK649dNtEwM3aL4PYjNaGkDhX
	PZg8kwesW7SWy+vw8hJt9QYgLkFKDv2EhL5+E2ckSrMriMQ8gYbFuvn9AJHET/bL2ndo
	vL8DWtpr6DWMyxZKgArJnzYpbWTuO3O9p+mRIIPBxm5fZ4jjemqaHjVZ8JnOY9XgFKeU
	GmFdQJW2N4a2q/E7RKc+EM4e5XOGT4pOVSgram3QRBG0iun6YZehIjYLyXA+7rw2ctW4
	2XUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ivBo71Hf71PQMZeydxr35d5a8upldqa5gvz0lxrMyUA=;
	b=FcC+DQw1uVKZ5J8ZBGJ85TRbNSoWp0uxPiMnNttr9mTkF5IpxE6t9CX4R+/UlZYkxs
	Kmz1rv/XNZtc6lZBNGv4tOcnJeqHSS3yHjw9CPgBYGBrQgXf9x0UyCJETNwXoRBnaSLz
	V1/ky1N/HhEm7wC0PB5eBAXmy6a7OVVnjx9+b7WupGweVVVGgW3WnEEq4mC0+qYqBT8W
	u+uaDmJU47qttx4nRopgME4bGZRUqx5w7xp61IcghKsGO6IBlIQE3WZjyMAWvuZNAjYq
	yEMMzjuwTMsan/vgVdOAO12iks4jcJ72Gc7KcE2RkVQTJg+KcEB6vpTTxkL8HJr4yL0W
	O2Bg==
X-Gm-Message-State: AOPr4FUzJSjac2stOVdwRZ1p1pwxQScGzmAIEleU2AY6TgPVebZ/BKcz9C+pXh+rPbXeeQ==
X-Received: by 10.28.45.216 with SMTP id t207mr8663945wmt.40.1461259963025;
	Thu, 21 Apr 2016 10:32:43 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	o128sm4251128wmb.19.2016.04.21.10.32.41
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 10:32:42 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 18:32:10 +0100
Message-Id: <1461259933-1661-2-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] firmware.inc: Update firmware to include various serial fixes
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
X-List-Received-Date: Thu, 21 Apr 2016 17:32:46 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/common/firmware.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 2c4f497..abc7d06 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,4 +1,4 @@
-RPIFW_SRCREV ?= "028b1f6585280bd0a21885973589c4b101355597"
+RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
 RPIFW_DATE ?= "20160303"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
-- 
2.1.4


