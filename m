Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5A3DE00C10; Wed, 21 Nov 2018 08:23:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5B4E00A85
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 08:23:46 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id m19so4483220ioh.3
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 08:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Jmp2gd8W5oli/mMPeDAJaxLF1Ee5r3tzU/6ezfbBe5g=;
	b=V6VMr+HNuP6i5hXTvBqPP97mB5RvmT/1C0tB6Zb6MdCJ6PgWT3VRtQvTclKK1RlfW9
	JMAoMYDTEVjgQhlUrW9fk/bJKaCLclT+0lt8tvZt/pP+3/kicsecvs1a41ldF1LU7L34
	V7dEQbR1QcLI5Q6zCD/hANUvoUelVeE3M/1sbn9hz52H5FLe5gYJLvg0pYU0tU/BrwDL
	faSxSxtiFoTOlOXg0ss/LtzSzabYctWUIaZn1E93h5UGJl4BpFK5Xf+Y9AjUv60+77BH
	vPJEi2IVUj0OIuNE3IhD1gAAdNVUc64OFZvyv1Ha2Fn1O2JTecIO+Ov2arkkSgKq81Rv
	rMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Jmp2gd8W5oli/mMPeDAJaxLF1Ee5r3tzU/6ezfbBe5g=;
	b=NWIkDfcCvH2IzpN46SJFJce9CqoN63SP8EZTjfZCA1QRO4a8G714N0IT63HSvm32SP
	aEnLt0MlFhmJSAZLjNuME63iT9+MS7LXpODxOpOL/+MPNipe0FYLM+OKtLSVzb9dB5xI
	rOPlsINQhQufaS3H96kW0rR4wCkWb4ykqIDBKMj2CzZVSuIsr3zXzrCEboQAFAWrE6QK
	TWehFjlcIdLdMuaDLn8rTVnHkJNeDF6nY4N8ybfjxonKBPA0/ta6g17N8wJTHqcHPZTD
	VY3HK6ljUPYj45Dv1DqV5inct8y0GVr5z27QaxdeIsWb0OxFaa0tE6Vw32PdRNteswqK
	vKwQ==
X-Gm-Message-State: AA+aEWZb25YpgdevVEEi1bVf4JcdXoXmMD7hGs8b+eGsr0Js/hqyHEAW
	ujjOLRMlh20szpf8yoitSaAPbywtNKY=
X-Google-Smtp-Source: AFSGD/VokgsyNr2pAJ4KlM6PAOCvZUyGKFOa5raott9APz+HD1J/8UN2blPh4eCEaoHFwuHlCn3iLQ==
X-Received: by 2002:a6b:5a14:: with SMTP id o20mr5069551iob.206.1542817425809; 
	Wed, 21 Nov 2018 08:23:45 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id y8sm526030ita.5.2018.11.21.08.23.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 21 Nov 2018 08:23:45 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Nov 2018 10:23:03 -0600
Message-Id: <20181121162303.10760-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] Fix HOSTTOOLS class detection
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
X-List-Received-Date: Wed, 21 Nov 2018 16:23:47 -0000
Content-Transfer-Encoding: 8bit

Adding wine to HOSTTOOLS for the purpose of testing the SDK wasn't
working because the it was looking for a non-existent class
("testsdk-mingw") instead of "testsdk"

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine-sdk/include/mingw32-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 71e8d45..9011ded 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -44,5 +44,5 @@ DISABLE_STATIC_mingw32 = ""
 GCCPIE_mingw32 = ""
 
 # wine and wineserver are required to test MinGW SDKs
-HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk-mingw', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk-mingw.bbclass"])) else ''}"
+HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
 
-- 
2.19.1


