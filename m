Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00038E00CD5; Sun, 26 May 2019 21:56:46 -0700 (PDT)
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
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72372E00C36
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:46 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id z28so8852317pfk.0
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=7hJcG8dTzNaK5LIuqLUdwIfULE4+5kYZSjhV9EQdXQY=;
	b=taiIUERGvHkdl0Gnrs9ksxUsC/+miH6Z+DhyVw2DylZ3Yd732QDBkijQqciurrc5Y9
	0ONEv5eED9RT8fCChO/S2HTKfgSev/aSY1G/7HSwFTG2AtuRYSq690uu+ppU7xTDRJ+v
	uJ0oHRJYfpKdbkGKdRq6mP9EmrK+04CEDo54Jne3EKPGkvWh6+xTFGtjVm5jleuq0ljI
	1Y0adB7TGvmzMviu5aE6PmGjclxiYurh2STtBuQT0yug26mu5j8/ZhzWnJmZU7secsjK
	Y/H8JlWP+UMyY02qAWZT2rPvddXPj2ynh5jvHNNf69TuR2RLCxO8Osc/mxmq41pSo/5t
	VHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=7hJcG8dTzNaK5LIuqLUdwIfULE4+5kYZSjhV9EQdXQY=;
	b=LN5KanwIaCWsGNP5o3LtXi6FitT8MZ7DB5eC5O093N4nRVcSliCrWknUW94BEza43Q
	zkpGHEXjmhXttOPpGW5ZEIhoT5KWT2tbYlnv3Tg5UFqtkaoD9CTDzXEzHbOaCLFnaiD1
	K2xoTkl/8nG3ywsE76rKT2GELS7EoFYZbTawLCfPj7JrqRDkDzQv0jpI2QcSMNKDI7Ey
	rZxpcRKbw5r1EwblofBg8cG7zQH/0mGHlq98jxVzsIMPdk3TpjmUUhJoMpUCJJyT72eX
	YrJT91xbETmEyriudbrb6V9ylk+jSsKbzesMs6DXK0re3pNfbX7nHeKGa2QlOZ5pITyZ
	S2aA==
X-Gm-Message-State: APjAAAVPadoVuMHw//vAdbbYE6uTJpAcoEo1w+gpkmFdh6bxfdThtbxo
	CdSaVIggNPZ2pTTsX4+fu6ockgPt
X-Google-Smtp-Source: APXvYqyvSR6CpxkJnD8pFPDS13HUiMhDerPjDTEA1+N/hWMojuwfdKQVP0DZ5o5Uv52VVO0yK1jhmw==
X-Received: by 2002:a17:90a:c587:: with SMTP id
	l7mr28070732pjt.50.1558933005854; 
	Sun, 26 May 2019 21:56:45 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:30 -0700
Message-Id: <20190527045641.18884-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/14] README: update
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
X-List-Received-Date: Mon, 27 May 2019 04:56:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/README.md | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index ba96d8e..5bef76e 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -24,12 +24,9 @@ This layer depends on:
 Patches
 =======
 
-Please submit any patches against the integrity layer via Github
-pull requests.
-
 For discussion or patch submission via email, use the
 yocto@yoctoproject.org mailing list. When submitting patches that way,
-make sure to copy the maintainer and add a "[meta-]"
+make sure to copy the maintainer and add a "[meta-integrity]"
 prefix to the subject of the mails.
 
 Maintainer: Armin Kuster <akuster808@gmail.com>
-- 
2.17.1


