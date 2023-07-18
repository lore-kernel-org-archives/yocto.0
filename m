Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 297B3EB64DD
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:35 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.1924.1689701187767811699
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=MjaONyVj;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: jpewhacker@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-563439ea4a2so3762421eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701186; x=1692293186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWbBbhHmUegupJ010srIZoJNpqjVp73X9lIWxTJhjKc=;
        b=MjaONyVj8ypgkc+6yXciuxYYVtcesJ4Hlq+TbHbqignDt8vGV95TOGvdfDgRhkTJ2g
         +pNlJ67OtmJwhfCvLtkCi++Etv8O7lWsIGbjy6zFI5N1ljmMc1lvplFQ0jcv2ISDHp0C
         ZoxAMS0WXP35gptXDKBgQKy90suJ4VB/ug+g7D3PaEx5EaysHeN77LrMerp3ThTnidje
         FkT1TzuFPPZIF2eKQLBCx7wqfgy5uFr52dHx1VkUKDqCp1CH3vTept/gd9yfhzOstezG
         Q0FC93IldvXqhG+D6tWEj1VEQAuEK4ZeHIhKehBIyskPOka4d6Tj+HknOHJHasr2hJds
         ihjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701186; x=1692293186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aWbBbhHmUegupJ010srIZoJNpqjVp73X9lIWxTJhjKc=;
        b=mB0t648oxalIhVM+MGqURl4jwimvBY004ZT5Mg071yUYfu5RC7bHtA/7LZCyqTxgBU
         sdWb9ohN4eiRWTNxa1htVpyA0imktKssYeQST16xATMf8oZUzuERu1SvgLpOeqq5YKS5
         Cd3xPYJNhTH9DHp84W0yeLl0TUyXo0GmB2zbwoeQTRwwXU67Q1+8oJ8lV6GtZ7PqDcgD
         lenG6AJSpReGcP3byzPwefN9j+PlhYr6doggAbbsbN4zgyZjvGeJfiOEAWgTxeTmXMNT
         PovLahTJ+bs3alL5wdCRJ2BgijILdpl1hJVwvlsKS62iIuKUih0m5iLWvaUVWe3h5whl
         c+XQ==
X-Gm-Message-State: ABy/qLZxLtFd/kRHJM/vFHugNfb6yJmQ8zu2vdW75DA8HO3Hyjznma0v
	Y0LdklSz57ELIj3goS4mkTPvoB1IPsw=
X-Google-Smtp-Source: APBJJlFv/0Vus93+4XEHDoLP7PitiS+x5B59QL3yM700n/idaQT1TfItYvRsdds5a+u3dY4Y3n0/Dg==
X-Received: by 2002:a4a:d295:0:b0:567:92:c45d with SMTP id h21-20020a4ad295000000b005670092c45dmr7338555oos.5.1689701186448;
        Tue, 18 Jul 2023 10:26:26 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:25 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 5/5] Flush stdout and stderr after test
Date: Tue, 18 Jul 2023 11:26:14 -0600
Message-Id: <20230718172614.469304-6-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230718172614.469304-1-JPEWhacker@gmail.com>
References: <20230718172614.469304-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60610

After reporting test results, flush the output buffers to ensure the
files are written out. Also flush again at the end of running all tests

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 utils.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/utils.c b/utils.c
index bd52544..59b8b77 100644
--- a/utils.c
+++ b/utils.c
@@ -601,6 +601,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			do_close(&pipefd_stderr[PIPE_READ]);
 			do_close(&pipefd_stderr[PIPE_WRITE]);
 
+			fflush(fp);
+			fflush(fp_stderr);
+
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 	} while (0);
@@ -611,6 +614,9 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	if (opts.xml_filename)
 		xml_finish(xh);
 
+	fflush(fp);
+	fflush(fp_stderr);
+
 	return rc;
 }
 
-- 
2.33.0


