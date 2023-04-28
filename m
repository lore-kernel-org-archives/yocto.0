Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65373C77B60
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 11:54:08 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.17295.1682682847774174079
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 04:54:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=jl6V9UAG;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-2f40b891420so9423897f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 04:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682682846; x=1685274846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NbEw3KKVZeBL/mSHu0eAga02CZDSs6xFSk8NdUV39Q4=;
        b=jl6V9UAGt/EUZOKTDjW4JD4Ks09q2z42W19SQz9MFx1rC8s8IPdSZyu24RML8ZR4Eo
         PhtrMFohz7/Nc8uyCgtNv4ybuirD4Ao88nGo/jYp/w/mPbzXCSy9Eu/rgEMfEllLcktH
         qwn9h7PL+Dq1Z9l/DBhQ+Hc15VlUz95w0CN32mgtlBo506eZk9/mChtMn9fhMTaTudNE
         2qvpu98uOe2867rQhrfWAKmWiMsy04rZUS9b5LgGXz/Gbz4BqjePSh1IKGctnmiCAo+d
         wxCkvUSdRQU+ltebESrY0cjm8bmymdQRRrA7SjNMZNgW+NW0sXf3lUoKNo9cvHbnwhOC
         0eQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682682846; x=1685274846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NbEw3KKVZeBL/mSHu0eAga02CZDSs6xFSk8NdUV39Q4=;
        b=kl0YgRM3zCUsXtCnC1K3iR0BzXbM9fw6Q/VbkAivjkw8Zb4Yp4r9vAgshNu8nlrMqA
         w0MYDUxiXsowZ2Eg4NywWgmbd6YznQ4kYmUFYjW8pfHWOgzCUdYquxKKJNXzdD5orZFX
         6liJPL2fGMNTl9V8aTKFA9Jun63NRbGB1k0/6GwT0bNM9BoPJWmZNTs5gBXy0tE6JP5N
         t1fV9IjJrbDyactqCjKA3RDJ/zUpZ2Nq2dXvTTh5Jb7kZ58SDumdvIag9uS64CV0bcAY
         Lh1hClZanz6UYQ9T/H6hQ2wll0Ka6jtsnuBTa6zzn+B/MPjYjN/Qekp7g43rmb9ejQFT
         4+OA==
X-Gm-Message-State: AC+VfDx/eYX6rtQswLyAk9W3kOUkJH/An9jt/3p7CWmjxYIVygP0xv1D
	kSYJGN55qlrRnz0EGnfNBOwGcWGr2iU=
X-Google-Smtp-Source: ACHHUZ7oxLQvGhdikKgW1P8g8nVbg/4RK27ZIy/1NWj/srGxP2moz4ygvPFSOoyQLEKZLGVJ7dr+Bg==
X-Received: by 2002:adf:ed11:0:b0:2f9:a822:89bf with SMTP id a17-20020adfed11000000b002f9a82289bfmr3731589wro.16.1682682845834;
        Fri, 28 Apr 2023 04:54:05 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id h16-20020a5d5490000000b00304b5b2f5ffsm2682002wrv.53.2023.04.28.04.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 04:54:05 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [meta-security][PATCH] maintainers.inc: rename to avoid clashes with oe-core
Date: Fri, 28 Apr 2023 13:53:59 +0200
Message-Id: <20230428115359.1066110-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 11:54:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59795

Additional maintainer entries should be added to ones provided by oe-core,
but not be replacing them, as that breaks oe-core tests.

Another option is to place them directly into recipes.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../include/{maintainers.inc => maintainers-meta-security.inc}    | 0
 .../distro/include/{maintainers.inc => maintainers-meta-tpm.inc}  | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename conf/distro/include/{maintainers.inc => maintainers-meta-security.inc} (100%)
 rename meta-tpm/conf/distro/include/{maintainers.inc => maintainers-meta-tpm.inc} (100%)

diff --git a/conf/distro/include/maintainers.inc b/conf/distro/include/maintainers-meta-security.inc
similarity index 100%
rename from conf/distro/include/maintainers.inc
rename to conf/distro/include/maintainers-meta-security.inc
diff --git a/meta-tpm/conf/distro/include/maintainers.inc b/meta-tpm/conf/distro/include/maintainers-meta-tpm.inc
similarity index 100%
rename from meta-tpm/conf/distro/include/maintainers.inc
rename to meta-tpm/conf/distro/include/maintainers-meta-tpm.inc
-- 
2.30.2


