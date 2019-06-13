Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 389B8E00D6B; Thu, 13 Jun 2019 05:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23248E00A0C
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 05:33:13 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id p15so2898611qtl.3
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 05:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Qt8g81+whGbnhqo1iXWI1BxPllFqRlaTlMOlmVRjvog=;
	b=KfQVl6XR/ed1pFoeq4AoHbgVE7AOkxMNSb8r5M5Dzx+9SOjn87fc9ffmkFnBNSGWNN
	jrLoYGO2SvguTDD8IDFxxz+7JNUDw5zMll39ANGk2wcZEQ1emQwZIYEeY5gIgfjumq/q
	Rc4dgkoN9ZPkvJWmLNJpFFeFHlD+MV66neqpSn/Nyo4fXAhls+wH179UsV2xkxBbKvoA
	aFKKQf7QWX3XVCgI6f7N6hB2Rr61lW3EM832T2YsNMRg1V2z2OlBOmsAeSIJRuO2eN9R
	mTrUFeStynpPNc5gZYghnmgEFhS7uALQ3A62EAAVnuMxNHDVBrljz5mc2kNzLEmp9FG9
	V3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Qt8g81+whGbnhqo1iXWI1BxPllFqRlaTlMOlmVRjvog=;
	b=EUBexqLvUHPqll/Z+zc1Ge2vSLfNDiT6T9oHhLyi8Mh6N9E+plJZpkT78mBZwFYQkC
	L+7fLp92CKlXTO76FBQZlEEBZj30NbGfu8XRU8EmOWNp16IcwGgS7A8uFcz2sZy/irVk
	oFdPK61o06BL9ZwsJeD5ORHNz0wre2RVWPnb6VVEUHft4aKj/cM3/RyJgu7YuPS7rMLh
	BT5ta1bv4hDPsHzeNAtrp1IR0CDdfdNeaJMGpHICNwgli8NrKTMrNdC+vgYjoLfpeOqM
	rCCqxEILl78oKY4Jcb+V0uNKRNstQVt7lI5Vf2fjuBsUurLesqoMwaFOrYFOuwFWeSJH
	6vxQ==
X-Gm-Message-State: APjAAAWGdnwcyatOsvn2BGUnx4OuQyQxnnlm4zlQMPTi8B8NdlzeXoGz
	yWSJSuWQcLvihwxroKr7+0+x7w1qKT9hGi/6gY4=
X-Google-Smtp-Source: APXvYqwr1c4Ge4qDdVAhudK1vrie1nOUt6MIB2YDmZIZLjkI4rIntbtnxdC+PyqWG9CbpKWudzvl8SCBXIMG89Y4fjE=
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr57186685qta.22.1560429192542; 
	Thu, 13 Jun 2019 05:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQQD-zc9LxQ5ft0fzUEuX-9wwA=rvjtVwoMRmCAG=Xfew@mail.gmail.com>
In-Reply-To: <CAA=hcWQQD-zc9LxQ5ft0fzUEuX-9wwA=rvjtVwoMRmCAG=Xfew@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 13 Jun 2019 14:33:01 +0200
Message-ID: <CAGAf8Lzw+fe91ei+qcyO28030pCx5XWj0=ZXpVu7Og0yRQSC=w@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Command to make zimage to ramdisk format
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
X-List-Received-Date: Thu, 13 Jun 2019 12:33:15 -0000
Content-Type: text/plain; charset="UTF-8"

Here is what you need (my best guess):
https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html

Please, read carefully this thread.

Zoran
_______


On Thu, Jun 13, 2019 at 1:35 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I built the Yocto images:
>
> dev-image-20190528085324.rootfs.wic.gz
> zImage--xxxx.bin
>
> I need to build zImage to ramdisk to run it on RAM in development.
> What is the correct mkimage command can be used for add ramdisk to the
> zimage?
>
> $ mkimage -A arm -T ramdisk -C none -n uInitrd -d /path/to/initrd.img
> /path/to/uInitrd
>
> Thank you.
>
> Kind regards,
>
> - JH
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

