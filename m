Return-Path: <ste.lendl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66744E0095C; Thu, 15 Nov 2018 07:02:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ste.lendl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17086E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 07:02:28 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id u9-v6so21569024wrr.0
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 07:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=beENPyLPqUTXrE7zsNQkPWipjPLCYURxSqei+dCHlH0=;
	b=c8o63XOUQjbDvxyRcQ1XzfC4qDMkgZpos9CIW/Am2XHkyWIL2Spo5SYb4Ct3F59DfO
	i1lKFehdxZGaWX32Gh08Sjs2Iqn45nHrn82BF9tQnIxs4nD/TY/vYab8gVkwmYri7HNz
	WdNt6yiwB0C1DjeEDVn8yluKPkxaKIvgdPekTZXgf0MdNw+ZJT/Ara1NBEVdEuQvBaUK
	IQGDNjy/zUE2kG6vo7ucSGZoa7YIyNn3hxYSWQAmC54hOijjHSkOA3zCNp1qC7jdQ1+K
	3v0FXvZUf0MM1Wl1W87cGQYj4NE3If0gyqL6odaSSucvkVC4eomZcMCZt3Mtd8fR238S
	bUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=beENPyLPqUTXrE7zsNQkPWipjPLCYURxSqei+dCHlH0=;
	b=Nfgkvgosk5CMtdoGutwjyYtTt6Co7fTbhzfTy8i5+oLHWxClKUElkB9ZfDWITq76Cv
	cU9zgagjbmXofWMeVeNvxsN+mvrEeSEOSs2GkTYEq/K3LaJK+jk4qZIp7W4P/VEDBBTL
	9xSNl6Bfc9bm7SMwdUoe334SGPh64ISmPCy1q8pVmy1Im+ndCYjMOg8AVbjJ71CBgyfx
	T3vy/fo8XPRkFlHjoNtaf0GGK+8OlOuHqOv3EGyuN6s6Q8Hb3km9H/iscreq5v4qBjAk
	bqWtyzU/GVBetfUEEJ9i3tXYZ4nZA2S2hadtHDIpkaJY33WURvMux8DhilclhaCac7lJ
	NaXg==
X-Gm-Message-State: AGRZ1gJx5ZZXMJ2JqYJHvh2eMBDQsBN4Zk6LZwrrQ1yzkMmXxVVpBbTh
	C8/bt1dYsASOAisvCrzFZiEP4Zwy4tw=
X-Google-Smtp-Source: AJdET5f25N8NanOJxZPFv6pqdmFUmqzqj/YUvyBNWc11igG1V8Z5JMn+THpu1Gl0gHk4R/B4Y0CHug==
X-Received: by 2002:adf:c084:: with SMTP id
	d4-v6mr5994391wrf.268.1542294147258; 
	Thu, 15 Nov 2018 07:02:27 -0800 (PST)
Received: from localhost ([212.69.186.40]) by smtp.gmail.com with ESMTPSA id
	e66-v6sm39887131wmf.40.2018.11.15.07.02.24
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Nov 2018 07:02:25 -0800 (PST)
From: Stefan Lendl <ste.lendl@gmail.com>
X-Google-Original-From: Stefan Lendl <sll@mission-embedded.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 16:02:18 +0100
Message-Id: <20181115150218.23414-1-sll@mission-embedded.com>
X-Mailer: git-send-email 2.14.5
Cc: Stefan Lendl <ste.lendl@gmail.com>
Subject: [meta-security][PATCH][sumo] Use git fetcher for lynis to fetch older versions
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
X-List-Received-Date: Thu, 15 Nov 2018 15:02:30 -0000

From: Stefan Lendl <ste.lendl@gmail.com>

---
 meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
index c25b804..38149a3 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
@@ -6,12 +6,8 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
-SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
-
-S = "${WORKDIR}/${BPN}"
+SRC_URI = "git://github.com/CISOfy/Lynis.git;protocol=https;tag=${PV}"
+S = "${WORKDIR}/git"
 
 inherit autotools-brokensep
 
-- 
2.14.5


