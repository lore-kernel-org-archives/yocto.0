Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EA06E00DF7; Wed, 10 Jan 2018 09:08:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9669E00DC9
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 09:08:55 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id i186so333948wmi.4
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 09:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=Sb/3iPWN5o/2ZvvHWPFdgExcBQxK7ES6CIf70MDnXQc=;
	b=YNkB1e0aWVZ1+VZP9xpbtjDcPz2KncT1LeHSIeM8MIgTlOQIcbSJKAKOH0wt4QL2eX
	ZUlLMyDMKxhds/26XuPsQG75I20VL6262QsvSTZ4pv6X1XB2ouClYONQBccrPrmNw0LE
	2LcViypdAm1+XbzTf/L3gbr3QoYEDiY4U7GAnSYdisbSKxStIQn9KTot5QkmToDx4DQu
	xO0WRyc7a1ClMD258+3ULMO84IWcPN2qdhJVnnIeqlkINcFpCzGS6LlVgHsxVEGpJNeS
	yyOfvDksoTPkH3+FvavXnRa2xwyirnbfdCxP+ppiCjOoEyTbto7is1E6Pk9qcg9zX0Tm
	aLKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Sb/3iPWN5o/2ZvvHWPFdgExcBQxK7ES6CIf70MDnXQc=;
	b=CvSxpXmD0PMO8YaudsCxywKFJvz5/0nUJr3ZgGXpHzCMNP4MQPRT/ya7giFDO+8FIT
	fI/5AjgzVxYj2qxwJAFvtuUSseRACl4mo1DT2Q8jqe1U0u2w5B56abMD7V2VLxWOvvkR
	NJhZglSnxQFBCxjahR2xFrrM83oecW4cgNfONPyYGI0pwZH3ThBJoCeOc6Gu/YPWSNez
	RA7HcPwjDGuLORn+L/tSQU5XE7iW1qQlDbOWjv2Q1JpXB2geBnQURNAfSe+pKB6dXQ+E
	jcaeaZCiCk/tOxSm6YMFIKgD1h2hi73g2ELoPQspRqYcx8FD3SfzDl/PxKv7h4YUwce+
	MajA==
X-Gm-Message-State: AKGB3mJFAqbSaNnQTgrxlseGrx9eTVeD/pzKRJUeee8nYALxrRun/L43
	tvlEqsl5nad/GLmJJCAORWrzLQ0s
X-Google-Smtp-Source: ACJfBou2m0Ai5HYszyDq0Kg7u8UTW9WTg/YeiBGGNTMbPcf+Qf/QfxhoWjcdK4mDQkiwcdlABv3+9g==
X-Received: by 10.28.20.69 with SMTP id 66mr14206235wmu.97.1515604134175;
	Wed, 10 Jan 2018 09:08:54 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id p32sm6590075wrc.9.2018.01.10.09.08.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Jan 2018 09:08:53 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jan 2018 17:08:50 +0000
Message-Id: <20180110170850.17345-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] machine-sdk: use gettext for libintl, not mingw-runtime
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
X-List-Received-Date: Wed, 10 Jan 2018 17:08:56 -0000

The MinGW runtime doesn't provide libintl, so set gettext as the preferred
provider for libintl.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 conf/machine-sdk/i686-mingw32.conf   | 3 +--
 conf/machine-sdk/x86_64-mingw32.conf | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index d426fe3..cb08bee 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -6,7 +6,7 @@ GCCTHREADS_mingw32 = "win32"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
 
 USE_NLS_mingw32 = "no"
@@ -33,4 +33,3 @@ BB_HASHBASE_WHITELIST_append = " WINDRES RC"
 
 # Needed to override no-static-libs.inc
 DISABLE_STATIC_mingw32 = ""
-
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index b9706f9..8786413 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -6,7 +6,7 @@ GCCTHREADS_mingw32 = "win32"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
 
 USE_NLS_mingw32 = "no"
@@ -33,4 +33,3 @@ BB_HASHBASE_WHITELIST_append = " WINDRES RC"
 
 # Needed to override no-static-libs.inc
 DISABLE_STATIC_mingw32 = ""
-
-- 
2.11.0


