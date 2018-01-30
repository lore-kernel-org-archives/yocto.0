Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C64ECE00E54; Tue, 30 Jan 2018 07:29:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7BE2E006D3
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 07:29:00 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id s5so11615290wra.0
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 07:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=UCb1gjLaNtFdKtthVF9LMouN9nISQljlQNQNHFgl57E=;
	b=W4ih6c9klYHshmLnC8cXx5sIpAUp/vKc2C/0cqgLGD5fVDITWyCX/hnP4vbjCBcMZe
	gzMm9HxLWUq/JVuAV0OEuqFDk+uXN0jl/+GkMMftDtXvE7UUS/0iyJ2V2WOWiCrtvrel
	GLJ/b3zGNBOlNRi2NJ0I3grV5RCm1i6JLhR94BNOvQQFc7IfUQg/juldChLYerZkYBR/
	ksu3ymlWHSN5UNidopaHgFvoNuDqH6UzTK6BZI+CsPF0NwGMc7HJrtIsrfGhiUEGhy+0
	9t4VU7PvJ/u1tO8m5cxcu5MxMXIVKbL4Jy59k/DRBGUMF55YjH3xRac2i2h9EEXxWW4O
	3Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=UCb1gjLaNtFdKtthVF9LMouN9nISQljlQNQNHFgl57E=;
	b=uHFoLRZMQneBn3kDPvjIurdBn2scOJBelOfcHOrRAExqZAcMu8USwAEnWyf7T9PcdD
	7YhAD81ltWnU4O4dvZKtEyfT9PFd4Z2vylE4S4lJkl5CJFbmmYlqn4Y2kcr3nZW57RS0
	F7DKXDZowVs9zP2ag6RiOlFn7MQ+zRPBsKeV37zexjc/rDvHKdz77i5su1MUc/LwWBtg
	livcpxO9atcqDI62F2GqdyW9vS0ro+1rPZWQBYhwnGUTwGJ0/S3hVGIOqYSFa0viXils
	QUbhJAHVyj/BEqAQwb3DnYG/2htqwUL+sKi4znA+6U6gxNglGRey2KafI4j3SZWm6On8
	0Obw==
X-Gm-Message-State: AKwxytc9c+i5/is6quvToXOEyQCR4OTTTcV1SvRpvVRom/NR04zQxmwK
	HAGK4RwsRKbXWeN2yWjvhIdzA0oA
X-Google-Smtp-Source: AH8x225ZHk2+BZcerecQU21o3yibyml5dAuF6P5vtAzhiUI72yG7MZCFVJBRABvhDq+OBMwlcGtBxA==
X-Received: by 10.223.142.164 with SMTP id q33mr14295906wrb.267.1517326138652; 
	Tue, 30 Jan 2018 07:28:58 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	v186sm12604518wmf.17.2018.01.30.07.28.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jan 2018 07:28:57 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jan 2018 15:28:54 +0000
Message-Id: <20180130152854.17612-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] gcc-crosssdk: use _remove instead of oe.utils.str_filter_out
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
X-List-Received-Date: Tue, 30 Jan 2018 15:29:01 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
index d52a16b..3411946 100644
--- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
+++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
@@ -1,4 +1,3 @@
-EXTRA_OECONF_mingw32 := "${@oe.utils.str_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
 PACKAGECONFIG_CONFARGS ?= ""
-EXTRA_OECONF_remove_mingw32 = "--enable-initfini-array"
+EXTRA_OECONF_remove_mingw32 = "--enable-initfini-array --with-linker-hash-style=${LINKER_HASH_STYLE}"
 EXTRA_OECONF_append_mingw32 = " --disable-initfini-array"
-- 
2.11.0


