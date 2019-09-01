Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0892E00A5C; Sun,  1 Sep 2019 15:10:24 -0700 (PDT)
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
	*      [209.85.215.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61695E008D3
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 15:10:24 -0700 (PDT)
Received: by mail-pg1-f179.google.com with SMTP id p3so6301729pgb.9
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2019 15:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=rja5wmqYh5Y6C5vHZOOdiWE2rbqrdLlM567Z93rV8QU=;
	b=KfetxskFdcKsbE5WQ62PsydgOvKO6nFy9MUhmk20aDROoMvsL0zlHmbIDEPGvyde7v
	XM+KlJ4GkdkmETMRyZ+Iok3ZQZUCveU679kpv8elPyxInXsUP6IKPS+bg1XgHHW+4bXn
	Ph+R/OE3n+UIowzoE//QkyZEp5GEW18IpmfhrnevWz1tbpK4To32+2FM/2AMcg9itqiZ
	IZj6I1ALpKEayTOytcTwO+A4pTHvC1p5Tzj1VJvvyQvdsVoyMfDIHfKikG7JOV+GUJVh
	opgENC41+fDALSiTyjPtVoXLS2j0u1jMx+FvICt6xqjnyeBefO1CIoVx2xCXQ8JNVZTp
	BLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=rja5wmqYh5Y6C5vHZOOdiWE2rbqrdLlM567Z93rV8QU=;
	b=WdzRZ/Ty4hpEAvgmq/JHme3/CowyGUKue5Chv2m1Qpu+LpPgasOme7medU1sYRs96m
	zn+p0UgJxWW6xIlkFlyMmrlS0XxtLNxOW4qzXalOftYFWTG1X5Bu7wXI334kHLE5cVtt
	TRFg2pY461CS7sTWvvS0aII2zrWN/tNSc7cwr2P2oMVsaxiEDEuBaWsEnXKHttTY3Biw
	OhPjfDd215wNiCKwGEs6rekKPTT7vcX/jYqPHgkwY5FLT3+QKtfMBYjGllMh8Rhug1JL
	euA2+LCKoQilqp9K3UJMDUrd90fRb5voHUtj/NJvX23U1StohKKUA9L1fIyIrs1O6m6a
	Uwfw==
X-Gm-Message-State: APjAAAWxsK/FekTxSLRJFSOslBhhpn85vQSniunB+1YovgaV+yfEIEGr
	Yvx/3JQyJ7cXBzmc50U6r+xEWIYH
X-Google-Smtp-Source: APXvYqzNjqj3OydM7w++Ouz7Y8sMOer+Eq9jEy19ADXw2u3wqprdWrdkkpXKLomR5PNtuoEecwj5Ow==
X-Received: by 2002:a65:62d1:: with SMTP id m17mr12638232pgv.271.1567375823698;
	Sun, 01 Sep 2019 15:10:23 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y10sm16326643pjp.27.2019.09.01.15.10.23 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 15:10:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 15:10:19 -0700
Message-Id: <20190901221021.25787-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190901221021.25787-1-akuster808@gmail.com>
References: <20190901221021.25787-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/4] packagegroup-core-security: update package name
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
X-List-Received-Date: Sun, 01 Sep 2019 22:10:24 -0000

Also remove tpm packagegroup reference

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 20ba46f..e0a9d05 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -11,7 +11,6 @@ PACKAGES = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
-    ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 RDEPENDS_packagegroup-core-security = "\
@@ -19,7 +18,6 @@ RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
-    ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
@@ -27,7 +25,7 @@ RDEPENDS_packagegroup-security-utils = "\
     checksec \
     nmap \
     pinentry \
-    python-scapy \
+    python3-scapy \
     ding-libs \
     keyutils \
     libseccomp \
-- 
2.17.1


