Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D72CCE00C45; Sat, 15 Dec 2018 07:57:34 -0800 (PST)
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
	*      [209.85.215.179 listed in list.dnswl.org]
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB392E00872
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 07:57:33 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id s198so4099591pgs.2
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 07:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=G/Uh1UR4yhwBG7WaEE/+wBLCGmScjYAoQYm5HJVryrs=;
	b=BgOXzmDYuSb1CPNl4PdJxePKgsc9YgS0EXSwoj0ZlBqw/20XE5xUtBwPdFkSJICk+X
	rLRpefiAdmaopAPaK4wyYvCTz/iy3yiSaUYZKVpHVZQ4blwS0E2ecJ4cLtz4Q572oNzH
	uJvhJKJ5nXp4vkqUj+/JTRNammQlKA0XnBIPC/VyCjbNwrYaydQhl4YEN81xUr924hzG
	5YB6SNTLV5/wPd9HlE72KasYb+GltJlW05MITjKY/0QhulCYYIGgMvIXaufLf3sPmb19
	ibYIYpMTTIv7W0271NdRsntoOlRe6Vps/Vm9oPspnrIVlaykL6XqSymhyYlkOGBBoC7z
	rAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=G/Uh1UR4yhwBG7WaEE/+wBLCGmScjYAoQYm5HJVryrs=;
	b=Lc1ccUVrpvaqwb7fh5BJiNOd1eh1bCRoik/qovLfmanqnr4kUjWYrONsHYijzaWS2n
	BzOD38o4i99kb9Ni/HX9GEkkIYStCo8eO8ZrCeyGhXtwkJzmM/brrtxuDkTmZ4FNBuoR
	gBeU2GC4b3VYNFl+wHdyyTkJCqddvcZEn0SohIgaJtdzkOQow4vtq2mpUclfS4EJVxUN
	vkOcQMk+VngsNSDi8pWx6YZXlAEXvi4muGPPHSX2Sk3h+WVd6bVk8BcdEhVCsXauqYsE
	tyWT+rOsnlZD3a6sCEm+ukiqYqyUwGKXWDR7CSpnIgguMHNSm6+YbACY2iAIO/hArhO1
	4YNQ==
X-Gm-Message-State: AA+aEWapIT4CpS8ZZBjlGQ+qnkCqc4KgACgABdp4IyL49vVRfM+8b6m9
	MmOSP+c24GdNC9GhTEKw37qLtjD2
X-Google-Smtp-Source: AFSGD/WwdPvgkE0FTsLbUVFOMKt1Ds4Iu5OtuyecM2eczT7DEk5UZo4fuLCLteSPCL70RNL9hK3ZFQ==
X-Received: by 2002:a62:2b8b:: with SMTP id r133mr6833034pfr.246.1544889452853;
	Sat, 15 Dec 2018 07:57:32 -0800 (PST)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:142d:7852:54a7:93fc])
	by smtp.gmail.com with ESMTPSA id
	f67sm20985978pff.29.2018.12.15.07.57.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 15 Dec 2018 07:57:32 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 15 Dec 2018 07:57:30 -0800
Message-Id: <1544889450-7075-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: [meta-security][PATCH] ptest: fix testsuite var
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
X-List-Received-Date: Sat, 15 Dec 2018 15:57:34 -0000

core remove variable used to define ptest test suite.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 19e647e..716f8ac 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,4 +13,4 @@ LAYERSERIES_COMPAT_security = "thud"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
-DEFAULT_TEST_SUITES_pn-security-build-image = " ${PTESTTESTSUITE}"
+DEFAULT_TEST_SUITES_pn-security-build-image = " ping ssh ptest"
-- 
2.7.4


