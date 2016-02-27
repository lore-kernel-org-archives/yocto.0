Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45902E00E08; Sat, 27 Feb 2016 07:27:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462B9E00DD9
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:11 -0800 (PST)
Received: by mail-qg0-f45.google.com with SMTP id y9so87795770qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=HPvjMLingA4jhvq8y2ey6Mcc1fsFNYh6vd3trU/0Hio=;
	b=nTeiGSo/RKv+gbFPHJfuZffwNKXPXci6mbzIqXfgYN0e9BYcb/4ooKJArXeEullUf7
	YQ1uJQerOlmCxwlTcWKXkz6LPYP2hoqmMM+aadBWG9rMHBuKBQhG0BufYmNeH5EFmmT8
	npte3/WLsIVClXWuMabjR6WWJ7OATzZ9PBTmwbEzLdPxx1v89w4ApwBIqWrOxFR+Vnl0
	rlfs0T+f9KhJNywN2ztp/ocIyTtX77XJLTbRIfs7nT9MZ13tOuqJnW5GA2QQ+nqC6F0S
	obHZk8VteFRG51GkQOLDPFuu+7yDRr49DlLnSBUivKmYlzOiG2iszogHCmpprEwZAdd2
	u9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=HPvjMLingA4jhvq8y2ey6Mcc1fsFNYh6vd3trU/0Hio=;
	b=c6oVcJwiavCGSy/0TfNQHFXU1EndWD7HcDisTAjnB7LtTBAZtWEn9yv23lSFIKuSbU
	QgmqJsa2FPH1OXDI2Wnz8KYuAEsHVw5tSJ2xnptcfoRqvRQTSQhOBsTW59UZ+o9jsWKp
	fQMM4Us0JXDWS8Ax+K8ewnYfI4Uu9kUfzeyTW1xV45T7TYAHhL//OlP24aUWHnybxRaU
	RirmO4aIfGnGEM3TxyAhRrAPlRc5xdrAT3IdAlIqXIjhxkjQNWWUN/7C9+Hy5jIu481Q
	EhUboflOHRL9fidc7IvZ15lCUyujQ++JiZmRtbdSs+TOTSJgq+b66t+fN5P3LRtz0FN0
	E5Kw==
X-Gm-Message-State: AD7BkJJWBHkX3PclhmIUGb7AbjbyEE0TRXz23drUrfC3p7gT1/8GdjbxgZ6ccSoBNg/MPA==
X-Received: by 10.140.155.196 with SMTP id b187mr9421578qhb.14.1456586831527; 
	Sat, 27 Feb 2016 07:27:11 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:11 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:43 +0000
Message-Id: <278813cae16607a69fa6870fad04de082f1860a7.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 04/23] weston: Enable rpi compositor backend
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:23 -0000

oe-core default configure options disables it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/wayland/weston_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-graphics/wayland/weston_%.bbappend

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
new file mode 100644
index 0000000..c3a7421
--- /dev/null
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -0,0 +1,4 @@
+EXTRA_OECONF_append_rpi = "\
+        --enable-rpi-compositor \
+        WESTON_NATIVE_BACKEND=rpi-backend.so \
+       "
-- 
1.9.1


