Return-Path: <andrea.adami@gmail.com>
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4249E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 01:57:31 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id o10so383860lbi.26
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 01:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b+9/ZxChtpvq/BcpB4frQXl3jC9UPDEVRDNHJdbjiBg=;
	b=D97lJ6y/UwFZgV1VkdpXEJtsKJ3ZSyeqAlwDtsi8J/MZ21ePA9Ra3jrO8qzgKaX2hb
	nD/dTNi/hdPYgQw4yWhHqjseFFk/0OMnKO6kzgfSPHuSfXfg5dq/POcUHQzkPSgseHjk
	ANB02cA1B+XP54tl5cDFSj/N3wiYZW0nhE70PjexWZMZ1FSPxkK8Mru31o9t81IxJG+b
	elpP1k5m2zBkwTgkCy+4pfimqAY4Duw3nDQY5KngCXZAQX8oUFEGf1lDwLmCSfEjrt51
	sC2rvUgj+kLcvZDgHz9K+dfipx4/CqSwNzS9m4llqxz8urjijS+e1XfXc8GuSpewuYyh
	lNUQ==
MIME-Version: 1.0
X-Received: by 10.152.19.194 with SMTP id h2mr30726804lae.26.1375261049323;
	Wed, 31 Jul 2013 01:57:29 -0700 (PDT)
Received: by 10.112.69.171 with HTTP; Wed, 31 Jul 2013 01:57:29 -0700 (PDT)
In-Reply-To: <51F8BAE8.3090805@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
Date: Wed, 31 Jul 2013 10:57:29 +0200
Message-ID: <CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Martin Ertsaas <martiert@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 31 Jul 2013 08:57:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas <martiert@gmail.com> wrote:
> Hi.
>
> I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
> but I want to learn how to do this myself :)). I'm trying to use the
> linux-yocto 3.4 kernel,
> and have gotten it to work locally. I then made a
> linux-yocto_3.4.bbappend which contains the following:
>
> COMPATIBLE_MACHINE_pandaboard = "pandaboard"
>
> SRCREV_machine_pandaboard ?= "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"
>
> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"

Martin,

the code in kernel.bbclass does already copy defonfig to .config, see
http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.bbclass#n216

I think your problem is the deconfig is not found,  you miss a colon at the end.
Use something like

FILESEXTRAPATHS_prepend :=
"${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"

Cheers

Andrea


>
> SRC_URI += "file://defconfig"
>
> do_configure_prepend() {
>         cp ${WORKDIR}/defconfig ${S}/.config
> }
>
> Problem I get is, without this configure_prepend, my defconfig is not
> copied into .config the kernel folder. With this however, I get a
> complaint from the kernel that the kernel directory is not clean and I
> have to run make mrproper.
>
> I would greatly appreciate any pointer/help/explanations as to what I
> have done wrong here, and how to fix it. Have been struggling for this
> for a while now, and have no idea what I have done wrong.
>
> Best regards
> Martin Ertsaas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

