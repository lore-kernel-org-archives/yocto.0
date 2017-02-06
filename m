Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1192CE00992; Mon,  6 Feb 2017 03:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41108E007BA
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2017 03:27:45 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id v77so110735948wmv.0
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2017 03:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iXNeooBDS38AO32SKAI75ZnlEF0gVVVH1qOtHIZhsNQ=;
	b=dMUIvTt/F2NVbE4LX0TGGdzFBBNC0eC/YcZfd1gmDcnbMAlxFF2OsuA5HhFqmJoyGG
	C41tF4O+z3rM0vR57prbIt6cimIqocUnEkM8PC3c/9Q4+PpQBVcxl2bUz7ES8NaI0UEZ
	bZ8KgOihMqnogI6AjEpDQXspvQhETFkz2K8zija1N376D9h1zXGNb5AnS+1xsq/G1S1f
	Ea2yCRI+hTXzpj5LneCSmz3+JJzj/F4BDM8RHStve9NtGOnxMKSnRwPSj3gz2iry0fV8
	zeVZT61oXKsPitL5ZMPV7auuasOGoyLMmZqIR9mY+JSHmmte+bnSDTqEE/8EeuLim9eS
	xDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iXNeooBDS38AO32SKAI75ZnlEF0gVVVH1qOtHIZhsNQ=;
	b=B6Z3qzmSAPJIV8TZxnEGZp/wZm4XPBo9QuHCqx6wc4LmMNa+BnfGxvWjhMwlX13dDw
	U2ci9Am3R9/UdLFOyTnZUNvOFsbeBI2O4SNfmaUydqXiXqCr0N7cud/GcRZi8S7wrn49
	7rQqrnwUIrMW0Z2YlHD8nCqHLxk2o01v6tnPu7JR9aNAcWzzbVJXuht1LexJkZfcZ6Pt
	WbH3hX2+blZj0EUCv32RjO2TMdVv/EW/9suho20TOhUZF1FPOSewS/KdhNomIhvkJ3P0
	ZpGxI3+oWHRwyt70WMnlAoezkxxaAHwcr76nsNYsy/kZd8q8JfJsgSnphJjCUYckFdtg
	6uMw==
X-Gm-Message-State: AMke39kAjTK7ORMYdX3BULR6oebQchIcttMTYXkxgKtVV4+ZSrYsBn6V9FnxIVkbBqPOI73/htBWbjvzE0L7WQ==
X-Received: by 10.28.220.135 with SMTP id t129mr8958030wmg.97.1486380464569;
	Mon, 06 Feb 2017 03:27:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.130.137 with HTTP; Mon, 6 Feb 2017 03:27:44 -0800 (PST)
From: Prasant J <pj0585@gmail.com>
Date: Mon, 6 Feb 2017 16:57:44 +0530
Message-ID: <CAA2DH4sy_BxdFqVRa=R5VC7BAuSNqu-mwGPdTxXsZoh7k+p2ag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Build only one specific C source from git clone with many C files
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
X-List-Received-Date: Mon, 06 Feb 2017 11:27:48 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I want to build only spidev_test.c from kernel sources
(kernel/Documentation/spi/spidev_test.c)

Is it possible to modify SRC_URI to take only one source file from a
git clone and build it?


Any inputs will be of help!


Regards, Pj

