Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85597E00992; Mon,  6 Feb 2017 00:41:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F20E9E007BA
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2017 00:41:46 -0800 (PST)
Received: by mail-yw0-f170.google.com with SMTP id u68so44987847ywg.0
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2017 00:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yVvUlAZDYFXAqo7x/mvbsRj3tbX9FmEhomNHeRjJsHE=;
	b=rBafvUrZTmqbmgEIM33KuK8N90NVNK9JBZaDbu6edjeKgjghSWSF3Dtyts9np9tlk1
	sxr76d6AICAOqrMo0vPWw3JPuMjtpLxzGvfSFAvjf700I4b8/B/QpPtNiCt7pS0i7CBK
	FY92yoQcNvUh3sl09d47EgMSxtKhJnxeayc/o8jJzCwoDswvOmxzM1iTq8lcZVsQlz07
	lTPSdoVi9n+cFbcR8O2iS4SCs+xvjc6i159cThflxLkb5qzT7zDhsgx33FRHzcOkIvfa
	qXsVSYHjyerI4V4nZ6hIJC6m4XBhcJtjZN9HYLr/GeMuKtX3SIZxyWPeEYS2iCZ+t0Pa
	qFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yVvUlAZDYFXAqo7x/mvbsRj3tbX9FmEhomNHeRjJsHE=;
	b=YMY1nxVKsRCYDQ/Qdt/eh0vQtaX+51arWaoL/rKvBmcbcIofCIhtYv+EcsUOmeWSkq
	iNI55IcbGgfQlY1smbXd3nmZUbIWAxDPfCX3TqaEfMyATTjyfo/FRQwYRmeF6+IRdHqj
	UdqYK2KyK2r9nuLk9jyj1YuWzqmwb6AiLgYx6SBNJIvyF7YpTrKlsN4hmRqWzrzwUfoG
	XtB5/E6kYR73ymTNqy0O9DMEdKJssgWaziocU5WTMi7hYRR+oURepXwhNoWs59AqgjXe
	FgI1D2eFNs/d24TsUlwWi5sIXSoKdjSDwwY7Dkiui8vIMSEPPwL4t6vYS+bd0KbpDBZZ
	qOfA==
X-Gm-Message-State: AIkVDXLhPsh0tBPzWdo95IyesPyVkwtmOIP84T/IlSGTalr4fbl6lGXH5Bg+9ewedMFM6kcs0onoyfhJuRCNLQ==
X-Received: by 10.13.192.193 with SMTP id b184mr6548146ywd.30.1486370505765;
	Mon, 06 Feb 2017 00:41:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.66.23 with HTTP; Mon, 6 Feb 2017 00:41:45 -0800 (PST)
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 6 Feb 2017 09:41:45 +0100
Message-ID: <CAAfyv35EFzkHyJCMEzQ+bS62a1hGYFdgTnvyCohjZfbYO9GuWA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: live core-image-minimal 'Waiting for removable media ...' problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Feb 2017 08:41:50 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm adding new bsp layer for x86_64 machine and I successfully build
core-image-minimal. I burn iso file to usb key and after startup I can
see grub options. When choose boot option I can see kernel is booted
and init script from initrd is started but I see only : Waiting for
removable media and that's it (I have CONFIG_DEVTMPFS=y and also
CONFIG_DEVTMPFS_MOUNT=y). Any ideas what to check and why it's not
proceeding. I looked to initscrip and it looks for rootfs.img in
/run/media (maybe run folder doesn't exists?) Using jethro release
(maybe eudev issue?) Many thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

