Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954ABE00A28; Sun,  3 Jun 2018 17:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D87E009E2
	for <yocto@yoctoproject.org>; Sun,  3 Jun 2018 17:23:01 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id c41-v6so18552561plj.10
	for <yocto@yoctoproject.org>; Sun, 03 Jun 2018 17:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=k8JexJTuafGvwy1XIKI24bcIN8rAUcV8YoDHCQBaP6c=;
	b=onUCASkQa/Tt8i0EkNcj5QvCOXlbk6M6dR/pnS3hGZ6SLFwKFaLM8uzMxQSJOp2NNZ
	IvyB6220GDUPV0xKfrxcO5EWlmYUKAOVq/5Nsr51UXAR2F5m5eGlrm1gjzcY+scy6dLQ
	QUOplHxNp7p9JApqyo/h3UxtYaWEXizxHxEfC4JsS5IWWhHy9bMS3CHmUeaC6l2yMfRi
	L3FlfkCIB4JQGWNG9HYpUcd0lpGzkEkZWZgPZp0Wj/NHM05WyvNO9IbV8x3vc7TOrT2J
	XFSJanbDckiHQq5BDvChAR8DGDpWY1a4CqRihhSeOVm2yKtUfHPyCHWpgkdt07vWfViT
	C7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=k8JexJTuafGvwy1XIKI24bcIN8rAUcV8YoDHCQBaP6c=;
	b=A7ouEJSqF7M0auIGIXEAmdS17cs95XxVd+3VfdT33iOkBR1rKJalAvdcAhkQmV+vpH
	vBAHWNyj7Gp49Rm59mJUYLEsZoGIvifEqTFqHEQW5K5LYv3AtMpQwdSfOY4QWCKJDGpB
	nQ/M81UMriiRlmxIznTwPgxnu1+r+/BkL8v7B27oh3Jz7eUnQr9wjXifs5I0kFi0hoWr
	YV6hE3T6gmkqED52k13ypDoNenVW/AdLbOxYv1rRtV7RkVIhrKwGxCqaGPq/0XmBwxJr
	DEO3b1tMqjo4W99KtPTb3z+pVjd2o7yYwbZl9JmRjFCGdZq3pQu3h/50L52RsZEXDDRS
	gC1w==
X-Gm-Message-State: ALKqPweADxyG6uxTyyWNtE2O8njRcOmCmEbYkEKG0uOdPefy20CHJvk/
	Y528VjvGSt7Im3UBEiVLxMkWVQ==
X-Google-Smtp-Source: ADUXVKJqqEB5Iut22HgTN0iy3eV5VGInjF6LNqoFdMqjA2/geMzt115dTRm+rTrBeOOspLCoEmsglA==
X-Received: by 2002:a17:902:b410:: with SMTP id
	x16-v6mr19770218plr.324.1528071781678; 
	Sun, 03 Jun 2018 17:23:01 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4000:1184:f1bd:c539:22b:bbf1])
	by smtp.gmail.com with ESMTPSA id
	v13-v6sm5500905pfa.131.2018.06.03.17.23.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 03 Jun 2018 17:23:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sun,  3 Jun 2018 17:22:59 -0700
Message-Id: <1528071779-1499-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
References: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
Subject: [autobuilder][PATCH 2/2] README.md: cleanup installation setup
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
X-List-Received-Date: Mon, 04 Jun 2018 00:23:02 -0000

yoctoabb is currently hardcode so clone repo there.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README.md | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/README.md b/README.md
index 4926969..e0652c7 100644
--- a/README.md
+++ b/README.md
@@ -75,7 +75,7 @@ Refer to the buildbot documentation for information on how to correctly configur
 ```
 $ buildbot create-master <yocto-controller>
 $ cd <yocto-controller>
-$ git clone <yoctoabb repo>
+$ git clone https://git.yoctoproject.org/git/yocto-autobuilder2 yoctoabb
 $ cd ..
 $ ln -rs <yocto-controller>/yoctoabb/master.cfg <yocto-controller>/master.cfg
 $ $EDITOR <yocto-controller>/yoctoabb/master.cfg
@@ -87,6 +87,9 @@ $ $EDITOR <yocto-controller>/yoctoabb/www.py
 $ $EDITOR <yocto-controller>/yoctoabb/config.py
 <Modify configuration options such as worker configuration, etc.>
 $ buildbot start <yocto-controller>
+$ cd ..
+## should be above <yocto-controller> location
+git clone https://git.yoctoproject.org/git/yocto-autobuilder-helper
 ```
 
 #### on the worker
-- 
2.7.4


