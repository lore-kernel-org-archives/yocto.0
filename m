Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 109DEEF9000
	for <webhook@archiver.kernel.org>; Wed,  4 Mar 2026 16:04:25 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.21945.1772640260627193019
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2026 08:04:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Cl+9jRqI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48371119eacso85079585e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2026 08:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1772640258; x=1773245058; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ghFLcYGGVkswGGXn4VTfWLY1qr7NlOxlVt2Resx7eaE=;
        b=Cl+9jRqIR4xLeD3oRu4E1p7m+i/i0OhsYfUEzuHFtTta8m9y2jFA6sa5JIf2LQOaVl
         4RvJp/VI+Ro6+LIR86Sr1QSJgcjGumPXJ/WAZDs2/McAvwPZLBBtgRFP163Npy/yRuc2
         o5V38iZNb8MxFW+rzukDYdQQWu/A4+VO2RauE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772640258; x=1773245058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghFLcYGGVkswGGXn4VTfWLY1qr7NlOxlVt2Resx7eaE=;
        b=qV37cuDc1ISTMXyIAoVCce/1R2rLAZuqzXHh1zmDr83eAr/oiNB+hhR5hYH4J0YWHb
         vprLru5+i0TVImDEJPX7CWfiXvEGPOPXSZKKBJyRW4mw0x1Oju6NlQnNH8Edid18/wv7
         J26fZTr96G9vy/Yl9H6J+QQ8aGOqcxyyhiXbC0N4/qk6V5BrxrfOoRn6mNcdI37UP5yf
         IPJoNmR/qjjD63MQgsqWAvVUamgp/DOuvzmVBm+loX+eHmHE3Tl0jlI3mu4u+zvZFNm/
         Di0CgJ76c8zQiQVdg0jAvjYGUXzekKLLBGil/fDpVjzT4Ynp+NkSbu/Y7rVZ1iY2bFmX
         7+2w==
X-Gm-Message-State: AOJu0YzKUNVBg44Q5EwoB0MJApkqKCi0LND67A6tP8KeCXiLm6q3vm2s
	WfWJMdBXAM2qEJFeKbDxW3wssX3CkwL2MN4fwe192Eo3+5BgncZVCF+Ckz9vS0ivkTljgQQkIai
	UfLp2nFY=
X-Gm-Gg: ATEYQzxApyR/ONb/hITdPWTThYvm/+WLBPaqSSKvqQy5ZdbZcR7jPsdNj+NIH8JoBml
	QJJabWx2nFgmYUos8LvRXYp1eFw/jdb2krvKgN27K2Ew3EsXm+UnL7J4dvSyN/ycbwQbO+6Ngey
	gTdSkq1SRxO9kGkmjBlRBw9Ks/W7rv50ZEs7o8L4KHLhPenGC7v186ymjChVYb/69j+3ZC9qF4V
	ZCt6wgKTLYSA/4xOaQHFH5QWlIIbC8XEM8YhRyqCksmSKIk+uh/g6KnU6XdhRvL3OJS9b4m4oFD
	am2ko83mYwEohj/Kj6yD+/txnUuMX+qky21eblJ5r1qbU5N+JnSjddBuLf2ect8lENvVV0rQUFw
	0FwUa0jEG16O1WHSKLBGjHvaY1jXS2rQRT1SVXEdfNnFF9SMBZFrhcQ4wz9VQwyGzU1v7x6MvvG
	MUc5KlA+YYTW/UlmpwM5wQFHMG54MZgt4N3uCUnNwdFckhLao55P5usl/jeWFamQ==
X-Received: by 2002:a05:600c:45c6:b0:483:badb:6191 with SMTP id 5b1f17b1804b1-48519848c97mr37689975e9.8.1772640258426;
        Wed, 04 Mar 2026 08:04:18 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:d88a:b244:a11f:d7c7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485186747a0sm120617035e9.0.2026.03.04.08.04.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 08:04:17 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [ptest-runner2] [PATCH] main.c: Set PYTHONUNBUFFERED in the environment
Date: Wed,  4 Mar 2026 16:04:16 +0000
Message-ID: <20260304160416.1988859-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2026 16:04:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66304

When python tests are run, on a normal terminal they output unbuffered but
they behave differently, buffering the output. This creates issues with the
timeout handling that ptest-runner uses. This is the cause of some of the
strange ptest timeout issues we see.

Set the environment variable in all cases to avoid this. An alternative
would be to update every ptest runner script that uses python but that seems
to be a lot of work for no good reason when we can just set it here.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/main.c b/main.c
index 594d198..3d5b0d4 100644
--- a/main.c
+++ b/main.c
@@ -238,6 +238,13 @@ main(int argc, char *argv[])
 	for (i = 0; i < ptest_exclude_num; i++)
 		ptest_list_remove(run, opts.exclude[i], 1);
 
+	/* python programs need to use unbuffered output for our timeouts to work correctly */
+	rc = putenv("PYTHONUNBUFFERED=1");
+	if (rc) {
+		fprintf(stderr, "Couldn't putenv: %d\n", rc);
+		exit(1);
+	}
+
 	rc = run_ptests(run, opts, argv[0], stdout, stderr);
 	fprintf(stdout, "TOTAL: %d FAIL: %d\n", ptest_list_length(run), rc);
 	if (rc > 0)

