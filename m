Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 375B8E00E04; Mon, 26 Feb 2018 06:45:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6335AE0074C
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 06:45:22 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id n7so21494160wrn.5
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 06:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=8KS7gnZO/Xjk4QnnThaQKw1cbxtZqEgiDMgc+D+uuU0=;
	b=k+DmL4siDLM20OiRuS8A2+O2bblq8j6L7duicEi3Kzgrq0CgrAhE8zyo/RTqxxhEP5
	NHcFMVuqT1uNa/WJHP5anPoJ4wNfu1kuELAwXovGll7VY2TspP+qQaSiXJkQTULvIczc
	7IOcBg8WfQuh4gBqynnh3N1qNDTsEhTJvr1VQr5B/YGOu6y3AxUqxOVXuIFOv1nJn0/U
	1PP4Wzsr3S4vXoP7hDOEGuyWmPJUBP8j6Sc8kywF8NkLVQeV1cKeUa9DbcoUOLd5M9Ef
	QI1kLEmlaQ4tOzPS7jeQXocwVheam/uFSUmWrs9nuSXESrmKpocZ72uVzTkRXVa4hy9W
	YAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8KS7gnZO/Xjk4QnnThaQKw1cbxtZqEgiDMgc+D+uuU0=;
	b=lopUSSIQVJ9pZZlWwyfA4NcfvIJPgwHmvLX96outkKdrz/BoMvXWwRf270yKvc8+1+
	vbvG/7Zy6WSDrhTXBN8Gmzskvl8AimGZBbQvqR2lOv90/KW+ZH0PwkksA5Q5Ten6pv6m
	tIm91N4fZJk3T5mfC2hGebzR3/wQBqQqNwByfoRK4MiezUuyKnS5ACS9ZEbWCG24BZeO
	5wTKoBPuxbxQDo6xjcT8KUcTGsw/YlDGVGE8pSPsXLh370l2XfsjSBWAb4guAkVYj37e
	L1KIDzz5ht0VvJAKt3MOi2nv8lH3rxn2sWfAyKDpaqLvORRj+kDc/p8JWEdwD6sDX75v
	7LQQ==
X-Gm-Message-State: APf1xPBd95WDxl9rwX0rh8Lp+jacOQ+oACwkOhhg5xsN80PC/Ji43aFw
	D3/JWTnUJlVaGuDsIwVlbvvDBRNI
X-Google-Smtp-Source: AH8x2277m13tvmkm6fE4xECXDgVefcodlp0p/A4sSnUTQ2/POIXof8ma5E9wxA82ZWnr1YdZcaF+Xg==
X-Received: by 10.223.152.141 with SMTP id w13mr9830178wrb.12.1519656321800;
	Mon, 26 Feb 2018 06:45:21 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id c1sm8068418wre.10.2018.02.26.06.45.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Feb 2018 06:45:20 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Feb 2018 14:45:17 +0000
Message-Id: <20180226144517.7931-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] binutils: generalise version wildcard
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
X-List-Received-Date: Mon, 26 Feb 2018 14:45:24 -0000

Don't be overly specific by demanding 2.2%, 2.% is sufficient as this bbappend
simply changes some options.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 ...-cross-canadian_2.2%.bbappend => binutils-cross-canadian_2.%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/binutils/{binutils-cross-canadian_2.2%.bbappend => binutils-cross-canadian_2.%.bbappend} (100%)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
similarity index 100%
rename from recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
rename to recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
-- 
2.11.0


