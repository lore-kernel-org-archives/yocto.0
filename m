Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723E0E0140D
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:51 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so332670eek.1
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=HROffSyAVJ5AaeAe8A1vho00z1r5pbTPglkjHUJLpwQ=;
	b=oNDUvutdSErd4jIE9u7Pq/cU4ktIgjkYauOIU87S3LHEyVkXGgxeqKkZ3kUhBMWDcr
	Mx53pEQJLwbI/gRRlhk8AlGB7p0AV72lEv1Ir+bsZ+jWAGacAsXb9qJ5HK/x4TZY2TlZ
	4bWo/HrnNhomu354CtjvY/nBzrCgC0HPhQiHRVAn5vV0QHC0t97nv1ycU2Nt3Y3p/IDZ
	AFMCyDWW7x4kM8Xmt95nerV3zW+DvIGQzNWSLUlnJaRB5yTz9wei2fCAcZjLR5LTrp+E
	/MamogFIzOvuHWXV7m1U9Qz4JxC1CaI6famUxfXBpNWMaYNkSj8LQbrizZqLmy96GT8O
	xRMg==
X-Gm-Message-State: ALoCoQkA1+4tQoroOY/k+R0DiPCbyzdekm3DH0lJhUMHfFyh/ZuxpDQD1bqHiz7/UDLEM0IeV5vT
X-Received: by 10.14.103.129 with SMTP id f1mr169246eeg.114.1377018170891;
	Tue, 20 Aug 2013 10:02:50 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:50 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:29 +0300
Message-Id: <1377018158-2983-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 02/11] linux-raspberrypi: Update to 2013-08-20 rpi-3.6.y's and rpi-3.2.27's snapshot
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:52 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |    4 ++--
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
index a68186b..263e0ce 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
@@ -3,10 +3,10 @@ require linux.inc
 DESCRIPTION = "Linux kernel for the RaspberryPi board"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PR = "r6"
+PR = "r7"
 PV_append = "+git${SRCREV}"
 
-SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
+SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
 	   file://sl030raspberrypii2ckernel.patch \
           "
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index 07b0ae8..48c99fd 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -3,10 +3,10 @@ require linux.inc
 DESCRIPTION = "Linux kernel for the RaspberryPi board"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PR = "r6"
+PR = "r7"
 PV_append = "+git${SRCREV}"
 
-SRCREV = "31a951046155b27361127d9cf85a1f58719fe9b3"
+SRCREV = "63b69a8806ce1890711ff55280c90673ea415933"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.7.9.5


