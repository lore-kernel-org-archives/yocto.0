Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49553E00C54; Mon, 17 Oct 2016 17:02:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12FDEE00C31
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:48 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i85so10241671pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=PdLMqDLfQmSEI0gbd+DCRm9t7pL556bVBtCZrox5vWU=;
	b=qIeYJTpyPF6scKqG4W90kOFXhZIwj8NJmgI6XCoJi2UXcIIODNm41WloQfWpVHxesf
	NzbyvXm0GXafr8LakcKECS8YoePzlwCV1NAn1b+sXBUF3lB5Xdoyc3tvoVQGRUrWtl7W
	X2dg7iN7BBaETSEIas5kKdCsso8k33f/tFAFNlkrd4ufIxHFsEkNH8bAc/CgJ9a1wybN
	VZIRGltK4oJYMtMJQgbNHCLl2P3Lrjfe9c1Fsg91xIlD8iUqsldBFt8Avhve9r1enEuq
	XuJTU4l8hiweFjLP665LcXFMJf9hzXgfhG15iTTuXRWTUWK47RHhgblcaaoEJDbyx9ns
	2F6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=PdLMqDLfQmSEI0gbd+DCRm9t7pL556bVBtCZrox5vWU=;
	b=Z7rlvex/N/EFObBEpwySPKMR7f7mRP9Sde7xTFopcz8TZQuz9TSxOt502b6Ke7iETA
	zlK4/XKYgglzYNpJu5rzMUzV7FXdOMGUe0Cp+Dg08eziPqoGwIYP2Pu2+Iw8pJZpBFYb
	zoGO/TPmVjiysuJ3dS+NKk6eUg1yRV1onVE3PLCU+1tBxSzjijw6kJDdvpYGcxFvpUMu
	nWLxlD3YgXaDJ+gRZ9mJqMASxwUsW1yz1FzdIooxltIf/ZMY9QQIpBHfR+/5bgM5rTWy
	BNjjI2QYj8dmf5Zc6osPEKA4qAyHre+Kt5/HGJSsKpx/CM3GJCK4Z2ESX1rc7qNctegP
	llmw==
X-Gm-Message-State: AA6/9RnI/aCTwm89HjiLQbIj4QJGmPiEITZoGsakM+Q+1u1pdn8vAlS4prGgkRBxYpqOMg==
X-Received: by 10.98.198.132 with SMTP id x4mr158790pfk.23.1476748967854;
	Mon, 17 Oct 2016 17:02:47 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:27 -0700
Message-Id: <1476748950-21342-14-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 14/17] suricata: update package to 3.1.2
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:50 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata.inc                            | 8 ++++----
 .../suricata/{suricata_3.0.2.bb => suricata_3.1.2.bb}             | 0
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename recipes-security/suricata/{suricata_3.0.2.bb => suricata_3.1.2.bb} (100%)

diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 9ddb405..6e14c6d 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.0.2"
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
+VER = "3.1.2"
 
-SRC_URI[md5sum] = "ff231c3d7af32cb1c767fded2a13c391"
-SRC_URI[sha256sum] = "264cbdc380717590a9c33d3b3dc92fc488f376873e869bf71601b1d4a9a8e601"
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
+SRC_URI[md5sum] = "c58e8ef56918c83ecf292d73f4b0c051"
+SRC_URI[sha256sum] = "f9e7742580849f202254e75d9fc245ba53f4d7490f47a6d30f02a7b10aacc512"
diff --git a/recipes-security/suricata/suricata_3.0.2.bb b/recipes-security/suricata/suricata_3.1.2.bb
similarity index 100%
rename from recipes-security/suricata/suricata_3.0.2.bb
rename to recipes-security/suricata/suricata_3.1.2.bb
-- 
2.7.4


