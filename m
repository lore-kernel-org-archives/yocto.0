Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 840C3E00B5E; Thu,  9 Aug 2018 16:04:20 -0700 (PDT)
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
	*      [209.85.210.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A65E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 16:04:19 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id j26-v6so3539317pfi.10
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 16:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=MvJstjdIyfkAAOt0YJyLIHWcnycMWAtE3Sv9Rn6WoJI=;
	b=s1W431WYxpOjtBRaSCJg7hssGfPK7P1xAtqcxfspJpYjP+H7NFJWZRB5pX/V3x6EWY
	/GDU/KEG0F50CsS7jncjFhjLtJFPxkgYA1icUi/8gXeNPK2BR4qSgMw8QM9Y28P6TqRf
	4XmOSabtUwmJCwb7U6bPWXwghQ6grO4OkoWjsHi4Gn+PEjjbB0ACk3NXYR3jz1iU8HG0
	jQA6Q05UyHjb3kXNUiBEJ/fBmWGmmBuGvLXVkWICXaq2b0As63Th/W3YasFosNjGNscz
	azPEXuamQbWBE/Pb+wb+n6tPH2RyK/Ry6NzoO8rkBBMTCvAJJTjS90VxXVpLYZ4Qxq7y
	MVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=MvJstjdIyfkAAOt0YJyLIHWcnycMWAtE3Sv9Rn6WoJI=;
	b=gRdHnzWdD959yCCI9lZupH6qe2e152992NmiXbXhbNmCDpAKx/F/EZIh7bnwUmZUTk
	eNFZq2kLjAtkIidMnOeXPoAUPJqqOyQRZFncNWzxUrh8ZkAbcBAM6mMNJRuoSE6N2nQ1
	jfymDaRV6rXgOT6IjFaY34V9NTj6fe3JdVEDg8ig3qnTH/wPxw9dDm5sGihSP+sKTsCd
	99OFWBUixpmmcQe3pTuo29CP7qYRNTTxAlJ6FS87SMYtYwdEwqatu9jCmt0zdFWBNgzE
	LqSaWji4wZbF+tyLRfuFpSb0FkujphJKZUFBV+KADzcxTTKbdlve/hhd42YzccwRQLs6
	Hc0A==
X-Gm-Message-State: AOUpUlGsk7kp04OXBXHxwcn2lP6UM8RzAIWdlI2rlonhcuLN0D585bqF
	yFTeY73ofjSVxNUxilDEDfY=
X-Google-Smtp-Source: AA+uWPwX1g+vqIFnrpGorNbSQYuAgSt31GcnW8Tdrc3glcDNRr6MoWYLkgjAOJA8HijUu7Art0muaw==
X-Received: by 2002:a63:4c21:: with SMTP id
	z33-v6mr3893529pga.383.1533855859176; 
	Thu, 09 Aug 2018 16:04:19 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	16-v6sm13150200pfo.164.2018.08.09.16.04.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Aug 2018 16:04:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  9 Aug 2018 16:04:15 -0700
Message-Id: <20180809230417.15925-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/3] libhtp: update to 0.5.27
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
X-List-Received-Date: Thu, 09 Aug 2018 23:04:20 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/{libhtp_0.5.25.bb => libhtp_0.5.27.bb}         | 0
 recipes-security/suricata/suricata.inc                      | 6 +++---
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.25.bb => libhtp_0.5.27.bb} (100%)

diff --git a/recipes-security/suricata/libhtp_0.5.25.bb b/recipes-security/suricata/libhtp_0.5.27.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.25.bb
rename to recipes-security/suricata/libhtp_0.5.27.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index a2d36eb..1f42121 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.0.0"
+VER = "4.0.5"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "41fb91b4cbc6705b353e4bdd02c3df4b"
-SRC_URI[sha256sum] = "6b8b183a8409829ca92c71854cc1abed45f04ccfb7f14c08211f4edf571fa577"
+SRC_URI[md5sum] = "ea0cb823d6a86568152f75ade6de442f"
+SRC_URI[sha256sum] = "74dacb4359d57fbd3452e384eeeb1dd77b6ae00f02e9994ad5a7b461d5f4c6c2"
-- 
2.17.1


