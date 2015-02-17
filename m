Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B1FBE00744; Tue, 17 Feb 2015 13:40:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFC63E00777
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:27 -0800 (PST)
Received: by iecrl12 with SMTP id rl12so41800902iec.4
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=kPRbZzHkqg4NEPUykIYS/5POGi914u1AZxWwx/1e1Cg=;
	b=NuCnYyuHsOwV+LdaR7wxAz53Vyp+LwWckaxtBEw7Pz+PKz33HjDhXpexJfzY8S/72q
	/ColhiUmVG13mR3fUoeu7X1Si3YZjDi+Ww6JIwYmYhrJ1KRwccbgsn9qj2OU/dl3PaGb
	TZWzepO/1VCOHW0YV7fK+U/vndHKei4/VYzC3EdRZMWvHZynxmGz0ET2+bg61kRspUUW
	V/tUCiQDCkHL7rcpflAggmzemotMnzo0iSvDiq7IEstTPAG4M5mXozKF21py9sA/rzit
	pFbyscX8cV+EA0Ov8d3AKOkx4ENhhkO8ryRy3bHaIcnJinnD5+su4d0gls5dc6W4cJTS
	+Zcw==
X-Gm-Message-State: ALoCoQlLLu10ENA140iYa9HJM1TYK71hRHQu+4QDiJYNF0X3fsUAwMXKzGwIetKLWdWui/qjCaYf
X-Received: by 10.43.89.136 with SMTP id be8mr36330631icc.57.1424209226164;
	Tue, 17 Feb 2015 13:40:26 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id qs3sm10761789igb.8.2015.02.17.13.40.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 17 Feb 2015 13:40:25 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 16:41:14 -0500
Message-Id: <1424209275-12304-3-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
Subject: [autobuilder][PATCH 3/4] gitignore: add worker-init
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
X-List-Received-Date: Tue, 17 Feb 2015 21:40:32 -0000

yocto-autobuilder-setup modifies bin/worker-init on every new deployment,
so we don't want to consider worker-init for tracking by default.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .gitignore | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/.gitignore b/.gitignore
index cb595bb..a4b31c6 100644
--- a/.gitignore
+++ b/.gitignore
@@ -33,3 +33,8 @@ yocto-worker/nightly/build(newcommits)
 yocto-worker/twistd.hostname
 yocto-worker/twistd.log*
 yocto-worker/twistd.pid
+
+# This gets updated on every yocto-setup-autobuilder so should be ignored #
+# for nearly everyone.                                                    #
+###########################################################################
+bin/worker-init
-- 
1.9.1


