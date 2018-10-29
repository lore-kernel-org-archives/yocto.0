Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AB76E00C09; Mon, 29 Oct 2018 11:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA897E00BC8
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:00 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id f16-v6so3228585ita.3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=wj/ez5BBuJB3zrQ411Jip7Frnm++Tuf4VZak3oAG5Mo=;
	b=cn6GtNgdiA3XbHb4/jajRIGt8UHDlxCZgi9A7dgKlLn0Udjw5KODjYmAy8MGW/yUJQ
	iuo01PXTq8k2EFKLSoemMlfqi/sGEq/kuw7sIvzCo/Nx/RSsT5ARzXdp1mGb5mwtIOUv
	BpmOAHWpxu98/yqZW4nQ8NoKCwrlYdGx4Pzy/h8TLwvfMkqepk8tQPzpnD/oiQxZ5KmU
	5uu6Puri9z5c3wEbPIMTxapykyjV1WykhC+nuvTd7t9Hh+zVycr4sHDDNsBlvcnIFNf1
	sWdDaphmw8bO9CWJI+pSAQVKEB+xl4y9DoBWhu+YUSc1H3cxdA99Dkp/b1r3MNyvukN/
	MZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=wj/ez5BBuJB3zrQ411Jip7Frnm++Tuf4VZak3oAG5Mo=;
	b=BseFYJIscV2mOqLrmSu/Tpe6cQ82gPZ1rVNv/lvHMZw/ynNb8StNtSTLnFl3qXIAOj
	LjtxDE/kAy/9WWpspHn3IvPkh0+JGEasEk0SA1wQATAXJXOY7i2y1iciOWnw95uBsWsQ
	q3EY+jataXmzsk5hWMaXWJhSELXHQlYo4x+jZGC+oDBDQ5TvIfvzpGI8qbIfrzZ1Ys8J
	Hg+YkE+f0NwBVzlGpTzbMIKUHjDNlSOkEdABW8NORDrI64wrNGy6cYOA2zTZsHMkiX3n
	3A7dtYYsXyI/uKk2dIgTzZuQGV1oKQV29zXeilpSU+dMhTu8JHhVVvJNFCWORkjhzUlu
	d/Kg==
X-Gm-Message-State: AGRZ1gJ9cT27DETuVq11jbBENL3SqBInHBlLB0oDInpyh60B/LMlhYJ9
	XDPL3b+aK7nrQbjV5zq90jMupmWdZrs=
X-Google-Smtp-Source: AJdET5dFar0noislbT4EgXfMJdeQKEUmri5bUPzSM1/sHJDp1vaiU2OZozPV5qpXr43Oa2B38efXPA==
X-Received: by 2002:a24:6fc6:: with SMTP id
	x189-v6mr10704658itb.149.1540837979649; 
	Mon, 29 Oct 2018 11:32:59 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.32.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:32:58 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:51 -0400
Message-Id: <20181029183257.20970-1-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
Subject: [meta-selinux][sumo][PATCH 1/7] layer.conf: update LAYERSERIES_COMPAT `sumo' -> `thud'
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:11 -0000

From: Hongxu Jia <hongxu.jia@windriver.com>

Since `9ec5a8a layer.conf: Drop sumo from LAYERSERIES_CORENAMES' and
`9867924 layer.conf: Add thud to LAYERSERIES_CORENAMES' applied in oe-core,
update LAYERSERIES_COMPAT `sumo' -> `thud'

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0f9ea41..5fecac6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,7 +18,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "sumo"
+LAYERSERIES_COMPAT_selinux = "thud"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.17.1


