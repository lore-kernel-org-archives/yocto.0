Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCF4CE00A1F; Sat, 11 Feb 2017 21:27:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4862DE00A0C
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:10 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id 68so3025480pfx.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=gVhTd8gdmOyaha4s2JfdsNC9bN5iA6PD33ER+vxZ2vbTpww9SDbYM8qYSQTiJAAz7Q
	cYQcTOgMrY1/2qBzBi3NvGd2m5c+oYl1N0zG4R6oNdf04B30YGqcNgva/DI1WjqbK4+2
	2if3Wg5hEcxW5843bcRCoAbT+aIXWQqTs1JpkvUOHhKDgWRVC5OHQ7BXkDbcoZn7no2G
	tGe1twISm6iATxVDR4ErS+va+iGMVZwDi6Zue7SdJFjzSIOFGSlqcSmWUSRZyJtGBJVF
	iAy/SFtz4WX/yBdGMgywOmVSTJtAFRRWeHlsh/6qYVwT4j2hnsv6Tw09KPkH06MAaXA0
	lnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=mKD0jlbfrSez8YIjYB88RY+f5NUDPxrqltGh/q5Ggt1Q2TV+CghkchSsxykFVT3RdV
	QYC7hzpCiAhUwUY9EIVNzWToseF0hg8lKSc/VJFdPZMMOGJR1RUUzQxMIx1UKoy7I5dW
	eOVKAm3bQ+PZeD0yrpfXQedqJygUjLucBlVgI6PWuCDIoDPBTb6BYNW1EaWSiSsT+N/W
	+rmd4YlaQn7xV/ll19OUShkC9NVUDwGVqDkbv6WHxeudLXHB8nK3ptbiClwF4F5rrVzC
	HhZDB3lHARHcxbTisgR1yG3/I8wmXyGS9ZCdeYwdHTQPxNdTtcMi6/bdeeoMd6BVfny3
	kYLw==
X-Gm-Message-State: AMke39lBI14MlrAyrvcGqg/gB19XTOP0EmGU0GOi9j60EwHz4h9qfgePodbAAV4FSWJ/Jg==
X-Received: by 10.84.130.75 with SMTP id 69mr7870158plc.17.1486877230238;
	Sat, 11 Feb 2017 21:27:10 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:51 -0800
Message-Id: <20170212052655.12342-7-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 07/11] firmware: Update to 20161215 release
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:12 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 1961b48..8aea628 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161125"
+RPIFW_DATE ?= "20161215"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
-SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
+SRC_URI[md5sum] = "ddd7645988360d7ef267b48c32293ad7"
+SRC_URI[sha256sum] = "bda18f2affb50053940fd88c3f3bec5af9a4b4ced753d01107a2b106cfb02d13"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.11.1


