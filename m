Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69190E0086B; Fri, 10 Aug 2018 08:01:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0920E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 08:01:17 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id b15-v6so16233636oib.10
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 08:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WAm8FIp5pbGP8gwUOtZK0JqfJU08azP5+qruh9kAa6A=;
	b=UK1xJOUgpdpO6Ja8GoKxpk+3SV7RWOFjcfa8/X6GXZWoucMQC33aA9k9zFvqVLgI/U
	1qJVb0Bx7HcHtTDK0nObbFM/pVpcgmlDDb4ja+v+IXy22j5aYz2aFI5xekPukEnyo1KV
	6YowUf2IhdoYVsfp7QnQSJFOuQehjZEzIrGd3r96jCUZN0qjuQIOVez1vgjtqBkBGCwv
	2Xq8IhVwVNKUomnWY/znkI8e2rp3GsIHoeXFfKy7m3GdohW5E8khflLdleYsZI60k5+e
	BDIwStFAAYFwdZuBJW7x9ulWCP31d8f1tAkOKmtbcE9VK26SZsBJN/5JudVVfzBiE8WN
	e1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WAm8FIp5pbGP8gwUOtZK0JqfJU08azP5+qruh9kAa6A=;
	b=aFpiF3dxtjJkbwNDtrbPU+KNb41mOO0VyNnVKjdLkPmJsddu0cXuKZjL+I4GDSyGYg
	tzhvpbinY5DeFXnTRy2vk6nKpp8maHLzngfrX/TKEupLWRu9pHtQONaONGh2KzQ/smf0
	KY8JXYYrNqyrq6QwMCeaLrCRygK4upSU5to5q/LGKK6f+gH03jiIaD4yumXAJNCeY2KS
	xiiIgOvYuoezzLpEjzxVMqmsmq9z+YCeKpI+m3hW8xUc2or1QhvVYW3Ke5JRN7XXt9C7
	xdt/qXgfjih5vXZImJ2JfQ5cZK1f8Dk5M5IuM6Sq+FvWHfAR1MGE8R1uPVruIvC3sqtN
	IY2A==
X-Gm-Message-State: AOUpUlFNdGKbPtq/EOE+kA6zX9pyn30/BJCpUMLizzjBDCkBVF4NDMPu
	mkRjUO5DIhFwKBW9cZc+fxOoGQJf5lX+FO2iK63Zo0sI
X-Google-Smtp-Source: AA+uWPwIEDjaMXVz5J2MHBdpF/1mXixmOasyk43hg9/PRDjrzju1NVfoJ73Yiu/bFktkQhqmZe6NMZY/B1QRJIK/a1I=
X-Received: by 2002:aca:3d4:: with SMTP id
	203-v6mr6516258oid.321.1533913277241; 
	Fri, 10 Aug 2018 08:01:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Fri, 10 Aug 2018 08:01:16
	-0700 (PDT)
In-Reply-To: <CAMRMzCBqrkM85ZJzyUdtDajLO7-L2sRxWn-26HyYm93J0LGAOA@mail.gmail.com>
References: <CAMRMzCDBBWC75cTVtKriqBG7GXeGTuD_koKV6rbBaSUKuywqww@mail.gmail.com>
	<CAMRMzCBqrkM85ZJzyUdtDajLO7-L2sRxWn-26HyYm93J0LGAOA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 Aug 2018 17:01:16 +0200
Message-ID: <CANNYZj_E06ssYwk5uT_ZhhiZBCh3fuUUvK+5Sp4D3R6Qjj3zqg@mail.gmail.com>
To: Marc Ferland <marc.ferland@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rpmdeps buffer overflow
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
X-List-Received-Date: Fri, 10 Aug 2018 15:01:18 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-10 16:50 GMT+02:00 Marc Ferland <marc.ferland@gmail.com>:
> | Processing files: pylon-5.0.12-r0.aarch64
> | *** buffer overflow detected ***:
> /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/rpmbuild
> terminated
> | Aborted (core dumped)

This is not a yocto issue, but a rpm issue. You need to deal with it
the hard way I'm afraid: inspect the core dump with gdb, and take the
result to rpm upstream.

Alex

