Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.89.1587127371368079671
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Apr 2020 05:42:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ossystems-com-br.20150623.gappssmtp.com header.s=20150623 header.b=RuYvzygn;
 spf=softfail (domain: ossystems.com.br, ip: 140.211.169.56, mailfrom: fabio.berton@ossystems.com.br)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C45F2E019FE; Fri, 17 Apr 2020 05:42:50 -0700 (PDT)
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
	*      [209.85.222.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E050DE019F8
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2020 05:42:48 -0700 (PDT)
Received: by mail-qk1-f193.google.com with SMTP id c63so2193132qke.2
        for <yocto@yoctoproject.org>; Fri, 17 Apr 2020 05:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version:organization
         :content-transfer-encoding;
        bh=/0BUrnkl+FyupecWMA1Kxufg7HtIT4suQuInIuk4mF8=;
        b=RuYvzygn1EM5CMAS8xSV8LdBtqswPBgMq2JYzNutDi3TZq+tiMYYnHbjo//pL9nyaJ
         dQC4Ew+Vx/3l2VBVK1EcalfSuDzNpX/W90Ra5zqRJStYkKk+siTAqmpMi/25HHt02R5B
         0V83K54uFWEJM/GoQvyUdspJ+5qSASTmrTbpKG8c3oPsWzO2bxKt4Sptz2BRJp42IiTe
         9VUq/uCJTE6Mg+b37no9OCldvocBDjUmru0snFNqFwOveDdZ8Jy4WJrNOJMQJVv5CKL/
         QdRkxUWstHERam0qbJMY+esbzqA8sWVP3Uc03nd6ZWG6r1yGKuVjTBqtOY78PjpkWte7
         mKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :organization:content-transfer-encoding;
        bh=/0BUrnkl+FyupecWMA1Kxufg7HtIT4suQuInIuk4mF8=;
        b=ZGhgEMbxBLgg7kHIcfGhzNYWi+rdGQy2xmctGyGd+my2o7tDDMaR5g4s85XZt5m5cf
         9hqn8P0LF5xQReRjIKUkP8WAXt8rWkHj9gfjl7xaj4zbL6hZPFgx0omTUVHJoxdypwDP
         tMjRlGDVZb9QFvJakd0UTFn02GSSFxYz3Na522t7C6sGDTYY+jIU8lKRohlizLS5+aM4
         IvOd8yCRqkrCyaZzOciumeS4U7DTXa24eIltk4TYZgZRHC3oG8OQe2wgmMP+EL3TTaQv
         +UA+swnteoIycDVIc2jcynfAqZaMQRfGkIB4Iyr3HcQF0TfTVHizS9x7Vmy+l9gShdEv
         Hxow==
X-Gm-Message-State: AGi0Pub803axQVrBHoomFl9erGk1uT9Pi8JTjt8siR2FkJL3xyCEjJJL
	M0GeS5WQKo2NlBEMwFfnQAcYqzE1RwU=
X-Google-Smtp-Source: APiQypJQYHdeBe79rCnbhS1xMVa0Izmk5LZ5hyWEpwzabWyhwVtcWUeNKaGqllgRedCNePmWoLDgNQ==
X-Received: by 2002:ae9:ee18:: with SMTP id i24mr2972637qkg.325.1587127367564;
        Fri, 17 Apr 2020 05:42:47 -0700 (PDT)
Received: from pikachu.lab.ossystems ([181.220.114.167])
        by smtp.gmail.com with ESMTPSA id z18sm18406649qtz.77.2020.04.17.05.42.45
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2020 05:42:46 -0700 (PDT)
From: "Fabio Berton" <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Subject: [meta-openssl102][PATCH] conf/layer.conf: Set layer compatible with dunfell
Date: Fri, 17 Apr 2020 09:42:42 -0300
Message-Id: <20200417124242.3213446-1-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Organization: O.S. Systems Software LTDA.
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index c7dcd8a..30ef9c9 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two =3D "5"
=20
 LAYERVERSION_meta-openssl-one-zero-two =3D "1"
=20
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two =3D "thud warrior zeus"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two =3D "thud warrior zeus dunf=
ell"
=20
 LAYERDEPENDS_meta-openssl-one-zero-two =3D " \
         core \
--=20
2.26.1

