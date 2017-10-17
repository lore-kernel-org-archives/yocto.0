Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 693BBE00BE8; Tue, 17 Oct 2017 06:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18457E00B83
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 06:31:24 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b189so3878668wmd.4
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 06:31:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=vlt8H7wQ1cQVPnq+5c7b9Dwtyx3yFUSAOdLlB7jqm3o=;
	b=a9mnzKCFFEltsHrU9oIWVTjLORL7Kg3kIOkvfZnDPO7cKRTrgp5cFWV7kapA4suhuZ
	hqqEgTU4w0pGt4jMFlq5i8KM9no8VazpgdsIZ88oeX5Dl+C7SmILaaawY8+/KHNB5H2i
	ISCtQiyh5J/fnGMqQisnoFSO+bSsDDXhWPjtU8KlYEd6w1yhyK9Rm5TegBfBDyTUKEZr
	9biFq4yRP9mzL6SRvHvV/MxyEAbrdf7GLXxcFA9NvTKqebLhiSDuXGOXHic2xpVZOa5h
	QzYG4v7WhSRKq2N5OwzCgkoOkgYE9JzpTgomDmcLPaKlOStPxOamo3yyXqujaIgt5Z7U
	jltQ==
X-Gm-Message-State: AMCzsaVYZvFlni0a5Fo6jnOkff5ggnGNPTBTL3+DIXe1hjrqEgl4Usi6
	q6z8qTE9pINZYr1Ne2xaCgu9B65C
X-Google-Smtp-Source: ABhQp+QBwWzFsMNT7g7jJ3JPjpeD9TDmKQ80lSmGeaBSIAcXn/VQv6MW0MNicbzHbESFSDQyP9fuJg==
X-Received: by 10.28.236.25 with SMTP id k25mr4038062wmh.146.1508247083730;
	Tue, 17 Oct 2017 06:31:23 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id u4sm6932322wre.1.2017.10.17.06.31.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Oct 2017 06:31:22 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 14:31:21 +0100
Message-Id: <20171017133121.19524-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
Subject: [pyro][bitbake][PATCH] bitbake: Replace deprecated git branch parameter "--set-upstream"
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
X-List-Received-Date: Tue, 17 Oct 2017 13:31:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Andre Rosa <andre.rosa@lge.com>

Since 2017-08-17 (git version 2.14.1.473.g3ec7d702a) using deprecated
git branch parameter "--set-upstream" causes a fetcher error. Replace
it by "--set-upstream-to".

https://git.kernel.org/pub/scm/git/git.git/commit/?id=52668846ea2d41ffbd87cda7cb8e492dea9f2c4d
says, it's deprecated since 2012-08-30 so hopefully all still supported
host distributions have new enough git to support "--set-upstream-to".

ERROR: PACKAGE do_unpack: Fetcher failure: ...;
git -c core.fsyncobjectfiles=0 branch --set-upstream master origin/master failed with exit code 128, output:
fatal: the '--set-upstream' option is no longer supported. Please use '--track' or '--set-upstream-to' instead.

ERROR: PACKAGE do_unpack: Function failed: base_do_unpack

(Bitbake rev: 2ab50074c1a6c56a8a178755de108447d7b7acaf)

Signed-off-by: Andre Rosa <andre.rosa@lge.com>
Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

(cherry picked from commit 20d0282c6048fe11b303e538dbf9109ccb0c467d)
Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 bitbake/lib/bb/fetch2/git.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 2550bde838..7442f84414 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -326,7 +326,7 @@ class Git(FetchMethod):
                 branchname =  ud.branches[ud.names[0]]
                 runfetchcmd("%s checkout -B %s %s" % (ud.basecmd, branchname, \
                             ud.revisions[ud.names[0]]), d, workdir=destdir)
-                runfetchcmd("%s branch --set-upstream %s origin/%s" % (ud.basecmd, branchname, \
+                runfetchcmd("%s branch %s --set-upstream-to origin/%s" % (ud.basecmd, branchname, \
                             branchname), d, workdir=destdir)
             else:
                 runfetchcmd("%s checkout %s" % (ud.basecmd, ud.revisions[ud.names[0]]), d, workdir=destdir)
-- 
2.15.0.rc1


