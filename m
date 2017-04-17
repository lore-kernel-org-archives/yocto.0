Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02090E007B5; Mon, 17 Apr 2017 05:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80F32E003E1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:16 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id z129so6060208wmb.1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=G+AjU03/f1TUlGhpsUoHkqUHSZA4kdRXkZ0jUXnnVGM=;
	b=oFFWLn2RQGKiGXMGqJCVBfSdTcTuseI3gRcQ8BDX/PgwF0VhIqL7z/E4Dloq/+Gqgq
	Fv9tCcjRiWuOH9NlLXxbd1T9uZoev3/U/tudQw0dQdDeOc1xJAz/8qYO9joDQ7BXyzLt
	x71bW7Ar9r60/NH401zdg6EHALcvF1WYma7hB1MfHHI9rleGQMPB3NG689HHB+Xvcho8
	nyrt6Cg/DGnYcIC/HrAMF0+o0SObCVjY2x66xM8cNvWDoBa1P/fnR3dlr/qq0RbDs7ol
	I4L43eRl8kFuF1/2XFqpTeYxr+TqPSU/NjLLEYdgnpK90ah0HSm5PPdGYICZOQChDc3M
	/dqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=G+AjU03/f1TUlGhpsUoHkqUHSZA4kdRXkZ0jUXnnVGM=;
	b=YtZK4Rar7L8BNQloPsyIJ+Hrj3msvUmSA8jxTdJqyijmylxmVJkxNM48eyfm9MxYee
	lqoc63Ax7bxCSPcMwcLFMr+sm034Vznew5wW/8tFMzOhEwwlmc7/BXPXosXahV5KYBNq
	h++/zZBRX88Oxf1bMpzHbQQw8TBOeaFwb3+3TwZizxI/F1MHD/AUqJ1k4TvmCffcJAhs
	6QYl+Wr8QWe4+6hp5qeOdt2MuymXa7HzTLZ8S3mCLcsOoSBAPz5qXYlTXTUys4Mp8rIT
	SW+VvmzYz8svMji7EbbCFx0GiY9SyOadeIJlxw/rs0kVXjHmRJQaGeFKcalIUTkOkL2F
	UWdw==
X-Gm-Message-State: AN3rC/4HL8bzuY9z4zbHQ/YDYIy5gPW1FOQWB4nP6ovJrHJV4XvkFZxK
	bcV6HQ674IGEtg==
X-Received: by 10.28.191.145 with SMTP id o17mr9386760wmi.20.1492432635577;
	Mon, 17 Apr 2017 05:37:15 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:14 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:06 +0100
Message-Id: <20170417123710.6374-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 3/7] firmware: Update to 20170303 release
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:20 -0000

From: Khem Raj <raj.khem@gmail.com>

Uses 4.9.13 and has rpi0w support

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 8aea628..53c469e 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161215"
+RPIFW_DATE ?= "20170303"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "ddd7645988360d7ef267b48c32293ad7"
-SRC_URI[sha256sum] = "bda18f2affb50053940fd88c3f3bec5af9a4b4ced753d01107a2b106cfb02d13"
+SRC_URI[md5sum] = "c87bc1bffbb8f254fc739e34baa03b02"
+SRC_URI[sha256sum] = "ee8758d7e63c8fea7c8b7b476ff1c09f9591c74349b7751036a78ae5b88eca36"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.12.2


