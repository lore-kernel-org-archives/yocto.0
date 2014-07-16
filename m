Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B166E0076F; Wed, 16 Jul 2014 01:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034A7E0074B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:05 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b13so565598wgh.22
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iL/9t6rXuzSr/Ode2Wm58B9Ho+1Nr0BsL2yGsxqaAeA=;
	b=WX5C0NqfSuwZOTqInId+efZs8FOuhYpaFDH1O5qrw6mYbfVL+sqar48C/FPYz8p8JP
	bpHjkqr9aOfXFgoR40qF3/EhG1pFPOG7HV0yCV+4T/ksy4LI/R2ieozxYDcL9w6VMuX7
	Vv90Qq92tTKNfWtsQ2nJXoYXC6dk6ka7DUX4399ZD16KmoY7ohrN3VBagAvXcgxR9XJL
	pjtxVkEMcxEa3DeTYIF2bbpIvj5zrRKzdIM+O7PqGH1glwlqOWpB9Zd3BtncZGYRCK1r
	gKtpEpRo/A0atC9fB1JMf/OpweRZMqCqy5xAgeJPMGnNX/TPTh4vBpiO+MHwESgCinKR
	llHQ==
X-Gm-Message-State: ALoCoQm5G2MYo9dgBlqrRtO76HEjzxa4RMiFb0A4xKPVNvumQ1Mww45RzBnNriJppW9lbTarWO1B
X-Received: by 10.194.222.230 with SMTP id qp6mr34456360wjc.23.1405501144951; 
	Wed, 16 Jul 2014 01:59:04 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id fu7sm6595074wib.2.2014.07.16.01.59.03
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:04 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:44 +0200
Message-Id: <1405501129-28327-2-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 2/7] linux-raspberrypi: Update v3.12.11 to v3.12.18
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:14 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Change-Id: Ifa763e4352051e4533eac98b4f7c74daf791cf72
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../{linux-raspberrypi_3.12.11.bb => linux-raspberrypi_3.12.18.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.12.11.bb => linux-raspberrypi_3.12.18.bb} (77%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
similarity index 77%
rename from recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
index ff8ed2a..736be5f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
@@ -1,4 +1,4 @@
-SRCREV = "e297b214d77ce06a321e5ff98d74ae511ce18696"
+SRCREV = "b09a27249d61475e4423607f7632a5aa6e7b3a53"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.9.0


