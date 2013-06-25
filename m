Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 411FBE0155D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:50:36 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id p58so9310779wes.40
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 09:50:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=gohgT+asUw6N5yzf+0iZSQRyQy7i06YDGiLct4DkTUw=;
	b=OlJ80L7/PYZDCfYcEpmAjB3HHIWoebEg3rN6imz16FigKtnImcJF7i0ajIg7qaJliF
	WhqSAyOYXtfQjbHzeGafVO0xQQ6FjRLmhRxzUqFyNsRZUbcLDLxfGlbixFSGAIB5D9H9
	hcaqsM4Mj7+8U9gSqZpCTHKpgsc4JQcAQIcFlrlaqMCdyRsOiyavNSfAmUkO6hwa97OD
	rNJrhxPD6mQuO0itxI1POMzJ34P7G/273RnuBJf2unJO3P0+QYsNax34dqxIcx38GfdG
	CJ/cgkpRUc7mF6LZDvDFRyVVzuZYNGd/P6iNdY6O4pFuZZCWhWfFJZIMWfbtjMSUlNC0
	hOTA==
X-Received: by 10.180.207.43 with SMTP id lt11mr9635554wic.57.1372179036237;
	Tue, 25 Jun 2013 09:50:36 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id f8sm5497695wiv.0.2013.06.25.09.50.34
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 09:50:35 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:47:06 +0100
Message-Id: <1372178826-19688-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQlPVw/j3vYSF6eYeYfXxEfHWKfDj6ObT1EizyM+lYUCk6VAirs6BDetWDXebSndH9DhjWhM
Subject: [meta-intel][PATCH] meta-nuc: don't install lms8 as NUC doesn't support AMT
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
X-List-Received-Date: Tue, 25 Jun 2013 16:50:38 -0000

The NUC doesn't support Active Management Technology, so don't install lms8 as
part of the machine recommendations.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-nuc/conf/machine/nuc.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-nuc/conf/machine/nuc.conf b/meta-nuc/conf/machine/nuc.conf
index 1404f72..f6ae404 100644
--- a/meta-nuc/conf/machine/nuc.conf
+++ b/meta-nuc/conf/machine/nuc.conf
@@ -19,7 +19,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "lms8 linux-firmware-iwlwifi-6000g2b-6"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2b-6"
 
 # disable the serial port configuration
 SERIAL_CONSOLE = ""
-- 
1.7.10.4


