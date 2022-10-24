Return-Path: <Muhammad_Hamza@mentor.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61A5C38A2D
	for <webhook@archiver.kernel.org>; Mon, 24 Oct 2022 06:02:45 +0000 (UTC)
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
 by mx.groups.io with SMTP id smtpd.web08.16083.1666591360494705059
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Oct 2022 23:02:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mentor.com, ip: 68.232.129.153, mailfrom: muhammad_hamza@mentor.com)
X-IronPort-AV: E=Sophos;i="5.95,207,1661846400"; 
   d="scan'208";a="88103312"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 23 Oct 2022 22:02:39 -0800
IronPort-SDR: FMCEAInH/ka3CGELkKXUuVPrdLAWeawGpjX6Y/ECqT8cEwud4DofVlMj7Pit9geHBMbE5Fvqj9
 1qoi3SgU/d8csUleUP0HbLh70Xw6zo1McjN0Acnr4vx+9vL2r0STyj/UlnOL+hDcHvxAzTmzpH
 ldsn9drB9h4B9Dj8+X8leWC1IHz7v0xY4rSMeBApb9vvMSSjzGRBYoS0pUfzQGAurKW6e6FjUf
 sWGPH/Ot3TQ6aL5Orie/dlW6jqgGndzGzd7xxvcv0FTN/hMt63eBvZYJvbqpLp2XQMh2Bz8qf8
 85I=
From: Muhammad Hamza <muhammad_hamza@mentor.com>
To: <yocto@lists.yoctoproject.org>
CC: <jpewhacker@gmail.com>, Muhammad Hamza <muhammad_hamza@mentor.com>
Subject: [meta-mingw][kirkstone][PATCH] toolchain-scripts-mingw32.bbclass: Remove trailing slash in SDKROOT
Date: Mon, 24 Oct 2022 11:02:30 +0500
Message-ID: <20221024060230.946830-1-muhammad_hamza@mentor.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 06:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58396

Modify toolchain-scripts-mingw32.bbclass to add a check in
environment-setup script which removes trailing slash in
path of SDKROOT.
This is needed to avoid multiple adjacent slashes in paths
which are produced by appending to SDKROOT.
In reference to https://learn.microsoft.com/en-us/windows/win32/fileio/naming-a-file?redirectedfrom=MSDN
naming convention used for paths and disk drives in windows
should use a single backslash. Even though in some cases windows
ignores double slashes in paths and it might work but it isn't
documented as a right naming convention and does fail in some
cases eg. dir command cannot interpret double slashes and fails.

For example if my SDK is located in D: drive, the environment
setup scripts sets "SDKROOT=D:\" and hence SDKTARGETSYSROOT
gets set as "SDKTARGETSYSROOT=D:\\sysroots\armv8a-oe-linux"
The introduced check removes additional slash in SDKROOT to
set it as "SDKROOT=D:" so all other variables using SDKROOT
get set without additional slash.

Signed-off-by: Muhammad Hamza <muhammad_hamza@mentor.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index d96cb40..8cb426a 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -12,6 +12,7 @@ toolchain_create_sdk_env_script:sdkmingw32 () {
 	touch $script
 	# Be sure to use the 'short' path, so we can have deeper directories.
 	echo 'set SDKROOT=%~sdp0%' >> $script
+	echo 'IF %SDKROOT:~-1%==\ set SDKROOT=%SDKROOT:~0,-1%' >> $script
 
 	# Convert to mingw32 subpaths
 	sysroot='%SDKROOT%'${sysroot##${SDKPATH}}
-- 
2.25.1


