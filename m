Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A335E00D43; Tue,  7 May 2019 12:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C91E00C49
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 12:04:52 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id l132so4179143pfc.8
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 12:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=cYUqFLQSTreu03J/LRUBd3UJgq4UBSSbOoeM32SrQp4=;
	b=sko94tJJm9/oUrweNmIY4wXSUBwpRjAxJck7Gc2tLUiU0tYiCO43OTZWfW84Yn1oQc
	m2118Jet34wMAPoLQz/mpMomF8THCNlM36HvW/rSXMyIaN694cTiLZAhdzBhmHSDMmh+
	OIghyrCJsTot6FfslZkYW8oHznpHhP1vdFMROOP5IoOFFfFXAk31rK9ktIMrAWTG1jqZ
	roitecGDxUM8yW41bH0EsLHrsw5ODhhe3IoGciYuNkoqHl+D/opYfpyfCEoBVaKapjeq
	cfeSamZdIlApteIc6G99zYPbiyGJgpbEo9vpIo4zEe6DTIVUMFp5FWR3KautKT3AzWrU
	ijCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=cYUqFLQSTreu03J/LRUBd3UJgq4UBSSbOoeM32SrQp4=;
	b=FXUaSjTORGrwfBm6V7gFontO7T9sH57CrfNpKx5tyXuerxzpJvRjFSlob3d95Nsgsq
	lNqVKPC8w7G0NrSIUYd5RUNW76WKEDtm1JSThz4dCIbdTN33CFNxFNjFtNQ7KUqASrW5
	tzetjNY+V8gvJ3wZYqs1tAHww5KnB5s8BbWku+ib3zgyaHu9ZqXd+waMx1L1OlpQhXJC
	SMM/N9LxVYrRZYwfYG2JKrzEWYUB1F38XnCDTPnGVMIil1rHvIHRgqCweEx3l/g2f6r0
	PoJLazYRp3lJ87Fm9NiEEiaKcQ57y1fg0ZM6UHa0ZYMoGvTdO7LcG2yjTPzsVjEOi2aw
	NayQ==
X-Gm-Message-State: APjAAAVhk/adShXbDhBKllEGTZxZaiQZUEY0hCSdkBSUfErbltD5sg3X
	KVlc7t0Xm2u8zu6O5NKNCDL+7I28
X-Google-Smtp-Source: APXvYqzs3oLYvmSd3kNmnaIFhna+kBmyFcfbUzEjskNd4E6rtkVv0o5mKg0r5o4HdMkwRp/oBKIvEw==
X-Received: by 2002:a65:4489:: with SMTP id l9mr40417512pgq.1.1557255892147;
	Tue, 07 May 2019 12:04:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x30sm1395161pgl.76.2019.05.07.12.04.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 May 2019 12:04:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2019 12:04:49 -0700
Message-Id: <20190507190450.19229-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] smack: move patch to smack dir
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
X-List-Received-Date: Tue, 07 May 2019 19:04:53 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/{files => smack}/run-ptest                      | 0
 .../smack/{files => smack}/smack_generator_make_fixup.patch       | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-mac/smack/{files => smack}/run-ptest (100%)
 rename recipes-mac/smack/{files => smack}/smack_generator_make_fixup.patch (100%)

diff --git a/recipes-mac/smack/files/run-ptest b/recipes-mac/smack/smack/run-ptest
similarity index 100%
rename from recipes-mac/smack/files/run-ptest
rename to recipes-mac/smack/smack/run-ptest
diff --git a/recipes-mac/smack/files/smack_generator_make_fixup.patch b/recipes-mac/smack/smack/smack_generator_make_fixup.patch
similarity index 100%
rename from recipes-mac/smack/files/smack_generator_make_fixup.patch
rename to recipes-mac/smack/smack/smack_generator_make_fixup.patch
-- 
2.17.1


