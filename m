Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B0C3E00D72; Thu,  2 May 2019 18:36:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3569FE00AD5
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:35:15 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id t22so1887268pgi.10
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=KrYNX8BfhhjedvKVHvKFQh0RnoJz/08lLD/u3z5OWkM=;
	b=DKJIQqyJDpKnDbV8t81Poz7PGK7HTGrKrdwr7h9fwtw89FahrHQTwDDbd1eWn9JNQ/
	3S8T7BlDb0dBRSQ2PPsqUeR3Ai7CW/0k+pW8oIgeD8+geMUHBB+WzsXlJj2tAXqg8gNC
	ZqkqAZ0Vedc5ZIkkicLLpUTArNuiTW+G6xrxlrBpfS9tbiR3wcOZSdKojM303pfwLNKJ
	6Pw6t0nAmOyu6Z2QLPRZaud/d4Pn6JY9ePWk9WslQlIlHMULjt7TU9B+Qv2kiT3QzbAw
	uCK7xJ124MW5cswW+m3fd+4qsn+W9sT/rmHJlu0tb+qxTeruP77WYkEzSdbpg0rnnQkJ
	P8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=KrYNX8BfhhjedvKVHvKFQh0RnoJz/08lLD/u3z5OWkM=;
	b=JNrRRpAufgcsrEgHdM29Rh6Anol7nSOSxwSAiUdG4CvaJxNfccGA45O0LUItOojy4s
	a0zKnVkq8xhKQTThsoPsLXZsO7x9kgVWZqm3e5wCTqSiZEil45EqFamw0wp0X/Az5HoI
	/cg2R8AAgwHQoR2LEvJB7bIzt/7ZDzesXJuRVzA1cQeQZZaSYHeHybZl9uxGqdtxAdlS
	Gg5xkkdLioVvY8mYTKRUQ+UTNnKipSzHH/IeiDvhFwEeOWDuBYXxWZY/QbQgu67RpC/k
	JBS6948OZ5ltZfgc+T7Po+DjEYyQhVa+tW0xMojuqFXkwyhJKrh9Kax1Xho2mUF4RC3s
	YIuA==
X-Gm-Message-State: APjAAAW6Lar+ivkME3OF7WMFzf/rSbSi1F+59A418w5mxNhqCkrenEKJ
	2LyhJhHcdyLdYFGiaeHki52qJ91e
X-Google-Smtp-Source: APXvYqxPO7dqdZryLsecGoz27yXOHo6wvUb8Xbu0yahtLFzu1P1JT3j7YjJpzqzvJPynSTgIPTwwZA==
X-Received: by 2002:a63:d908:: with SMTP id r8mr7297375pgg.268.1556847314648; 
	Thu, 02 May 2019 18:35:14 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id b22sm564639pgg.88.2019.05.02.18.35.13
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 May 2019 18:35:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  2 May 2019 18:35:11 -0700
Message-Id: <20190503013512.20413-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] libseccomp: update to 2.4.1
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
X-List-Received-Date: Fri, 03 May 2019 01:36:08 -0000

bug fix release.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libseccomp/{libseccomp_2.4.0.bb => libseccomp_2.4.1.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/libseccomp/{libseccomp_2.4.0.bb => libseccomp_2.4.1.bb} (96%)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.0.bb b/recipes-security/libseccomp/libseccomp_2.4.1.bb
similarity index 96%
rename from recipes-security/libseccomp/libseccomp_2.4.0.bb
rename to recipes-security/libseccomp/libseccomp_2.4.1.bb
index 41ffd62..dba1be5 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.1.bb
@@ -4,7 +4,7 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "4d64011741375bb1a4ba7d71905ca37b97885083"
+SRCREV = "fb43972ea1aab24f2a70193fb7445c2674f594e3"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
            file://run-ptest \
-- 
2.17.1


