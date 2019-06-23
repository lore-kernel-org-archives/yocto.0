Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04C07E00B8E; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEFCE00B6C
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id p184so6169669pfp.7
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=nHh5Wfpisq8oNuxMG6Qh6KQI7UWJ0jhfGX7LvOAfduo=;
	b=VsOtfpFXn2e++zYXiNUcfS+tXFytO7OniixpsftzUz/pQWRgZenZIdXUAIGjfwMaRq
	jg2yIXIrsKgyEPhm4V3OiMqAncaaZlbmnKf1ljYc81g/7Vnja7u8244xg2zw3qehqtw3
	DtEYJmSZWzR81uKMYBH0fkObhaRTn07BlARpLkM4juYW9OgiYBaOcBEnd8vVxoOhJ52A
	Z2/gVexNWUusMkAHAmi8H1xqFNGfSlCLjp/oKaSlYA5apmFayEeXlG4ZU7LW59OR4xEm
	Z+WFvMlS2BU3zHuv1S3IFrqsYjZ6i1yLk4NGtWhraxr74K3LpWu3rxXASzR31bCIqxDR
	lGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=nHh5Wfpisq8oNuxMG6Qh6KQI7UWJ0jhfGX7LvOAfduo=;
	b=GVYAiI0mgnnz1ItOKTKn6rdZNlRbUCAi7eGkoOjcQ+6jQgitft4q1XJv/FH47k7hbS
	Dx8pz/u8NX0XocjIkuwduqnxvCDuGA6YjPhApvpHtJMdehPhPSdX6jkZDA8yd7nWawX+
	lN4B9yMRoJhZELwlCNkI7pHvr9nHaJDL8eLuzo3rB98PnpiNvc+kZqpSPXChGpNxM8zn
	yFzth1qKO41bn0q3uSP3819rK8fh2+FPbpWE99EWz91cOUUQN0sDHmg7S9rNGC5lmUDO
	V73vx2UCG5I/wnZDXbek0w0XEEiY8nYMgAjgoYwhUDemhkWO0jpA3LP/A2tjxkGxjBkk
	GnnQ==
X-Gm-Message-State: APjAAAVb2N2DsB4kvMMxJHtGYk9zejrw6ab4dbudQJ4CGbXt+HYzh7uS
	vL8fylYpNo/TCBI4jrh7uwli6xZVaWw=
X-Google-Smtp-Source: APXvYqwtiEszY9dHIkisRV9j9VQIOI0Nibysqp6Ut5LS2UPUxuU/KQAPQecAWvsxun6g5fL5DrTmHQ==
X-Received: by 2002:a65:64d6:: with SMTP id t22mr29726470pgv.406.1561313722886;
	Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:14 -0700
Message-Id: <20190623181518.19564-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 5/9] tpm2-tcti-uefi: update to tip
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 815691d..43854c4 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -7,7 +7,7 @@ DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig"
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
           "
-SRCREV = "131889d12d2c7d8974711d2ebd1032cd32577b7f"
+SRCREV = "7baf1eebfeb56a896bdd5d677fb24377d619eb9d"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


