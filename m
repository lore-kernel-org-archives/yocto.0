Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53E4FE00AD1; Tue,  6 Nov 2018 04:25:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C50E00A6B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 04:25:07 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id o15-v6so9633862wrv.4
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 04:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=iLYUm0mJvxGepZrsP7QYSb+lAWbif7Bbmpw4AkrGY+I=;
	b=jdwlV4vrpV24Ax6c5eGfuUvym5A2amKOy0GeOtVp4d1a/lvVhh28WrCAQHPZTm+EYt
	L/JCYsEbVCoSPMk021s43oSGHnXZn5mOHy3vHuqypIhZWkHFbG/2GGII9RIl3YJg0Nb9
	f60CCqhCuyzYbAvbdfTg/Bui3RPWsEm2knWfYG77JC4rN427YZOSo0DPVTZN0+2EsCuH
	Lb83JUjJwlAX9KBSjm0gDvy/HC91JF7L0ljaJQH5lAj9pj4wPNrctLzGa2ylnhTBAlCt
	OTwMZ85V5Mr18OPFrzlJlOcakUvaa8iBBBagGLDF8WnsLu1IpFD5mR5z0zQiKthUfjrm
	fKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=iLYUm0mJvxGepZrsP7QYSb+lAWbif7Bbmpw4AkrGY+I=;
	b=Vj+ZpdHUqJeZvVsckIR4k9HQ6meDk8Y9Ulvk7oL9SNlT5Z8WSkhMHt23/LhaJarcKL
	+0LwjUkRK6OAabEupvHu1x8vzWye9OkaQaHrEijaNqNNE7DKGICEXnMDO1MzvM3pR0fX
	pdcNRfqhG8lstgrZ1FgiddWIv7PAOLKbMdHEaIBYcOL7wUuPZWvEkDhXDKIi/2oIAdfb
	9qBOLJzQZhyDC+nQ5LAgbv+3fm/TlIcCIuIqMzNNH9Qb9XnDvDEbGKXbEcWpqnCuD25m
	Fo62nMYzIRFaYI2FL6t0dQyaeWVaAPZjjkv12C4n9rfGkZ7SU1zJXozHOmfWVruVgvie
	fBDA==
X-Gm-Message-State: AGRZ1gKmsWqChDrKvmBq3THBsjpLkrgfh1vPdssoC5AmqXL6xDIM8Lst
	XCgaGI0hkEagBFJwzjuy1XxVvsjNzLo=
X-Google-Smtp-Source: AJdET5dwQsDvekgv0bfUUY+ClUJ5l68ZQw4nmpliajSRjuv1FL9AQj9lfG0ggVCyBLoCn2LiPcIWdg==
X-Received: by 2002:adf:a2cc:: with SMTP id
	t12-v6mr22734558wra.100.1541507106976; 
	Tue, 06 Nov 2018 04:25:06 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	r73-v6sm2024046wmb.37.2018.11.06.04.25.06
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 04:25:06 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Nov 2018 12:25:03 +0000
Message-Id: <20181106122503.24728-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH pseudo] Makefile: add -lm when linking to sqlite3
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
X-List-Received-Date: Tue, 06 Nov 2018 12:25:09 -0000

If sqlite3 is built with FTS5 then it needs log() from libm.so.  This is pulled
in automatically when dynamically linking as usual, or if static linking via
pkg-config. However as pseudo will link directly to libsqlite3.a this potential
linkage is lost and the build will fail with undefined symbols.

Solve this by always linking to libm.
---
 Makefile.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile.in b/Makefile.in
index ad6541b..28b5ecb 100644
--- a/Makefile.in
+++ b/Makefile.in
@@ -73,7 +73,7 @@ WRAPOBJS=pseudo_wrappers.o
 
 # needed for anything that links with pseduo_client.o, pretty much
 CLIENT_LDFLAGS=-ldl -lpthread
-DB_LDFLAGS=@SQLITE_LDARG@ -lpthread
+DB_LDFLAGS=@SQLITE_LDARG@ -lpthread -lm
 
 PSEUDO=$(BIN)/pseudo
 PSEUDODB=$(BIN)/pseudodb
-- 
2.11.0


