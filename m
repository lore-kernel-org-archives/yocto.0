Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10618E00D6F; Thu,  7 Dec 2017 10:51:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4614DE00D72
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 10:51:46 -0800 (PST)
Received: by mail-oi0-f66.google.com with SMTP id t81so5602081oih.13
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 10:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=eczAR6GDMeCI17Ti0FaEW8OBWfu0AKPzFHAYOGEtkdsHiZwlxiNbC8aucJVZIUHHQ6
	sFZ1g53H61aRnuJE97U/tFlgmdzHdDHxU9PJHHt0q1DNtZLlRCxHFkhGmYS2cPS/a6n4
	vDhl63uMpR50kt7aOCew/WTz2ruA7EXvNP3zRx8YyLIINgSGZCdXh/ehJo36WpamJan+
	1CWEyvhQSpDfHOtmOCWTy6YeRLXXfWSbwHlvCBxDE+dKQhJ+J5t/YcsM7M4o+TiPOzia
	wxzcP8nRAM+fLB/Irnxi9k+WTQPuaQEYjPNBknN0M+uB8ocVNfbmiflXw1cbGwCWueZQ
	YIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=U5Ct+kHfCfRCTCrGmmwKOkbbj1WSaTB3wxXiDCwzDr1PYwpbq9G84yPqOoO7RfuRn8
	RVLPHIPxiG9V7t3B8L1oM3jvYZHaHWnfukawwZH7Nxn5hCRByEwUNiKnDET7I6vRvsDl
	caN/5fvSy/iJzAYyTUsvxbTE5BMwGbRB5EXdQ9bEYPIBH7D4lLXWRiUy632A0ZDu4g++
	wsC4TJpnqai1TYaHA7iU5xV3ZVqZJPstWtxQImQagDMXdimG37LOnolYXHJCOp90TY+i
	swiAqJD8yoUzgloR7bJbQelX+xqI0LaWpLqLIJ1F3gMRTNrcf7WAa2j2+yOVTmlSdzfY
	c3uA==
X-Gm-Message-State: AJaThX7gu3Eeyni2BhAknpdkVcrRxlMKPVou+xqwRZHW+qo75Zjj0s91
	axnbKn8CnpeFTi6BTkP6jYgHl53j
X-Google-Smtp-Source: AGs4zMY8Rs98EoZx2KUdjkQN7O6bFzeJYnFmr6mvz3M30S84x5OFJVcYbCspa7HeY6bjJ/wet0Tdqg==
X-Received: by 10.202.96.4 with SMTP id u4mr22679744oib.41.1512672705831;
	Thu, 07 Dec 2017 10:51:45 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	n74sm2592453ota.72.2017.12.07.10.51.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 10:51:44 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 12:51:11 -0600
Message-Id: <20171207185111.14402-3-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171207185111.14402-1-limon.anibal@gmail.com>
References: <20171207185111.14402-1-limon.anibal@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner 3/3] README.md: Update to my current email
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
X-List-Received-Date: Thu, 07 Dec 2017 18:51:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.md b/README.md
index fedab04..22b36a4 100644
--- a/README.md
+++ b/README.md
@@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)
 
 For contribute please send a patch with subject prefix "[ptest-runner]" to 
 yocto@yoctoproject.org and cc the current maintainer that is Aníbal Limón 
-<anibal.limon@linux.intel.com>.
+<anibal.limon@linaro.org>.
 
 ## Links
 
-- 
2.11.0


