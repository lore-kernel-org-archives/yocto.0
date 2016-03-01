Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72946E00929; Mon, 29 Feb 2016 16:05:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C63FE008EE
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 16:05:14 -0800 (PST)
Received: by mail-vk0-f43.google.com with SMTP id e185so151423918vkb.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 16:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=HhMSXWy186/LsQGKh8ZeVIkWw+0kXAjJdoNEJRcRdW8=;
	b=NdTOtx2WGqhqSZGJVgmjHVjtda/STszo0d5pnxDLQN12wdAbMQe29f8fSqpBpqZQX2
	kWMueQJr56QVfCwHBdyAlMLOxtkPCfLs6iIALobOT9/e4M7x0WhXazfIe8jXeEnRghRa
	LlSEBM1OUAmrmOl3XggTDnn/QZuzsCO0J2DNziQTC2Fp4EA/56XBTgPq9pGxcGXbHme5
	n0OQJiO7tsQ5csIaXNzrL4aYYvQw/GDOAvUQ0wcPlfkqxlWlz6Li0M6Mr61VvFbzX17H
	xxrPuLguJEmhwWPUgCXZ5u/+25k3eor1Pzi3MGi3N2JwYSZTXhFhKpS+NRcn7hrpuon6
	anSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=HhMSXWy186/LsQGKh8ZeVIkWw+0kXAjJdoNEJRcRdW8=;
	b=EgZ2TeHC4RejPZsrwMScXCkcfW4nJfwj/YWzRPG2nJvFCUq0O4OxxU003FMOjyKzzS
	D+/cZuIQ/HnbVsXHstQtEp0eFBoVYLyDdUBecd0UQlLYu9kEnjjkdQKaBbe9/nWfAe1Q
	5i5CKbKoIKdXyiFdHtDsbSsKAG7rdzyJAeXA0Q22dTr8hfliLFJhqpNY6El1pibE8AY4
	b1vNnUNGq0iB+PhRsW/npW1e/SKZ9F6tuFhD+QnZs3rFVulcycEpXLvBkX1lky7rO/Td
	wlNVETD6TYwu9UwxY4xZpGNfvgTt2YBiLY20yyVrnqL+eOdSFtmxWU24oFB2XHfpRIAO
	TpBw==
X-Gm-Message-State: AD7BkJLiWdzPIQhsrhAYkhBAby8Qvh/d9QqFR2gaErFi1Hw8VOwJ+95HSeJIyT03jwSDSVhPLqjFeYmFIYbjQA==
MIME-Version: 1.0
X-Received: by 10.31.48.132 with SMTP id w126mr14542513vkw.5.1456790713438;
	Mon, 29 Feb 2016 16:05:13 -0800 (PST)
Received: by 10.176.1.7 with HTTP; Mon, 29 Feb 2016 16:05:13 -0800 (PST)
In-Reply-To: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
Date: Tue, 1 Mar 2016 01:05:13 +0100
Message-ID: <CAAQYJAviVJSJceLhvkyMwfkGTAYg+ZFX9SqOMfLb764uc04e-A@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to organize my patches for multiple kernels and multiple target boards?
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
X-List-Received-Date: Tue, 01 Mar 2016 00:05:18 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 12:19 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   (i posted a much lengthier version of this on oe-core recently, but i want
> to cut it down and ask specific questions to clarify what i *think* is going
> on.)
>
>   i want to pull in an existing layer with recipes for linux-4.0.bb and
> linux-4.1.bb, and extend them with .bbappend files, to support two
> closely-related
> machines i'm defining -- call them "mach1" and "mach2". AFAICT, my patches
> will
> fall somewhere in a 3x3 matrix of possibilities:
>
>   * 3 possibilities of applying against mach1, mach2 or both
>   * 3 possibilities of applying against linux-4.0, linux-4.1 or both
>
> so there's my 3x3 matrix.
>
>   the obvious kernel recipe directory structure would be:
>
>   linux/
>     linux-4.0.bbappend
>     linux-4.1.bbappend
>     linux-4.0/            [4.0-specific patches]
>     linux-4.1/            [4.1-specific patches]
>     linux/                [patches that apply to both]
>
> which suggests that both my .bbappend files would have to contain the line:
>
>   FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>
> so the SRC_URI search path for linux-4.0.bbappend entries would be
> prepended with:
>
>   * linux-4.0/        [4.0-specific patches]
>   * linux/            [patches that apply to both]
>
> and similarly for linux.4.1.bbappend. how am i doing so far? this would
> mean that, for each recipe, the more specific directory would be searched
> before the general directory. but wait ... there's more.
>
>   now i want to further categorize patches based on exclusive to mach1,
> exclusive to mach2, or applicable to both, and since the machine name is
> one of the entries in FILESOVERRIDES, i can extend the directory structure
> as:
>
>   linux-4.0/
>     mach1/
>     mach2/
>   linux-4.1/
>     mach1/
>     mach2/
>   linux/
>     mach1/
>     mach2/
>
> and there's my 3x3 matrix of patches, correct? and here's where it gets
> unclear.
>
>   i really don't want to have to number all my patches with prefixes like
> 0001-, 0002- and so on, so what is the ordering of processing for .scc,
> .cfg and .patch/.diff files? rather than just lump all the patches into
> a single .scc file, i want to refine the patches across multiple .scc
> files. is there an imposed order on SRC_URI entries, .scc files and so
> on? that's probably all i need to finish this off.
>
> rday

Robert,

in the past I have done pretty much the same: scc,cfg and patches all
packed in the recipe.
Please see these (outdated) layout examples for linux-yocto* that were
in meta-handheld.

for 3.10, using .cfg & .scc
http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dylan

Or simplified, for 3.14, using defconfig, with patches listed in SRC_URI
http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux?h=dizzy

Regards

Andrea

>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

