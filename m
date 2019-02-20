Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40EF2E00BB7; Wed, 20 Feb 2019 13:34:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F65CE00B5C
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 13:34:41 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id v72so19390353itc.0
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 13:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HM3cegponuxCxN5kyw/5vZIMh+Er4CRFkq3z+ryGsRc=;
	b=H/LVHaZDQCuv7P+3aEaOHzXtFsEa0wmJqj3lnF8mGPFJOS9DALNTFiZW45YJ2RY4Vr
	h/puYr8gliyZXXyh5U1ZNRs+WwkDPwr5UifWRWIORFB86OSMZvDO+pvYjemqQQaYvSUL
	vbo5/naTD6tEhPa0lU16BpUOPOBPR2pe6raMqbWzga2asWpQXgOXNzNw0cDBadd13lol
	FXDiBfuKBGUfsTE1uq01hFFY7gfOC3nhczuDNjm+Ohw1PqIkXmapsa4/gVWruzQQRrlh
	vD4MENV+HUIXd4JgNYRQDjVe1j3I+zENspgOccyafvNx6DaL4PQzE9DPFrq4ymtSnBuJ
	a3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HM3cegponuxCxN5kyw/5vZIMh+Er4CRFkq3z+ryGsRc=;
	b=Mh687npN4639subK7amKODmTNYax5ykJsEyAZHgMHQKiI4Fc8vnJ51j5qNaIr+tqnr
	S+0FHUhcPItkPTOmw2EWwFA4zyRhxSLi8u4b4LP16vmIlbXP2S2rtvroG8pE8B2YbEHh
	cnOw95XiWK0eB7nDpKtEozQkcl37umngteiXNhhs6Vj+l/4M2L9JfXCB61CHyPnFzE/L
	fOAzQ/ZUY/23O0FjI6Tvtr/EnU1ajU7LogfBTYmQ5zvbbxt5KFGRvfQZlVy2g+X91eFi
	+kfa0khNVBsfIl/Cb0qx8n9O0spBbK0tkxrGzIk3FJ339VKurlaKdz/WLfWJJILKXH9T
	i7BQ==
X-Gm-Message-State: AHQUAuaECRwBQOY/FuHtO3Fu/HzgqkpcuS+el2iVi7y/y2Ut3x1FRdq6
	gTxHuL0to7o3j4eFqyUrQ8alIWak
X-Google-Smtp-Source: AHgI3Iaf1dzKqW1ivKfU/LAIM9BcIYUGXP0mrUu8o52RjoTy2Qf7UKAaB2JYFLcyX2RsTDmz6nuC0w==
X-Received: by 2002:a24:75c7:: with SMTP id y190mr6916516itc.108.1550698480759;
	Wed, 20 Feb 2019 13:34:40 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id k9sm7605190iob.2.2019.02.20.13.34.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 20 Feb 2019 13:34:40 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Feb 2019 15:34:34 -0600
Message-Id: <20190220213434.26014-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] classes/toolchain-scripts-mingw32: Fix bad cmd flag
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
X-List-Received-Date: Wed, 20 Feb 2019 21:34:42 -0000
Content-Transfer-Encoding: 8bit

The command to properly set the exit code at the end of the toolchain
environment was using the correct flag delimiter '/', but the code to
coerce all the unix-style paths to windows paths was incorrectly
changing this to a '\'. This worked find in wines cmd, but on an actual
Windows host, this caused cmd to wait indefinitely. Fix this by
appending the command after the path separators are coerced.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index 32493d7..0afbf7d 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -38,6 +38,17 @@ toolchain_create_sdk_env_script_sdkmingw32 () {
 	# Change unix '/' to Win32 '\'
 	sed -e 's,/,\\,g' -i $script
 
+	# set has some annoying properties:
+	# 1) If it is successful %ERRORLEVEL% is unchanged (as opposed to being set
+	#	 to 0 to indicate success)
+	# 2) Making an assignment like "set A=" is considered an error and sets
+	#	 %ERRORLEVEL% to 1.
+	#
+	# Practically, this means that if any of the set calls make an empty
+	# assignment that error will be propagated. To prevent this, a command is
+	# run to ensure that the "exit code" of this script is 0
+	echo "@%COMSPEC% /C exit 0 > NUL" >> $script
+
 	# Make the file windows friendly...
 	awk 'sub("$", "\r")' $script > $script.new
 	mv $script.new $script
@@ -81,17 +92,6 @@ toolchain_shared_env_script_sdkmingw32 () {
    FOR %%x IN (%OECORE_NATIVE_SYSROOT%\\environment-setup.d\\*.bat) DO call "%%x"
 )
 EOF
-
-	# set has some annoying properties:
-	# 1) If it is successful %ERRORLEVEL% is unchanged (as opposed to being set
-	#	 to 0 to indicate success)
-	# 2) Making an assignment like "set A=" is considered an error and sets
-	#	 %ERRORLEVEL% to 1.
-	#
-	# Practically, this means that if any of the set calls make an empty
-	# assignment that error will be propagated. To prevent this, a command is
-	# run to ensure that the "exit code" of this script is 0
-	echo "@%COMSPEC% /C exit 0 > NUL" >> $script
 }
 
 toolchain_create_sdk_siteconfig_append_sdkmingw32 () {
-- 
2.20.1


