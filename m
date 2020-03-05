Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.11965.1583412495444312173
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 04:48:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+2591jE;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: jonatan.p@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id h18so5889983ljl.13
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 04:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6uZ2KGLxiz0D5PvIoQoGl0YyC9ywSprYyaYdQPVJQG8=;
        b=W+2591jEU8KbraLH44lG0sgQbMPBSPynbd5CnDVmuL9Zo78MgsLzkJZi/vXMxyj0I5
         QWS8sxTZPej/gttI+cPDCQ74KmDflvsgMz0kEbRpyg+ccdCvVVxZ/cv7q85fGFBiOFop
         4ZFSbVTUJjQ0ugeBcvbtcp7N7atKln8IumV3o8j0fb6Y7Xqj+LmNCUufMGjlsr/7SAwo
         ib/7pul2iQXSupPlhc4HePFgpR9CyJgnrG7FgIjoAA7ps9wlPVc1lzFj3adcBXKqWoss
         3sKN5b9zKAm6Xjw3aAf0h1HsaohD6i6+Gb2nXC7XwYTwZYEC82NsmEEA8dQBQew9pqVM
         SFkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6uZ2KGLxiz0D5PvIoQoGl0YyC9ywSprYyaYdQPVJQG8=;
        b=BKW8N34jbDGHB64UHk9SEQgcptQO23TFW9S/I8LPdqBwCpe8Ct+lDIE2+mFLngGH4l
         XNA2qXW59csE1jwzXd0YpQfsJ51aPL914udcFOJrvCATj3GGi0+4oxIJAidijFpkVYwN
         7wfOpgoHXXnzSLO1RYpiF4d8M9Y7pXTzHA7eFfVcz+EkS+UOnFPmY9OjiqOH3FNJz5Mh
         7AjvcJ4IEA/HyinVmCiN+QZxTa3ID5B3eY4uIVfgQwAmhnTJJDhyz8fHGE6ol5/FQlMi
         1GYnNmjL0VLN0zuR+zjOehOK0YhxtMl6h2hpMOTJtkMB192xswFN3fQ2q1PkbX0VcyMU
         czeA==
X-Gm-Message-State: ANhLgQ0eJU4mA40Hr28AQfMekOc8YV0E26qFBbDVbkbpeNosYcuUXjEt
	Xh4HLn6+pA2R5LhPwm4OY6vZ8XIv
X-Google-Smtp-Source: ADFU+vuogjDATBo4mma6jVYJGplfDCRdAtmND03eDhQCWi+uNI7isxAEB3mkxmticA4wiuzGXVPCog==
X-Received: by 2002:a2e:45c3:: with SMTP id s186mr5233978lja.90.1583412493492;
        Thu, 05 Mar 2020 04:48:13 -0800 (PST)
Return-Path: <jonatan.p@gmail.com>
Received: from X1.jptk.se ([2a02:aa1:101f:619d:9533:e6b4:96e9:5f67])
        by smtp.gmail.com with ESMTPSA id x62sm2147926lff.58.2020.03.05.04.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 04:48:12 -0800 (PST)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 2/3] sssd: Fix typo in PACKAGECONFIG. cyrpto -> crypto
Date: Thu,  5 Mar 2020 13:47:39 +0100
Message-Id: <20200305124740.2582832-2-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305124740.2582832-1-jonatan.p@gmail.com>
References: <20200305124740.2582832-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 9feba14..525cea8 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -36,7 +36,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings, python, python"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
-PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
+PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
-- 
2.25.1

