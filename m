Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8641BE00D0E; Sun, 14 Feb 2016 08:48:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mario.goulart[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2213E00D03
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 08:48:23 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id g62so28235408wme.1
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 08:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=lBHrNOh/gU/BpxjIvKoT4yadCJn7TdqWFK80e3aoeFU=;
	b=BHbSTbNMiRyxo3XFeX53fNIrj/9SchhqnKUIEW2TEot5zmS4r74e+7k3JbJzsv0fwx
	f5LJP9f02U11UbxKO0UdVd7PMHeGPT2QN6kvYsI6pB55pHF5lyaAuITVF/EftNi9SRvn
	Gd+c4Nyk4kfX9vp1KKv3xBadrgxJuRo0/AIhdOjdSnYU5yaL2TIHfreeHHO+vWQ2q8In
	7sHOlhPTlfBj+vT9jowWgRpNMKWiEqOuGSdAAoOAMUnLCx8cESHD18uo74LTMgJ8WG7W
	Ra4xR47EUs94dEXsPErPMvnwdftxXnM6EciEnQsqlYteVCz6goYKUGloJPBPoHHtPMTe
	HZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lBHrNOh/gU/BpxjIvKoT4yadCJn7TdqWFK80e3aoeFU=;
	b=ivBSBNdPJFpZKsist3M3LjNxVu/Pum2/RrE9Q6Yf31VgGFHBX+RrRYRdf+BO5m8yi/
	rfvCLCWA57jQ3jlpqP4UBGDIBuRKdxybkmhYHiCp/5D4dMyFLfr7FZUElMWCY8Ucfh7X
	QIDDvspiZZFhnxObUcUg2WDe10ctrN4ohfD6A54wZAZsxMfqT21X6/lpuuFv3YbnEOW6
	n8guRMh0on0Pq8Jp760G3qTJmsBxLCiIUciel8Bm9NWfxvTH0T1lP/TJ+ytGKcFTpy25
	OsmISyngAY5CBh2PeQfti56JZB3TWMmzhR5hsQp46OZeYqxpQgN0bCzGg3FHUMWiMuS7
	ZyOw==
X-Gm-Message-State: AG10YOQRU4duC6dUG8QOqWC8SbYewK/8hwowm4qTm3/qbFwFK7hrH11tQO7dOJG9KbjPBg==
X-Received: by 10.28.148.130 with SMTP id w124mr8408987wmd.71.1455468502536;
	Sun, 14 Feb 2016 08:48:22 -0800 (PST)
Received: from localhost.localdomain
	(HSI-KBW-37-49-88-119.hsi14.kabel-badenwuerttemberg.de.
	[37.49.88.119]) by smtp.gmail.com with ESMTPSA id
	t195sm11715572wme.13.2016.02.14.08.48.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 14 Feb 2016 08:48:21 -0800 (PST)
From: Mario Domenech Goulart <mario.goulart@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 14 Feb 2016 17:47:09 +0100
Message-Id: <1455468429-31718-1-git-send-email-mario.goulart@gmail.com>
X-Mailer: git-send-email 2.1.4
Cc: scott.m.rifenbark@intel.com
Subject: [yocto-docs][PATCH] ref-manual: typo fix (s/If if/If/)
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
X-List-Received-Date: Sun, 14 Feb 2016 16:48:27 -0000

Signed-off-by: Mario Domenech Goulart <mario.goulart@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index f752856..8184c3a 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -8696,7 +8696,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 </para>
 
                 <para>
-                    If if you use the <filename>PACKAGE_GROUP</filename>
+                    If you use the <filename>PACKAGE_GROUP</filename>
                     variable, the OpenEmbedded build system issues a warning
                     message.
                 </para>
-- 
2.1.4


