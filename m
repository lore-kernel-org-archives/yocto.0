Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8257C4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 15:29:02 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.15470.1699975737285596290
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 07:28:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=hyzxLdZ2;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.176, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6b5cac99cfdso4985301b3a.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 07:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1699975736; x=1700580536; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lz9WPayKysHGOZXeqNq/L4NwlrGqxrn8YJ8JH0UNCa0=;
        b=hyzxLdZ2XiPePG0ST27A8oOJ02AOvkOMd9x8cDJLMJU/90fvTU4B9QtEcqWStFtBjo
         ZSipANSRabhCKx1zdKV4GZ6zKdi0q08BWuySfEppb7CPqJupLL/FEoSgBPoMqFsnjBmo
         3JGUH/gaGlxywx1ppr04bgMDQ+zpc7pLCXWWauu8ZCp53w31CFjVTbRN5Y7/gOB2iWv4
         6otBD2KTqqEDfPJvUs/2gDiUavQDq4OVJX+lrsfdk/dQxsMZtYyDQGFGSz4OvnaCr6Sn
         heaMmwT74fxlgDOOVos1kujZsE/8PEpGFFfnOb1uVuJGgFwxjr9tCXNccr31J3Biti+1
         ANJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699975736; x=1700580536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lz9WPayKysHGOZXeqNq/L4NwlrGqxrn8YJ8JH0UNCa0=;
        b=Fz488ZjxIgd4BU7CsplK2sRhIe4YQ+Utvd+FURrgW1Lnrc/krr+vs3+tH1oYIAgL8I
         pkQZAoy+HfJxMXHAG3BD2IWsd9Ro8bLVC2ZkiGV+8Khah99bgdS1Iw1kzwRv6eij55UL
         ayP4IaL8XAjK13AI8p/RFdoRY1k70HAjanjBR2WyJY3y3OXYpOcWHZP2ZsMnCdNFcNia
         tetXJ0mz+r5yCLjMUMyEOpgEkOdzRJ22IivMTIbK5jg7m18BUGldAHN4MiSvjxv7DzVg
         ht6mG4YuZpbgnEtH0l6mvPlFXcav/cBQ1747b/WyZvJ9ugoxnigLQjE9+01I5uACUMWv
         t1fA==
X-Gm-Message-State: AOJu0YzV/5cWOkA8pf7HHQGOOEdy9xfcOzP3LeVJGf9LyMJkOE1OijHS
	u7A7D8YPF0m+EPzYxbxYwUamiB3WaR5jMAJEgjB82g==
X-Google-Smtp-Source: AGHT+IEFBGYbILBSJ9uGCgnIbA0VGKzunuxRyAQhdZjw8Eg/YtvxNvPZ/CBOgzYVSQs5svJ0BikfYg==
X-Received: by 2002:a05:6a00:1a87:b0:68a:4261:ab7f with SMTP id e7-20020a056a001a8700b0068a4261ab7fmr8868614pfv.31.1699975735763;
        Tue, 14 Nov 2023 07:28:55 -0800 (PST)
Received: from hexa.lan (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id y135-20020a62ce8d000000b0068ffd4eb66dsm1341685pfg.35.2023.11.14.07.28.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 07:28:55 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] config.py: add fedora38 to workers_prev_releases for dunfell
Date: Tue, 14 Nov 2023 05:28:49 -1000
Message-Id: <729961a55d76d82205a3157c35cd92d5c731bd18.1699975657.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1699975657.git.steve@sakoman.com>
References: <cover.1699975657.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 15:29:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61681

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 316109b..721f637 100644
--- a/config.py
+++ b/config.py
@@ -180,7 +180,7 @@ workers_prev_releases = {
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2204", "perf-"),
+    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2204", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.34.1


