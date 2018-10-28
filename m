Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6FFBE00C18; Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CA9E00C06
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id z17-v6so2797567pgv.3
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=2ekiBJPbWqTYUxBzeWA/cbEg9aQ1To1L5b+80SvmzD8=;
	b=n2lx1OKOOwOwHj28NhNNhNZNDANxbVDDJ5liS7izK9RKN6VK9z1HmM8qmcgVtFeoVi
	aUF3hGsQABvTmDDzVO9kkXWpysUnffo9zOmYzClHTs2aZ4AflRH7b/T6Ym2qTuz0zxNV
	qNd91yRWvsE0Gjgmtt4BELGnqLp+1z/TDKukl5LMeqOl9HcKh4/bIxNN2ke7XPtsaYyh
	8codbNVoonP1Pf4MtFZgWFLmmOEjYJv90VJmRfmZ2dpkV091zZDpY1YKVeTI0cyfyipQ
	azSsm8Y21lYGwtoTuT/L7jNU0nTLKMgV8xr7JqcPZ3iqKW1TR415ijlvknI2BEShqdCA
	wVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2ekiBJPbWqTYUxBzeWA/cbEg9aQ1To1L5b+80SvmzD8=;
	b=FT4WkAQroEs4BAZrn9U8MjACAupFqzZh3PDOzgywtKIiSQCpNVbE7w3XLwIybdf5BD
	6ZNcsuPf2iZ+1i2XWb3ro2shPtkwoHlu0AC7Q2TipqYOIIfl/s0dN3nYHYr8UDQJ2IqP
	m985LN1rzn98tC6EHN6W3pvXCWyEnaTIH9GYuhHJ3sOVMf8lR9l1949QQpKitQ3HRewn
	Pjl+uA0ZZMo7yLydwhWD8cZpf/yUHmjeC+zTiWgBrMH6GnLdeO6qWDo2UxZc+0wkMWBX
	luUXrmwEOLQeYc32RBSVlohkQkGKwHt3e9cL5IZ5ZrZVjlGpVjZfYDWZLwUnBkwPscUL
	YTJg==
X-Gm-Message-State: AGRZ1gKd2WwVxizI3kH4kuCFmJBlDeSewfNrY80eyJz7T0b7UnJtya7L
	PTcakG8YSJggmcgZBy2EuVsl8VZ5
X-Google-Smtp-Source: AJdET5cd2tebD7rKVY18uZhM5m+pzZdvWytTd59OD4LlZuUvcv/aw2w8UMv/IqVPzC+z/88+xo/YnA==
X-Received: by 2002:a62:8915:: with SMTP id
	v21-v6mr3375392pfd.137.1540752635756; 
	Sun, 28 Oct 2018 11:50:35 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.34
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:22 +0000
Message-Id: <1540752628-10832-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/13] packagegroup-core-security: add suricata-ptest
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 9cf233f..5ee06e3 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -76,6 +76,7 @@ RDEPENDS_packagegroup-security-ptest = " \
     keyutils-ptest \
     libseccomp-ptest \
     python-scapy-ptest \
+    suricata-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     ptest-runner \
-- 
2.7.4


