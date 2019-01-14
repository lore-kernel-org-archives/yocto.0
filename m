Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A357E00D05; Mon, 14 Jan 2019 06:42:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77878E00CD6
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:20 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id f188so9072761wmf.5
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=o/4AGwE2VqRJv4247iuYlE0Fiy88ATWxQDcsm3r+lO8=;
	b=UkDHJ9wJRB86iHsdQXvsXgvG4xLeNgVAwi4wvjL1nPruvRzovXRX9ARomH6HJeCUNL
	E1Biki59ruuWgSwN/kp3N2J81OtaZSrb6cuH0h9sZ9XffYN8SlHUQocBkeT1fLODeGZl
	2UxI6r4c4Lm9UNpotsDW5rbrIV0yQjB7IUFw8xLjBaI75n76RIoVf2UEzMuRmqci4P2x
	bpeu5j6EGZaTbsM67tG441Cg1LVchtj8EOS/u2m2MPbT0NOfHitzh+J9wCRDMy+u2Q6m
	6pPRwhS7j2WWhHnJj5XH6/xHt/B343A4OZFk6Ch3Gxr515TCwFMVE4iz/huvbzFU92yV
	8G5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=o/4AGwE2VqRJv4247iuYlE0Fiy88ATWxQDcsm3r+lO8=;
	b=ARDv+Aj89fMCCdzWq1DcEkFBGUwiu31HpPNZj6D0TprZ77wzE4X8JEtB8y9n/kF0Qc
	tpJeiwcm5T/oi7CP7TZcl9tNp8kdQD2jkeK0TE3idwh/nb68sdvI7oJMZxmFETAr3vOu
	pGm8HAfRtkIwINZfEyigAjKzuBcBOPO3WZJMDwEdALwYYZjYH21YjkdL5yYjn3D4kwFx
	lBdDCuUHfUh/MELh9fWsNwhBZ14ov2XMWBDWCgzo/6pWG2ivZj0seW1DEF4hnD7OHJec
	7sFk6f+CRmILBOZQ2J8EVhh0xW27Piz0HJv/A5Wnatfk64qBQqa9VKzlJeox/l5OG7yX
	DJNw==
X-Gm-Message-State: AJcUukcPsOCxjlGPIaPwicgFoSOOXWaXeWLmHJmbeV3TW5ZUyaKhCA9v
	aFczEKw582E7/P4eee2umYPFY5mir2A=
X-Google-Smtp-Source: ALg8bN5IXzqz8N9Ib+zeNgOWEnpUqN4lKPSoJrZVxI6Nn90REncjlqi0dypXCgSz2NApggg6XsSdJA==
X-Received: by 2002:a1c:e1d5:: with SMTP id y204mr12065819wmg.65.1547476939531;
	Mon, 14 Jan 2019 06:42:19 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:18 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:01 +0000
Message-Id: <20190114144208.14353-4-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 04/11] apparmor: enable static libraries neatly
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:21 -0000

No need to fiddle with the configure arguments as we can just neuter
disable-static.inc.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 2cf5b7d..303d5c7 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -50,8 +50,7 @@ python() {
         raise bb.parse.SkipRecipe('Requires meta-webserver to be present.')
 }
 
-CONFIGUREOPTS_remove = "--disable-static"
-EXTRA_OECONF_append = " --enable-static"
+DISABLE_STATIC = ""
 
 do_configure() {
 	cd ${S}/libraries/libapparmor
-- 
2.11.0


