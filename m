Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEC5C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 22:04:21 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.105436.1701986565918860192
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 14:02:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=sYm8EZnQ;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: marlon.rodriguez-garcia@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id C94919C0B24
	for <yocto@lists.yoctoproject.org>; Thu,  7 Dec 2023 17:02:44 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id 4QV-0zG9rkQ7 for <yocto@lists.yoctoproject.org>;
 Thu,  7 Dec 2023 17:02:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 76CA69C3298
	for <yocto@lists.yoctoproject.org>; Thu,  7 Dec 2023 17:02:44 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 76CA69C3298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1701986564; bh=kjmx/TwhRV0yr8x0iM+LVWReQcP8FjZvguO8pV44M6M=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=sYm8EZnQXt0B//YJoEpmDxqFChON1B/dGl7xfXjlTmkGAMUPytAHL5rXYDAfi+oZy
	 srB6pFz3vwD4Vx/6Cek76YZudLtPq8AVs9FJM5oTndSLSIvF3siz2wH+YZ6L5fvAkZ
	 RWF9sdpTf3LLA9/E1GG4on+KmWo0321lotruk3NEAFDQoGWn8Z9bKY8nQ1WdGf5aAh
	 6RozFJ8+PPiiY1JDb54obaNS7uPgUWrR7mW3+4PeBl01fersfDDZF0yO7/ReTkj5mo
	 hTyETB3FqiWI9+OqoDAPT+Osqd1s4oTnxzQ1RCblKyW5ius9ctMn2Tz7KjYx/HmYax
	 VU6FeIV+5IPmw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 2um7kYHfYQtA for <yocto@lists.yoctoproject.org>;
 Thu,  7 Dec 2023 17:02:44 -0500 (EST)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 6343A9C0B24
	for <yocto@lists.yoctoproject.org>; Thu,  7 Dec 2023 17:02:44 -0500 (EST)
Date: Thu, 7 Dec 2023 17:02:44 -0500 (EST)
From: "Marlon Rodriguez Garcia" <marlon.rodriguez-garcia@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Message-ID: <1777760102.1602457.1701986564186.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20231207210834.205200-1-marlon.rodriguez-garcia@savoirfairelinux.com>
References: <20231207210834.205200-1-marlon.rodriguez-garcia@savoirfairelinux.com>
Subject: Re: [PATCH yocto-autobuilder-helper] script/run-toaster-test : Added new global variables needed to run test in toaster build folder
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.15_GA_4562 (ZimbraWebClient - FF119 (Linux)/8.8.15_GA_4570)
Thread-Topic: script/run-toaster-test : Added new global variables needed to run test in toaster build folder
Thread-Index: DmLk3ffirJg/vw2eQIWqDVEoZsgLLw==
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 22:04:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61833



----- Original Message -----
From: "Marlon Rodriguez Garcia" <marlon.rodriguez-garcia@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Sent: Thursday, December 7, 2023 4:08:34 PM
Subject: [PATCH yocto-autobuilder-helper] script/run-toaster-test : Added new global variables needed to run test in toaster build folder

Update run-toaster-test to include BUILDDIR and TOASTER_TEST_USE_SSTATE_MIRROR which will be use in the build test in toaster

Signed-off-by: Marlon Rodriguez Garcia <marlon.rodriguez-garcia@savoirfairelinux.com>
---
 scripts/run-toaster-tests | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index b694e37..ba1f6db 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -20,6 +20,8 @@ export SSTATE_DIR=$(grep '^SSTATE_DIR=' bbenv | cut -d "=" -f2- | sed -e 's/^"//
 export DL_DIR=$(grep '^DL_DIR=' bbenv | cut -d "=" -f2- | sed -e 's/^"//' -e 's/"$//')
 export TOASTER_DJANGO_TMPDIR=$builddir
 export TOASTER_DIR=$builddir
+export TOASTER_TEST_USE_SSTATE_MIRROR=True
+export BUILDDIR=$builddir/
 
 mkdir -p toaster_logs
 
-- 
2.34.1

