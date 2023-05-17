Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33328C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 17:28:41 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
 by mx.groups.io with SMTP id smtpd.web11.56813.1684344512652734259
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 10:28:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@google.com header.s=20221208 header.b=qcDqYLgk;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.219.202, mailfrom: 3vw5lzaqkbzod85laiiaf8.6igsi6nifcmnm.si6nijlid86n.ila@flex--jebr.bounces.google.com)
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-ba83fed50e1so1184399276.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 10:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684344511; x=1686936511;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IVvbi9FuJHykBbYp8WvJeuRz+9p3vCKVJLEj0wfxOfM=;
        b=qcDqYLgk6JvxCuHcBrbeh3wMx5sintmG8mcVOO0m8dkS0h3oyIfsqpkdpyIyG6ig17
         0sF5YPHaApO3Y1/tnvSgklasyknM/LXB3z4KxfNOHxiCJBS184GkVgl2ORJ0BLxa6VXS
         Sy3l0POjF0dNrW+8tDKiLWdZwir6afD9LABTj3dn2VrS54H8Hj7KD4pZ+4VCCszheANQ
         dmP73KYyrRyI5I5jIp/HsRELaVVYFDwpR2EibX1tT5SNUzaZP3RXUduYlJt5QRsdfK5i
         HekUvCatCLXFHI9YIhE49YP4/waRu9Fj9pDI4hiQDquAYAGEtzqif+id0ApcPpXLoaMX
         8ZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684344511; x=1686936511;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IVvbi9FuJHykBbYp8WvJeuRz+9p3vCKVJLEj0wfxOfM=;
        b=QkboCKtnjGsZx4QMBJ+ej4LBhTkMbIrDqhoJnwUN9OYIevG0ue7R/rQFv1EhT8gYIH
         1IAeijKLVhmeLuEnbQPJj78x+SaxuzxKu2MCCVWPhxTDBuYNUEOLrG86y3Hb8SHmbdeY
         LzfNO8gZ+qitngAVpI6A9xQO/v9AMO+hqPB8ipKmiOCTylgVY8Mk26rKMNd4qQQpLpTf
         EWdO6xZb95jK/mol5rgQvMpey92qnrUtiLg0HWGUp/sDd/6q9D9jCID+UVjGxMTk5vNL
         24qA5I5nKOawNwi2sc/ugHJzqmGqPLCGf9m8b9D6vUVbLoq3DkKR8h2/o1laJN73zV9A
         aTow==
X-Gm-Message-State: AC+VfDzL52hLRQCEkm1bvXa3LDy3+x7k4/4teWTrUSFjeythf/naQc9m
	h8+fJFnSfRicN8MsRgRuFDevJvU6RcBaQxdF8RZUZGmml8mvHtdueUFH9ShWzcoV3sfGsvwKmRO
	QEiGk1ZudtyqPO0XBWB64xkkXRbHW6NxKqwFZ8yaUUcYnzJx+dm5uiz8EuP4nEDXy
X-Google-Smtp-Source: ACHHUZ45XQTxvTnNRxPCbWAUTkxCFFgPn+jnZlBdoHDvD5oPyJXoauQhKeHTWXn69e3O0Nm6cvSgZDoq
X-Received: from jebr.svl.corp.google.com ([2620:15c:2c5:13:892c:b9b6:81fd:adfd])
 (user=jebr job=sendgmr) by 2002:a25:d203:0:b0:ba8:1646:c15d with SMTP id
 j3-20020a25d203000000b00ba81646c15dmr1937591ybg.1.1684344511606; Wed, 17 May
 2023 10:28:31 -0700 (PDT)
Date: Wed, 17 May 2023 10:27:30 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.1.698.g37aff9b760-goog
Message-ID: <20230517172730.3837643-1-jebr@google.com>
Subject: [meta-security][PATCH] libhoth_git.bb:SRCREV bump 1622e8a04..d769296220d
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: edtanous@google.com, wltu@google.com, 
	John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 17:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60045

From: John Edward Broadbent <jebr@google.com>

Updating libhoth to match version in openbmc
https://gerrit.openbmc.org/c/openbmc/openbmc/+/63424

libhoth detailed changes:

Willy Tu
    Expose header files expose USB APIs

aranikam
    Add flash_spi_info command
    Add address mode flag for spi update/read

Chris Evans
    Rename ec_ commands; permit old command names as an alias.
    Apply clang-format, and enable it as a check action. (#24)

Sui Chen
    Add payload status
    Add console snapshot

Daimeng Wang
    libhoth: automated mtd mailbox discovery
    libhoth: implement MTD transport
    libhoth: add MTD backend boilerplate API

Yoan Andreev
    Dont check for non-snapshot console params
    Extern c wrap (#22)
    Build improvements (#18)
    Add basic abstraction to libhoth and SPIDEV support (#17)

Vidya Satyamsetti
    Add extern

Kor Nielsen
    htool console: Don't leave O_NONBLOCK set on stdin
    [fix] In legacy mailbox protocol, look at response size.
    [fix] Support legacy response buffers larger than 62 bytes.
    [feat] htool: Support Hoth-B devices.
    Add --baud_rate flag to "htool console".
    Setup github workflow to build project.
    Rename "htool console -l" to "htool console -n".
    Add --onlcr flag to "htool console".
    Make example visibility public.
    Fix BUILD file formatting.
    Remove out-of-date :enumerate and :ec_hello.
    Add libusb to bazel WORKSPACE.
    Fix undefined behavior in htool command handling.

Signed-off-by: John Edward Broadbent <jebr@google.com>
---
 meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
index a3ebce7..0485afc 100644
--- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
+++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
@@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
 SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
-SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
+SRCREV = "769296220dc88df33f4726aa11e39e049257b3c4"
 
 DEPENDS += "libusb1"
 
-- 
2.40.1.698.g37aff9b760-goog


