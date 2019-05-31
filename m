Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0C0E00D61; Fri, 31 May 2019 06:08:55 -0700 (PDT)
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
	*      [209.85.222.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 352AFE00942
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 06:08:54 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id l128so6225470qke.2
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 06:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MtVcPlbRRv6rf57nrU2RQy1uSaPq0A4ACTmw2NkkiXk=;
	b=LyxHyGHM7sPM53DrMXxLkxPyYgtwLloclA+b9abbPppJR0Wo7IowM3jCX5+Z4CNzFm
	XymK4+Zbp5+isPErcUnDdEQKNlYqqOvSYSQyYTQSotxNIoHguRwx/jmi677orDoP0OnZ
	RqqOhDd35XTuhC/hrxGMcW/0dhPMdC4o3rHxR4JNQ92OaAEXTLbfxVJtOM6kAsDoqXp0
	Dza6b17Qd22r2Qbt8TIyClXxEvlxDg8vLyUZrtw6TuCMEct/3rwT4MhLFq8227vMbTYv
	eNTIIAccb3waeF9UVEC49HdSqcgcre6xzgN5BclbwiyTMPNJYbSHhpnRKhzPl17/2IPx
	jeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MtVcPlbRRv6rf57nrU2RQy1uSaPq0A4ACTmw2NkkiXk=;
	b=ZvgyxodnAFdICQLOaBPccxEpBa19yh0fp0j7nbJknUeNw5YYPr4R3lVwfaroUqVl9G
	ofg/nfoWnRbf38YCt3g88GLyXTOeQtCs/0Kcva5KE4Sy6NkrECIW3sao4NEOTtjZoDG5
	xQ0Pd8nnaVMIfwm0K3ykjjKtX5y2hPE3mt7DlhF9UieF4DRY36z4CnRWH+aCsuXun7gi
	R6TzwQqdvVoXmonDzvy17XKENce7pnSMYngauid4w8HurRuaEpNCpeqtTBKo2AsxaEUg
	0iHu8mP4R0Wu1c/fvhrTZbzKRpxE71f/YIq901p8QAN06X20znMnYAxRMFxs33dNwPy9
	/TwA==
X-Gm-Message-State: APjAAAWyRvMPGvg/ZQwuWU4gWxW+6WIi+S91r7T6HyG7v+RWBu4Yt31S
	41R7qXLkWj6cFApQ8yKzPCNL+WD6xNALPQ1/rfI=
X-Google-Smtp-Source: APXvYqz3EUC1BZvqccU6tMsQSw8T2GSi/dysY3oO018BZaBCWlo1JKdpLKke6+YPAUU0trdD5qCfpBNWXldk4GMtGAI=
X-Received: by 2002:a05:620a:15c6:: with SMTP id
	o6mr8608793qkm.106.1559308133431; 
	Fri, 31 May 2019 06:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
In-Reply-To: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 31 May 2019 15:08:42 +0200
Message-ID: <CAGAf8LwLRw84N1DjGuPf7+VStonFBrb3m+D79Bkc-0RvOaTviQ@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to extract files from wic.gz image?
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
X-List-Received-Date: Fri, 31 May 2019 13:08:55 -0000
Content-Type: text/plain; charset="UTF-8"

This web page can help you (my best guess):
https://github.com/FrankBau/meta-marsboard-bsp/wiki/Prepare-SD-card

Zoran
_______

On Fri, May 31, 2019 at 2:22 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> What command and tools to extract files from Yocto / bitbake image
> such as dev-image-20190528085324.rootfs.wic.gz?
>
> I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.gz
> to IMX, I was advised to extract the archive and use "uuu <script
> name>" or "uuu u-boot-dtb.imx" to get bootloader work first.
>
> Thank you.
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

