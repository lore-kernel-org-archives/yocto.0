Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D86BEE00B8F; Sun, 23 Jun 2019 11:15:25 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F71E00B8D
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id g4so5549812plb.5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Z+6iY7/onFmewzOm0qtuIL/pug2GSivcj+f0hhUBGXc=;
	b=npD6wcmD+axzqFDrhjWwwXXWC3m0rzIYczX20TMkJKNrz5FAPYgyoEJEI3R1uTQoAu
	bAIiUEV0jysw8bdSy7yxLSVS/F90RGz5nqaTCCePM/FA1DmR438xjJK0yoheHPaBuqzl
	jENyGxQDmk/vf9uV8ge03Fd8GrXJRVjgANlobyBLg4u9K2TR8T7KbUU7lhsCIDfvjXqA
	BkxL5q5KRWYCB/VRS6tPUhucM7vRJZ7nJS2crolor3rukKhDuyeFlnkhoIOHUhxecJuG
	2HptZNFM4tx91zD7KNWJRiMoTyKIqqIWGOkb9rWxqC2br+zF23m57taQvcJn3qQPNuXj
	FHgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Z+6iY7/onFmewzOm0qtuIL/pug2GSivcj+f0hhUBGXc=;
	b=IGxlIIITSgTgV+rs0VK1Bqy3Qn6BAaMag1xIbYGSF3rUSWdg615ELBisfkZcrTMJuv
	gZ6pjzqlBIlEQA5Xqu5VXaAwMLi01lV3gAtwI29lq+VCrEnyBdmyPBX+e5gdXKS8lc4c
	tMO2FMGkEbvEX/CRMSS9lZhulbJH5wA3QfazB9oE4KemxMqyPsnEtT8SoQCN1i23cORr
	7VVs6kLpKYRMOhiwINsCM/aQPkZDMYyYOyMRtgRBaEgDod0DulHl0uaeijL7c6LAEOEb
	EdMmtGbnaSpQBYE0Jpc/74juZjMk2bYCHCDJ/D72TL6gfSxFfLUEo+ydFFIiOWOl9Qbs
	8nfg==
X-Gm-Message-State: APjAAAW5eKURWkafuJQmYy83GJEiweBWHkZUZlMf2HoVVS2Wr3Ec9S/k
	l8vd0NWorlXRDQM258q1MSpU66zcNeY=
X-Google-Smtp-Source: APXvYqwoEDu08Z4SWpPx9Z1lEVEfor0uBT7WqULb6GauvdSalwHSx6OeAYU3ShEbVMIb55xC8yF4XQ==
X-Received: by 2002:a17:902:8490:: with SMTP id
	c16mr64658160plo.1.1561313724233; 
	Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.23
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:16 -0700
Message-Id: <20190623181518.19564-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 7/9] tpm2-tss: update to 2.2.3
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:25 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tss/{tpm2-tss_2.2.1.bb => tpm2-tss_2.2.3.bb}           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.2.1.bb => tpm2-tss_2.2.3.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
index 78bdeeb..cf93159 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
@@ -6,7 +6,7 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
-SRCREV = "eb69e13559f20a0b49002a685c6f4a39be9503e2"
+SRCREV = "36b1539c82bf675265d6f6a6cd808a189b6971f4"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.2.x"
 
-- 
2.17.1


