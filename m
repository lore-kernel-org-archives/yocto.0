Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6514E00D84; Mon,  9 Sep 2019 14:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A48E00D33
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2019 14:53:47 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id w13so16097681wru.7
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2019 14:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=c8VlEaNOUPYThCBdrLnZMfVVW4FvvFt/aCBkwbYqGSc=;
	b=PaCYe0EtZ8L0UC1m71BIJIH2A27koKCmdeQLnHoRXElqeLCRFdQhh8pV2/JwrhosMZ
	CJra+Fvpce+1g3nqDwsFPQ7CxnJApzD6zV632BwBQnb+GBgqns9olQmbOjvsTjTeZM1K
	oYkYgZBDV7IKIJgFakybDtOFGqFT98LkJ5YymBbCv0Ft+0HsrYS4vn6Vk6qItptRCdM4
	Ecq22DLd0hj4BKHfN1TniYPog1H+H+XXhbwP0CXOLWM2G31Yj4p+AXj0QvtomXOB9u7K
	2ROcikv0qI94X7QBak8JfYOquj1IhWA4b3BChKaoKjB9By5IiRcm/PqSUgzzmZBxMa/u
	W/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=c8VlEaNOUPYThCBdrLnZMfVVW4FvvFt/aCBkwbYqGSc=;
	b=mc4VxZst2VUgqNgYZOfal2k2yV8SuzaiLC7HlTHU+7fDAEGGfoiwjKJZPd/rf8idII
	IsRwSnq/9dGOorAu5oUVlr8IIQ3NhC9bRsmByAf4sovTN9YC9qMZAsRndHnrYsGXsKdk
	yiMchVDOaFgWCz8GgWArUPyxnsm3F+6JSj0ljfGujMpuBd0Xb9lO29rWxhgXGMwxbq3Z
	zDvuTWRQtQPUnIcFiPdqgm24RaV9vEjqWgLaGi27uE34mDilYEDJPZmNv4qVETC7X77q
	XKMXlVFt1W3f5yD+5yMC/kqNMM2+xoSKGlTWw/YNZQXOQJ/Ph0kPy/dXiSiQwa0k6oIR
	vduA==
X-Gm-Message-State: APjAAAVaBZgmxm5AwNBAB4xkuxWcvmSbIq43IfnzxrInDmm1SlWDplgz
	yypB1c4S8vRfe7FY1Q36VhcN59DSFEw=
X-Google-Smtp-Source: APXvYqwZI04Y34JN733APnWawJvspfw/2P3amtkbsYv9IlagtUq8DT8ILPTdM6lmenfpxUCG7FPLIA==
X-Received: by 2002:a5d:54cd:: with SMTP id x13mr21029427wrv.12.1568066026334; 
	Mon, 09 Sep 2019 14:53:46 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id z22sm632038wml.38.2019.09.09.14.53.44
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 09 Sep 2019 14:53:45 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Sep 2019 22:53:39 +0100
Message-Id: <20190909215339.30877-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [yocto-autobuilder-helper][PATCH] config.json: for API documentation builds bitbake world instead of core-image-sato
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
X-List-Received-Date: Mon, 09 Sep 2019 21:53:49 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index a92adba..7723285 100644
--- a/config.json
+++ b/config.json
@@ -741,7 +741,7 @@
                 ]
             },
             "step3" : {
-                "BBTARGETS" : "core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "world",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' api-documentation'"
                 ]
-- 
2.20.1


