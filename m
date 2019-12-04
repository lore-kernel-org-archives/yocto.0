Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.2259.1575426970284492666
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaqOAKsb;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id w7so2477416plz.12
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jrKoIn9pqmJRyXsiO8deDPYtNqRMQPV1iCc6NeSSPXw=;
        b=YaqOAKsbdSLAvHHTLcH7l7fsEwBVFS6b3IvHThYHfqSGIO+DUPdAfsDN3mUQut8A/1
         mpSiAH/ASympPNxcbjQQOt++uWKTppAJXMiJv0kiwI7oIkNQBgN+TurXXKDzIfYwp6/m
         ckt2/03GOqAqfEE/QO7CE3C7LP7X+6JZeE8Dlez6AgZbpcNrDZoNK7GqJVg8odE1waGb
         Y0BCQLVF0lmBHBQJl16XrGkw+FuC5v1ECvzdY5wcr4dmJU52K5zvNB7cBoI6tX/izKy9
         ogvgzDLXU2q3nfWDeuvRcf+tTQsU1AciqEGCqhu/1tFXzuhRmBcIOrfiMX2EEHGAlOiA
         Suug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jrKoIn9pqmJRyXsiO8deDPYtNqRMQPV1iCc6NeSSPXw=;
        b=f1dttvGPFbnu/6CSe/JbVXdUobJHSIJ5V0VUe3rtbnJFuKSxbvoSUzFVVVQOWU/Sar
         w5ZjbwkfBysWfpd6/JCRtR6WLYdK+laSkd9UYGPQNtfgSx3rEkJnKnl7qi9U+kooH3vi
         DfXN7eYsIFcgMKn3RhTVEDOGelD18JIEOiwEKRY+4pbOk6SnaBtzKnrwt42I5Yu/wedC
         Fx3UU4HX0ZxnWe2WQKu5Q9HeBmYRigYyP0KkoPT3xYyjPlzs4bms7tnm5dgAcS7wimrK
         U1TpvAy6qgIk5G3USBkQScC6gpwhZvg3fOylNMBgGtKdk4OFt+XjiHX7HeiQxvtoA7I2
         /dzQ==
X-Gm-Message-State: APjAAAXOBGXwL0NZ97uFBtleUIZjWBPMK9EfLcc31rLWbltfzSZ/vXbp
	JyviYGwGfJl/C9nTs744X+ZEtdKy
X-Google-Smtp-Source: APXvYqyKxuXl26wtME1+Nwizqi7VAyPVRpYmzol1ugpZghxYb/MlCTosPrh1aC+xBhti0CocaImZCw==
X-Received: by 2002:a17:902:9682:: with SMTP id n2mr1175209plp.336.1575426969630;
        Tue, 03 Dec 2019 18:36:09 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:09 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] README: update mailing list to new groups.io
Date: Tue,  3 Dec 2019 18:36:02 -0800
Message-Id: <20191204023602.31748-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023602.31748-1-akuster808@gmail.com>
References: <20191204023602.31748-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 5abb0e2..c419d50 100644
--- a/README
+++ b/README
@@ -52,14 +52,14 @@ other layers needed. e.g.:
 Maintenance
 -----------
 
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
+$ git config sendemail.to yocto@lists.yoctoproject.org
 $ git config format.subjectPrefix meta-security][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
-- 
2.17.1

