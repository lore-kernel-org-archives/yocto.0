Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3232.1616465448008514833
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 19:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=MKbxH+xZ;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8EAAA38C05B5
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 02:10:46 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso18024900otq.3
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 19:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DzplAgtx78PzJ//bev0zXBmFDkxw2ahjP8VAijSbbCU=;
        b=MKbxH+xZpyjMEG5cJev4iaPKtXyADU7FHhOH5gilUFioSZgw1EpRRTHWZPdQEiR+IS
         NhcxPsKrHCKsvOWFYf2YqIy65PzhpuTbTVGP5Us8Tcr67po5UoeQJEmaCSQsxGsKG0/I
         UeS5FwheNkrqoLStmWKFNMj75vgX6tR/MVvtBDadJj07k90a8nbYR+dX3m8fngdb2sPZ
         pADUlbMfGW7ixSLKRC113QrYlfpgXFLX1aHf/Fky0BDHws3VKb0pPpddcvAqjCfkK6Pu
         V6LUObe6Nk6QUAMVaGM76DUMwgSxBWTW01b/1qOQYXMBaGKrYNMgfcyGWK6GWFAO3LyZ
         2DZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DzplAgtx78PzJ//bev0zXBmFDkxw2ahjP8VAijSbbCU=;
        b=K/X88xGr2oe6l3Topg1pM6Qq1e8AKF33ry3Dopcxu/CkuLA/Fzdg8tPLV7h+8XfzQ3
         W1N8q+XmvAK7t91byZgMXsw1gWG4rXjBybLsMh/WesotoLOGU+lprDLwe4mTkAt+3oie
         vUcT1kx34KKTVBKQHPPxEAIQiagHW3WG18c76eQx6u/85Jr/kMPXMCQoJqTx1dEPoHRS
         fDPqDXy/erNfglvQvaoE/FSWFGJVOcoT3adaQ6xpWjwEySp1kKA1v1tqqqQHWs1ZV3gA
         UBYMh8q6xY6x+yhWJivvUJnunqrU99cWbdinwhBVYuov4X490VAf69C0yEy3TFVb0CJp
         tzjg==
X-Gm-Message-State: AOAM530hYw0t4SUrmli0HvGGpZwTw7Scl9GlWOu5aKXwbIvNLwxpXF3Z
	GVeQ+deGN1vRCnBHPPAJEV4LvAk4r3F85Xqx
X-Google-Smtp-Source: ABdhPJy8U6OyJRb9btUBhXDGnC4xRPJMId2m/EOFZg5ei5gXTzoHfefZqMRoXDl+Tf9NaWhztxrGdw==
X-Received: by 2002:a05:6830:1c26:: with SMTP id f6mr2379885ote.53.1616465445358;
        Mon, 22 Mar 2021 19:10:45 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id h59sm3924505otb.29.2021.03.22.19.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 19:10:45 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 1/4] utils.c: get_available_ptests allow to specify relative directories
Date: Mon, 22 Mar 2021 20:10:35 -0600
Message-Id: <20210323021038.1049654-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fixes,

$ ./ptest-runner -d ./tests/data bash

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 utils.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/utils.c b/utils.c
index a4e190e..43ab03b 100644
--- a/utils.c
+++ b/utils.c
@@ -34,6 +34,7 @@
 #include <poll.h>
 #include <pty.h>
 #include <signal.h>
+#include <limits.h>
 #include <stdlib.h>
 #include <string.h>
 #include <time.h>
@@ -85,6 +86,9 @@ get_available_ptests(const char *dir)
 	struct dirent **namelist;
 	int fail;
 	int saved_errno =3D -1; /* Initalize to invalid errno. */
+	char realdir[PATH_MAX];
+
+	realpath(dir, realdir);
=20
 	do
 	{
@@ -93,7 +97,7 @@ get_available_ptests(const char *dir)
 		if (head =3D=3D NULL)
 			break;
=20
-		if (stat(dir, &st_buf) =3D=3D -1) {
+		if (stat(realdir, &st_buf) =3D=3D -1) {
 			PTEST_LIST_FREE_CLEAN(head);
 			break;
 		}
@@ -104,7 +108,7 @@ get_available_ptests(const char *dir)
 			break;
 		}
=20
-		n =3D scandir(dir, &namelist, NULL, alphasort);
+		n =3D scandir(realdir, &namelist, NULL, alphasort);
 		if (n =3D=3D -1) {
 			PTEST_LIST_FREE_CLEAN(head);
 			break;
@@ -130,7 +134,7 @@ get_available_ptests(const char *dir)
 			}
=20
 			if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest",
-			    dir, d_name) =3D=3D -1)  {
+			    realdir, d_name) =3D=3D -1)  {
 				fail =3D 1;
 				saved_errno =3D errno;
 				free(d_name);
--=20
2.31.0

