Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70F904C80081
	for <yocto@yoctoproject.org>; Tue,  1 Feb 2011 04:19:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so7034277iwn.35
	for <yocto@yoctoproject.org>; Tue, 01 Feb 2011 02:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=fLTp3L/h0NjGckgbtU7q95ZlPBTER6d97UveQaoz8vE=;
	b=rqweFgpXqnJgvk0/Q3chJkIVzZDAGNk4CCbmKQq4kDUod0jJ65ICAMkospasnqCMZy
	gJqJVE/e6ckOUhcllmMh9re83voyDFWMg6ISb5ZfJhXyMTbkGGdoFN93k9I/biXkzvPg
	KDPnIfgxbblPUDf+59PElePF6krK1D/rt5tss=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=ZW5eOA84TJ5q5ebYLOtPdgqmYiJVDPGAJhdWZE73OhgQNTNk5edeWoY86cNh7frGdo
	ayM8JRyFw96EQPF5r8JvvTDjQwxjwoefMiIfaQG3Q+ycmBK+Vb1AAdMB32vGpkt10EuZ
	2gAxlk3evCs9kMVraT4ORVs5sOnfAh3x64wdQ=
MIME-Version: 1.0
Received: by 10.42.220.69 with SMTP id hx5mr9226378icb.336.1296555549761; Tue,
	01 Feb 2011 02:19:09 -0800 (PST)
Received: by 10.42.244.7 with HTTP; Tue, 1 Feb 2011 02:19:09 -0800 (PST)
Date: Tue, 1 Feb 2011 08:19:09 -0200
Message-ID: <AANLkTimSHcRr3LFrUy4-_9q5rr4ww2V+NuNZT-uyArhO@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto image with gcov tools.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Feb 2011 10:19:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

In my own task named 'task-via-sdk.bb', I put gcov and gcov-symbolic.
My target is to generate an image with SDK tools with gcov. We use
gcov as coverage tools.

This task runs OK but when the task do_rootfs will run, it does not
find gcov-symbolic.

I make a grep on meta/,  but nobody use gcov. The package is defined
on recipes-devtools/gcc/gcc-package-target.inc

My question is: Somebody uses gcov with yocto images?

Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

