Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CABF8E00D38; Thu, 14 Mar 2019 07:29:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45051E00BAF
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:35 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id v12so4123474pgq.1
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=4wFsG6t/eeFcyh8ZnpeSHdYPXRvGZGKtFOGu/4Jk3Hs=;
	b=q1j2/voY0qp5KPWE0lF+BaE77bX0PPJ2ut+rNw3W/CNCsE/UWkwdNQ0yn0/ojLPnS6
	e1Xk0/8shNQA8vT84qBnRDaY92vPoJTGkwi9gb6JVy2hUAeq5glBNLLJGUQLaZDKcBYN
	cGHe2t0QTSpuP0Tzz038TLI29ThjlDeTJVy/eHKQgUnXsA0rm/0sEI1krFoyWCQHFPYh
	a9ImekZLvSKj8chTD9rFWGb+mKU9GaNoiZ/HtZkY1kiRBpQhwDCjzpIe3hnDzQbOx94p
	jQvviAwehcyLn3ujsTzcoJdmwSmzd51WjNt268WTxJpr3ALHSVykT3TCLOPXhix5NKBH
	fMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=4wFsG6t/eeFcyh8ZnpeSHdYPXRvGZGKtFOGu/4Jk3Hs=;
	b=GEgzcG0ZHB4uo6jt/aB0U/XNU2AI/SwYuO8Vh1YW7sqUT2CIdULf91RRwp+jV73sBb
	Gts0kjE0l5Z4qxCbLJ4jw/Tesc1n9ulnYiv4Krwgr8heOLW3SumUUofqD1XqR7+C5NAG
	zooOsbvf57Iu5kW5huex86oizFKAjF2g5y/rESuHo/HSsCBdLcNOgACBJrYFX0IxBrKE
	UAfdhAsPWUCQ2i2vCg5b+XJdpWOgAh/rrxMHWUqxsxLHpXNlfBEG48QC/pUFApzbu+Oy
	r47dm7XRbskxAkAUT2OjH62MGWkl11RjMC3S0T47n6O8nu7T2TiGz9lPUXxoSLE+oaOf
	cUMw==
X-Gm-Message-State: APjAAAUikRVUus9TN/lyWzDySLSdBzCD/JxHA9CSdMcrn2TsLIwwGMhF
	r6NnWXWiWMEzx1nfaoCobgNHrzeh
X-Google-Smtp-Source: APXvYqwf7FF6R9/CobOClq4p5TT3ufVW6v/7M77fdKaqu/9BOBtlIzS8OIEaqvm276tYjXFXCBGkOw==
X-Received: by 2002:a17:902:7c0a:: with SMTP id
	x10mr195506pll.224.1552573774810; 
	Thu, 14 Mar 2019 07:29:34 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:28 -0700
Message-Id: <20190314142928.1458-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314142928.1458-1-akuster808@gmail.com>
References: <20190314142928.1458-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 6/6] lynis: update to 2.7.2
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_2.7.0.bb => lynis_2.7.2.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_2.7.0.bb => lynis_2.7.2.bb} (89%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb
similarity index 89%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb
index 0fd53d7..3ba82f9 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.2.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "ac0ae8086e31f263f2da0c5c553686ba"
-SRC_URI[sha256sum] = "c9cb9b77dcdc782decbf06ddca30c0e853605b99029d8e86ade8449a0959be3b"
+SRC_URI[md5sum] = "3422cee3b12fc33338fcde003d65e234"
+SRC_URI[sha256sum] = "fde6ccf8d6ec0ae1e9c9f4a6d640cddcde4bf7a92f8437d47d16a5477e21bfda"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.17.1


