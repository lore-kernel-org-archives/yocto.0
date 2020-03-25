Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
 by mx.groups.io with SMTP id smtpd.web12.9435.1585136660125707097
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MpYOtXxs;
 spf=pass (domain: gmail.com, ip: 209.85.167.67, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f67.google.com with SMTP id s1so1499608lfd.3
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+dndC7eShsyPwdYztjbdLg+ls76N+dDzOrE9cwrJf+g=;
        b=MpYOtXxsxmVBMD/wULqs4QwNq/CQB5zYzxWAlEkYjSee51H24foPfV5OjblYi0rySU
         REHfr/IVCIqH5bPFBGn8kGVlW3LTDIUdF5ODJTgTd/y3GcOYywNAX6vMZZ6m3nLnG3vT
         hUBhwW0/T4m7T+PPDfsrZFkyJ1cDjcqvLqpZM7Fqx2+ESPLUFrAVHV3h9z+/ld36iwFE
         U5NFj/okdInawpu6vqBRSDd09mZ0ZBeqXqZPm3MENSQqg8umF+xcU41NfHtlbemWW0G/
         eLGo/Mcy/bNseci8D05PyVmwO/ux161KhoguhiH4E77GhWR5CLNYqLohmoIUHP+vdlgB
         oMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+dndC7eShsyPwdYztjbdLg+ls76N+dDzOrE9cwrJf+g=;
        b=QJ1H7HKTdgjuBnqJLs4lRT86p92k46Qdfugs80RfvG+Cnzr25tMZ8MsZOYcgG/9ksM
         GxkJcA/kvhi11ektgOkpKvtp8qRNl2/WYf1xuTgVqsjyfOz2y3ztCPWcrBddNfdcwSEr
         985jwABjmqYbCpjFX/ATYKiJ19RyfkSDxSHs0YeumpLpE4Hav9BBSaS2/5x2usxZ5WJC
         0cGLupCbICESzY8Bo7gKjkx8BE/M02zLp0eTDl5XDNud9gyi1nBOIKSCiEROCFV6tx9G
         hQE3r9zwVqN2RJE+dwskUHbETFPKM04INssXjj9Xuy0v74ZOaync0tiNgyON28utWo68
         EHGw==
X-Gm-Message-State: ANhLgQ3A29VBsoV28907oIAoMWPfy3q0VbjXSBA//FANUWvJt0oiIYFu
	yDXw1nRb6hFL+OtFq6V9aVUiVMBHqh8=
X-Google-Smtp-Source: ADFU+vvnkBFOcsphzRtmKMNkX94T/w7xI8aeoZZfA4nfaZAYLcKo1kWyWkQK8dCSsPMtVKv1MC+ljw==
X-Received: by 2002:a19:c752:: with SMTP id x79mr2023959lff.144.1585136627684;
        Wed, 25 Mar 2020 04:43:47 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:46 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 1/6] sssd: Sort PACKAGECONFIG entries
Date: Wed, 25 Mar 2020 12:43:14 +0100
Message-Id: <20200325114319.2115155-1-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index c5ddd5c..b0b7038 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -37,18 +37,18 @@ PACKAGECONFIG ?="nss nscd"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
-PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
-PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
-PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
-PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
-PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
-PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
+PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
+PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
+PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
+PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
+PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
+PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
+PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
+PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[systemd] = "--with-initscript=systemd,--with-initscript=sysv"
-PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
 
 EXTRA_OECONF += " \
     --disable-cifs-idmap-plugin \
-- 
2.26.0

