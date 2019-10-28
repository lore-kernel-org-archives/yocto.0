Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A730E00D35; Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B570E00AAB
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id p6so11270782iod.7
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=k0TqhvpblTwRlugEdxlafJLNlOAv25qJbS8O8A1PjLk=;
	b=OwVbYlZAO85ax36gc1tmkQdVUpKEKe/M+N1BHRByFu6MUVfPlh55PBFAwmPhTAhMDz
	OV01NsVKJKkaMu9EPZShPKtXmDb2/fZf8WBJEfgD310rjqaL2IXajQ7hqwb/4mQxnZlA
	DP2YcQUI85xe0jvL3wFM6EWYJYDIqP106wstKSeUuNU4bDV3R4mE3nDvbKDWjDXa2DYT
	l615VKljRwuUzTmy3CDd37vTLu6Sm6stucApI5kpUyxDQuyURdSYhSSXwy6DTrcJIeEp
	DjP71d0+7E4KnjdmDGQRJwZv33vZPBrJANbhs8W9QZgxaNlwrO3ifCjy646OgzBwOUeu
	bufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=k0TqhvpblTwRlugEdxlafJLNlOAv25qJbS8O8A1PjLk=;
	b=jYv3h+8EaC8pN455MhT7U8CgIh4WsZJFPcUcOgvZ+sQjK3LMESEqpHE+gjFsO9H6OQ
	J7c2uzecO3J4YRDkHlmIsVCqZkhOOm0Hw6DTWNqXoQ8PMHf1+LxBJMz+qVTViVt2R/yK
	SlPDI/qXRIXhSq0OFcWU3iwD5H9G/HY+Rn8GHvSGSKjvV4xrPjC99hgWahoyGlGUeK9q
	EnXLzR+ThkmGJ91QxSoIyGrXrS3C35IVl5s54Ma0fcy6SHrCQfajqR8Qn4aKYW3rX7UL
	MtVt1VbObH9YCZxe9yqc94jrztYYxxKdF5CATfJkyd1ShzlnhWgZsM7t9osO35M19r6G
	u6MQ==
X-Gm-Message-State: APjAAAXOeknFGrPe1C42twX9cSF4azCrg0Gce3kNUC9MIdJC7NQTA2Tp
	R2RZpNT+F0cuYWnv9+44n0b7D7jx2VA=
X-Google-Smtp-Source: APXvYqz2rwcLTVQgueRrs7+krU2uEr5KoXMM5ErIvwy4gK1xsVVlFIwjtWbabwm6AnpLaIoOTOLdpw==
X-Received: by 2002:a05:6638:928:: with SMTP id
	8mr17428754jak.124.1572278302008; 
	Mon, 28 Oct 2019 08:58:22 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	l23sm1085183ion.76.2019.10.28.08.58.20
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 28 Oct 2019 08:58:21 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Mon, 28 Oct 2019 10:58:05 -0500
Message-Id: <20191028155807.9310-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 1/3] libxml2: Remove python support
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
X-List-Received-Date: Mon, 28 Oct 2019 15:58:23 -0000
Content-Transfer-Encoding: 8bit

Python doesn't cross compile for MinGW, so remove it as a dependency
from the mingw32 nativesdk build

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-core/libxml/libxml2_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-core/libxml/libxml2_%.bbappend

diff --git a/recipes-core/libxml/libxml2_%.bbappend b/recipes-core/libxml/libxml2_%.bbappend
new file mode 100644
index 0000000..2c9f206
--- /dev/null
+++ b/recipes-core/libxml/libxml2_%.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG_remove_class-nativesdk_mingw32 = "python"
-- 
2.21.0


