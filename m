Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE01CCE79A8
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 19:43:21 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
 by mx.groups.io with SMTP id smtpd.web11.19743.1695152591840233213
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Sep 2023 12:43:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20230601 header.b=BDVOR8pW;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.214.202, mailfrom: 3zvkjzqqkbrk830g5dd5a3.1dbnd1ida7hih.nd1idegd831i.dg5@flex--jebr.bounces.google.com)
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-1c56bab69c4so20888565ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 12:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695152591; x=1695757391; darn=lists.yoctoproject.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mWtz+4L7f1opjdR8vVvyFOM9v9nuJBoVT0u3u/UOmGo=;
        b=BDVOR8pWHEtSnHgHIEyp3IpAlGyTMWVOwU2K9DZ0vx2VDHiZS9NuvyowIzpp1KjBge
         vNNNe9Qh4HkKjVp806NnRgo1oTm30cxRsii6bK46Zh5XQS9O+GMFTKLuisdxSJDiiOu3
         SqKncgGL5CkQqt8/VKFlET58OJJMmNU3xDcuf+K6p4UDK8DBabBszIY3EOflGfe9DIee
         NKK4tCNKIMD14u+s01eUzvviU9AHthUxhCSWCBtxzCPTlYhVovOS6JvtpHmty63cwxXL
         cNKXnY1hRUGKsiQ/XKZa8mLQsKZx08qEnZwUJpHq0qKMcWtzK2V7t0xJgr3U2jq0q//Q
         kdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695152591; x=1695757391;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mWtz+4L7f1opjdR8vVvyFOM9v9nuJBoVT0u3u/UOmGo=;
        b=I745FRpdHVglGa5yT3keHJdAyPnOuJ6g45+Fn6OaYT9FlhoUc2us046Dpdg0UP7t/W
         6SaSp8pEWBJfjmhAmoM1xRxoo0WtEE94LGUxdi572z+UKm+PjWYUwvDuLRDrmrRkBJ/N
         Q9fDajm/YmrH+INzleR/h9tBSfMUGeQ6Y9yeJ4sdizuh2HoSrvQHRCW0tndfaR6W7PBI
         pm/XbIJEmE24JVYCP7hAxkGh6ubr288Ti01xufpmZTfJAm65OYmW06Dfgkm9DFDhY6TM
         73JEvB/IxIz5cJCuIwIuYDiaB+xPaWlGsFk3cPTHAayhu0ebFjrWYvsWnzTa5TIEGkyM
         MHJQ==
X-Gm-Message-State: AOJu0YxP8enHT52Et9SlDtTyxY+6bPNFydQzSp/UEd/lJRA5CjgcJrF+
	mGHmysStNFtJsJhZWpksR8x8eTIA1es0fAnvgiBajasrpLh8MJwztYW704IkHKaGOiT++q4YbnW
	J0SUbuScqU2j2mdygg8HlZLFW2plKJ/6CiL9qLwpdIsiRAOhnMGACCvKV+Vxc64A3
X-Google-Smtp-Source: AGHT+IExTsa6aLGr7FtqqEJwO0yPFjXqHZqZqJBNuHDwIVFhcX3D+jd5Du3Xs3EKj4gR0q+gJyzv8ZRx
X-Received: from jebrmediumcloud.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:33f4])
 (user=jebr job=sendgmr) by 2002:a17:902:ca02:b0:1c4:2260:1c16 with SMTP id
 w2-20020a170902ca0200b001c422601c16mr2954pld.11.1695152590975; Tue, 19 Sep
 2023 12:43:10 -0700 (PDT)
Date: Tue, 19 Sep 2023 19:43:03 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919194303.3585144-1-jebr@google.com>
Subject: [meta-security][PATCH] libhoth: Update
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: wltu@google.com, John Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 19:43:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61046

From: John Broadbent <jebr@google.com>

Changelog:
    Royce Rajan
        0e3eec6 Claim + Release USB connection when running `htool console`
        b36ebfc bazel: Stamp Git commit as version
        fd90feb meson: Stamp Git commit as version
        ba1403d Add get/clear panic record commands (#30)
    Chris Evans
        e34e9bd Update README.md for recently-added commands.
    Daimeng Wang
        611381e htool: Implement authz_record read/erase/build/set
        aaed60f htool: Add authz_record command API
        ad68019 libhoth: MTD allows zero byte read
    Pai Peng
        101f711 Add the 'statistics' command

Signed-off-by: John Broadbent <jebr@google.com>
---
 meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index 0485afc..5c7305c 100644
--- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
-SRCREV = "769296220dc88df33f4726aa11e39e049257b3c4"
+SRCREV = "0e3eec6937d35c602ce497444eda05f3c465b5a8"
 
 DEPENDS += "libusb1"
 
-- 
2.42.0.459.ge4e396fd5e-goog


