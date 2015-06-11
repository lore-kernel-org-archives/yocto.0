Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D741E009C2; Thu, 11 Jun 2015 03:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33E3E009C2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:49:58 -0700 (PDT)
Received: by iebmu5 with SMTP id mu5so3770776ieb.1
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cxab+b2FT+aN1HbPcMjY3wMIy7ILTwhkWUcL8fUlXII=;
	b=O7pntBoYlM+PHjXGZ8vWXICvS/FFhFaigMpNvSHnCLtWA7G4XrwunxozgDH4CzF4Qf
	r44n/9o5/BeKUx9dVvoWwCvjILbI/ffIu4L7kTUhG92aXx2BGbdMYJNMp628rbO1o9ai
	EmoERBrxZae4CDnz6929rjSnBPX1QurWJ6uoWs9K2mdiyUe5leztU2Ef5DRmvpbjQQgq
	xZimprqDiLhRlY6PvFvRmgmjx7OkvvR5d9xdmo5+UmEMHVqLn+PV7S9CaVFLKRraitNZ
	NcFhl02xxW4h+h6ufR8Sa4uywBLwPUAQW+IzY6vnKdjVz/M2OAAcWgmGe3OrLTCdv8Mx
	Sg+Q==
MIME-Version: 1.0
X-Received: by 10.50.4.66 with SMTP id i2mr34347533igi.40.1434019797646; Thu,
	11 Jun 2015 03:49:57 -0700 (PDT)
Received: by 10.79.7.147 with HTTP; Thu, 11 Jun 2015 03:49:57 -0700 (PDT)
Date: Thu, 11 Jun 2015 16:19:57 +0530
Message-ID: <CAKjpqyKKepJMGvi2zBJK8zFP4F0VxLckh6ZEwwqAvYZH56sKxw@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 11 Jun 2015 08:06:26 -0700
Subject: Generate iso image
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
X-List-Received-Date: Thu, 11 Jun 2015 10:50:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have configured the yocto project and i am getting vmdk.ext3 image
I want to configure that iso image should also be generated.
I have changed IMAGE_FSTYPE in qemux86.conf to iso.

But on building i am getting do_configure failure in grub_0.xx recipe.
and the error is: cannot link at address 7C00

I think i am missing some setting in which i have to configure kernel
to generate
an iso image.


Regards,
Mayank

