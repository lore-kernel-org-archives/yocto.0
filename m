Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E142E008DC; Wed, 24 Dec 2014 19:26:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D81E00871
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 19:26:25 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id h15so7577119igd.8
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 19:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=mjYIyxranr3X9Cb58/OTz4j+Q6TRyKyswEbydx5lNwc=;
	b=GzBmlkWo3wWIbA4/o3u8h7FnFkxQXez6i+UaOB7XVR+KW5kYc4PS53xmAL3mqk9L9F
	hH2SQkgTZ2IXKb0HCybkOmkKQvNrWueNX5TwG6YE2/MnaJk2q8qzpBC99KvF+YK8v0uI
	q13d8qNh0AdN/5v6fuLq/j6DmGU7cMVwgblZB0p8MQyFOKqFHXXyHkYfDOJO9ca+lCI3
	0tlT+hOFjl7B6lk1E8vlffaC2pYUltPowK9veYvWFp+q8MhgT7Nk0AwKVpiLDRKvLaEM
	d7kdFCLcRvYk4f16S4PG+HEHL+hqbplozUkPWOyG70PonpcAjXDUiaG+NwTLw8nDAhkI
	0ogQ==
X-Received: by 10.42.88.2 with SMTP id a2mr28682262icm.11.1419477985518; Wed,
	24 Dec 2014 19:26:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.252.9 with HTTP; Wed, 24 Dec 2014 19:25:55 -0800 (PST)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 24 Dec 2014 19:25:55 -0800
Message-ID: <CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
To: "Neil.Wu@emerson.com" <Neil.Wu@emerson.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem of install kernel module(*.ko) to rootfs folder
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
X-List-Received-Date: Thu, 25 Dec 2014 03:26:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 24, 2014 at 7:08 PM,  <Neil.Wu@emerson.com> wrote:
> Hi all,
>
>
>
> First of all , merry Christmas.
>
>
>
> I run menuconfig and save the .config as following:
>
>
>
> CONFIG_SPI_DEV_INTERFACE=3Dm
>
> CONFIG_PACKAGE_kmod-usb-core=3Dm
>
>
>
> Then I build the linux-yocto and core-image-minimal :
>
> Bitbake linux-yocto
>
> Bitbake core-image-minimal
>
>
>
> I expected all the kernel module will install in core-image-minimal rootf=
s,
> but , in the ./lib/modules/3.4.44-G4 , I just find
>
>
>
> modules.alias,  modules.alias.bin , modules.builtin.bin,  modules.dep =E2=
=80=A6
>
>
>
> It have nothing kernel modules (*.ko) file in ./lib/modules/. How to inst=
all
> the *.ko to rootfs  automatically ?
>
>
>
> Someone tell me to change the .config file as these :
>
> CONFIG_SPI_DEV_INTERFACE=3Dy
>
> CONFIG_PACKAGE_kmod-usb-core=3Dy
>
> I have test it what will build the kernel modules (*.ko ) to kernel image=
,
> that=E2=80=99s not what I need.
>
>
>
>
>
> so ,   I just want to know . how to install the kernel modules (*.ko) to
> core-image-minimal rootfs ?  If you know it , please help me .

well its a minimal-image so all modules are excluded. You can build
core-image-basic and it should have it
or you can do something like

MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"

in your machine.conf


>
> Thank you very much.
>
>
>
> Neil
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

