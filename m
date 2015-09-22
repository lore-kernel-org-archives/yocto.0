Return-Path: <aguirre.nicolas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94C69E01089; Tue, 22 Sep 2015 11:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aguirre.nicolas[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB2CFE01088
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 11:34:40 -0700 (PDT)
Received: by oixx17 with SMTP id x17so10739070oix.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 11:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9bjIakXTNGsh2wSd6eo6lX1K4DxfrOzBmIMasuwUcEY=;
	b=We4RqyaRbX0bnBSK5o3cVdtM7Xhz+6+YlpNAqtaSMZCrJ2ePuUo32SpD9CNa46o13q
	/7ViTTo0/3dUgOzV7gVzTWo4++DKpHpHgzLRH2yB5J2lMvJDgpkn/3P6audOu0Dq1Sh7
	oebuf9jCNujZHUemUMeFvRjvYp+unEwqrqWWhzxgfVcH6UdfjiR4B+FuISdj8RFj1gdi
	ljpUZ5V0+ldU/uI9n7MTMulB+x2i0hwqQKAQAIhYcrBuzTLiJLXrZ1QUYHRLU3QLPN7w
	KwYsRUbBTl0Q58nQG8NHh3j7FaT1FLgN+cmS5rW8XfxjKYMepjaoGcZQc0coH8utRE3l
	W0ug==
X-Received: by 10.202.188.197 with SMTP id m188mr1749351oif.70.1442946879747; 
	Tue, 22 Sep 2015 11:34:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.214.213 with HTTP; Tue, 22 Sep 2015 11:34:20 -0700 (PDT)
In-Reply-To: <56018F9D.8060709@gmail.com>
References: <56018F9D.8060709@gmail.com>
From: Nicolas Aguirre <aguirre.nicolas@gmail.com>
Date: Tue, 22 Sep 2015 20:34:20 +0200
Message-ID: <CAHTvVMfHyTajGt5wuoQByjBnCGbTuJdQDkmbHpFXd=dWMzw8FA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sergey Lapin <slapin@ossfans.org>,
	Enrico Butera <ebutera@users.sourceforge.net>
Subject: Re: sunxi mali binary driver
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
X-List-Received-Date: Tue, 22 Sep 2015 18:34:49 -0000
Content-Type: text/plain; charset=UTF-8

2015-09-22 19:27 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:
> Hello,
>

 Hi Trevor,

> I'm trying to build an image for my cubietruck that uses the binary
> accelerated mali driver (sunxi-mali) and have a couple questions.
>
> It was my impression that the binary user-space libraries (sunxi-mali?)
> only work with specific versions of the kernel.
>

sunxi-mali binary driver build by this recipe
(https://github.com/linux-sunxi/meta-sunxi/blob/master/recipes-graphics/libgles/sunxi-mali_git.bb)
only works with 3.4 kernel.
You can find some informations about sunxi-mali here :
http://linux-sunxi.org/Mali_binary_driver

The problem is that linux-sunxi 3.4.x kernel contains mali r3p0 driver
(https://github.com/linux-sunxi/linux-sunxi/tree/sunxi-3.4/drivers/gpu/mali)
where linux mainline doesn't.

> By default the cubietruck machine definition will try to build the
> upstream kernel, but by default it also sets the preferred providers of
> egl, gles1, and gles2 to sunxi-mali. Wouldn't that cause problems? If I
> want to use the accelerated, binary mali driver, don't I have to stick
> with the sunxi kernel (3.4.90) too?
>

We could maybe avoid the build of sunxi-mali recipe when a mainline
kernel is built.

> Best regards,
>     Trevor

Best Regards,
Nicolas
-- 
Nicolas Aguirre
Mail: aguirre.nicolas@gmail.com
Web: http://www.calaos.fr
Blog: http://dev.enlightenment.fr/~captainigloo/

