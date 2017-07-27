Return-Path: <gauravvohra89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F916E00C29; Thu, 27 Jul 2017 01:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gauravvohra89[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 172D2E00B87
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 01:55:52 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id h199so79404022ith.0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 01:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lMboZ7Xnhl7ASgFSQseWuuYkHgmFN2+Goi/QMrhosD0=;
	b=SL1yNa+QyOH2C2i3/u1b0s/giL1PhlXV9se9W+ciqDH4jKkm6DX1hChqi5DGeyoDE7
	dWRKFN7sO5op8E/AYLt2zALTivPDzcxPeb0o03CZh/vbFM0FttcbIGfOLPUyxZKmFouy
	gFuRqQ9n6r+XzAwI9Qed+0/ijj/S5x8ANI5SXyUj1D4Psf60XOG2inUSGzyKq3iULWTx
	oZzzJYA+UYcE+ChPOR2xDMT0YdFcCa8NLnLTsYa5YQ317cu8h9tiRvsE27Z1OOyzoZpB
	38wPuTQ/1FfEnXZvoRtuwWd7Xj0fEU8Evv+IQJr+4DKjuJcDfqnHQyEpEz22dZ973wCu
	9KNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lMboZ7Xnhl7ASgFSQseWuuYkHgmFN2+Goi/QMrhosD0=;
	b=YlffR9eflaeS5JqPTWIWqL1PiVztJaJcbb7S2K9ID550JKvWfqYyQFKdNjTDzG32D+
	qRwL8JawWeVus0eVekmluhyUZc1SE07xzdargG7pvimYhhCGcwnUNihRevdrnLnTkwIO
	oG705vOeRIjKq1M+m0mmchKD3t6pwxsIn4IElYAkLXHM7Rw46QxFhTAoJxmNaq/R6ziq
	yvcMjWWbhXTvhmxwd5RqyU/AmZXGHvaQZsMZ8RChGaHvwFJV8UFF0hrFN5LJEXoKNQMv
	x5n2xVyG2XhZXUFLPbwm+Z3w774+PE/3bLVSsyEXGcUENqIBXb7Z0O6ojVia+cD0AWf8
	DCwg==
X-Gm-Message-State: AIVw111CJIEF7eTWbtoWEESTNHYVH24gn6daWop24gl8O+HL6Sw+zML/
	myhNDdXgWRJx8f18O/2dl6e13S+CJ07A
X-Received: by 10.36.190.65 with SMTP id i62mr4105358itf.174.1501145752149;
	Thu, 27 Jul 2017 01:55:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.170.6 with HTTP; Thu, 27 Jul 2017 01:55:51 -0700 (PDT)
From: Gaurav Vohra <gauravvohra89@gmail.com>
Date: Thu, 27 Jul 2017 14:25:51 +0530
Message-ID: <CALc4YzLi6spQSe=MecgfcMECTBEKLLmed4gZefOe5Eh88ORMXA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 06 Aug 2017 16:56:47 -0700
Subject: Enable only 32 bit packages in a packagegroup for 64 bit machine
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
X-List-Received-Date: Thu, 27 Jul 2017 08:55:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to use multilib feature in yocto to build some applications
which are part of a packagegroup recipe as only 32 bit.

I can use command to  create 32 bit packages from this packagegroup
which works,.

# bitbake lib32-packagegroup-name.bb

But the packages in this packagegroup are still building as 64 bit
when i am trying to build image

bitbake core-sato-image.bb

Configuration done

in local.conf :

MACHINE = "qemux86-64"
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

In image recipe replaced

IMAGE_INSTALL += "packagegroup-name"

to

IMAGE_INSTALL += "lib32-packagegroup-name"

Please suggest, how i can i get to only build 32 bit package in packagegroup.

Thanks gaurav

