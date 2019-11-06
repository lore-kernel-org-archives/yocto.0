Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91929E00D00; Wed,  6 Nov 2019 08:40:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1CEE00A07
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 08:40:56 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id p59so19873125edp.7
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 08:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=86dpPayaQxviQrKkc4lxQISX+9PApifAYUM8ql+HG2U=;
	b=bnqhCojmPMnx49qdGqL48iNQOeusjOW2ytHEFknpKTtOHN3P7W7mPQFF3botpdf/qE
	w0sGOqJT2E+ZC1f6bBBUwm/TLfNsnk3YyPKw4D7q+Ik9Wq7GYP+MnNfMk9t5aO7UoGOh
	zcBXWxaYQpb+ocTRGs08vAgTnfiWongfn1SyI6kQZAwPmMw+qofmgSPPrZu2v6RezzZW
	0HA+gU/Co8EaXGyKr6GzB/LPlufVIDJqeYVhAH7sPLlmul5yOgs8b46O21jqIn+lBq56
	2ueoQUj5jMTDyUcA/P4qapdZNSS47Apr8C75lTLS5xycs+dBz7PY+GwjrJlDt1CosRH1
	fJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=86dpPayaQxviQrKkc4lxQISX+9PApifAYUM8ql+HG2U=;
	b=Kxm/8OEeJfLyDSl+eOJCrwaQ7JbDCDJB2avywm1+kAbo2DgRs1pXX8HfXoRPfkXNR/
	rveiUgTChGSNBDl62S2FIVfZ7ZbqThhNEdzzqRCTVXQEJLwzf9G4e6HNWIG5+3mcvAPP
	xLnqEaSgUodBK4ZJaCzXlFYN8y7chOah/7sk+fhNVHC9RrR2lq8gMO9C888WSsHojDyI
	k19rq6VCBnR8/I5+npVzvEj6+NIqob1cGNcPHCbmWi0OKJyVNjDW249IzHFnfgPmepNO
	eO7VWI6WjidYOwhuN0GGQrcnOukycZ8kNWUhX43UET/6b47gZ9cIpyFo6qxKvvcXrVa+
	6rgQ==
X-Gm-Message-State: APjAAAVbfh0BCgKRujTgAMzdc2XNPcO2aOS9x0q3flB/MwtptJ2NKOoL
	0nvFJDAjl/RQCJ/y9YR/YDWmoQcThrGGYfu9jxc9H7+n9SY=
X-Google-Smtp-Source: APXvYqzFjVKtWxPLsOJBDjCgICxhVW6EmO60gk6KWvOHHMS87OeYWfk1+jT4TGjUbfqMNJKut5y3XdtkmPiZFYsV1tE=
X-Received: by 2002:a17:906:4bcb:: with SMTP id
	x11mr36268012ejv.9.1573058455036; 
	Wed, 06 Nov 2019 08:40:55 -0800 (PST)
MIME-Version: 1.0
References: <CAM2K0np6XuF7kQfzr8guexucFNqWMg=CY5sAL+LS7BTWTStaUg@mail.gmail.com>
In-Reply-To: <CAM2K0np6XuF7kQfzr8guexucFNqWMg=CY5sAL+LS7BTWTStaUg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Nov 2019 11:40:44 -0500
Message-ID: <CADkTA4MMf4YJEdqGzCcA2uYT1qEujVrJY8U7TpZ2xi9zoHnQXg@mail.gmail.com>
To: Wayne Li <waynli329@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: Adding KVM kernel modules to Yocto Kernel
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
X-List-Received-Date: Wed, 06 Nov 2019 16:40:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 6, 2019 at 11:30 AM Wayne Li <waynli329@gmail.com> wrote:
>
> Dear Yocto Developers,
>
> I'm trying to get KVM added and working on a Yocto kernel I built up for =
a T4240 RDB (has a PowerPC CPU).  KVM isn't working and the reason why it i=
sn't working seems to be I'm missing the necessary kernel modules.  More sp=
ecifically, I don't seem to have a kvm.ko file that I can load.  Here's how=
 I attempted to add KVM to the kernel.
>
> I went to the SDK install folder and ran ". fsl-setup-env -m t4240rdb-64b=
" and then "bitbake virtual/kernel -c menuconfig".  After the GUI comes up,=
 I went to Virtualization -> KVM support for PowerPC E500MC/E5500/E6500 pro=
cessors and hit "Save" to save the configuration.  I then went and copied t=
he content of the .config file created by this into the kernel configuratio=
n file specified by the following path; "build_t4240rdb-64b/virt1.config". =
 This path was specified by the variable KERNEL_DEFCONFIG in sources/meta_f=
reescale/conf/machine/t4240rdb-64b.conf.  Here's what I currently have in t=
he kernel configuration file (i.e. the virt1.config file I mentioned above)=
:
>
> https://gist.github.com/WayneZhenLi/4172cd4a819b71a11b85fc5aaa57ebd1
>
> After this, I built the kernel by running "bitbake -c compile -f virtual/=
kernel" and rebuilt the full linux image.  I re-added everything to the SD =
card and booted up the T4240 RDB with the newly modified Yocto kernel.  At =
this point if I run lsmod, only the following two kernel modules show up:
>
> Module                  Size  Used by
> nfsd                  100940  11
> exportfs                6723  1 nfsd
>
> But if I do a "find . -name "kvm"" I get the following:
>
> ./usr/src/kernel/Documentation/virtual/kvm
> ./usr/src/kernel/arch/arm/kvm
> ./usr/src/kernel/arch/arm64/kvm
> ./usr/src/kernel/arch/mips/kvm
> ./usr/src/kernel/arch/powerpc/kvm
> ./usr/src/kernel/arch/s390/kvm
> ./usr/src/kernel/arch/tile/kvm
> ./usr/src/kernel/arch/x86/kvm
> ./usr/src/kernel/drivers/s390/kvm
> ./usr/src/kernel/include/config/kvm
> ./usr/src/kernel/include/config/have/kvm
> ./usr/src/kernel/include/kvm
> ./usr/src/kernel/virt/kvm
> ./dev/kvm
> ./sys/devices/virtual/misc/kvm
> ./sys/class/misc/kvm
> ./sys/kernel/debug/kvm
> ./sys/module/kvm
>
> So it does look like kvm-related files were added to the Yocto kernel bec=
ause of the changes I made to the kernel configuration file.  But there is =
no kvm.ko (or any .ko file related to kvm) anywhere in the file system.

Is the image you are building installing the specific kernel modules
you need, or the generic meta package "kernel-modules" ? Without
something like that, you can build the support, but the modules won't
be present on the image.

Bruce

>
> Is there something I'm doing wrong here?  Am I missing important lines in=
 my kernel configuration file?  Let me know your thoughts.
>
> -Thanks!, Wayne Li
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

