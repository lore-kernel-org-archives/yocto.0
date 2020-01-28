Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6298.1580199932812304167
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 00:25:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qAmR/FKX;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: cavallini.koan@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48773E0158F; Tue, 28 Jan 2020 00:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (cavallini.koan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB9F3E014B5
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 00:25:29 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id x1so13277718iop.7
        for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 00:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lno4QsVuYZbyMTny5D318UwVRTbufJbKraCcg0IpWn8=;
        b=qAmR/FKXHqde18rSsDJulXSPgaKZsPeX+TX2o6fkHk+PLe5g1z2gOjqKBChOHW4/yh
         XEv0aCyinsctI92Pi36VpJE1+OQgXCBmHvP3ffRt6K4LuLI53F5AGG4iDOZYmeemL32+
         K/1AKYVwJXzITlJNEgcvHWdy/aQni1kdro7sbWvWaljnJM6YukHcXD51B/9583e7QScK
         xAEvfGWRwHIG4MHEfSCzwWlQaVtQcYG8kSZfaGAD3+IeDxlh5MwJTH/VD1B5MjpKQOLV
         1H3ZDbgQ+tWRZiBb8ACg8enlzqozc3MBopOADyr8oHSKXK2pY0IVHkiBJnOyPsXnQ6hO
         auzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lno4QsVuYZbyMTny5D318UwVRTbufJbKraCcg0IpWn8=;
        b=FlcCe8bU4Rr6Wi+B4NI5i7XiolafOtP9zkTNAotbXAIsQ8ifW6MHFyBoCGQ/JvYDoZ
         YApmOosj0AIziGk0I9QXFRBBHpgu5QYHgLc74yvD8cIpkJeJl3RBfoltF0ET6Omv+7yo
         PwCQWoLuDeptBrzsMbNFFh7Da8+D4GE2abWpKIlPi2U6hnw2sLR0UYcC5QARlWLe9Kwe
         ieBSGFc2DweScuXy54LFmebOKNlBHRyzM3VQRDeXh8L4aQnXGC4yg+oTE0C3/MZRT3kh
         2ag1L9t+babWlpNN04HOQ0zVUdx5K+r8+nhfU4rNm/xfAqPLa3WIT8f/nBhyyynV36eA
         5I5Q==
X-Gm-Message-State: APjAAAWiI1z00MNsWoyRCyRZQA9rGIa7/C7v2u/ksedhFFWBiIB7Pk9B
	kTewlhey+25eSg32HRwxx+s0IjccC672zHhtUXfKSzs1
X-Google-Smtp-Source: APXvYqyZnphuWwbgr0dKJ2evkI3kKfiEsb6KL6AUlILHndG49Cbe5wlXXhNLL4DSBxj3Xkm6AKi5KNT6uWojWFwOTvA=
X-Received: by 2002:a02:3312:: with SMTP id c18mr16624275jae.24.1580199928941;
 Tue, 28 Jan 2020 00:25:28 -0800 (PST)
MIME-Version: 1.0
From: "Marco Cavallini" <cavallini.koan@gmail.com>
Date: Tue, 28 Jan 2020 09:25:18 +0100
Message-ID: <CAFQ+DijY3q_Fc56uwCKuH_hPiH1LMk3_B=SR5rqWpA70OHxZ7g@mail.gmail.com>
Subject: [yocto] ERROR: could not relocate installing toolchain SDK
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,
I found a bug when installing a toolchain sdk and the installation
path contains a dash.
Using the default directory or a path without a dash it works.

Yocto 3.0 'zeus'

$ ./fslc-x11-glibc-x86_64-meta-toolchain-cortexa9t2hf-neon-koan-toolchain-3.0.sh
FSLC X11 SDK installer version 3.0
==================================
Enter target directory for SDK (default: /opt/fslc-x11/3.0): /opt/poky/test-3.0
You are about to install the SDK to "/opt/poky/test-3.0". Proceed [Y/n]?
Extracting SDK...............................................................................................................done
Setting it up...ERROR: could not relocate
/opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mc,
interp size = 73 and 76 is needed.
ERROR: could not relocate
/opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mca,
interp size = 73 and 76 is needed.
ERROR: could not relocate
/opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/clang-9,
interp size = 73 and 76 is needed.
ERROR: could not relocate
/opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mt,
interp size = 73 and 76 is needed.
...etc...

Distinti Saluti / Best Regards
--
Marco Cavallini | KOAN sas | Bergamo - Italia
embedded software engineering
https://KoanSoftware.com
