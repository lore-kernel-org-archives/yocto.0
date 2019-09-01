Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6459BE00CB9; Sun,  1 Sep 2019 15:10:26 -0700 (PDT)
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
	*      [209.85.215.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 036E1E00973
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 15:10:25 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id d1so6317548pgp.4
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2019 15:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Kukk0LJ7JBAi/PD6T/TKHAKUXHLaAdeW03u7Pd4c06I=;
	b=EPhZibCOky3eQO60lBnXlpAfRhm7jzaBbaWFPDUA4Q3cik64H1FfPWp+1LDMuRbKoU
	etI6LkLvEgOuoBhG8+qVS2jMzfauc7/nYjGZg6D1OjFBXSnOBQ9L/zjAneoh/xaW/ie6
	NH2ANxNtY7aVIxZxeho105KhiH8idI9Odzo4g49Wkav+sR709xEq43fsjukDcYd8Vwn3
	vQP0QN4fnkHM9DeU5v46nmLDR9v4Vf8vgyZeFl4Oy1RvlofAz3TuiS/vcIOmPSMH5dPz
	+6Qr+Fp5rRCi2MqGRmOogMVrr/scrSvshcMN6eIK3zC2PeAwu4ywE2tRKnGprZHaax3w
	j+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Kukk0LJ7JBAi/PD6T/TKHAKUXHLaAdeW03u7Pd4c06I=;
	b=D0VMn2vJ+LIoxQA9a5cUbsTAoXI8TsQ9OG9NMiSuZsdFX7odP22/HX7a+8iuQ1nket
	YbzoodG/TLh7i5X1QgeDNJrZoigeDtLBkI/wagR4VcIUz3bci29aOMBeVowRwbzcSUcc
	D2Y+YCOmU+JfbdBJvuOnIhB4i+ZTccpxE+sSc3SNR3fy/Ti+9vJawhPZ5pJ5GuCF044Q
	LIDLxFXbVcOkVBgswVlW2y5pHXcQmk7KuGkofwySMYyJnOQfOZxFM7rf1ajNuLIBw7LA
	8NyLQt/x9KmHINvdhAywmOLzwHFbbCeVh8kAPz59yhVzwIDA/hWk1bLppwGMncAltVSv
	BdHw==
X-Gm-Message-State: APjAAAUJwlwLsTjBWtV8b1QgpO8Kdo3uEoaHoHXVIor7HHD+jstK0fVW
	W9yr2tLQ6LkUeWuOfjJjTSLLkCnT
X-Google-Smtp-Source: APXvYqzUb0S8f65Wyc353ovBWLskpN9wXct0h1AfVLqTU7uXCB+dhdg5uwhlCQJLf1j5hwCAt8VyMg==
X-Received: by 2002:a63:2006:: with SMTP id g6mr22101712pgg.287.1567375825243; 
	Sun, 01 Sep 2019 15:10:25 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y10sm16326643pjp.27.2019.09.01.15.10.24 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 15:10:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 15:10:21 -0700
Message-Id: <20190901221021.25787-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190901221021.25787-1-akuster808@gmail.com>
References: <20190901221021.25787-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/4] initramfs-framework-ima: correct IMA_POLICY name
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
X-List-Received-Date: Sun, 01 Sep 2019 22:10:26 -0000

it had ima_policy_hashed  and did not match the recipe
ima-policy-hashed

found by yocto-check-layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
index 6057e8d..95c853a 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384
 # This policy file will get installed as /etc/ima/ima-policy.
 # It is located via the normal file search path, so a .bbappend
 # to this recipe can just point towards one of its own files.
-IMA_POLICY ?= "ima_policy_hashed"
+IMA_POLICY ?= "ima-policy-hashed"
 
 SRC_URI = " file://ima"
 
-- 
2.17.1


