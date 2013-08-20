Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D6EE0158A
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:52 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c13so326559eek.33
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Sc9kkNpbZ8QeVIClAC7UvgDFIeatGf5OWcAfTpNkc68=;
	b=gQJazSevHhc6ZvRlEWvLHLBqn5RgqpZc1B/Z3Anhvlda9siRXevnMMnGvtQ6UQXLFw
	r+jxdkQues0FzT4nQjbpbW1AuCN5/bLPSqJVvB64dIlLBYxvNxMLpQ01FFa7Ikz1+fKj
	HZvkx8X8pBOU83xzOJQNWqhvwS0ZD63nRhnde/zJN66V+bZ/hFw3+FYkzarbvVrrWJHL
	0HRV5Rw1hE1M09fCkjRK+JGH3SiAL7fVKuRujXF5uOX7f2ORWjZhJJwvzktgQ3AKTsVN
	k4dYkx1f/OR6i1K+CWgW670BG63VmF5sduIy8IDWvKMq52OMCGGN4kvw4NOdAlChpzAM
	m92A==
X-Gm-Message-State: ALoCoQmQVuQSjxBLMmQLFsVZQfzDE77bVQSFCZ582zJ7KhVbSxRfW/ywBBbAq03/tFxo4hHqBBvs
X-Received: by 10.14.4.1 with SMTP id 1mr3553169eei.21.1377018171707;
	Tue, 20 Aug 2013 10:02:51 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:51 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:30 +0300
Message-Id: <1377018158-2983-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 03/11] userland: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:55 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index fe4132a..c7ea522 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -5,22 +5,21 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
 LICENSE = "Broadcom"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
 
-PR = "r1"
+PR = "r2"
 
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "8700279495e266378d36092ccf86424f0ee2539f"
+SRCREV = "23baee63495aa685e7693467b7a5469ff5ca4481"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
 
 inherit cmake
 
-EXTRA_OECMAKE = " \
-                 -DCMAKE_BUILD_TYPE=Release \
-                "
+EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
+
 # The compiled binaries don't provide sonames.
 SOLIBS = "${SOLIBSDEV}"
 
-- 
1.7.9.5


