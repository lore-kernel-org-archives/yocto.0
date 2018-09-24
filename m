Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9620E0090C; Sun, 23 Sep 2018 20:24:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3022FE0090C
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 20:24:41 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id j131-v6so7359402ywc.13
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 20:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=/Ztq6F7qgBU8ldfCFs5PQh7I6nXQQKJtsHEqnbup8ak=;
	b=mkQnXRTVtRQir8FShVt/uGDo4ei5RoBM3w/vcAZqQun18eoPhP+yAJAfW4ePM4jomX
	HV/VOd1Ycd9i24IY/ZTzXMtXTONvlC2PncXZm7ZbK+MWNjNzlP3+vLsJdEw4dMnuKl6j
	Bo3VGyakZawXR6GVD7EnLjGaNJzw8yvD/BktfeDSsVUmZGj+DWNKzAe+m6r4db4gnbe1
	BlS/BCFkxkLMud4qjhaMbk55a73HV1jK3flLvNAo7QXsuOdALKEJGPkPQnC+WTEwoShf
	ljmli5HdIQbBOio+aoi/1kOjdT3rEGXPC11JmOKov1jz2jGI1sc2FzAy0rI5EbW8e0K6
	8l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/Ztq6F7qgBU8ldfCFs5PQh7I6nXQQKJtsHEqnbup8ak=;
	b=YzDy3ZDGX5TQu+Cz6S34vLmj97z4jYpy9xdgsONxR+1mOG7M+a0Im9PX4d1RISVd7a
	SNTD9Vb4uMq/5CbwRK4aNGTz66BTeHpwaPZQIGVWM3IBLXF86zR5FgKvcPKvThns3ae0
	aEcKqVfSl2FPT1q+IHnU+RbGuwB2S7F2hnlwmTFDo6pwDXcJaNgfTWoK2t3XJbx0vjzA
	2zcqAYdEDs+m67kQnkTW63mFXdooGpX1T5fOwrOqcyinuoxlMkvNfj6qRuruH8NKiZpz
	wxj6u8MqUlrQj9rYgz4PM639YOyfPDI8q/njDba6CdsupPakqe+qU9v04dxayJLqi6ZV
	BCGg==
X-Gm-Message-State: APzg51CQ4jAGE5Og6C7SF0A4igqoNyFYr46sdY37ad+acGTpOW5dCGkr
	+PY5NLQAtgu8RPEHfigBxX8dtYCd
X-Google-Smtp-Source: ANB0VdaRmNHIjXyneajbljSGe25YZuny37RrDPGrAjD1VuYLCFox8roBiRTZpQsSoTc9LBrIHTU5DQ==
X-Received: by 2002:a0d:e10b:: with SMTP id
	k11-v6mr3733705ywe.78.1537759480284; 
	Sun, 23 Sep 2018 20:24:40 -0700 (PDT)
Received: from localhost.localdomain
	([2605:a601:21d1:5200:620a:c230:ada8:3135])
	by smtp.gmail.com with ESMTPSA id
	b71-v6sm1269196ywa.48.2018.09.23.20.24.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 23 Sep 2018 20:24:39 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Sep 2018 22:24:21 -0500
Message-Id: <20180924032421.9679-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: juan.m.cruz.alcaraz@linux.intel.com
Subject: [yocto-docs][PATCH] documentation: Document debug-with-srcpkg
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
X-List-Received-Date: Mon, 24 Sep 2018 03:24:43 -0000

Adds documentation for the "debug-with-srcpkg" option for the
PACKAGE_DEBUG_SPLIT_STYLE variable

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 05487cf83f6..1bc6e2b77d5 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -9646,6 +9646,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                             ".debug" previously described with the exception
                             that no source files are installed.
                             </para></listitem>.
+                        <listitem><para>
+                            "debug-with-srcpkg": The same behavior as
+                            ".debug" previously described with the exception
+                            that all source files are placed in a separate
+                            <filename>*-src</filename> pkg.
+                            </para></listitem>
                     </itemizedlist>
                 </para>
 
-- 
2.17.1


