Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 836CFE00B8E; Sun, 23 Jun 2019 17:09:31 -0700 (PDT)
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
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D790E00B8E
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 17:09:30 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id f21so6121721pgi.3
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 17:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=bGpplY/JYRrQrtxM6RHUIqKaWu22F60XyP8MNBd3S7c=;
	b=Mk9W+PRlGigx7+Ed9F1P5kQ7qYf9XXfikpGPcopWNasFMDKiEh9uDC0Lc9tpGq1Z4u
	uhqzZwC4RAXpzz7+W9TIUhlJtYDjjRoCUdZmdIJahUvTfhBXY248dJ+tIx5TKaD4vOh3
	1fNzsuylBxkWOj5wPeJmsBxMsWDuFQeFBZD76JdahQ9dViO3dFyeYPRj2BKrrZGDaHid
	gQryqu4yU02wPvbdD52Tf3I6EvIT4chHLM2mpMR+0YOSx3gHqrXkkewC1M4/sX9uUPJ8
	q8rHstDO6IwQMGg7Z+4SPpIBaldIUtpai2PLNJJNEHYXN4RFlLszzEJOZ20wY1XynaGN
	gh+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bGpplY/JYRrQrtxM6RHUIqKaWu22F60XyP8MNBd3S7c=;
	b=diIauW7IY33W8PvMsz8KFf+JwB83Dk8wOuhHBT4auwdnBsEx8jnPR8v3DpabEU7q2Y
	gRzWqaO+39kzZ3PfBWICRsZeDlRw6/AAcgugYCxWOAvd9lzauxoMhhB5i3b0r6j/leeD
	MwKIsXNIEbtGXv4THah8jl1ZHYNMLjLAeNR2TRnJPnUhUkzAdjh7j8siPamR+Zge+PQo
	j/A3KkPZPwRlKb2FHTDr+3bBdl46v9poJr3GTs4KUeB+xMvZCZ3XMyI3a4Cn5BREzG2Q
	bacQ49jI+k3dvRAEK2BOXGPBRx2n5xDgQy67flPmC6cL4GFY0xCyzJMPnanoFWXZB3Xz
	8n+w==
X-Gm-Message-State: APjAAAVzTWTik4Aluxx/sd3K9VPcXeV1qPkm6yr68LZvy6eZ0hcXaQ1i
	30Yu71sGaO/uiANBvI5OY+IzM3UT4F4=
X-Google-Smtp-Source: APXvYqxXvlqRlQU/ZbfHkLBeA6gD83lFBrgcCZYafPK3kPwmSNheEnAJGKe9uJd51uSzCHHQiNSonQ==
X-Received: by 2002:a63:f807:: with SMTP id n7mr9950279pgh.119.1561334969507; 
	Sun, 23 Jun 2019 17:09:29 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j1sm9823717pfe.101.2019.06.23.17.09.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 17:09:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 17:09:27 -0700
Message-Id: <20190624000927.20172-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624000927.20172-1-akuster808@gmail.com>
References: <20190624000927.20172-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] clamav: minor recipe cleanup
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
X-List-Received-Date: Mon, 24 Jun 2019 00:09:31 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 7d8767e..7f04337 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -66,14 +66,12 @@ EXTRA_OECONF_class-native += "${EXTRA_OECONF_CLAMAV}"
 EXTRA_OECONF_class-target += "--with-user=${UID}  --with-group=${GID} --disable-rpath ${EXTRA_OECONF_CLAMAV}"
 
 do_configure () {
-    cd ${S}
-    ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
+    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
     install -d ${S}/clamav_db
 }
 
 do_configure_class-native () {
-    cd ${S}
-    ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
+    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
 }
 
 
-- 
2.17.1


