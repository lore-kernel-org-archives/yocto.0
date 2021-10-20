Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA325C433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Oct 2021 15:57:05 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.10014.1634745425496545341
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=ZEQcGciY;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.46,
 mailfrom: steve@sakoman.com)
Received: by mail-pj1-f46.google.com with SMTP id oa4so2801238pjb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kzzy+aTXU1OwQQYJM2puOpjc/ACA4YRYK64+hv7pqJw=;
        b=ZEQcGciYa07yC/2iYqEXElhflGJXd+KvGa8zJDtygwOxWAWW0zrHmiohMXo9l7WWVp
         PHC7s4wm1V2Lx8s+FRQ3Hal+hgKi07oSoEujjIc9OrRKWu7xUNeDqoDwFa5coGvZpz4M
         PQ6EIKjXTzToG8UD6J0QHOh4dXvqY5N/ZHjRKbc9HPdiitfT3nlD3ky++vowmhkWNIjQ
         BC9ZwDUs2dUaYFDU+bJN2XqeQOXy22SFX36S3aP+RU3dGWWiqDruVZYbn741xz9OTb5e
         L1/8aBxSDzq1HIqJmvl8YUs0ToKGfu9SBk2Un5rfPtYCxbj/h6kUjxxDtEIvPhGB2oeD
         E0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kzzy+aTXU1OwQQYJM2puOpjc/ACA4YRYK64+hv7pqJw=;
        b=SGTwycGR2jo/Crs8gcn4tAXhww60a0jj6w8moKpn7f9TBoQggG1ENMQl260lT8TnZb
         QxJGA2vIW12G+1XV7nRGS52HSnRYeEJsHXDvwNV/frN85j+ZCOHCu9QzgVn4pkTEfGSq
         phiGnTbL+b/pu42LnrJJgh4S/EU3rWx1wVFcPfyIVUCZT8uX+fflfgPn1bFAqZQ9ERBo
         TD8hMAc+bBpqXmRDfIZFTDDLUmIh3Au1gg6WxsLe0Saz1U2CMuvWH6+hFwb7wyaQoC8h
         98SuTBLEmFGap6wLa0LsgsbqFDVMBUYpHCF5y1NCj1O7HM7ANLJMrLcNMiQgLGYmWBco
         wl7g==
X-Gm-Message-State: AOAM5300B+b2kFhzPuwy8OSQIvw246+aiaYwDJShouwV8GEcpIZMh2zd
	ATcVEhkJykenFjwiNCkEaxiZatXQ4LkeVaOF
X-Google-Smtp-Source: 
 ABdhPJygw7tpN/GBDIyYW7cHdQYAxLERHe3NqTnoisP/IKezZiAl+jRNfbKxqfbfY4h31FsLylpwQw==
X-Received: by 2002:a17:902:ab50:b0:13f:4c70:9322 with SMTP id
 ij16-20020a170902ab5000b0013f4c709322mr159663plb.89.1634745424490;
        Wed, 20 Oct 2021 08:57:04 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id
 z126sm2664951pgz.55.2021.10.20.08.57.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:57:04 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell 1/2] config.py:  enable fedora34 workers
 for dunfell
Date: Wed, 20 Oct 2021 05:56:48 -1000
Message-Id: 
 <6455588afeccc79812a66b10f2a121ecbcb5f46d.1634745310.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634745310.git.steve@sakoman.com>
References: <cover.1634745310.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Oct 2021 15:57:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55108

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index db1b763..8792132 100644
--- a/config.py
+++ b/config.py
@@ -149,7 +149,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 workers_prev_releases = {
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.25.1


