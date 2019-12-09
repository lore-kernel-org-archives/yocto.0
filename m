Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.12001.1575904045858415439
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 07:07:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H3mQpqb9;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: vashok890@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C0A9E00ECC; Mon,  9 Dec 2019 07:07:25 -0800 (PST)
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
	*      (vashok890[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52673E0049C
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2019 07:07:24 -0800 (PST)
Received: by mail-pg1-f175.google.com with SMTP id k3so6618945pgc.3
        for <yocto@yoctoproject.org>; Mon, 09 Dec 2019 07:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=f4rIc+BjW5QNTn71N9L2zEHrOeumtqH2ezsUxcBb5fA=;
        b=H3mQpqb9YqJ995FvbuH93KeP5afO9XnmPS9He2x24VGw1Xz4v/O/8MEbdUlXHIHHXx
         mv+y287Li24VaGc3bvZUKi2s5XDcbT1VOwpFIOM8jNoVclJw7nvy6jbXZXsvMdubuWFy
         +2XQJvMNm8QtbGAaQQR6tj5+efsS9JiKqKnLkerA2VfQXWjEXw+u38wqL0g98/9/MqaV
         AxbkrjQYHBNb9j/Xnt+o1UUzukDvIvrgiK0vLMZscTYRHDS2Mk1F76+wKPPEQSW3q10o
         P5XJL2/VmEziDkafVI3Gam5EZQKfNJUhBu2aWpavsRoabJnI4en4wGnzMHqfLizSEpaO
         bISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=f4rIc+BjW5QNTn71N9L2zEHrOeumtqH2ezsUxcBb5fA=;
        b=WT0WW7hxGt7uCrL891uFSNC4kN9HzDOAF+maozlBaDpcivdlKPgn98oec29zYZUPmR
         52MA2VyCxO5tGLKWjYtK1y78/L0H7xrGsYoWAZuQss5a5j7JKMjRrJG+8zXhGzZkxQP6
         tivKkljYfSLIg4NBSav1f032tkIug2e8hLgP43Mf/T6PvkHAC/9+5G/UHeS7Q2f2Dj+f
         7tLGXzB8c6B7Ez79Zk9LtSxBSiLHeP28MXNhQRg50vL3Gqzni7AhUdt7QDF8Hq+n+ks8
         A8RemrDqOpfa4XyWb/PzgozU+gYDUubBrA3shrPhjyXSq5IaMTOOAXSHOBz0gjyRrllW
         18tg==
X-Gm-Message-State: APjAAAWhiAameDe58fPgZDV7pawl1zr2Z4R80TtrKLHHaDe0yquN62T3
	/8uB7lvBFok5vyXwbohxIpLTnrRkMOY=
X-Google-Smtp-Source: APXvYqzrS0+LWyRytDfbcjqovShKFJgCdKGLZZL3S4UEA6GCCi7Q0BRsJfc2ZE+5YWopg4nFqsexDg==
X-Received: by 2002:aa7:9351:: with SMTP id 17mr29204403pfn.16.1575904043554;
        Mon, 09 Dec 2019 07:07:23 -0800 (PST)
Received: from ?IPv6:2001:420:c0c8:1002::4d7? ([2001:420:c0c8:1002::4d7])
        by smtp.gmail.com with ESMTPSA id 133sm27245487pfy.14.2019.12.09.07.07.21
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 07:07:22 -0800 (PST)
From: "Varun A" <vashok890@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: [OE-core] [PATCH 0/2] fix can't login when debug-tweaks is not in IMAGE_FEATURES
Message-Id: <31B379FD-E470-4CBA-B18A-C42294A6DB07@gmail.com>
Date: Mon, 9 Dec 2019 20:37:15 +0530
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.9.1)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Was going through this thread. I see root password defined as root =
explicitly in the base-passwd master file I am using which is of =
security concern. Has any development come about this?Is there a patch =
to get around this issue?


