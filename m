Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8D23E01844
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:49 -0800 (PST)
Received: by mail-qe0-f46.google.com with SMTP id s14so348582qeb.5
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=mi16imY49X2RYIibv0SRrq55wQGqxYsdQP85dREQ78E=;
	b=Gw8apKhzOS9tLJ1gNlv+NugKAJ2KJlIWQMrkrhqdTpkv9+icR8pHZIV2RYaOItMahb
	ixePwmQVgTTfDoUo4kFfgkM0eN3+eiW9KSk3n4SvhNS6SwCLqpEo/aHE9yh1SW88qjUA
	jmTaSLRovqlJ2xgPj33RkHW5HgitiIfqV8aIUDf2wKqPPcsobPJ7Y/FSW1Wc2EmjGhK6
	5CyR3JYJU7aXSFC9rJPrb8B2oM/JSMGEKNnchTkB178LETR0xgSyvfRLB737nm1M2jaa
	OvD45W924fMeHi3voCTpUNphO6FFe1aqoxWElOJ5+VcOY+6SdlSawt/sxb6f7dbg9ISb
	pwZg==
X-Gm-Message-State: ALoCoQlzCsgGKW/b8D8Ftt7tmhzhlpjfYDIw8NFuwekP7vf8hv/m0gE9qY65SqysmhWRg1vKISHo
X-Received: by 10.49.130.8 with SMTP id oa8mr7850967qeb.66.1384357668772;
	Wed, 13 Nov 2013 07:47:48 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.47
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:48 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:29 +0200
Message-Id: <1384357651-26684-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/6] rpi-default-providers: Use 3.10.X as default kernel
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:51 -0000

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


