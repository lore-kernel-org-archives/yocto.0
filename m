Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D01E00CC1; Mon, 30 Oct 2017 06:51:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A22E00C45
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 06:51:24 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id b189so15949253wmd.4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 06:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:from:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=AVwecwbBo5fhHc8pj0E2EREuImzwEbqMYnykCwLsMmA=;
	b=Kokrx+rZ+hTdekro2lSGR2Uw7KTzyWjDcR4od+k68dQ70VBcx5t1ysaUSoibQoitKQ
	3HC8ybzlSv4c6tOPZHWVhdS1JEhT1VOWreW0CxzpQ8R0nPAFp8hOOrMcVQ5xuZLmtwAI
	WwcBi7do3GOrF+BFVqKUAlVeV6nUk3mB2wjoItjSWPNUKmrGHxa4yjXRxRFe0XVDTZTt
	GBtXRm1NNiFA9sSTm4JgzY4E8GBRbyABDg9saLpY5+kF8EkQEeKFEJKzI1xAtXOzebJZ
	sntjnUXXW4JUpmV0AuReso0t9jyFeh93G0Ob+7FMQpaJZL3+jrNR1iSVDdTDTp2/Er06
	uqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:from:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=AVwecwbBo5fhHc8pj0E2EREuImzwEbqMYnykCwLsMmA=;
	b=FQ8H/ICfGw5Y6LFqt+ala2iXg2SBIk89BzUEIaGa6mbqGZTvViEF3Xx80O3ruaDzwo
	Q2nsf6xlQ1ZQ9KBG/LogmUZ0GPWhaF9mPxskXJu76h1kY2B6pLNz4t3APznwDnEvAzuT
	at5vIt3c01qSX8OS0vV7h9QAFszJMqfReOfwL+6JFIqW7S9aFB4tGDwPZfEfLMY+hZ3U
	3rQRPTYRKJKM/A6hedu0rzbJycHfxyzJBxOH3jUtMe/Qsv0PWt34yo7f+DHXv20YBwRL
	x5MqqV5pHh7Z1/g3g8TQGh6HS3zm3Mo19KpWcY8oGX/0aB6LSc0k4szrVvGN00jCXdHu
	Hhug==
X-Gm-Message-State: AMCzsaWKvEnRXP+7Pp63/v8zAnUF4bZwCgNOEtrCA0U0n4BBLWs2wr8/
	Xvd8jisGRUQhK0Qur5U6208=
X-Google-Smtp-Source: ABhQp+R1jmYIYgowgND2trIHEIImTHjBVPelyyUqQwYqSetfJQTXSmHRmKFDnHXxOltLYbVo8mTNVA==
X-Received: by 10.28.154.137 with SMTP id c131mr4297080wme.142.1509371483367; 
	Mon, 30 Oct 2017 06:51:23 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-162-66.home.otenet.gr. [2.86.162.66])
	by smtp.gmail.com with ESMTPSA id
	w5sm9839598wrg.65.2017.10.30.06.51.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Oct 2017 06:51:22 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
Date: Mon, 30 Oct 2017 15:51:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Cc: ross.buron@intel.com,
	Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: [PATCH] poky: LICENSE in packagegroup makes no sense - removed
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
X-List-Received-Date: Mon, 30 Oct 2017 13:51:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
---
  meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb | 1 -
  1 file changed, 1 deletion(-)

diff --git 
a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb 
b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
index 2ca6392..aee4a03 100644
--- a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
+++ b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb
@@ -4,7 +4,6 @@
   SUMMARY = "Host packages for the standalone SDK or external toolchain"
  PR = "r12"
-LICENSE = "MIT"
   inherit packagegroup nativesdk
  -- 2.7.4


