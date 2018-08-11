Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 149ECE00A86; Sat, 11 Aug 2018 07:18:48 -0700 (PDT)
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
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD55E006F1
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2018 07:18:47 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id t17-v6so5157372ply.13
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2018 07:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=6Ap12NF/cBsoaMgLa0nL0XL2Hcel+71WOhzo0bG6piU=;
	b=echiTUWEb1cPZRyxAXZps76/vtEmqQ9oIZRZilA4u1O0wHjxrcRifnpSPS1Vk+YhCk
	xlb+hdJiI0rmt4b4NWAD6pnQ5MSBtMvtBKkh6FA+Kq5ZAFVqVj/5UoAWklGd+MfTXnXJ
	I6FMSH5NhP4KGi+daT+byWCfUDp1TIxHRVcLH5p9CTy5mOxJcPECtXZllPs0A6USVoH9
	sQ2P1m1mp/c486C1wPzMrPjx/x3aUqHfXfZN77iauEo3qt9UEKxOzJ0e7aNfZALpTPY6
	d+d3JXboSm/iDdYtOWJAhe7CDAwcTAKFjqSQ2KTAFfcsCr6ldHG3iVno9erWXJN4i5WL
	aD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6Ap12NF/cBsoaMgLa0nL0XL2Hcel+71WOhzo0bG6piU=;
	b=cgt7SdX6/6jq/Gn3gM8jxG94MNCKzmbGjVuKrNtrIM1vjfu1umq+hIagUbOh4EDa0H
	1V8teBwOXuuaqClJGL9R3sWiOe7c02LjfUJnaMEmwVcxRuLG5Cx/CUE/s5qZFDqtpYAl
	PxWADGW691hKzp8vpD6YF+IX5txHPNejJoYpkBXsdUv9xROSM2VT+/acVmFgZC3uNWuC
	jT3eIhqYDQXN3mS9tu7geLRRgL5q4fZfzdcywCsXYKtsnQkk6j+aPfiZhecKjtfYH+/e
	oow1rsDG6fS9pgSb6fzRFMs6JyKNDx/QR2W21sYzUm9eOL6DeheGmVduxhkpob4HBG1j
	V8Sw==
X-Gm-Message-State: AOUpUlFnMZ5pNyj+piHggemJP0OJg1GGcFa4frYPrxNq0Zdc+7vmxZbf
	Awrv1ILp2rwJqU7Ye69TECc=
X-Google-Smtp-Source: AA+uWPwYyhdYd09g7bmDEi0+Y8Nm2yZORJr7HzDbZzGU7YkDQ8Ohlx1aRHYUY7GuXgzBgYTVO045Ug==
X-Received: by 2002:a17:902:48c8:: with SMTP id
	u8-v6mr10167172plh.152.1533997127231; 
	Sat, 11 Aug 2018 07:18:47 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:293b:397c:8f12:7e9])
	by smtp.gmail.com with ESMTPSA id
	s16-v6sm15110039pfm.114.2018.08.11.07.18.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 11 Aug 2018 07:18:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 11 Aug 2018 07:18:45 -0700
Message-Id: <1533997125-11466-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [ROCKO][PATCH] config.json: Fix beaglebone MACHINE name
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
X-List-Received-Date: Sat, 11 Aug 2018 14:18:48 -0000

rocko did not use beaglebone-yocto MACHINE name

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index cb050ef..0182b6b 100644
--- a/config.json
+++ b/config.json
@@ -102,11 +102,11 @@
             "MACHINE" : "qemuarm",
             "TEMPLATE" : "nightly-arch",
             "step2" : {
-                "MACHINE" : "beaglebone-yocto",
+                "MACHINE" : "beaglebone",
                 "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk"
             },
             "step5" : {
-                "MACHINE" : "beaglebone-yocto",
+                "MACHINE" : "beaglebone",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
             }
@@ -115,7 +115,7 @@
             "MACHINE" : "qemuarm",
             "TEMPLATE" : "nightly-lsb",
             "step2" : {
-                "MACHINE" : "beaglebone-yocto"
+                "MACHINE" : "beaglebone"
             }
         },
         "nightly-arm64" : {
-- 
2.7.4


