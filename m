Return-Path: <costamagna.gianfranco@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7CAE00D28; Fri, 29 Mar 2019 02:32:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (costamagna.gianfranco[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815E5E00D24
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:32:26 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id y197so1969997wmd.0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=4Xw21C8WiNRuEqeCCztRm3DvsBMBrE1HDNXSuagY5HE=;
	b=BnnZGFmQFUoI7JqOq63YhJJnnnfRA2Tu5Qr+nMOQiwDn6Orm0o/mDp4YI92ocN9DNc
	q0MVEUTSRxNWOUcJD5s+s6TeIfdDgh8Sk0XS0urrhB9/xtopgyr2pryBOr1qKlzRsKhP
	Rfx4slNwE8Vr9AGMW7P14E7knHmuFw0c688y3CDaLNZvWimsKVcQFzUlOMdZuzr9OK4r
	Znli0KSgWsfqybQlBrbHc0+22JnNSrNFWHT8QCE7GhiOv3R+DDz4ilj5nD2hVFeRT+og
	+Mo8aWvV0FYkKTvzSBsQ+syfj1rU1zVKMGhzo19LzpyAqfdhIJPqN0cnPh+VbYdY8TsF
	fn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=4Xw21C8WiNRuEqeCCztRm3DvsBMBrE1HDNXSuagY5HE=;
	b=RuWBFfakAImHefAaGM1grB90Q1zYgSb7tnp0Cd0Nx9LNCeQ7VNZHHKEGGfA+IGTZOW
	2REhfa50lOSxtgZ93pRycjO8ehQ1GE0A79YzHoynUmqgleWmMJTMpPkvCmfFBbWhgjCV
	LTtyOemcNM6C2zPQu//aHoS0wtEKvh367L9JSWifl1thjsPcJgLMchgSTr3i1qd88scp
	I3tdZB3QX8YHpXw4BI1iu3l8kDmOci9hWYD944Liu/+RMP/Q7oWjqFNIxlsRBAGyM8KG
	vuSNSw0OSxKSIK8lEW1Vs02gEfPH/DhPPtFxUvwWvpwiOwyasIAO8loFBH/ORUer4G/E
	aDow==
X-Gm-Message-State: APjAAAWfkzAx0PL4Ua/+r4eOiwcKFPIrznknoc7tKycbasUZj417O3DE
	4EZ5gO1ytHT9Az6qxG6szRqsqAqm
X-Google-Smtp-Source: APXvYqw2+/rJG5G5JMaNZ+4piddIyhdP7HQ30H1CpINUejyL4l0a4dX/3efqYUMmVEKuEhuoBD0Vcw==
X-Received: by 2002:a1c:3842:: with SMTP id f63mr2896564wma.25.1553851945614; 
	Fri, 29 Mar 2019 02:32:25 -0700 (PDT)
Received: from Unimatrix05-Bionic.lan
	([2001:b07:5d32:c012:6d2c:49fa:2112:b346])
	by smtp.gmail.com with ESMTPSA id g1sm1440068wmc.25.2019.03.29.02.32.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 02:32:24 -0700 (PDT)
From: Gianfranco Costamagna <costamagna.gianfranco@gmail.com>
X-Google-Original-From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 10:32:12 +0100
Message-Id: <20190329093212.29347-1-costamagnagianfranco@yahoo.it>
X-Mailer: git-send-email 2.17.1
Cc: Gianfranco Costamagna <locutusofborg@debian.org>,
	Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Subject: [PATCH] Documentation: unify the spacing for questions in various places e.g. before the [Y/n] there should be a space, and before "?" there should be none. Unify the questions where the system expect an answer from the end user
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
X-List-Received-Date: Fri, 29 Mar 2019 09:32:28 -0000

Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Signed-off-by: Gianfranco Costamagna <locutusofborg@debian.org>
---
 documentation/kernel-dev/kernel-dev-common.xml                | 2 +-
 documentation/sdk-manual/sdk-extensible.xml                   | 2 +-
 documentation/sdk-manual/sdk-using.xml                        | 2 +-
 meta/files/toolchain-shar-extract.sh                          | 4 ++--
 .../initrdscripts/files/init-install-efi-testfs.sh            | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index 7ff4cba3b0..7d8826fa35 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -185,7 +185,7 @@
      Poky (Yocto Project Reference Distro) Extensible SDK installer version &DISTRO;
      ============================================================================
      Enter target directory for SDK (default: ~/poky_sdk):
-     You are about to install the SDK to "/home/scottrif/poky_sdk". Proceed[Y/n]? Y
+     You are about to install the SDK to "/home/scottrif/poky_sdk". Proceed [Y/n]? Y
      Extracting SDK......................................done
      Setting it up...
      Extracting buildtools...
diff --git a/documentation/sdk-manual/sdk-extensible.xml b/documentation/sdk-manual/sdk-extensible.xml
index 09f06088d2..9be082d8ba 100644
--- a/documentation/sdk-manual/sdk-extensible.xml
+++ b/documentation/sdk-manual/sdk-extensible.xml
@@ -157,7 +157,7 @@
      Poky (Yocto Project Reference Distro) Extensible SDK installer version 2.5
      ==========================================================================
      Enter target directory for SDK (default: ~/poky_sdk):
-     You are about to install the SDK to "/home/scottrif/poky_sdk". Proceed[Y/n]? Y
+     You are about to install the SDK to "/home/scottrif/poky_sdk". Proceed [Y/n]? Y
      Extracting SDK..............done
      Setting it up...
      Extracting buildtools...
diff --git a/documentation/sdk-manual/sdk-using.xml b/documentation/sdk-manual/sdk-using.xml
index dd220c340b..06fdb573ed 100644
--- a/documentation/sdk-manual/sdk-using.xml
+++ b/documentation/sdk-manual/sdk-using.xml
@@ -149,7 +149,7 @@
      Poky (Yocto Project Reference Distro) SDK installer version &DISTRO;
      ===============================================================
      Enter target directory for SDK (default: /opt/poky/&DISTRO;):
-     You are about to install the SDK to "/opt/poky/&DISTRO;". Proceed[Y/n]? Y
+     You are about to install the SDK to "/opt/poky/&DISTRO;". Proceed [Y/n]? Y
      Extracting SDK........................................ ..............................done
      Setting it up...done
      SDK has been successfully set up and is ready to be used.
diff --git a/meta/files/toolchain-shar-extract.sh b/meta/files/toolchain-shar-extract.sh
index 9eabd62630..156085b500 100644
--- a/meta/files/toolchain-shar-extract.sh
+++ b/meta/files/toolchain-shar-extract.sh
@@ -185,11 +185,11 @@ fi
 
 if [ -e "$target_sdk_dir/environment-setup-@REAL_MULTIMACH_TARGET_SYS@" ]; then
 	echo "The directory \"$target_sdk_dir\" already contains a SDK for this architecture."
-	printf "If you continue, existing files will be overwritten! Proceed[y/N]? "
+	printf "If you continue, existing files will be overwritten! Proceed [y/N]? "
 
 	default_answer="n"
 else
-	printf "You are about to install the SDK to \"$target_sdk_dir\". Proceed[Y/n]? "
+	printf "You are about to install the SDK to \"$target_sdk_dir\". Proceed [Y/n]? "
 
 	default_answer="y"
 fi
diff --git a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
index 9c4b263d54..b351985a61 100644
--- a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
+++ b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
@@ -27,7 +27,7 @@ do
                 # Try sleeping here to avoid getting kernel messages
                 # obscuring/confusing user
                 sleep 5
-                echo "Found drive at /dev/${device}. Do you want to install this image there ? [y/n]"
+                echo "Found drive at /dev/${device}. Do you want to install this image there? [y/n]"
                 read answer
                 if [ "$answer" = "y" ] ; then
                     break
-- 
2.17.1


