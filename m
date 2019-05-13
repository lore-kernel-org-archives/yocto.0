Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03283E00D53; Mon, 13 May 2019 09:25:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BD41E00D12
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 09:25:38 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id c5so15969382wrs.11
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 09:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=rjvF1a/jFtbwwOgtIeKwLfFlHOFWAYOU3DK4KTHmnws=;
	b=E9iHJDeISzmv4vG7cgouQVYZu2aG1k8uXz3VloLJ8Dbgi1RjzrLq1S271h1gBlvXBq
	P7gyi1KXIiYVj+oSer/q3UzsSKbZZWDXjZonXFQD3LC0KyBC9KW9ANH6A0oH44R5bkDX
	OWM1hUa3H99nPUiEtp10XYsSQ0AfAnOtirGjQsHqusXXgxc8h1C9Y/gwD6ue2xm9OX2F
	LmY/Uyvu1vMiPTNT06aqcG1sjZW0eKhVewFQ0ZI0ulrnMl5DKXEbKJOr8ZYMM4LYlAKC
	apUTS5B5+Zw3bYV769R2Xsdbt6mo66kzIG1HkqQCLxzY++PsmOrM4sAHA9432f+KD4cz
	LxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=rjvF1a/jFtbwwOgtIeKwLfFlHOFWAYOU3DK4KTHmnws=;
	b=U0MUUXNx8r0i5DAQfWebr3P7x9S1btM8K9V5TjDUwdGGwQ1cs58qMdrbqLMTh2bG+3
	YxwmopqEexnrpC5l411F1mM+kfkDhj+r18iAo533eMf5ldAle+1J+3YOw+4y7cc+SqdB
	e/y/EWFFBaPPw1Vn+ULLBmFUUF/r4EL2l+n83CWADhVwjNQqrBUA21lEFv+dWbGgmcRZ
	hMA9UQbOLCdcNViJOsr1VjC9BZ2Qh63zt5tDVmAhGzgd9xE8M0FBjMHQ4VPAk3CK+2wu
	hEdMnk3KaJ12kkjnRnXhZJ35NcLo529nrLlsvzYvnOZjeIPYJCzE8/wuvUljNuan9dDE
	HdoQ==
X-Gm-Message-State: APjAAAU/oIakHNO9J4B0uS7XjwtDsYH5ybxSjK3vKV56P+hwbqiwo634
	QJxMrSnm7EV5hwkqsKHOCArW6NdB
X-Google-Smtp-Source: APXvYqyUrgumnFyWHu5FZ691froXMai9ta5rPW9v+OQph5s1BC0FjCI7e9ogum97RRe7eMk/0QXsOg==
X-Received: by 2002:adf:e845:: with SMTP id d5mr19936083wrn.154.1557764737464; 
	Mon, 13 May 2019 09:25:37 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id w13sm315683wmk.0.2019.05.13.09.25.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 May 2019 09:25:36 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org,
	ajlennon@dynamicdevices.co.uk
Date: Mon, 13 May 2019 18:25:31 +0200
Message-Id: <20190513162531.45297-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-mono][PATCH] mono-5.xx: fix an issue with too long paths in doltlibtool
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
X-List-Received-Date: Mon, 13 May 2019 16:25:39 -0000

When build directory is deeply nested, the shebang limit of 127
characters is hit, which leads to doltlibtool failing to execute.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-mono/mono/mono-5.xx.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-mono/mono/mono-5.xx.inc b/recipes-mono/mono/mono-5.xx.inc
index c36374c..dec2475 100644
--- a/recipes-mono/mono/mono-5.xx.inc
+++ b/recipes-mono/mono/mono-5.xx.inc
@@ -102,3 +102,7 @@ RDEPENDS_${PN} =+ "bash"
 
 # Workaround for observed race in `make install`
 PARALLEL_MAKEINST=""
+
+# Otherwise the full path to bash is written to the first line of doltlibtool script
+# which causes build failures with deeply nested build directories
+CACHED_CONFIGUREVARS += "ac_cv_path_DOLT_BASH='/usr/bin/env bash'"
-- 
2.17.1


