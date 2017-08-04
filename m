Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E654FE00B83; Fri,  4 Aug 2017 11:41:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.49 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B737CE00B67
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 11:41:05 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id t201so26401497wmt.0
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 11:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=yJWg/9eU/ZcHvJzyNa1+DYfMbeplSZ2cdERTGgqTi5g=;
	b=Oo5ChrVL2LpREI3to79paDaUpv6MJ0My2UxuiOYDzIxceumL4BnlZtQRNa1b5w6jJk
	phylbtYG27McPde/oW+gmoPFSIv5ola9MLx45LeoXKQmflkCJm2wO6ex3FFz1V/E4NMM
	Qs0uclI6+tSZzyiqrTrXtoOBSQS6uQXA4TyDpcHiPcRqCpTE+Rryd5oqSw3R28JnXZLJ
	P+cG9bwFe3hPjwyPZ/vcWU0mwlc/NzVUq2MpDOOA5GoV9qA5xU2dwRsjepLj4pEgiEJ2
	pQlVYwX4m8rhaqO6s5lUdf2LWKxSXrCAMyM3X6zGT76gL75tRVOZcmMsyJRWxQzRLPOJ
	evBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=yJWg/9eU/ZcHvJzyNa1+DYfMbeplSZ2cdERTGgqTi5g=;
	b=jMvPPkD/jz4dqblzNUF4tx8NXQuyxo1zz8Sdz3XyvpmjScuhZ9TMyJIXH10lughyTg
	uZ1VTGNwhXwzVmIzyiPG4oYbO+3VxlhCYW6TW0DUBxwvtzvUovkmDbG2wSJ8A3x+Dk01
	8VHh1fxYDx62ENvMF0mU+D7FNg+nYwqhp6Hm0QxNwHKF2gH9Qak9QVAL9DpKPMewcHs5
	OPQS9qoGqn2hcox2yHH5F+/iB2LH/Sq9b1CAybVKF2ZKAxuKncLzPz+ur+P3kSL9QdMx
	RW9a+kVVfIabHPhUQrKGF7BJyb9Dv3COgCyGRKLuj2cGXI+kodty6MRYR1q8Lh5M0zhV
	1khw==
X-Gm-Message-State: AHYfb5jyEvBNNexBRMHibb2HfTvpGoGvtG+1ko6Vpxygjvsw4ZMeBtr1
	SmcdtM67TqrseUVRr5RxXerrfE2SIXSWixE=
X-Received: by 10.28.191.213 with SMTP id o82mr2328730wmi.25.1501872064121;
	Fri, 04 Aug 2017 11:41:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.153.69 with HTTP; Fri, 4 Aug 2017 11:41:03 -0700 (PDT)
In-Reply-To: <1827876826.374013.1501510204218@email.1and1.co.uk>
References: <106c01d306f8$37982410$a6c86c30$@ln-systems.com>
	<1827876826.374013.1501510204218@email.1and1.co.uk>
From: Rick Altherr <raltherr@google.com>
Date: Fri, 4 Aug 2017 11:41:03 -0700
Message-ID: <CAPLgG=niupPAAT1gQx+GyTTOwhwC_RE4gheA0YWFZ+Zus9+pAg@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Understanding dtb generation wrt uboot (with signing)
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
X-List-Received-Date: Fri, 04 Aug 2017 18:41:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure what you mean by fitImage dtb.  Do you mean a dtb
encapsulated in the fitImage for use by the kernel, the quasi-dtb that
describes the fitImage components, or something else?

For U-Boot verified boot to work, U-Boot needs the public key that
matches the private key used to sign the components in the fitImage.
This public key must be stored independently of the fitImage otherwise
anyone could just sign the fitImage with whatever key they want and
then include the corresponding public key as well.  Instead, the
public key is stored in U-Boot's control dtb.  For modern U-Boot
targets, this dtb already exists to describe the hardware to U-Boot
(see firefly or ast2500 targets) so storing the public keys there is
just leveraging an existing data storage mechanism.  This control dtb
is baked into the U-Boot binary that gets flashed onto the target.

This gets a bit more complicated when you notice that fitImage
components are signed individually.  Each image (kernel, dtb, ramdisk)
is signed separately as are configurations described in the fitImage.
Further, each of those components can be signed with different and/or
multiple keys.  Maybe you use different keys for each product but use
a single fitImage across them all.  All of the public keys used need
to be included in the U-Boot control dtb.

Yocto uses this process adapted from the U-Boot examples:
  * build U-Boot with control dtb as provided in source
  * generate unsigned FIT
  * sign the FIT and update the control dtb with the public keys used
  * rebuild U-Boot with the updated control dtb

If your target doesn't require a control dtb for boot, you can create
a very simple one that just contains the empty key-related nodes.

On Mon, Jul 31, 2017 at 7:10 AM, Colin Helliwell
<colin.helliwell@ln-systems.com> wrote:
>
>> On 27 July 2017 at 17:48 colin.helliwell@ln-systems.com wrote:
>>
>> I'm working on 2.2/Morty, with a custom board.
>> Ultimate goal is to create a FIT image with a signed configuration. But =
I'm
>> trying to just work through step by step and understand the relationship=
s
>> between u-boot, kernel, dtb, and the fit image - would appreciate any
>> guidance!
>> So far, I've built and booted a fitImage.
>>
> ...
>>
>> First thing I'm puzzled by is that the dtb *is* in
>> tmp/deploy/images/mymachine/ , but is called
>> "zImage--4.4-r0-mymachine-20170727160613.dtb". Also with a symlink
>> "zImage-mymachine.dtb". (If I'm understanding things right, this is beca=
use
>> the fitImage contains a compressed kernel...?)
>>
>> Then I set UBOOT_SIGN_ENABLE =3D "1", and re-bitbake the u-boot target. =
It
>> only gets as far as re-building the kernel, which fails on the
>> do_assemble_fitimage stage because uboot-mkimage is being told to use
>> "u-boot.dtb"
>>
>
> After studying things in more depth, I've now grasped that the relationsh=
ips with the uboot-sign class are, not circular, but a bit to-and-fro betwe=
en kernel and u-boot. Please correct me if I've got any of this wrong:
> The 'final' signed dtb, for use by U-Boot, consists of the U-Boot dtb (i.=
e. the traditional U-Boot hardware blob) plus the fitimage dtb tree;
> The latter encompasses the kernel and the hardware blob from the *kernel*=
.
> It seems a bit tortured to have two hardware device blobs involved in thi=
s, but I kinda get the issues of keeping sync between two (https://stackove=
rflow.com/questions/30711327/why-device-tree-structure-dts-file-is-needed-b=
oth-in-bootloader-and-kernel-sou).
>
> The first complication I have is that my [manufacturer-dervied] U-Boot do=
esn't seem to compile a dtb - instead the manufacturer just uses the one bu=
ilt with the kernel. I don't mind this too much - I don't particularly need=
 a separate dtb to be built within U-Boot, and its arguably easier to *not*=
 have to maintain two sets of sources.
> However this does aggravate the uboot-sign'ing, since there's no .dtb for=
 kernel-fitimage.bbclass to use ("Step #7").
>
> Is there some means already hooked into the class(es) whereby I can easil=
y have the kernel dtb used in 'Step #7' instead?
> I thought I might be able to do this by setting UBOOT_DTB_IMAGE but it lo=
oks like the kernel's dtb hasn't yet, at this point in the build sequence, =
been installed into ${DEPLOYDIR}. Should I be aiming to make use of 'EXT_DT=
B'?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

