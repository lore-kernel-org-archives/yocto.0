Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD3EE008C8
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 20:54:52 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id rl12so1657373iec.4
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 20:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LCdlKuNTabu8fkR7NgXGGkegTG2xsxp8qJHHhDTb3sM=;
	b=nSoy8NUO7LBXHKzmarY2rAuROuoeZeeWjy0k/Et3hHEbiNZQ1Fw/KEWu7MxLkclSYx
	puzvXiJ2j2VUkl2fnVdN+QY7envOuaB9r17byTpnph0oWR5isJLwLDpE8Cbuuhhqhj04
	jmDOn88N/kNV7Rbw5uPWfkey31wm8gHVLUdQqTryb5yvRVJ4Hhk+1BQUSBsnVcSPWh6U
	TaE/PFWCOVzOSKLx2n9gvoo86KOsYNiSuqHAjb7Ge7b8uOAFI1Oln4yUMp0hhBjcVSxL
	hMuggLBxlbi50v8oQw7re6oBiDfJIZOCPiSpTh0NoPIeY6qPfAcEAy6qGlU3VPdor2SI
	Vhzg==
X-Received: by 10.50.143.69 with SMTP id sc5mr14461474igb.2.1393736091755;
	Sat, 01 Mar 2014 20:54:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Sat, 1 Mar 2014 20:54:21 -0800 (PST)
In-Reply-To: <CAA7h+EoghW9UZacjVfhRuEmAWadbsz5zyYAM-RAKQPSpf8--0A@mail.gmail.com>
References: <CAA7h+EoghW9UZacjVfhRuEmAWadbsz5zyYAM-RAKQPSpf8--0A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 1 Mar 2014 20:54:21 -0800
Message-ID: <CAMKF1srOOz0dfB778a=hVD6htVY4LUx7XaZbnKH7YHSwcuPYog@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which .bbappend file ?
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
X-List-Received-Date: Sun, 02 Mar 2014 04:54:54 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 1, 2014 at 8:20 PM, Rick Bianchi <bianchirickkutta@gmail.com> wrote:
> Okay, I am feeling a little thick, but here is my question.
>
> How do I know which .bbappend file is the right one to modify.
>
> Here is everything that would be in my layers:
>
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-dev.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.2.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.4.bb
> yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.8.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.2.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto.inc
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.4.bb
> /yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.8.bb
>
>

well you should know which kernel is in use you can also ask bitbake

bitbake -s | grep linux-yocto

It should tell you which version of linux-yocto is being used.

>
>
> Generally speaking, the preferred approach is to determine the incremental
> change you want to make and add that as a configuration fragment. For
> example, if you want to add support for a basic serial console, create a
> file named 8250.cfg in thefiles directory with the following content
> (without indentation):
>
>      CONFIG_SERIAL_8250=y
>      CONFIG_SERIAL_8250_CONSOLE=y
>      CONFIG_SERIAL_8250_PCI=y
>      CONFIG_SERIAL_8250_NR_UARTS=4
>      CONFIG_SERIAL_8250_RUNTIME_UARTS=4
>      CONFIG_SERIAL_CORE=y
>      CONFIG_SERIAL_CORE_CONSOLE=y
>
>
> Next, include this configuration fragment and extend the FILESPATH variable
> in your .bbappend file:
>
>      FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>      SRC_URI += "file://8250.cfg"
>
>
> Thanks,
> Rick
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

