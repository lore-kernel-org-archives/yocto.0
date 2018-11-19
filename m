Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88B7FE00C82; Mon, 19 Nov 2018 13:19:03 -0800 (PST)
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
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B893E00C59
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:02 -0800 (PST)
Received: by mail-io1-f65.google.com with SMTP id n9so3538454ioh.7
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=K8yqxc4j3iGz4jo7oezi9uKiVnllQ90oqXi4AWxOJ3c=;
	b=aId9wkaRp8IPysXeHRRc6Z77PeOMGo4POzX2wrqQCbo95cI4Qfj94eWBhF+/3dalIb
	59u7by9dCbls0j0kmWMncLRvILes10p7AoTCXP8rmcPuZeIAsdmccjIsR0lkO6zteZcr
	gYEJ7kiwvVXJ+9kCm6dehaCiytsmKjpT80Y9kvMDbzTzeDwwpka3h3PH90vDXNTF0s4L
	XZBmb0UttpFyo4hPteSzSbwtpwZ0i4k3jG/YXwdTCqzbQ+jfd8HVbWhk+twWdxemLxzH
	IFccHc46HeVdD8F+KC3kEcdFXAHnAUouDKHFqSEuelUHQ2eK0xUWQbeVSXtaqSw1iyFi
	lrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=K8yqxc4j3iGz4jo7oezi9uKiVnllQ90oqXi4AWxOJ3c=;
	b=neZu25l3TKW/P/Dh28HUakPZxmu4xtqrUQpgbbUZb5vo7VonI1R7EMKMFAUiSZzBU8
	CgoVlsLZyASD3WybtrVevDmgZto8EYDdgHGKYX90/AHxVkycc4ujI8hRA3a3H10hWska
	YLTRpjrU21YuHsRZOap79Gv2RGqKTusL9b422KW9zVfEQqDLPkHcgn8OJE1s/IUKcX9X
	PS10OkGv0FSF/GUVVKfNbOSVl2EqyOe32V7kzMmYk18VJRePbxAL27YViDQM4+uyQTvD
	IVCR/1a/Nw73DM2ou+aGh6yKd8HlcD0dcy+0dbVg9gBlUc5ypXZjoWthu2hngMIA2wz8
	bckQ==
X-Gm-Message-State: AA+aEWb2XzZl6uQtZpIa2yUwtHl5GQLyVme9FK8hmkX7Y8L1Hi7yNIL5
	fM4i+8NV3jAifJEf+egJgivfS/Ep0Bo=
X-Google-Smtp-Source: AFSGD/Unnv6QlfHXx9fIV61p7Yc1Qe1D4LPIx0Dw5vmQH5sEfRRSBieHuowUpNfvKLceuQwpNZhbHA==
X-Received: by 2002:a6b:e919:: with SMTP id u25mr12618243iof.132.1542662342213;
	Mon, 19 Nov 2018 13:19:02 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	d199sm1195542itd.31.2018.11.19.13.18.58
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 19 Nov 2018 13:18:59 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 15:17:50 -0600
Message-Id: <20181119211752.18963-4-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181119211752.18963-1-JPEWhacker@gmail.com>
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
	<20181119211752.18963-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2 3/5] classes/toolchain-scripts-mingw32: Update variables
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
X-List-Received-Date: Mon, 19 Nov 2018 21:19:03 -0000
Content-Transfer-Encoding: 8bit

Updates the variables configured by the toolchain script to match the
oe-core class. This combines the changes from:

0b5f1b0430 ("toolchain-scripts: put TARGET_ARCH and TARGET_OS into environment")
47160a8c51 ("cmake: fix linking in multilib SDKs")
668f56bb24 ("toolchain-scripts: drop PYTHONHOME")
81f126f4a8 ("toolchain-scripts.bbclass: Use PYTHONPATH instead of PYTHONHOME")

[YOCTO #13020]

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index b996a3e..a64f5f5 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -29,7 +29,9 @@ toolchain_create_sdk_env_script_sdkmingw32 () {
 	echo "set OECORE_NATIVE_SYSROOT=$sdkpathnative" >> $script
 	echo 'set OECORE_TARGET_SYSROOT=%SDKTARGETSYSROOT%' >> $script
 	echo "set OECORE_ACLOCAL_OPTS=-I $sdkpathnative/usr/share/aclocal" >> $script
-	echo "set PYTHONHOME=$sdkpathnative$prefix" >> $script
+	echo 'set OECORE_BASELIB=${baselib}' >> $script
+	echo 'set OECORE_TARGET_ARCH=${TARGET_ARCH}' >> $script
+	echo 'set OECORE_TARGET_OS=${TARGET_OS}' >> $script
 
 	toolchain_shared_env_script
 
-- 
2.19.1


