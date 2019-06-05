Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93ABAE00D63; Wed,  5 Jun 2019 00:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6B5E00D5C
	for <yocto@lists.yoctoproject.org>;
	Wed,  5 Jun 2019 00:55:52 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id n9so5970867wru.0
	for <yocto@lists.yoctoproject.org>;
	Wed, 05 Jun 2019 00:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=NNWkR/pK4ZSirIPoKsqaui8+SuhCzXZA7ZD2P87ZM4E=;
	b=M/jFEMvUI7xxWjh1PbLcJKbQSkKzB1hkBwnKrvLCk7BERFobWJgZaT3002YOTKichn
	Ddv+Frq1j0uUdfTYcF14lLZTb7u8PMw98TIqtYGvZMnhuw8e7d4Ac5Q8ve/LXlhoek+8
	0qApn9iJsoD5an/cRZUpfI5UfH5CCpzMqce8HpdUmWB64RZEzcrLHpUwKby4WFdJOejR
	YMDZJ2TznBJiMQ2vB46lp+esLtuCoUwDTiVfuIM3VdKF6PBowwkZdpS88zoaiC30OJtf
	x2dFA6ZJccvf8wHElvlEo7thjtMENovfn6Vs5RNO8pfXMFKRc3Jpkp8AvvY5JMpjtvHT
	/9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=NNWkR/pK4ZSirIPoKsqaui8+SuhCzXZA7ZD2P87ZM4E=;
	b=UZqTpUGxgOH15lniYCWwbJtv/+a840c8bru8anDA+3Ho8wr12lyhvpsQIPhCIKqjL+
	/y42E5HNoCgZelFobzHFdaKfTWm1jG30KX7KzV4TRXWR686rxMQxhoKzHqm1dasvDes+
	JgiAe1VyVIEPIKjAnRPOVF9zGj/mvFeAbfs7ddtD1KvDzx/Eaf+TRkiFDCcTFGh09BYZ
	Dhic4xTZyq9DqajNRvw/sEsOWVIEAinHkU/XfLyKQ6rDVk2VG2iLycBYUgTLcV1cF4cJ
	qheR+ni78Rs/kzFaQOmn+5mNQvRtKdbpFBs8/YukUDlpShQd1uXOOhgv7t4eRvAScBcD
	67fw==
X-Gm-Message-State: APjAAAV87A/cDaSQkMv/9seoG8exTH3rBziqzvYhhdyVNjqvkNXSrozi
	oPOkUHuQ8o0npwo3U3G6zY7B1Amd
X-Google-Smtp-Source: APXvYqz2d6mipoAt7FCLETXsQ+TVPwibHG9JA9sCOpvhCy0TMJsLa5GjamJqJkJXGsaS3lg0jYvOhQ==
X-Received: by 2002:adf:e30d:: with SMTP id b13mr6229882wrj.246.1559721351039; 
	Wed, 05 Jun 2019 00:55:51 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id h1sm1943308wrt.20.2019.06.05.00.55.50
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 05 Jun 2019 00:55:50 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Wed,  5 Jun 2019 07:56:02 +0000
Message-Id: <20190605075602.599-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-gplv2][PATCH] elfutils: ignore new error from gcc-9
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
X-List-Received-Date: Wed, 05 Jun 2019 07:55:53 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-devtools/elfutils/elfutils_0.148.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index a03b74e..1f07a28 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -57,6 +57,10 @@ SRC_URI += "\
 "
 inherit autotools gettext
 
+# There is a fix in 0.175 version (https://sourceware.org/bugzilla/show_bug.cgi?id=23884)
+# but 0.175 has different license, so to be safe don't backport the fix, just ignore the issue
+CFLAGS += "-Wno-error=missing-attributes"
+
 EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
 EXTRA_OECONF_append_class-native = " --without-bzlib"
 EXTRA_OECONF_append_libc-uclibc = " --enable-uclibc"
-- 
2.17.1


