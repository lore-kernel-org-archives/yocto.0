Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D99DBE00994; Mon,  8 Apr 2019 11:09:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BE0E00942
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 11:09:31 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id k14so16627891qtb.0
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 11:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=EwaUuge9IadeHZFqdzyUjIwQHZtcSQcknyuA+cf6K8U=;
	b=fSkL6XFa8Ut4ONowswxCpFMkEtIGU/u+TjdJC5tyNaqLxqv3PP1u7mPlbh1y8FA86F
	nD39UDG/Zh+rLpEkR7DpgWSMMHeBIJuRdChz0IFNcsjJ8GisqOteV4sT5NLAJj1sLRrf
	C37Oib54up8tTWSykXFxAnd0s2iwr2e3NbnPK4CnwR5Ct4Ua2WU+W0JHSR1t9HBAOmRD
	72K8/bqjxRZNFPO3kVaF49CuyFsgiRp3XNgtt30oPW9BbOT/RrK63YzjGPSo0GFujM/g
	vFAok9qNY1OsD56nbn5mQYGDx7tMNi1cFmnVaGh0BKb24RG6IRFfL4qwGMEve/ZxbC6K
	kpew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=EwaUuge9IadeHZFqdzyUjIwQHZtcSQcknyuA+cf6K8U=;
	b=OChQ4xPRIKVAJCN6NSa04YuhamSEuVoD1M+xbx8BuObjZEHUEQBveqWhf45I8VgSdj
	uUCNwprhJB8hmVKHvQCbKpPIcsHOJcf8Zk/MN6mBlnk62XTVlExz0KLrhe42uaiZVmEB
	ZaGALAtjxxFqslkhP0mqYRtFvc3Zh0LlOqwbXB3HdjsM3Cj8+LQmqAcqmZwzkyZUo/AX
	rJzEHkWrmMiyKKeJ1++pzgqa4+dQZdzLEUDdLAmd0zPKpXGIMBokICCxlIdn7/AP9pEW
	OnoDZ0Xi8BEcCcE7c09P1k53SjIBn8SSNmtrwH6jmF1nAPR1Bx3peIuYLLllUMxQWGBq
	ShEQ==
X-Gm-Message-State: APjAAAWVGOULPdjs2BksctiWc53LvRFYtV6a9JhWNvoK7hvpXRDD7e81
	GyGhT4kDg10udR/2GumzBtrc71cJY3y8u9YuR5o0UoXVsH4=
X-Google-Smtp-Source: APXvYqw/AR+hpuzf09Su9MgWWHVURpSz9jgi7t+0o2zh6Bdr2z2ZJAY6HsF9Un33u1GmZY7QlNF5a6KNytUB3TL/nyU=
X-Received: by 2002:a0c:c988:: with SMTP id b8mr24952436qvk.33.1554746970397; 
	Mon, 08 Apr 2019 11:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB3689C606A400567C9831BC0FE5560@MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB3689C606A400567C9831BC0FE5560@MA1PR01MB3689.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 8 Apr 2019 11:09:04 -0700
Message-ID: <CAMKF1soAAyreHQxNyCEYXj1NrZTN3hX0w0Yzjr636+tc2WcOsw@mail.gmail.com>
To: Srinivasa RaoW <Srinivasa.RaoW@ltts.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Development environment for Grub bootloader and Linux
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
X-List-Received-Date: Mon, 08 Apr 2019 18:09:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2019 at 9:39 AM Srinivasa RaoW <Srinivasa.RaoW@ltts.com> wro=
te:
>
> Dear All,
>
> I have a requirement of modifying Grub bootloader for x86 architecture bu=
t Just read the Wiki Page of Yocto and it states as below=E2=80=9D
>
> =E2=80=9CThe Yocto Project is an open-source project that delivers a set =
of tools that create operating system images for embedded Linux systems=E2=
=80=9D
>
> Towards this I have below questions:
>
> Does Yocto project support only Linux systems?

yes

> Do we have repositories/build tool chain for Grub bootloader?


> Which is the bootloader that Yocto project recommends for x86 architectur=
e?

It supports multiple bootloaders e.g. grub2, syslinux, systemd-boot
etc. its upto distro to choose which ever they want

I would suggest to look into devtool workflow with yocto/OE this is
recommended tool for doing cross development

http://events17.linuxfoundation.org/sites/events/files/slides/2017%20ELC%20=
--%20Using%20devtool%20to%20Streamline%20your%20Yocto%20Project%20Workflow.=
pdf

>
> I am trying to setup a development environment under Ubunt Host for x86 t=
arget architecture.  Goal is to build Grub bootloader, Ubuntu linux and roo=
t file system all together under one umbrella.
>
> Please let me know if Yocto has anything for this.
>
> Appreciate any input on this.
>
> Regards
>
> Srinivasa
>
>
>
> L&T Technology Services Ltd
>
> www.LTTS.com
>
> This Email may contain confidential or privileged information for the int=
ended recipient (s). If you are not the intended recipient, please do not u=
se or disseminate the information, notify the sender and delete it from you=
r system.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

