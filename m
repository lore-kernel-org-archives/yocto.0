Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FBFE00B49; Tue,  9 May 2017 23:49:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA72E00B3D
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 23:49:00 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id m17so11376269pfg.3
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 23:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0Vr229X8jEuggQrkDX6vYHL/VxN7xJroSs3XUlGv5AU=;
	b=HA4HG6LPo6xmvZR8s8wCYoy7JG18mamLO/ETXQEtwPjY1agfUoZFeJkx+LZIOoUT+b
	8jS9cled/TpzCwhLfkxIw6ncSXbgfs7cgiO5Q32tvWuAbSA0IkIoIH8/B0xrPRt5qdsG
	S648awQXqu9tMR7tjVK5rwwVYTslfeURILXOGMwHj5PZfVXnLwPR/6OppYF/Ss6gwII7
	feExItv/e3/QACY4Dq78yKHECJo8dE+ecowULBduxXlOLlsn2ZUhLb3gJ9LlwZ+vXCdd
	Z2MFNir1SYobNOoTr4czfMFtHfc2W5kMRbhtTJf4vMMIbWqp7+Y0j9iPlVLSS9/N2sxP
	Ektw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0Vr229X8jEuggQrkDX6vYHL/VxN7xJroSs3XUlGv5AU=;
	b=Lwv/2GzENGCFy2w/ecZsmNhWe01vpJeLR3Wsf8wdgemZSudte2SsLxrzW8zcgygdnb
	S1Q0dYbjJMJJNey9yX/vSgYdSfhu+FseeiEAS/JFsxYoloJagcHgE8e9GwD7KNPGVgoK
	rQ8PsbOSTpiv60znlaeXgj9O0IV5XHTeA45cNJAAkLB77y/QnQKD2hwaLaMGEL9iVred
	p9pa1xjJDudup8hzBEjVvTkp2MDdw3nGFrTrQ6xP6Q/tVpqoaI+dzAbIfmfgZFRsGKCc
	vKBgdhkynRbC28gzxZM/c68t3i9Q7yQ+djUit2KF0eQ5gQzTQcC3WV0grc71E0QRVcWK
	sFMQ==
X-Gm-Message-State: AODbwcCKvK4JP1QJJ8vTuD3QgoagjIX/8nmlvH6VTaLR6aOgW2tS/twY
	RdPbbhUpPp3Unw==
X-Received: by 10.98.214.14 with SMTP id r14mr4437447pfg.156.1494398940215;
	Tue, 09 May 2017 23:49:00 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8882:b8c::c232])
	by smtp.gmail.com with ESMTPSA id
	p84sm2199155pfi.25.2017.05.09.23.48.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 May 2017 23:48:58 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  9 May 2017 23:48:45 -0700
Message-Id: <20170510064845.30839-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170510064845.30839-1-raj.khem@gmail.com>
References: <20170510064845.30839-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] mesa-gl: Enable gbm for rpi
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
X-List-Received-Date: Wed, 10 May 2017 06:49:02 -0000

weston needs gbm support which is not
in userland

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/mesa/mesa-gl_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-graphics/mesa/mesa-gl_%.bbappend

diff --git a/recipes-graphics/mesa/mesa-gl_%.bbappend b/recipes-graphics/mesa/mesa-gl_%.bbappend
new file mode 100644
index 0000000..7897125
--- /dev/null
+++ b/recipes-graphics/mesa/mesa-gl_%.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG_append_rpi = " gbm"
-- 
2.12.2


