Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54904E008E3; Sun, 28 Oct 2018 11:50:31 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC2EE00718
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:30 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id y11-v6so2731914plt.3
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=PnUIZGj9OSzaRdD28oyzExokY7PTPI1giSMqi+1QqNg=;
	b=Y0DYYt9HGgD8rj39QQ4fAYKZ+Yeg8JcT3hcK3mp0HVVcDdleDqa39iimg7iw4a5uBU
	M1rt5Sm+6oLsAfY/8NOnLav3DtfUE4jFUjjbLf8jSJH2Fnoz4ykwnSvcJeVJUPAQTXWp
	y1aWeZzn/GY4j5g91idG8iSOAdfU4FUz408GIDJmUQOmFjs3o+dox7cY+t2hG+ObqVm+
	/dR6AbAaY/kmlMEJCuP/ukW9H70FcygwdfO9TN+pgxppjf6pZl4jEgEatKgjLz0DqMiJ
	dNRMWwPZoGN0TBwFiuuwaFnmkIgjxRdCSHE8EKls7QZdUQFVjcHK9s3HwzgFhCo31A9i
	Yt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=PnUIZGj9OSzaRdD28oyzExokY7PTPI1giSMqi+1QqNg=;
	b=dbUVBKEnMmix81F3bb7xxLM9Txd5DapHIXA/74kxkncWw9KRdGsuWfvJnBngIsnfQ7
	kk0evtyGBDXWweGN6XABvKepM597QZzKkRy0QUJkFo0L0tHU7zwOOBrAfOGRNYktmn8b
	1hMk74Kai3+FQEFR+yo8r75hHSgzcsGeTXBfvQ1m5TBqDgGJHvsguZ4hyWcXs3rKypX+
	fLRqSFmYjaYRXCLWrGjCWUwFonARoq/K7U67pI7npyen9AWZXKV9PJhe7fZVMTgFQ7Py
	FjtEusky92A8to9IryGRMH1B/HCdKnHMbkf0E2Ej6bxZFquPLMfbLV8/j+qAxUuvZcl2
	QnRg==
X-Gm-Message-State: AGRZ1gIO4WHfjhfU4bd+e0DEgASEZp/jY/sWiAiNT4qqRhO3CKHos99H
	5mhK+GfCs9/Bsy9VVYJz/ypMSVmV
X-Google-Smtp-Source: AJdET5dzXq5UZ8Ois3KSPlDdCfL+ov9iEUjG3ePNkakGW1G8x94WDbGHw1KvZ1S9W9HGA/E6UFx+Gg==
X-Received: by 2002:a17:902:b08a:: with SMTP id
	p10-v6mr11469742plr.26.1540752629977; 
	Sun, 28 Oct 2018 11:50:29 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.29
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:16 +0000
Message-Id: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 01/13] os-release: remove OS_RELEASE_FEILD extending
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:31 -0000

depends on the OS_RELEASRE_FEILD os-release changes in core
otherwise yocto-check-layer will fail

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-core/os-release/os-release.bbappend | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-security-compliance/recipes-core/os-release/os-release.bbappend b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
index e9fd44a..604bacb 100644
--- a/meta-security-compliance/recipes-core/os-release/os-release.bbappend
+++ b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
@@ -1,4 +1 @@
-OS_RELEASE_FIELDS += "CPE_NAME"
-
 CPE_NAME="cpe:/o:openembedded:nodistro:0"
-
-- 
2.7.4


