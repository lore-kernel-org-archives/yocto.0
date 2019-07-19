Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39FC8E00BA1; Fri, 19 Jul 2019 08:35:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14407E00AF2
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 08:35:55 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id m14so23462569qka.10
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 08:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BQ5Ysv7J2F/TICvWZ2mkpi3A1nBQs4NQfUJdcgIICQY=;
	b=d0jT9GhPOl9ZjXUC6ZzYqND4DmmITGVmgNV3NxE93R5TYNQrRuFVuyM2gi8KowF600
	EuupdqpO+IsG0tHyUUU1WGLzscFUb2Z2ZMx3IzXwB74t7GPINv26MFkxH4/jPLprAlcv
	Y2Y0ccuvnEilLYqkBTdEkXa8ZtcSrnC48sum2Xt7wxRvt52Ysc1yfFnhuI8vW96cbF05
	xdussEYpjP7vskAjJqmdwyR3ZSyU8aS+j2i0EJMqtyBq5fOA7zMD3VGJSZ60YH7a+KNG
	PJgti/H2ifdXr6jwWBFp+VC55GBCgncfQCiALq3ddpT3qoqyZ4s2f10np7u4U0kn0t1k
	psCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BQ5Ysv7J2F/TICvWZ2mkpi3A1nBQs4NQfUJdcgIICQY=;
	b=dn/Ffz6yFUAAsAdG+nAUEuvjv8pglMGc7j/RUZdgCVnRgBySw2saaEYhZ8DHiSOe79
	VO3thN3cBsCYFMXQT/shbEpPEKWWxSRxRLEw2bp1sMx0D0MPqYCWXPayCjUPJY11qJ9v
	sQBpYkXz4UP1Aby60IWVRbgs7trLj9AoNZwjhYYHBuNcaXd6qt7/6N12vLs14o7CGxUM
	Y6ih4ID5LT2w3ltRYuoz9pk+jFy9dDGCBKQcYBkhBRSIsXPSZ2bDe2AI4g+RwUtPK8+y
	rFYosoZciMSKOVKbbflyiGhm9wnoG4EAN/UbO5mOi3F1oxl8SKdNp28AL2YQkt3gX7UK
	Or5Q==
X-Gm-Message-State: APjAAAUlmp4NSgMk6Kgz+A3pwMxncyde8OAWHif9oPuIbWjVPcDz1jVY
	ROqAU9pAhmeuyznN7rC/Kn7ULSksr0cHg8gOSJA=
X-Google-Smtp-Source: APXvYqwQI3a2NflTI+wFELRkl7vzy0fO2GjCMQV+7ygZFraCrJv0rpEOHvEx1PIAE4UXUB+oqrZYuUN+b0FsTPxVWeo=
X-Received: by 2002:a37:660d:: with SMTP id a13mr7619226qkc.36.1563550555428; 
	Fri, 19 Jul 2019 08:35:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
	<CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
	<CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
	<CAAx3WaCKS21xWZ_b3jqJFm61D+_QPy0Aago0Tais8hVTyoKqKw@mail.gmail.com>
In-Reply-To: <CAAx3WaCKS21xWZ_b3jqJFm61D+_QPy0Aago0Tais8hVTyoKqKw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 19 Jul 2019 11:35:29 -0400
Message-ID: <CAF_dkJA_WsGVmnNwC9dR5KEzw3+jdHe3abNjBeLa4_=UXuoJCQ@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Fri, 19 Jul 2019 15:35:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 19, 2019 at 10:03 AM Gabriele Zampieri
<gabbla.malist@gmail.com> wrote:
>> 2. My new image going to be used as an installation image for my
>> production image.  So I need to include the production image (for
>> MACHINE="mymachine")) deploy products in the image for my installation
>> image.  How can I do that if I define a new MACHINE for the production
>> image?
>
>
> This is not clear to me. With 'installation image' do you mean a full image (bootloader, kernel, rootfs etc)?
> Can you give me some more details about this use case?
>
Hi Gabriele,
Thank you again so much for your help!  My use case is as follows: I
need to create an image that will go on a USB stick that we use when
we manufacture our boards.  That image will be used to flash the
production image that we ship.  The manufacturing image will have a
different kernel configuration, possibly a different device tree, and
certainly a different rootfs than our production image.  I would like
to:

$ bitbake manufacturing-image

and have the build system set up so that it builds production-image
and includes production-image-ubi.img as a file in the rootfs for my
manufacturing-image.

It seems to me that
production-image-ubi.img must be built with MACHINE=mymachine
manufacturing-image would have to be built with MACHINE=my-manufacturing-machine

...and that's where I get confused/concerned about using a different
MACHINE for my manufacturing image vs my production image.

--wpd

