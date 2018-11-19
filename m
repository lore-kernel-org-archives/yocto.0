Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86DEE00C90; Mon, 19 Nov 2018 13:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AD6E00C80
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:09 -0800 (PST)
Received: by mail-it1-f194.google.com with SMTP id m15so264615itl.4
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=77AW4MQRwRwbOiDGaXDzI588xh3fHDxcdtz2UarShrA=;
	b=HcsoAqc2tcTivNUVo/DaVKkibOHmNnccBDV12TwqBjogJjy7sXdnrYSz9/hh1nF3qg
	fOE7z1fBCCbMxdGHRDtd4p4E544PKoEj29K6SzUAtBt53rhIGCC4Pw/CtNSPw+UuM78m
	Wi3dfLIQoiOLCR6kdwLQhpiQtKSJI5hXDYkEYIyMLOSmlv1vDAfBVPMWB8k8G+CgBVVs
	OruzH4MovfFCi9Pjgl5KmbxcgD1Z3vbWBuTa5OI2FuixBn+6TXcK65H112J/h+vsnALn
	Q0+qMM36TnNWQt1GnUqo1oDEKZvk7QODLqCw3BzEJjp5XyrhJ3grvGkvYBF59SG4OEnI
	wiCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=77AW4MQRwRwbOiDGaXDzI588xh3fHDxcdtz2UarShrA=;
	b=HCOzxlHxnIWNEJNVQbgScXV0R3mDcioecoKqfgA/vbwe/93Tj/W6l/x6KQ1dyg1mvQ
	zGP+U1y2wPwK46LlCI45XUtN1exVUaBv56ERd/bywxk0Xc5/mpWqUmefj/YQO4xXT35U
	y1X1cNz4KM+rbRWQbV2EjVZroBiJYczbr52WlWW5OC+k0FPXgHO7u44kaWBiQZB7Y4Xu
	zP4XzJEGsbZ+DmZSgcip0RoGzncKddMS8YZDil4uearxOXk4d65T0Ayhv0nK7PIEdfyu
	3wsHb2DHOqBfEtlsHgZrodep0DKaC/pPOHDEVguSV+JQxtXIxoWBio2+jMdioUOKiB2S
	Nkfw==
X-Gm-Message-State: AGRZ1gIfj7IQff+pqXIYtcqsuc3kUCcs09H2T0Qk1dWYkOksZ89H/nCV
	AB5ch/wdK6ncTFt/1yKh+4tLxx+3tHs=
X-Google-Smtp-Source: AJdET5eDxKhps0k/eptxPHDBNwwSkFy8aIEauMWOxctMoh9WM24MD4FCpGaxC9ABflA8Txlk4jaa9w==
X-Received: by 2002:a02:23c5:: with SMTP id
	u188-v6mr21847469jau.90.1542662348523; 
	Mon, 19 Nov 2018 13:19:08 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	d199sm1195542itd.31.2018.11.19.13.19.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 19 Nov 2018 13:19:05 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 15:17:51 -0600
Message-Id: <20181119211752.18963-5-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181119211752.18963-1-JPEWhacker@gmail.com>
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
	<20181119211752.18963-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2 4/5] classes/toolchain-scripts-mingw32: Ensure exit code is success
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
X-List-Received-Date: Mon, 19 Nov 2018 21:19:10 -0000
Content-Transfer-Encoding: 8bit

The "set" command in Windows has some unfortunate behaviors that can
frequently make it look like the toolchain script had an error. This
makes automated testing of the SDK more difficult, so add a line to the
environment setup script that ensures the script exits with success.

[YOCTO #13020]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index a64f5f5..32493d7 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -81,6 +81,17 @@ toolchain_shared_env_script_sdkmingw32 () {
    FOR %%x IN (%OECORE_NATIVE_SYSROOT%\\environment-setup.d\\*.bat) DO call "%%x"
 )
 EOF
+
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
 }
 
 toolchain_create_sdk_siteconfig_append_sdkmingw32 () {
-- 
2.19.1


