Return-Path: <andrei@gherzan.ro>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CC6E0144E
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:23:32 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id fb10so1801631pad.2
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:23:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=9ghl+x01Lq4nEANehNgHNyMVJubgWSi6LcDHKReR8vA=;
	b=jSG0psosO70ibr136+HOqNbpOe8pKpEGdhreZVgQ9RoW3+MuJyMeP4UzYGSBYz14pg
	TD3n9Hagul8fFsRAnaPBrYr1dtiD4FKtWWxUwKfGkcPLFaJqzF3lQSBgXFxZ5vjJNjQK
	NpjjI6y4s22C4Ru8KUXkvgHfx/EQ1CerONB6iySXyaDvaNfv5KmWLw7j0uxeGWHZ76qh
	izwOxKF/oTdGEOgJ3elSfUp0m0b1Zt3CVCzPWJd2ss3uEevEDVXcuClaODfaEPGfjZM+
	HaoObTcyZHL/2rDvJwPwDUOpxwkqBsPbKOTdDcWN9bit9YAa2WD4JFuHv3tBKR53DOmU
	4Auw==
X-Received: by 10.66.82.170 with SMTP id j10mr225877656pay.9.1358094212001;
	Sun, 13 Jan 2013 08:23:32 -0800 (PST)
Received: from otp-agherzan-l1.wrs.com (5-13-223-33.residential.rdsnet.ro.
	[5.13.223.33])
	by mx.google.com with ESMTPS id wr4sm6537689pbc.72.2013.01.13.08.23.29
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 13 Jan 2013 08:23:31 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 13 Jan 2013 18:23:15 +0200
Message-Id: <1358094195-23815-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQllcZQ7j1LDNPA21x0rClJ4dJpnPBj4FppaVPpQayKqCAStqs537nkFSC8nDJ2oP83Fho3i
Subject: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 13 Jan 2013 16:23:32 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 meta-fri2/conf/machine/fri2.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 0efba2a..07ad750 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -27,7 +27,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "8.0.4"
+PREFERRED_VERSION_mesa-dri ?= "9.0.1"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 
-- 
1.7.10.4


