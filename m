Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5F89E00B3F; Thu,  8 May 2014 11:21:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 499 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 11:21:14 PDT
Received: from mail-qc0-f179.google.com (unknown [209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14844E00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 11:21:14 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id x3so3331048qcv.10
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 11:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=cVimDPzyM914bQjOIn2zW4L3JzNMpb+oVR0uRnKhXnQ=;
	b=JDn8k8RxnaV0Oifs5fSWz3kYAzSCNNPDsuYtGJpsRrfFYrS2msnGGMmEHqI5luwq2m
	OrbxKOA3KCCIBuVlmFr3xpNv9tROUWF/UAig6TNjeZhB7lEH0U/8/jbtv7xEcpOmtNhq
	EnTq+Z5dDXOEOOCAzom+lvg56BJClOdt438rFMSJmz2UBRRDScoyQPpXSnvT8BE8j//C
	ganwfWpvG9s7F7fYX2+Roi5m11mVKmn4DV06UG19+Lim3cq8MhY+077dI+FPrAPUMAJk
	C5gj36rcgv8RyNwTvyCbVrETkVXLJxPQiUp27+HCU5BcQ7dgquoeM5O1+Mgx3gnonVmx
	b7iw==
X-Gm-Message-State: ALoCoQm7Vxuk8KucwHLzuW4RRILqrU1NhP7i9N9DBY2upjS3YhOZo+EaU3fDqJLlaw5OL7ST6MHh
X-Received: by 10.140.38.148 with SMTP id t20mr6946418qgt.33.1399572774286;
	Thu, 08 May 2014 11:12:54 -0700 (PDT)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id i3sm2094518qgf.14.2014.05.08.11.12.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 11:12:53 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org, hongxu.jia@windriver.com, mark.hatle@windriver.com
Date: Thu,  8 May 2014 14:12:51 -0400
Message-Id: <1399572771-19509-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <20140508133218.GA5600@deserted.net>
References: <20140508133218.GA5600@deserted.net>
Subject: [PATCH 9/9] linux-yocto: migrate from 3.10 to 3.14
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
X-List-Received-Date: Thu, 08 May 2014 18:21:20 -0000

The default kernel is now 3.14.  Since the removal of PRINC support leaves
the 3.10 recipe in a difficult-to-work-with state, now seems like a good
time to move to the new kernel.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 .../linux/{linux-yocto_3.10.bbappend => linux-yocto_3.14.bbappend}    |    1 -
 1 file changed, 1 deletion(-)
 rename recipes-kernel/linux/{linux-yocto_3.10.bbappend => linux-yocto_3.14.bbappend} (97%)

So, really, I started trying to make sure that the 3.10 kernel package feeds
wouldn't go backward and then realized this was kind of a fool's errand, since
we're building 3.14 by default anyway and without an existing linux-yocto-*
bbappend for it, it's never had the PRINC problem.  So I propose ignoring the
problem since it's going away on its own anyway.

diff --git a/recipes-kernel/linux/linux-yocto_3.10.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
similarity index 97%
rename from recipes-kernel/linux/linux-yocto_3.10.bbappend
rename to recipes-kernel/linux/linux-yocto_3.14.bbappend
index 159d63b..4118cc0 100644
--- a/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -1,4 +1,3 @@
-PRINC = "1"
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # Enable selinux support in the kernel if the feature is enabled
-- 
1.7.10.4


