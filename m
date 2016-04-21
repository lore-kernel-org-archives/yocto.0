Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96393E00DAF; Thu, 21 Apr 2016 10:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084B6E00D25
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:44 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id l6so23247048wml.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=lkEgII+31olmUueXtmrnlkHlTgxBcgb7yRZFxScycPY=;
	b=p0htKmn/iU2JdtbbGNT17NyCa1rJRKI45P7nohqCon96p89zoIT7B+wo03gHvorvK3
	dUBbb2uP4zrFIhw0vGj8GlaRVedKdyAfd05TRV7+RA5fA1jP7+WMnnqP7k4z8rpZFgh9
	UMHQ+3/VqdlijrMxQts7EdhScHgRB1h9zZKKzktzz4Gj1tQt/OiXs+kpYoYs8RmJg5yx
	pSKB2OTY8M8slbZGB1fZp4fdl0SZJYZ+ln9eKJsdsyirYWsCMsV853eKV8+je79aR5Ig
	qE/ZacAC7HDSEwKZM3Hhk9UEd+9z5tSymnVJDfDn7dDx/1Ei+vs4Kk1Ajw6+WVCyUDWf
	3jZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=lkEgII+31olmUueXtmrnlkHlTgxBcgb7yRZFxScycPY=;
	b=aoMkp2FxsofcCTF6Gx+g+w7Rp7FVIkvCgjr78LylnwjwMvxf78uOsPKHYocskrOHS5
	pgx7ODuYq09mFSDF71g8A5yodhdOkbzc7237/w3p9owXyhdT4d/d6Rq0VwSG6ju0jGHb
	zTlKG+mZx1wXYtkBUKmX+V8i/MpT+IFBp6ryiI/gNgffOp10Yfb/siYfVwBPf9Ugu4Q2
	Uae/HBJtOnhtz/jgaNuoSvbcrHF4+js1hXkuWa7C+oDpLnFudbjAHBsCqQxCU5Ghns4J
	2CxTh8fxcapTTIQD2UdY97fIUqlo0g/4PiacEZHQwXjEWh/qiyI/yxYusqt0Jg0ov7Zl
	2tOw==
X-Gm-Message-State: AOPr4FU3273a3nZCWNhXQDjjl421fiieTPmGZ9WWx+skAGRByn8l4aGI6rPhawnFR2A3aw==
X-Received: by 10.28.184.78 with SMTP id i75mr6523692wmf.36.1461259964096;
	Thu, 21 Apr 2016 10:32:44 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	o128sm4251128wmb.19.2016.04.21.10.32.43
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 10:32:43 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 18:32:11 +0100
Message-Id: <1461259933-1661-3-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 17:32:58 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 4d41723..6ddf843 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -90,6 +90,12 @@ do_deploy() {
         echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # UART support
+    if [ "${ENABLE_UART}" = "1" ]; then
+        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
2.1.4


