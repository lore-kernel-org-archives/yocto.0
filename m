Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 164C6E0124F; Thu, 11 Aug 2016 18:06:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B32FBE0124D
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:30 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id h186so581570pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=nWNSRzZdP/74kct58wckLqzfUdJbltWbR/DSIMKh/2o=;
	b=oqi7OpS4GV1/XdQOMfdwCFxHjFRrwATwfi5kIJm/+3RnkotV3siLQmNYFmF7hr57ge
	w2qd519X7uvlezPqOtXQjT/e5pjKeoLJXtYSVV8kTRX95VMF3WS5x0/alPx0ocZc0CTB
	O7kSNBUwiRl4SkqwDB7zFRWrJ/G0iJYYeaMRl/xnRNi7Ku24lN/sestZz2yDFTIj0jd/
	pKxbb2mtYI5aN+P6pCvq00OYYPQ1Qf5NUG3GgnzhQHH/EW2FWG/B51PsLA2o549nc0gU
	VIjsknfh/XUUXFAlLo+syit4Q3Ti+/e5FM3ThwQUCRrZ4+9gMONs0ndxGrMCfQ9C9fFw
	AXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=nWNSRzZdP/74kct58wckLqzfUdJbltWbR/DSIMKh/2o=;
	b=D0GSBfez0kOfhRivuIrZucXKETvHql2Y4svOLyzxeD6z1lxHETcewv+UH/F9WY0Uog
	66zYTJgSg8QcPrCSOCg+dDN256sNfvdvALSrQ4tVINGt/wYz2HaNT246XHAg2o63o9jt
	4zs/YapXRMIp5Rp5sUXxpOWR9QVev7M6JmV1AvszVItOe8XivxkELrpD5CQSGy7xxm2I
	VrgkEfkYpd/w0e/4iG2jyn0Eo4kw9fajl05/R+8AY02NlC7JT6wFwRo7yS8/7t7jXTBL
	vL393oPdc8S79ZRBpykaJhJzch6t9VkSeveoNmq/lH0yWdmfbjNYUaGrF8FrmthhUXyj
	Ipzg==
X-Gm-Message-State: AEkoouvl3uLzYIhD9Hx7+RkT83UFlLGNDAYpuCAQHO/GdjYXdL7Jvmg/JNDBFsBMY7hSRw==
X-Received: by 10.98.62.144 with SMTP id y16mr22601230pfj.9.1470963990561;
	Thu, 11 Aug 2016 18:06:30 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:29 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:59 -0700
Message-Id: <20160812010608.31182-14-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 14/23] mesa_%.bbappend: new file to add the correct configuration options to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:31 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/mesa/mesa_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..b182388
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,4 @@
+PACKAGECONFIG_append_rpi = " gallium"
+GALLIUMDRIVERS_rpi = "vc4"
+DRIDRIVERS_rpi = ""
+
-- 
2.9.2


