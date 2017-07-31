Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ADADE00C2C; Mon, 31 Jul 2017 07:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A44E00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 07:10:05 -0700 (PDT)
Received: from oxbsltgw15.schlund.de ([172.19.249.32]) by
	mrelayeu.kundenserver.de (mreue003 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0LwVKN-1dcbjf1dYl-018MlE for <yocto@yoctoproject.org>;
	Mon, 31 Jul 2017 16:10:04 +0200
Date: Mon, 31 Jul 2017 15:10:04 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <1827876826.374013.1501510204218@email.1and1.co.uk>
In-Reply-To: <106c01d306f8$37982410$a6c86c30$@ln-systems.com>
References: <106c01d306f8$37982410$a6c86c30$@ln-systems.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:rymlNWQVJEyc/DUBIs9w4TzPDOa2pGF6FH06eE2dICuuMpOG8sa
	Tf788g949RGHz/zu/rUwUyTGR51cuo3DMiQTtdRRLg0HXi3JjqmYmCxQPwijZj2eUcELwAf
	x0YqQbKi9zhOGxkF9tGtA7PBkaGc7hpo30yQ+/CipCJWSOPjMRaecZ2d3EaNPzpyuzG6e3+
	1LJO8uZR1lQOVII2+RTFg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:sS43qMsxJcc=:/wcR+iSIvhyEqGdVk5lHeo
	aY2Eg3R6hsc/IVoXlYPmIs84wmrm3gR6yQl/pFXBYeDvP5mJHbPhZLf24Hv42px5puyAWbuI2
	jUagFgfvyZEn3//E8Z5Hu4x8gR7tVKbKxSExcKqZVLl4FIMQOy2BmiqXthv2VHzVsbVxmBfcn
	OqIex1LWOmOeJvJNL1g6FLV1PVuR5L+JQcNCPndB8/jBNKuIxAWD4ZhEXLNhuc+E04vbkwrCR
	k5wWcvHMq/MCx7w8H6axGmenmDv71FsprIM8cWPLmj5YmkK8lU0xO5e4XBt6i0UD8LsVcmyQb
	Xxdklfn4JLTQYyApdAUOOlfVj7KHS6wHCq7iZv6cwQLOUAH2M6by/gIJW57ZN6igPIlVPdjvA
	Ipfjcu5pjb/JOOUrdpfz9sTl+aawZ9U8L/EVOT2ahKTrNK6jK7MY4t3SF0v9oOxs+NIpXfKuA
	Jk3s7iM5rBHPD3TX8r9KYNCQAL8detvoHo0GfQ9zvO37SFW32X0l+O0hpp60Y2B3R5Qhc0o6h
	pSl4lOvgx7taLh2ZTN7DoP21obGomlLKy18dULxlUNnChBLrY8f519dBSszmQMNhacQKBTTDS
	MnHSi2D3aDBfrCzjCO0pZnKJ6Ht3qQ2ZhmEW/AXmN1nuxZzpmL2PBA0rIldcCWK0dXO6ui1bz
	kfpbz1FVT5J2VsYIaptGWTiS/ldc/IUfOW3DdPjMEx4cxorTtQW8xilY+apwJc5da3/Es9oGX
	9BYZH8e2RoWS1d9I46Oh9EnunXNYRV7cs7yV+CTnJKO8t+yvj0NX63zjJQQ=
Subject: Re: Understanding dtb generation wrt uboot (with signing)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Jul 2017 14:10:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 27 July 2017 at 17:48 colin.helliwell@ln-systems.com wrote:
> 
> I'm working on 2.2/Morty, with a custom board.
> Ultimate goal is to create a FIT image with a signed configuration. But I'm
> trying to just work through step by step and understand the relationships
> between u-boot, kernel, dtb, and the fit image - would appreciate any
> guidance!
> So far, I've built and booted a fitImage.
> 
...
> 
> First thing I'm puzzled by is that the dtb *is* in
> tmp/deploy/images/mymachine/ , but is called
> "zImage--4.4-r0-mymachine-20170727160613.dtb". Also with a symlink
> "zImage-mymachine.dtb". (If I'm understanding things right, this is because
> the fitImage contains a compressed kernel...?)
> 
> Then I set UBOOT_SIGN_ENABLE = "1", and re-bitbake the u-boot target. It
> only gets as far as re-building the kernel, which fails on the
> do_assemble_fitimage stage because uboot-mkimage is being told to use
> "u-boot.dtb"
> 

After studying things in more depth, I've now grasped that the relationships with the uboot-sign class are, not circular, but a bit to-and-fro between kernel and u-boot. Please correct me if I've got any of this wrong:
The 'final' signed dtb, for use by U-Boot, consists of the U-Boot dtb (i.e. the traditional U-Boot hardware blob) plus the fitimage dtb tree;
The latter encompasses the kernel and the hardware blob from the *kernel*.
It seems a bit tortured to have two hardware device blobs involved in this, but I kinda get the issues of keeping sync between two (https://stackoverflow.com/questions/30711327/why-device-tree-structure-dts-file-is-needed-both-in-bootloader-and-kernel-sou).

The first complication I have is that my [manufacturer-dervied] U-Boot doesn't seem to compile a dtb - instead the manufacturer just uses the one built with the kernel. I don't mind this too much - I don't particularly need a separate dtb to be built within U-Boot, and its arguably easier to *not* have to maintain two sets of sources. 
However this does aggravate the uboot-sign'ing, since there's no .dtb for kernel-fitimage.bbclass to use ("Step #7"). 

Is there some means already hooked into the class(es) whereby I can easily have the kernel dtb used in 'Step #7' instead?  
I thought I might be able to do this by setting UBOOT_DTB_IMAGE but it looks like the kernel's dtb hasn't yet, at this point in the build sequence, been installed into ${DEPLOYDIR}. Should I be aiming to make use of 'EXT_DTB'?

