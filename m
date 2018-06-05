Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CA9CE01470; Tue,  5 Jun 2018 06:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5862BE011F8
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 06:22:40 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id h10-v6so2407422wrq.8
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=DHbnVbxJ7w8FhvzmvAiZ0Vfmh1Y2uK02rOITd0g4c4Q=;
	b=s5GEsd68ib5u0ZaCwWEx7ZHdD4QevAx/u8PMPOepMljuXzO/C6YqAGHg8ZN/KJXtKl
	d33598NExQEVtoRgpDzCwtx3dczxzZAlzCawArAQCGApgVQ+cSHE3RMC2YvIEa6iJVtL
	GIXKwdq0dPOBser6G7WVjw95qmdv9eR8qWQ143n6hCI0e62oRMhNAl8X47vCXx9OtOjW
	Yb3tu36HbpHsxY7gKf7cb6PEeylfUp8ICkfUkhOqBiCGvRUrdfwfha/a44OlqSVuE1fJ
	HKcjMbWfdLFcxrTeZJlFLQHuA4nxE0U/Bb/8EQK46cINRbq5HKoIb3S0C7KivtWZ1Jek
	Wn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=DHbnVbxJ7w8FhvzmvAiZ0Vfmh1Y2uK02rOITd0g4c4Q=;
	b=AH8a8sf6HeMw7kfAVNFDZND+aedN5z29LzuhGcPCXOBQ/20+8mFt4VkqmF+43WiJ6k
	43L/uhtPujcRhWK/TOPP5iDTNdmzjjrjBeQxkUHnFii6NqUm2yVKLhZnd9A7jLS5B/Et
	noJXS+c1puNlCElyki8X3TN2ASJRsEsmZNUqC3R4Gwmcrbx7V1OAo+WzmtgG7XsoXmjf
	AlmA72HAwSzZNGOTBYCwB4O3NvE6GbJjh9oPm0ca3uGmghfetMBU0r7nqyoMF6uTceb1
	8WvN+3XE9oSFqmBeTbukFc0d+0JNKeIQ0m7wl0Yo0NfalkPTMcEot7MSsIfht1+yNUy5
	OQPw==
X-Gm-Message-State: ALKqPwdWvma2tb587pSPI0HsFYLKx2qfJLq3FXNT/lgpPNRS0A8BLtGt
	HS9UgJ6I4c2Lh1qmbytbfkT5XfFu
X-Google-Smtp-Source: ADUXVKL2NOZaHPTWVMZgO7G9auuQycf1xOkh0Mbk41/G6JPnDxR3Qa+CQn1zDHk1JvDf3sSCa+Lqwg==
X-Received: by 2002:adf:8650:: with SMTP id
	16-v6mr13434109wrw.73.1528204958982; 
	Tue, 05 Jun 2018 06:22:38 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	b66-v6sm2185154wma.48.2018.06.05.06.22.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Jun 2018 06:22:38 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jun 2018 14:22:34 +0100
Message-Id: <20180605132234.15759-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] libsdl2: add bbappend to fix build with mingw
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
X-List-Received-Date: Tue, 05 Jun 2018 13:22:41 -0000

We need to disable X11 as we do with libsdl1, and also convince libtool to stop
trying to be clever so the build doesn't break.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-graphics/libsdl2/libsdl2_%.bbappend | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-graphics/libsdl2/libsdl2_%.bbappend

diff --git a/recipes-graphics/libsdl2/libsdl2_%.bbappend b/recipes-graphics/libsdl2/libsdl2_%.bbappend
new file mode 100644
index 0000000..97fd96e
--- /dev/null
+++ b/recipes-graphics/libsdl2/libsdl2_%.bbappend
@@ -0,0 +1,10 @@
+PACKAGECONFIG_remove_mingw32_class-nativesdk = "x11"
+
+# libtool doesn't think it can link windres output (COFF) with libtool objects
+# (COFF) , but it can.  This might be because file misidentifies version.o:
+#
+# version.o: Targa image data - Map (0) 1 x 65536 x 0 +862 "\004\001.rsrc"
+#
+# Telling libtool to be dumb and just pass the input to the underlying tools
+# works fine.
+EXTRA_OECONF_append_mingw32 = " lt_cv_deplibs_check_method=pass_all"
-- 
2.11.0


