Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65224E00C1D; Sat, 10 Nov 2018 04:25:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A417E00C18
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 04:25:40 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id y15-v6so4554059wru.9
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 04:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=CVcUY3iR/nrOGq9j8202xEi1C38U/30ynvZHiZyEyY0=;
	b=fpVdLzbOecVQRwUqcUc/Pc5ImluY5R6MgQmv3MIO7TzM6NFIllEma17eZuJnVQ3K+U
	qSsF2SSeDGwvNy2YuuI7kjW6w7KXHBSEvBmJHQ3HNIDcQU+7RUlPu8xbO09sd9WR0xs0
	mDtUHiaFL24RVMouJwfGz5lShmdCbpp90GUQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=CVcUY3iR/nrOGq9j8202xEi1C38U/30ynvZHiZyEyY0=;
	b=EOzNKUYHjDZBVQlek4CT+HeurWo32dtMjg67JevZqxryj4XryaoYM0usrfPhdugF/I
	IlyElMMTMp5m8hmrzG/eVALdM+cCSbM/WkCLWm+5Oaz7AGXewwBURiOSru68Bc4OQEqg
	hjDRer3ubFQOiKBBJcv5QS0QgEpzSNMGxi2Me8n5eQkW03vW7LozkU97bYWWHFUAW0rt
	Cbt1dgynrHUgpeplbJTrULC0L8aWFmho/eiT6/xml43cIyJdsGmzkMYewbHYyr8W/Vod
	5EbUOOErHZ47ZodgPo5z+0P8jcLb6BpmUG8M6Dc3DTVg83IbcDTDMDZvupG1HW+8PzIX
	f2uQ==
X-Gm-Message-State: AGRZ1gLt0MarR1n9uvV5F/Gq24hIfJnGu8o1nRP1HO7NzmKlKY8slZbC
	NGUpjU+wROeRb5oRT3jP9eE02FJdi7A=
X-Google-Smtp-Source: AJdET5cA6WdJ1L+dzb+8oQft7tLClDJQtVAHtg4WTGg932NhRy79AN7EU6XSxncUUutm/YvVfDEaqg==
X-Received: by 2002:adf:83e3:: with SMTP id
	90-v6mr11338329wre.278.1541852739468; 
	Sat, 10 Nov 2018 04:25:39 -0800 (PST)
Received: from localhost.localdomain
	(cpc85716-newc19-2-0-cust167.16-2.cable.virginm.net. [82.42.69.168])
	by smtp.gmail.com with ESMTPSA id
	c14-v6sm5084556wmh.44.2018.11.10.04.25.38
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 10 Nov 2018 04:25:38 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Sat, 10 Nov 2018 04:25:32 -0800
Message-Id: <20181110122532.4642-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Cc: rpurdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: Enable dedicated sstate during build and remove after
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
X-List-Received-Date: Sat, 10 Nov 2018 12:25:42 -0000

Without any sstate available oe-selftest cannot run in parallel. Set sstate to a
location used only by these builds and remove it as the last step.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 8a694d7..d898bf3 100644
--- a/config.json
+++ b/config.json
@@ -147,7 +147,7 @@
         },
        "nightly-bringup" : {
             "TEMPLATE" : "nightly-arch",
-            "SSTATEDIR" : [],
+            "SSTATEDIR" : ["${BUILDDIR}/../sstate"],
             "MACHINE" : "qemuarm64",
             "step2" : {
                 "MACHINE" : "qemux86-64"
@@ -168,6 +168,9 @@
                 ],
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
+            },
+            "step7" : {
+               "EXTRACMDS" : ["rm -rf ${BUILDDIR}/../sstate"]
             }
         },
         "nightly-mips" : {
-- 
2.17.2


