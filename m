Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BB61E00CB5; Fri, 16 Sep 2016 09:35:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC81EE00CAA
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:35:19 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id l132so3361948wmf.1
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 09:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=+CVuBE3/XPBmt1GKeaeGoUAqQpSyWz75GCOR5EA32jY=;
	b=a8L+3RHgHj6R6AfYHXDgJuCsHIioaLC0cyo8a/CaasB/1dIAIMEIMaz+GOvQYZe2Hf
	AScF/3J/nfRYqrvwjcI9qMdyo+z/9RKb00vfPSo4EOIE1TzngQBW0osMdrC8+vzVvEs4
	/OU02rVTFlMHe3csmBkm4IVpvQlMFVAo7A0vvDy3iQpPo0KWhKxwGpkGrWcz9XjacFp0
	yifO6Zs6e2JD67IC2RU8RTmLH/6+WaH9kiZqY0Uo61sGqXP9ncin5uh2dYWZC/Y1M9Bz
	Pro3gLRBj6Nrok9Zv40g76F4bgOsBPw/sRuY5cz0IqU7XPFHYyzn4Zw42YF78TL9L9fL
	ktLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+CVuBE3/XPBmt1GKeaeGoUAqQpSyWz75GCOR5EA32jY=;
	b=MTg9gUYCA9/GUBiokNLxz36uwxsRbWgCYZp6Bucko+xxVq+KT1uKtwvTSCAuVJ2/SE
	QI+qsAmWWakxpe+Hf1ig5aOUR+jDQSYS6WHNMMZtnSywjeSyX6areDbTrjZuKIY2YNGg
	aZjLdVXo1R7otBMMG832eOjx8F34/gI1mJdI44l7sHTLttUEEVXmV609+kEtdnBZRk51
	NqNhi5ZI5mhlST/Ht5SVkdF8gAOgbAn88DJ3/G82jiRkDpe72i5RN7NxTQMrd7pXvw1f
	K3WDFVj48eOddQc2ZUs9H2u3hPjexn6elOF5uPwtEeRBCYgn1EAResKu5spokFSyZlYS
	vDaA==
X-Gm-Message-State: AE9vXwPjjnkyB1wkfSlTYabGs5FkqtAIitbJ4T/w9OTCIlWjcEv07f83i7dH050J7uiEEg==
X-Received: by 10.194.11.100 with SMTP id p4mr1574219wjb.125.1474043718873;
	Fri, 16 Sep 2016 09:35:18 -0700 (PDT)
Received: from resin.Hitronhub.home
	(host86-158-8-21.range86-158.btcentralplus.com. [86.158.8.21])
	by smtp.gmail.com with ESMTPSA id f8sm9122197wjh.45.2016.09.16.09.35.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 09:35:17 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 16 Sep 2016 17:34:37 +0100
Message-Id: <20160916163437.18455-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160916163437.18455-1-andrei@gherzan.ro>
References: <20160916163437.18455-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/3] wiringPi: Fix compilation of libraries
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
X-List-Received-Date: Fri, 16 Sep 2016 16:35:20 -0000

Not using the yocto LDFLAGS will make some qa tests fail:

ERROR: wiringpi-git-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/wiringpi/git-r0/packages-split/wiringpi/usr/lib/libwiringPi.so.2.32'
No GNU_HASH in the elf binary:
'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/wiringpi/git-r0/packages-split/wiringpi/usr/lib/libwiringPiDev.so.2.32'
[ldflags]

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../wiringPi/files/0001-Add-initial-cross-compile-support.patch       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
index ed47fab..603422c 100644
--- a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
+++ b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
@@ -51,7 +51,7 @@ index 0fb0033..cbea759 100644
  $(DYNAMIC):	$(OBJ)
  	$Q echo "[Link (Dynamic)]"
 -	$Q $(CC) -shared -Wl,-soname,libwiringPiDev.so$(WIRINGPI_SONAME_SUFFIX) -o libwiringPiDev.so.$(VERSION) -lpthread $(OBJ)
-+	$Q $(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
++	$Q $(CC) -shared $(LDFLAGS) -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
  
  .c.o:
  	$Q echo [Compile] $<
@@ -341,7 +341,7 @@ index 6bbcc5d..5355b74 100644
  $(DYNAMIC):	$(OBJ)
  	$Q echo "[Link (Dynamic)]"
 -	$Q $(CC) -shared -Wl,-soname,libwiringPi.so$(WIRINGPI_SONAME_SUFFIX) -o libwiringPi.so.$(VERSION) -lpthread $(OBJ)
-+	$Q $(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
++	$Q $(CC) $(LDFLAGS) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
  
  .c.o:
  	$Q echo [Compile] $<
-- 
2.9.3


