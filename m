Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DF70E009AA; Mon, 30 Jul 2018 12:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DABDEE0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 12:07:36 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id q12-v6so13287510qtp.6
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 12:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=FHBXzaTSV1AN5+Jjhc/YzrcpQ7ojRc8XLIRY5HboyMY=;
	b=Rvwv84NhBoHUbnPjRO+WkhMHrwADgysxB1yT7EDeYZHbPbC7K1HJ/HkMEb3A7y9yYK
	BnY7Cz8uEPOzjMh8PQ34fyzPr1cN5JAq21IsmxB7Y1pJIKZjrVGPY+i1fCqSDx6EI/lC
	vChya9hrrr4rqDsWVKG3XX1tR8Xp6eOLWkiiF17f9dtI2jG3dwbxzA5ulCu08O9yNYq9
	GE4ZojHhkE7EeHywhEniY7r5JByx4YTqZ6jMMbhCVN42XMpiDRLrpiyon3sKaKWK0zSN
	AVSMBIAv/W3tFsn3KjXOJb2fmWnItftQ7cG5gXUPzo/zbJHYI4kvWhnC//QANa7BbTTS
	HwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FHBXzaTSV1AN5+Jjhc/YzrcpQ7ojRc8XLIRY5HboyMY=;
	b=ETSUUumkZs/oNXmI0qbPnAiEY2jTONAFUET5SFx+nsxIjvAvAF8TWRqqm7uyOM5dl6
	7rt/u+IwJT/6GBMNufEAJWUDdLFNUausIyYH8ai6rQjF1aq3qUPN0r8qpjsBwKQjEmhw
	R2OI41T02bUI9WTbP4CTNIofv8YvAfo4Dg0ahHHivQclsUSDYwaR/iu+PEWwlWvVJvws
	93SZMtGzjTc9yjJ8Vvb1r5W75V9SdbzCvxPOEqip7ndIBVS8/3UKb9OrBjcsxVfmh84z
	mj2p1spgxPErChn/CWuv615xyMOt0iqW3pAdQ0mVacaZUDAOfZYXYBFJAkTmheA+NAcq
	6ZFQ==
X-Gm-Message-State: AOUpUlGVpUfIJKuwS+3IJWQ9seq2Vd3MSpANKu2gCEGMJ70igbJ83tbo
	6EZaSFQrUPeIbWfqan6kLKkJkgYL
X-Google-Smtp-Source: AAOMgpfFN6wnXXuSY1hukF/onVKYLCvNBFdCOCS1Kan3oavRxMWwqUOBL05DrepOBR0JUTI/iN+z4A==
X-Received: by 2002:a0c:8b67:: with SMTP id
	d39-v6mr16367084qvc.180.1532977656005; 
	Mon, 30 Jul 2018 12:07:36 -0700 (PDT)
Received: from e6520.guest-wifi.scl.liberty.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	w79-v6sm9958327qkw.35.2018.07.30.12.07.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jul 2018 12:07:35 -0700 (PDT)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Jul 2018 12:07:27 -0700
Message-Id: <1532977647-27563-1-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-gplv2][PATCH] gnutls: update 3.3.29 -> 3.3.30
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
X-List-Received-Date: Mon, 30 Jul 2018 19:07:38 -0000

* Version 3.3.30 (released 2018-07-16)

** libgnutls: Corrected infinite loop when an incorrect PIN was provided
   via pin-value or pin-source.

** gnutls-cli: backported the --sni-hostname option. This allows overriding the
   hostname advertised to the peer.

** Improved counter-measures for TLS CBC record padding. Kenny Paterson, Eyal Ronen
   and Adi Shamir reported that the existing counter-measures had certain issues and
   were insufficient when the attacker has additional access to the CPU cache and
   performs a chosen-plaintext attack. This affected the legacy CBC ciphersuites. [CVSS: medium]

** The ciphers utilizing HMAC-SHA384 and SHA256 have been removed from the default
   priority strings. They are not necessary for compatibility or other purpose and
   provide no advantage over their SHA1 counter-parts, as they all depend on the legacy
   TLS CBC block mode.

** API and ABI modifications:
No changes since last version.

Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
---
 recipes-support/gnutls/gnutls_3.3.29.bb | 8 --------
 recipes-support/gnutls/gnutls_3.3.30.bb | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-support/gnutls/gnutls_3.3.29.bb
 create mode 100644 recipes-support/gnutls/gnutls_3.3.30.bb

diff --git a/recipes-support/gnutls/gnutls_3.3.29.bb b/recipes-support/gnutls/gnutls_3.3.29.bb
deleted file mode 100644
index 21099eb..0000000
--- a/recipes-support/gnutls/gnutls_3.3.29.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require gnutls.inc
-
-SRC_URI += " \
-    file://configure.ac-fix-sed-command.patch \
-    file://use-pkg-config-to-locate-zlib.patch \
-"
-SRC_URI[md5sum] = "de7a58232d42b1d71baf38a06dc34412"
-SRC_URI[sha256sum] = "fa9d13f1bc35b81fac85152906b8d4950f4f5a90d76d5b406c1167728770c94a"
diff --git a/recipes-support/gnutls/gnutls_3.3.30.bb b/recipes-support/gnutls/gnutls_3.3.30.bb
new file mode 100644
index 0000000..6e9f026
--- /dev/null
+++ b/recipes-support/gnutls/gnutls_3.3.30.bb
@@ -0,0 +1,8 @@
+require gnutls.inc
+
+SRC_URI += " \
+    file://configure.ac-fix-sed-command.patch \
+    file://use-pkg-config-to-locate-zlib.patch \
+"
+SRC_URI[md5sum] = "748f4c194a51ca9f2c02d9b7735262c2"
+SRC_URI[sha256sum] = "41d70107ead3de2f12390909a05eefc9a88def6cd1f0d90ea82a7dac8b8effee"
-- 
1.9.1


