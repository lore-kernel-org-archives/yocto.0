Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f45.google.com (mail-qe0-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71540E017B7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:43 -0800 (PST)
Received: by mail-qe0-f45.google.com with SMTP id 8so389226qea.4
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=mi16imY49X2RYIibv0SRrq55wQGqxYsdQP85dREQ78E=;
	b=el10tPgS8cO4u4diD+BFCrfUy3YDYtFtMJUSKeY5r39D09oRb/AHGFiyoFqc9F6zjj
	CcF5iQK2Yrn89eZR7lrGkBUP+8eJB9FzOMnBr2Uyl/yS/op8XC8N4yk4tOaKgUY7q6oa
	C6oTs5mXm95/odhGom6l0tnpWCzbdp3bDZS//ZQWFMf4spbyt8K6vzfpjW6omm0zxdch
	3eYK3H/kGwnZl27eXEi7n3MzYkmIfXYl7UX7tyhfx16uj92QPOrI2h/M9sjI1VfSPLYC
	7wZ/i2PMsEwjTovdo6MzuR15oqe04UBUtqDsUgi4ShF0CeZW+5iOxKy1dnA1Eqj9eb1c
	/48w==
X-Gm-Message-State: ALoCoQlFJoSnAbq3FaBDgEJ5LmfmLOpvU5NuA/zRhnV/YAgvA3MY53/MuXsPtTCsjai/dVVYpQvo
X-Received: by 10.224.80.4 with SMTP id r4mr68973582qak.69.1384359583366;
	Wed, 13 Nov 2013 08:19:43 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.41
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:42 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:24 +0200
Message-Id: <1384359566-32315-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 4/6] rpi-default-providers: Use 3.10.X as default kernel
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:44 -0000

This is the default/base branch on official github repository:
https://github.com/raspberrypi/linux/branches

Change-Id: I99702ae7548b49a5b4b575b3f02f5a3a48ad347f
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 1a647c9..ffdb4f9 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -2,7 +2,7 @@
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
 # The default kernel version is the same as used by Raspbian
-PREFERRED_VERSION_linux-raspberrypi ?= "3.6.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
 
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
-- 
1.8.1.4


