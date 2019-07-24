Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E419E00DF3; Wed, 24 Jul 2019 06:03:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05936E00DA7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:47 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id r15so14913496lfm.11
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=elu7OiI3+9JZ120XL8y1Fvt98pxlIUyw1Yno4QbBFVE=;
	b=elb69ZDe2TWb3o9v62+23651O8R8EcNA6ocnlVsqQyR7eMXS1w9x97taBSIlp1zIHS
	/Dn2rnD1aMFx9ezdX45C5sFHCtKUXT/jSGLKrNsWUlmDh0xXMlQAfEbiCLB4cc0sTNPD
	5VTfLw0+VpjgA454PUItsvQYWkOqGiz7Iqcydo5nsmQ2bpFvA5NgFZxi+BxsEjIpR8yO
	f/Gg9cGXIxS1A1tmdrDy/62dUhThumcuiMVK9TziodeERrBsZRQStoTiv9jZJqhL9YeH
	Uug9Dc/7WMAlRcML/95kO/k/yPAdztkjVlExg9R+dFxJEd/b5t1jd3wFuC4g+2dj5dZF
	wEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=elu7OiI3+9JZ120XL8y1Fvt98pxlIUyw1Yno4QbBFVE=;
	b=Lh0Olyu9XkDbprcSczwg5oPSLBQBPp0A3JWvv2M9MzVLE/kvZuFsNlyvpxHnXCQmZq
	fqVO5Z/C3+KeWtlUSG1q7iq+352EFAgh5e1AxsgbTiYv7KUYaJcaymY81BjYPlJ6VJM+
	sNWwQI4Ayp9BPxsp3s9TnADxIvELf90i5SoL073zwXlNgezHuedr/iH0ur4PHq/lwhYR
	nsRekfIy/zvzM2DmyLQCXs4/zyYkBYIQBHMeWkwnWFxI1VRiXTjCY9a5IetdeAjcH9pj
	fovtwoCAbTHj9YuViqXXp31CrWmnpJv9+v+QDANV/jGdDITxKS4We2B1Mc4HaLumFyhH
	fAig==
X-Gm-Message-State: APjAAAW3PZTg5JDdn+lYBBSR8jEnmT7JX4Ml9Ad+a8ZMavT0WEbpEtXN
	dDxNPc9dImIP7AthqU9+zQG4TzZYAf0=
X-Google-Smtp-Source: APXvYqx5r3nhi28pJNXbG5CMiTfNkL85TymJugOwU/TglhAA2jIbH3YVoC0yolvl8vT4xGHGbia/xg==
X-Received: by 2002:a19:8c06:: with SMTP id o6mr38169032lfd.176.1563973425473; 
	Wed, 24 Jul 2019 06:03:45 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.44
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:44 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:36 +0300
Message-Id: <20190724130337.24454-5-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724130337.24454-1-dbaryshkov@gmail.com>
References: <20190724130337.24454-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 5/6] tpm2-tcti-uefi: stop inserting host directories into build path
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:50 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Do not insert /usr/lib and /usr/lib64 into LDFLAGS.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 ...p-inserting-host-directories-into-co.patch | 27 +++++++++++++++++++
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
new file mode 100644
index 000000000000..3b54dddf763f
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
@@ -0,0 +1,27 @@
+From b74837184cfdefb45e48f3fdc974fc67691fc861 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
+Date: Wed, 3 Jul 2019 19:16:35 +0300
+Subject: [PATCH] configure.ac: stop inserting host directories into compile
+ path
+
+Do not insert /usr/lib and /usr/lib64 into library search path.
+
+Upstream-Status: OE specific
+Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -81,7 +81,7 @@ AC_ARG_WITH([efi-lds],
+             AS_HELP_STRING([--with-efi-lds=LDS_PATH],[Path to gnu-efi lds file.]),
+             [],
+             [with_efi_lds="/usr/lib/elf_${ARCH}_efi.lds"])
+-EXTRA_LDFLAGS="-L /usr/lib -L /usr/lib64 -Wl,--script=${with_efi_lds}"
++EXTRA_LDFLAGS="-Wl,--script=${with_efi_lds}"
+ 
+ # path to object file from gnu-efi
+ AC_ARG_WITH([efi-crt0],
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 03140506931d..b2d0b85af280 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -6,6 +6,7 @@ DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
+	   file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
           "
 SRCREV = "7baf1eebfeb56a896bdd5d677fb24377d619eb9d"
 
-- 
2.20.1


