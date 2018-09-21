Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DBD5E00ABE; Fri, 21 Sep 2018 11:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92C7E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 11:38:16 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id t68-v6so12191759oie.12
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 11:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9xZ04EFCF+jKYC33dYwrgEEwsNWoVd9vQMVLhU7ErLI=;
	b=V+ojGL4QQgwLP36GTANccPDQYXzA4vx3AkQoRA2svqArVcHkiMstEbRCrwRqE0imOE
	0ikFlH20lC/ZDwcaLLYxfgwzjjkm+PD3A1nveBQZ1alxzIQmEYWgEutn+JPw9epN9Jt0
	q0qpJ3jyM1iZ56iCAWn2FpQLE40XXQhC/UNSOkKsVgUfPbWyN/7tfEVnX4GM5yLSVJL5
	Zg4raGkm206VlGj8Q8lUv3NjYCzqtKD70EB4ZDvsELQZahwdJOaEtY8Px3BiGcDckme4
	89YWHb7VvPfsJrd3bWKZHXAoyfyS+8FO4l7H8ynIGVr12P2dPYicppPZ1iSIMd3BIjEQ
	VBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9xZ04EFCF+jKYC33dYwrgEEwsNWoVd9vQMVLhU7ErLI=;
	b=FWQWSDUiJt2UZmGdCeD+NNRlHgQWIzsdN2zBD2CYjl2YWUtSbmWxfdvr++LhtvICuH
	0MABDe7Kif1vSiyxROm89eecVouCFhhF8ngcXX7+Zj5JPhl5Q4IJL1DWzq562v9R4N0o
	jj7lzvPjko0xTXvqfSFOISLi9O1mWSpf6h69IpJIYY6s4QNVot4ClFGQPvB0j6sfbwZ9
	LDAtaU1oXfBD3WoheffV1adzbcRAVChSa1QEBr8ENXxhHY+NvEemHo+DE2crSh5p8+1l
	ZusyHO7hBni7MyGIvKJmFyTaHAZJtV0izZIJ8onmleMZf518kjvOOlB+MICxhe5b98Wf
	5ULQ==
X-Gm-Message-State: APzg51C2thg8J9QXNxZ3SJdKyUMKEZaD7bN25XhEDWes0yDAH0AfrmWl
	nqtl9sP7U32hE568zKPdn4T+7nf32Qc84QgqjW8=
X-Google-Smtp-Source: ANB0VdbdzHzGy/+ee6HtEyStmqUCdbL2GMXJJn4pDIxqgAPQJCkl8UiI9yDbp+rlC0yOLJ6yETULa7FJ6tHLEhgfbH8=
X-Received: by 2002:aca:2c02:: with SMTP id
	s2-v6mr2285788ois.305.1537555096372; 
	Fri, 21 Sep 2018 11:38:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP; Fri, 21 Sep 2018 11:38:15
	-0700 (PDT)
In-Reply-To: <4a16a305-d09d-486a-4371-81388e62f1ff@googlemail.com>
References: <4a16a305-d09d-486a-4371-81388e62f1ff@googlemail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Sep 2018 20:38:15 +0200
Message-ID: <CANNYZj8=PgV-V7z2k4f4OGdtA1d0Mj9wBNFZPG=6hEpvcJ0ERw@mail.gmail.com>
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: remove unneeded files from update-alternatives packages
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
X-List-Received-Date: Fri, 21 Sep 2018 18:38:17 -0000
Content-Type: text/plain; charset="UTF-8"

You can probably have a .bbappend file which removes all the unneeded files in
do_install_append()

Alex

2018-09-21 19:29 GMT+02:00 Matthias Schoepfer
<matthias.schoepfer@googlemail.com>:
> Hi!
>
> In my case, I am using coreutils and busybox. But I only need one
> program of coreutils. Now, I have plenty binaries with .coreutils
> installed in my image, which bloats the image (every byte counts ;) ).
> Its a read-only-image, update-alternatives or package management is not
> used. Is there a better way to remove the unneeded files then manually
> removing them in a ROOTFS_POSTPROCESS_COMMAND?!
>
> Thanks and Regards,
>
>     Matthias
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

