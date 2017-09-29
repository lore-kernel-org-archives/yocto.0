Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB424E00D8F; Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D09AE00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id d8so274469pgt.3
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=F0gamOQxkKeGJIlimXU/QzEL0gurclTR85PmYnZKscQ=;
	b=n9ZhHC4B+3rGbxa2XUIkz0IdYQhh4TFcywfiAbopFuj4rjdNzP448elKjhsgPdpXMw
	8VEpB9OcoVkD9BFHDRVybMeowfpVwifCyzY9p35F4CPkK5He22O9vMhACHQfeca6RZi+
	K16QE4XGii9ywJuOdhA9cBlPVG3DzaAmiYp3kDOmEzO8EkNK2+rmvHyfIh9bki8K5SoX
	UpqKogSy/6Tm3MJJI8DvDQ0qe8U6zY7PEzwyMHIhAzNRS1tJJkJBTHP6blG3r5GCL4hL
	sEQR7iGtTwCvkdTy7xf1sdOOnRvaN/W1TAbQQslvwo4YnnUSEapOBrkWBuraov3nANMH
	njXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=F0gamOQxkKeGJIlimXU/QzEL0gurclTR85PmYnZKscQ=;
	b=jjjOL1ZQfo3a0/9O9MPW6d1w78hPNp+U+J6T3OvUaIGSX3rHH+MLAzuw5pZgiMcsbi
	gacTI98EOdZ3qNGgaUeqepvVhjJCp2bTyPl/9qVnQs2YfusiVaYmyJIMjFYOCGpWId+J
	OShyrXfAgR75ws+aAs/b3JMn7WNjDABsud942rxpDdHnujPMNVE+5HVvTn17WCSusicd
	VUOwsQ5/KvON88grOCAjxNl5LcjYvVFrB1iTJixCEEMt5r6LaByIB5tSBjyqh4G5fhZI
	VbYs8WmxtBdvyPQ+I0Yaoxid92gZQg6ACpG8KbewmeZivYk0odyFas5PC59QXMRqq2bM
	iY4Q==
X-Gm-Message-State: AHPjjUg7t2vFuvaIdAZWSV7JrUVvpCdaeiW+lCXjt+embY9M6Nm7sy+y
	qJexTEu5w5BTwb7b7yzyj5o=
X-Google-Smtp-Source: AOwi7QAg/wkAj4FBcZOgMXgzx/0co3Vx5+MniBuR7KxD0976vizocAxKfh6UFCmQynhMHoXX66xoOA==
X-Received: by 10.101.74.81 with SMTP id a17mr6109260pgu.441.1506659210975;
	Thu, 28 Sep 2017 21:26:50 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:38 -0700
Message-Id: <1506659201-21501-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/8] openscap: add dameon
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap-daemon/openscap-daemon_0.1.6.bb           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
new file mode 100644
index 0000000..1467da2
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "The OpenSCAP Daemon is a service that runs in the background."
+HOME_URL = "https://www.open-scap.org/tools/openscap-daemon/"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=40d2542b8c43a3ec2b7f5da31a697b88"
+LICENSE = "LGPL-2.1"
+
+DEPENDS = "python3-dbus"
+
+SRCREV = "3fd5c75a08223de35a865d026d2a6980ec9c1d74"
+SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git"
+
+PV = "0.1.6+git${SRCPV}"
+
+inherit setuptools3
+
+S = "${WORKDIR}/git"
-- 
2.7.4


