Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC458C7EE26
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 11:07:09 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.125417.1683025621463353973
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 04:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=LffnwvN6;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-54fb6ac1e44so50632397b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 04:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683025620; x=1685617620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tLA4gkuxBAF+Mwwc4Uj3bFPyJ9OM9l1h//lGvDk9OYQ=;
        b=LffnwvN6xtxEBDHGXmnP6icshc7Jz52BgxpQEAqvAddoqf40tT/PA20cNR9dUGkRsP
         ySXn5wQ6ArKbtkz76sPBZIdmCqG+ZEPbsLNNex/M0RxvMJzb4Iyw5gWf+cRuu656vvR1
         a53G1vYnudLH7huF3K8fI+nkC3DQOAIfQ9hwB+Iliy/haGQP9rB+28AXB3O5XY40fhiN
         cS13uwxmIQ51C5wtaEv4wlx24tIGsxxr7gP93NLThzflf4LoyISQ9KojG8rpEG9Q3GTF
         7o9COuUw8Ul03Ufa5DKJy/5YP6IyP2OM6IUq8qg+85xEoo5rnzDydMX+GU+s2bFW8JQS
         XZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683025620; x=1685617620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tLA4gkuxBAF+Mwwc4Uj3bFPyJ9OM9l1h//lGvDk9OYQ=;
        b=QmKGki4OIBTggmUS8YE8BDk4GPH33yg9o4VbMmdG2Vrd2diSz5M0HI4W1FaLDIaFIl
         eCDb78O1BpYY0XNdc8u6L0V7TqZ+ZK12MPYe7518ZVaa7fZSr69cLg05TrS/UJ726V6s
         Gt7PlP5vXVKvmJqv8cJThrEkBwcntjRHVq672mqq9+Nac7Tuuyk279STJzIE5vUY0bXl
         G9fNr+KjOJK8KzNgynw1rgNtJHADUx5Ie5paWdqT4/QPDbaewYR1G4SAxt2ZMypg61DH
         y1ZkMCF88WsOWivkCRxIUR+H3xKiYOmN9ldmU20hwv+2Au+/Ka6XSmd8eqEBWcOcJQE3
         rNwQ==
X-Gm-Message-State: AC+VfDwtyRbzNdopTdx5tDlhdsYx6AuI0fk7IrslCLb3DRqof7EHHydC
	5ycOzqIkZZmgzT6HaL/LwedstPULnGU=
X-Google-Smtp-Source: ACHHUZ4yzE9bj/Z7WYTDHgiUlclDlrn8HzSsdK6K0I+Knd3NsJkyRlBNogXlahcNCHSxX5VRCIjAbg==
X-Received: by 2002:a81:89c5:0:b0:541:8c8f:ec14 with SMTP id z188-20020a8189c5000000b005418c8fec14mr15406209ywf.14.1683025620393;
        Tue, 02 May 2023 04:07:00 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:aa99:c4d5:88d7:f86c])
        by smtp.gmail.com with ESMTPSA id i20-20020a0ddf14000000b0055aad7d3f34sm14247ywe.142.2023.05.02.04.06.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 04:06:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] oeqa: fix hash test to match new changes
Date: Tue,  2 May 2023 07:06:56 -0400
Message-Id: <20230502110657.2496963-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:07:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59835

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/lib/oeqa/runtime/cases/ima.py | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta-integrity/lib/oeqa/runtime/cases/ima.py b/meta-integrity/lib/oeqa/runtime/cases/ima.py
index 0c8617a..6b361ca 100644
--- a/meta-integrity/lib/oeqa/runtime/cases/ima.py
+++ b/meta-integrity/lib/oeqa/runtime/cases/ima.py
@@ -58,21 +58,19 @@ class IMACheck(OERuntimeTestCase):
     @OETestDepends(['ima.IMACheck.test_ima_enabled'])
     def test_ima_hash(self):
         ''' Test if IMA stores correct file hash '''
-        filename = "/etc/filetest"
+        filename = "/etc/ld.so.cache"
         ima_measure_file = "/sys/kernel/security/ima/ascii_runtime_measurements"
-        status, output = self.target.run("echo test > %s" % filename)
-        self.assertEqual(status, 0, "Cannot create file %s on target" % filename)
 
         # wait for the IMA system to update the entry
-        maximum_tries = 30
+        maximum_tries = 3 
         tries = 0
-        status, output = self.target.run("sha1sum %s" %filename)
+        status, output = self.target.run("sha256sum %s" %filename)
         sleep(2)
         current_hash = output.split()[0]
         ima_hash = ""
 
         while tries < maximum_tries:
-            status, output = self.target.run("cat %s | grep %s" \
+            status, output = self.target.run("cat %s | grep -e '%s'" \
                 % (ima_measure_file, filename))
             # get last entry, 4th field
             if status == 0:
-- 
2.25.1


