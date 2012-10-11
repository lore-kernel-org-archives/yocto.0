Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1BADE0027E
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 10:27:16 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so2625997pbc.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 10:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version:x-mailer;
	bh=xDSaHS8REI0n3pamUEbsjVERVMOP1IyTFlcIJ2m83WM=;
	b=e92aUCpfZB6NXwbCeyD/2IVs3Nkr9MsM1Q9lxd9tkqZDJ3X0J27hzXvJ+/D1+CQn7h
	QGeqbzPMtMFL1/74YnNum+RQbb5qTlEXkWYwjKmMgjXomjrxnxjzIoijgseKElbeUdCN
	lerTifKtYPPeKxifL5BGc+egIQUKTOU/mlFJaiyIvbXH9cgJLNm1b4KvflJ1eD3K+llZ
	72Q/GJ/nQaUBr9qK2CEhvecqwru9fER16nO7I9gRtu+lkjMbMc3ee/02KIrODSeC3AZM
	zuR0qxIV8SaApUGRfnzsxpxPsyVzp9Q9MU0br/3e0NvpKTYdAIkNkVXBsUHk+c2v7PhQ
	A2GQ==
Received: by 10.66.78.6 with SMTP id x6mr3974793paw.41.1349976434563;
	Thu, 11 Oct 2012 10:27:14 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id v9sm2902914paz.6.2012.10.11.10.27.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 11 Oct 2012 10:27:13 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 11 Oct 2012 21:27:09 +0400
Message-Id: <4307666A-586F-4DD5-9A83-E698E87254DD@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Getting gcc-4.7 and eglibc-2.16 to work with PowerPC440
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Oct 2012 17:27:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                 After I finished getting gcc-4.5.4 and eglibc-2.13 to =
build for the PowerPC440 target, using soft-float, I tried the following =
combinations

1. gcc-4.7.2 with eglibc-2.13 - result, no prompt on the login screen, =
able to ping the target board, but no root login prompt. It doesn't =
crash during the boot process either.

2. gcc-4.5.4 with eglibc-2.16: init crash with a kernel panic, =
immediately after boot, just before the login prompt.

I vaguely recall somewhere in one of the patches, or browsing some =
discussions threads on the internet, that before gcc-4.5, support would =
be dropped for specific powerpc variants. Perhaps is that why I'm =
running into these issues?

Best regards,

Elvis Dowson=

