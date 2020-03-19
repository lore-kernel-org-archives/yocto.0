Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3944.1584582809379341612
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTJRVA1a;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8E68E01885; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A941CE0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id x7so308535pgh.5
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=e0gwhn0cpv40nmkT4gO2XSx49P4/193QZHsNKqS5FbY=;
        b=QTJRVA1a9M6cRrFtmdfBiJM4b1mDullKF4CqwIkeuW2QTU1D7zH9wMuHR1GBIDzvdv
         D9nbCBKcTcSSw1MQEP7szfcnQB7tDlYnPviqRUycCi+jY0wQBIsJ4GBklqtUwo3higO3
         TWLhDV8q/d7ZU8R0c6lML8s8WtFxMyL/gyi/nlP8k2KMQFGppFDeAxeIx3ufIW03oa/e
         XCZMivxk8+ohCEBLb9BfUloMpTHAfaS7+JdGPn5slHPLl06KYWdsgrdMCFyTucLafzuZ
         WMs/TwQcSDLFCONBiS05IEitdolUIJR9jqUF7w06XnkzyU6OxOZjc4sO7I6/lHXoDbdj
         cxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=e0gwhn0cpv40nmkT4gO2XSx49P4/193QZHsNKqS5FbY=;
        b=CtsxJPtkPWVucZ+WeSdd2uKAPhHiZZFUqwf1tCrWwZjq9hCESEEZ12jXD5SPgzn5xv
         7iBROG3YuS9DJRKIHbW3e1BaQPeembTuBoadImyThrztB/Y7HeQRzxxzmKeJYM8+hBMB
         Y1wGgJjxxpPg7JHQRM+vIXoAwvLcc5h7KRhzDUnR/s0k7AVyoZZG+X9Q3ls4ERtiU5qT
         ye8Fm8eQxVv7kTN2YLRPI9TzHOpDedmMc/OPJ5LfLYdxoH88Q2HYyzDXLoylTwOPwYAO
         02u5Ui2FKKjXFZB1YwpCWnTZEl1JcveyA14pEjf0UW9CMr6iIjNNTaMjtnLcCfH5LBH8
         a95w==
X-Gm-Message-State: ANhLgQ1UNl6IBej+XxFSpdV93eIdYQLhZlhTduho/gWTkChNiYRoBZhW
	U4rYL87+PK98/zIGlV+rmyWaY8RhDRI=
X-Google-Smtp-Source: ADFU+vtT8czD13yye1FQlbnav6pgc74RlKrw8d26xI7X8pK0w+o56sKMggygR8FrKIvHEXayZ6zbJQ==
X-Received: by 2002:a63:e141:: with SMTP id h1mr697946pgk.129.1584582806920;
        Wed, 18 Mar 2020 18:53:26 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id y207sm268550pfb.189.2020.03.18.18.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:26 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 4FFF72A099A; Wed, 18 Mar 2020 18:53:25 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 02/20] Add zeus to compat list
Date: Wed, 18 Mar 2020 18:53:03 -0700
Message-Id: <20200319015321.15525-2-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 894d6c4..de64205 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -13,6 +13,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "warrior"
+LAYERSERIES_COMPAT_cgl-common = "warrior zeus"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.13.3

