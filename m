Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7369BE00530; Sat, 28 Jun 2014 22:33:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BCF0E0050E
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 22:33:22 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id tr6so5849118ieb.38
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 22:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/7Gno/yv3c2Odu+BMFUtcxreQX7NgohprPl+kT9bugg=;
	b=FyZs1DmQQTb8bXps7Kqfm+aBEeow1lUO6TGw5CMQ9KPJqlnRk3lM//bqUT2HZgrNID
	ckHh4AF3V6jpI36WM0Dwy+BXD/vKJyJ4cYFXJcTd7ZPnaK59jagFR0JE2/cGZkq4kM2z
	Ioe3Jg1Znl1F0FeLqSrYKdz6YDG8IiwWJxkel5LP7XbdOQiK3hBT3N2TQrTO99od3DDQ
	WvdvtgJRRBxuKyWBfCbg8aISzDrqCyUVJEExA9q5+dgmHXSohB67j7cX/Qs2pE4+iKIz
	5jdC6IkoDTcBMCIwkA7Af3wFc192J5yzrS3JK0O++pJx9RJenGrrxaBKirnL3funEK8r
	Fh0Q==
MIME-Version: 1.0
X-Received: by 10.50.83.72 with SMTP id o8mr23546913igy.25.1404020002247; Sat,
	28 Jun 2014 22:33:22 -0700 (PDT)
Received: by 10.64.86.199 with HTTP; Sat, 28 Jun 2014 22:33:22 -0700 (PDT)
In-Reply-To: <53AF5BB8.80904@galauner.de>
References: <53AF5BB8.80904@galauner.de>
Date: Sun, 29 Jun 2014 07:33:22 +0200
Message-ID: <CAALGJZbzpSwGVb_cxzSUQwk7SxaM7LHsf--5ps8kS=H8xiGnXA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel modules as dependencies
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
X-List-Received-Date: Sun, 29 Jun 2014 05:33:28 -0000
Content-Type: text/plain; charset=UTF-8

Hi Andreas,

> I created recipes for two out-of-tree kernel modules written by myself
> in Yocto. I added these two modules in the machine config to
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS or even
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS.
Have you used the name of your recipe or kernel-module-my-module-name?

> The modules build fine if I build them as targets with bitbake. The
> right packages are generated and if I build the image after that, they
> are included into the rootfs.
> But if the modules are not build by hand before building the image, they
> aren't built as dependencies and RRECOMMENDS just doesn't include them
> into the image as it is supposed to do and RDEPENDS fails of course with
> "Nothing PROVIDES kernel-module-my-module-name".
>
> How can I build the kernel modules as image dependencies?
> I can't seem to get it done with the countless approaches I already
> tried. For example just adding the modules to CORE_IMAGE_EXTRA_INSTALL
> didn't work either.
>
Maybe you can provide a more complete example

regards,
Christian

> Thanks,
> -Andy
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://project-magpie.github.io/

