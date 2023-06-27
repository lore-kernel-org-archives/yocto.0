Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B5C9EB64DC
	for <webhook@archiver.kernel.org>; Tue, 27 Jun 2023 01:44:59 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.12918.1687830294694409079
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 18:44:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=W+6IIn6E;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5701eaf0d04so39413757b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 18:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687830293; x=1690422293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+vfUc7MvBRJUiskYwFEfeeYxhTPbxWQ5GqLd1dBMb0=;
        b=W+6IIn6ErgZzaRDLcxzW/6XkBzIyRB9NkqrwwAFcnc0H1s/hw3LIwNjFSoM0K4/HsV
         JYWLqjr9Oit3z2z4esKhnIUPS4XZh9bjjJKNRJsa+NL2gKamAf5nxHdX6TFVYDHKxvAQ
         QLWOWDXfwlMJvj5FfFOAB3ETVFYXGdIme9HANfWLMcgOjiXl3pENWemiJ5dsd+ukTqft
         meCLNwDrl5byt6uv/l/VzZVHdA4wmZWYxOnmkR6cRzRWUQzhjqs2hpBe6iH7bw5VuoIs
         sZJoSosA1xUgpXdKx8chUAr5VJn5mj71iEYLfJuYz4gWznXBuZPYoV4iI36eOIMR9U8d
         ReTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687830293; x=1690422293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+vfUc7MvBRJUiskYwFEfeeYxhTPbxWQ5GqLd1dBMb0=;
        b=PW+c3KA57uYpx3VcQVWb+f3NB7BDOBBqqLXetBxt04HAWFr//sHnYTu7aB3qz4XULD
         VrnAsuo4aqGP4su5ihGLEsoILk0EtJROGXvN4sF9JfRewA3UaAlltzxOxm8Nk8U8b/tB
         XAWU5cBMnmQ4NO8CDU/noswl+07XFjPbzPQgGa+Q0vlSrVdFgI6ugZr+qJP+VR5mzEC3
         Ipz0GmYlEaRMGAaM6Y5ejaTCQlu/sgu+7vkGH15BPU+SgWzd3lmjHl2AvdwWQzHO4h7g
         6XqIc4VGVquNAYERYWbIFuyxqlhyiJYPHvtlI2Pfbw6O2qcsa48BkDiZ5yZCyUE+8kaI
         lh7Q==
X-Gm-Message-State: AC+VfDxG5dwMkVN9MdqPZaaBgBKYe+fUWTiQGM4S7tV5s542sDoISp2g
	elM2nj7zbphsTW/eme5omgVYfLPn5vw=
X-Google-Smtp-Source: ACHHUZ55rL3PhNYDS+MBSqN49DCAeZq6+SzKSBmYsPGGKqYODKj1NnKwAyYw8xUEjk/S9zUt1vbbRg==
X-Received: by 2002:a81:7dd5:0:b0:56f:fa56:4c32 with SMTP id y204-20020a817dd5000000b0056ffa564c32mr22890240ywc.52.1687830292125;
        Mon, 26 Jun 2023 18:44:52 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:4f49:bc6:428e:df92])
        by smtp.gmail.com with ESMTPSA id b123-20020a0df281000000b0056d31a089e9sm1571413ywf.126.2023.06.26.18.44.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:44:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATC 3/3] python3-privacyidea: fixup REDPENDS
Date: Mon, 26 Jun 2023 21:44:50 -0400
Message-Id: <20230627014450.3188750-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230627014450.3188750-1-akuster808@gmail.com>
References: <20230627014450.3188750-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 01:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60458

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/mfa/python3-privacyidea_3.8.1.bb      | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
index 8bb88f1..aa7bafa 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.8.1.bb
@@ -21,8 +21,7 @@ USERADD_PARAM:${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
 
 FILES:${PN} += " ${prefix}/etc/privacyidea/* ${prefix}/lib/privacyidea/*"
 
-RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
-
+RDEPENDS:${PN} = " bash perl freeradius-mysql freeradius-utils"
 RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-bcrypt"
 RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
 RDEPENDS:${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
@@ -34,5 +33,5 @@ RDEPENDS:${PN} += "python3-markupsafe python3-netaddr python3-oauth2client pytho
 RDEPENDS:${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
 RDEPENDS:${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
 RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
-RDEPENDS:${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
-RDEPENDS:${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
+RDEPENDS:${PN} += "python3-smpplib python3-soupsieve python3-segno python3-importlib-metadata"
+RDEPENDS:${PN} += "python3-sqlalchemy python3-urllib3 python3-werkzeug"
-- 
2.34.1


