Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13D1E007F8
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:00:12 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id 2so5318354qeb.2
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=pa9tkl8GD26xVEoMmxZH/cJlHAvsf6LnwgQ5nq92jKU=;
	b=iHdDyICyaEHKJGopbHVYZcdRRnybyqup7UdrG3ByN62Hb7wCU6c5UpTG6yR2+Qsv9M
	TyiTumdsSuwSmYqZZFzvaD3lEF0Vs3OcjAvbktTCA3O8dFDR0ihBGUxb3PyufdpYqIAr
	3pYkFqIn9MemDYif57qmHK6GtadU9Bd/a84chiPMuyYpuuDKCm/T/kSfiaEcm/+CWDxE
	wI9BG5csad7JgNYqbUqy7ChMkm6dSuLSQWMKfGb8wwms8pi1Ud/R8JL0UPHhvODZ1Bh2
	eituOuhuOrLO0UIoHvYj/rLenlhE7alfBjF6geZK7vO/p3mitOSpOMu/5k41J0smEnOg
	y0vw==
X-Gm-Message-State: ALoCoQnpLQURho7geqwhY6auL/ToFQaLnVGIZtMrLJ1quXdz7r64MRxVUNxlChyMvDv3DsiSsaBM
X-Received: by 10.224.51.196 with SMTP id e4mr43935746qag.16.1387296012007;
	Tue, 17 Dec 2013 08:00:12 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.08.00.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 08:00:10 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:16 +0200
Message-Id: <1387295956-24899-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
References: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/6] userland: Update to latest HEAD
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
X-List-Received-Date: Tue, 17 Dec 2013 16:00:16 -0000

Change-Id: I4403ab492bbe825541149905995ad3e4c61dc897
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 18c74fa..2993044 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,7 +11,7 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "628498eb6cf501554c98a5e6c7ea3855574fa43e"
+SRCREV = "d2c9f912da389c23ed27e81e940be3540f64fc59"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.8.1.4


