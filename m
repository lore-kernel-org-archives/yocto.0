Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 645D2E00D59; Fri, 12 Jul 2019 07:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E04AAE008F2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 07:43:02 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id g20so20782359ioc.12
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2019 07:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5Ox1bLowV9Swl34xFNrAscXGOrnG+tlbr3lBdYATekw=;
	b=AuRRIcrHlgNz2q+5rpjS/Tqkb2AxDqoIHmwjls09cdQk24qo5AZUvMqBvNRJEYujj7
	P9oGWh3bW6HSMg2vJ9kcIlV8aDFPUEdyHtro0Al03sBp244+qK3UXOWEwssFYUApvZOw
	UEoHhOOrfnit3/GkidnZsV7LVaFk4h6355B7w6Y9WUKJymwpP6fPUXJnB6Ky2V2zbY1K
	QbMPxVVa3WxqXB2q7T6XNWDgaoKdW0QXzfSBbBaslsQjmexXB0auttgJr7v7iD5gr6Oc
	mOnaceuemsl4yrYmkXdd06IlYauwY2rKOWfJxH8osumNMEi49V+RngmNtZc7I4conttw
	ScgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5Ox1bLowV9Swl34xFNrAscXGOrnG+tlbr3lBdYATekw=;
	b=r+jblNwMcmd2ScuVxqzN7j6bXqe9wN3ddJF5EZ5v1oG5/BfJXvnQ1AxbstVGKIy1hj
	M/4EGLlCJ3dI+iwfde5C5Mo6mniwQal3d4fQYYJQifNoDQ5oX0ZHaxA3PVM/SKGyMTgU
	bTudv3rvfFVcRkANWTF4ptWrm5lfcjVvGMVJtxrwJqELraKcP6cBYKsYNAby3ngCqEtg
	CGLMmUzsvLNlSig4oWeJCpHUsvpNYnf+3jfZLoVYBsfQI4NWt9N5dEUDQUPv1ATZ4nCb
	jvI488ziWpGkssSZL10c2vQAOAQ8b/RnzAndxkr/3H3l0tjbU1fLOvuJJsPxBnkIozGQ
	0nnA==
X-Gm-Message-State: APjAAAW9UsBcAmwnOXzt0m34HDygqQEk7kMqs/eVlCdFIaD47p0KiziY
	5lqkTA5/XeXioxrdritfmz1Xw5T2QWeYRHX2Jb5RhQ==
X-Google-Smtp-Source: APXvYqxd3pe1HPyXWXwm62SFVbc5Uqw54Zz+EUUJRdr5fMkikRJnY7W7+z+2cZAk/1fLypP0mFEu0kIjpoWDFwrcOrw=
X-Received: by 2002:a5e:a708:: with SMTP id b8mr11431939iod.25.1562942581879; 
	Fri, 12 Jul 2019 07:43:01 -0700 (PDT)
MIME-Version: 1.0
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<bc2d0dac-da76-9e29-cbb0-d597e264ad53@gmx.de>
	<9228f0cd-69ce-e99f-9b1c-271a39e74a45@gmx.de>
	<CAA=hcWQ1pAwNi=aSmLjiig+Rti_=rjr14W6G-ZE7W_NTdENbgA@mail.gmail.com>
	<CAA=hcWTRAtkC_5SmHArwtQqDnc_tG4Q9JD6O4rokd_dS_A+ofA@mail.gmail.com>
	<6c83cc85-0817-64f8-5472-51e4b484be65@gmx.de>
	<CAA=hcWQtiyFd4ezM+bTKRFN-vzF8kL0DPiqFRbAi_4MeHJnRLQ@mail.gmail.com>
	<de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
In-Reply-To: <de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Jul 2019 15:42:50 +0100
Message-ID: <CAJTo0LbKFwNYJRrLYGHDvj9swn12BuEufUhY2S0FpNk0_HJZjg@mail.gmail.com>
To: Moritz Porst <moritz.porst@gmx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Fri, 12 Jul 2019 14:43:03 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Jul 2019 at 15:38, Moritz Porst <moritz.porst@gmx.de> wrote:
> If I use the .wic image, APPEND is ignored. You need to write your own
> kickstart file for this and include --append option. This usually means
> copy what you need from existing files (check license compliance)  and
> add what you need. See the yocto manual on kickstart files:
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-kickstart

This is a bug in the wic files, and if they're still broken in master
then please send a patch.

Notably this was the fix I did for the wic files in meta-intel:

--- a/wic/systemd-bootdisk-microcode.wks
+++ b/wic/systemd-bootdisk-microcode.wks.in
@@ -10,4 +10,4 @@ part / --source rootfs --ondisk sda --fstype=ext4
--label platform --align 1024
-bootloader --ptable gpt --timeout=5 --append="rootwait
rootfstype=ext4 console=ttyS0,115200 console=tty0"
+bootloader --ptable gpt --timeout=5 --append="rootfstype=ext4 ${APPEND}"

Easy! :)

Ross

