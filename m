Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71AA5E00ADD; Mon, 29 Feb 2016 21:36:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1E9E00AAF
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 21:36:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u215aC9F021672
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 29 Feb 2016 21:36:12 -0800 (PST)
Received: from server.local (147.11.118.151) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 29 Feb 2016 21:36:11 -0800
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, <yocto@yoctoproject.org>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56D52A4A.8030300@windriver.com>
Date: Tue, 1 Mar 2016 00:36:10 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
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
X-List-Received-Date: Tue, 01 Mar 2016 05:36:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-02-29 6:19 PM, Robert P. J. Day wrote:
>    (i posted a much lengthier version of this on oe-core recently, but i
> want
> to cut it down and ask specific questions to clarify what i *think* is
> going
> on.)
>
>    i want to pull in an existing layer with recipes for linux-4.0.bb and
> linux-4.1.bb, and extend them with .bbappend files, to support two
> closely-related
> machines i'm defining -- call them "mach1" and "mach2". AFAICT, my
> patches will
> fall somewhere in a 3x3 matrix of possibilities:
>
>    * 3 possibilities of applying against mach1, mach2 or both
>    * 3 possibilities of applying against linux-4.0, linux-4.1 or both
>
> so there's my 3x3 matrix.
>
>    the obvious kernel recipe directory structure would be:
>
>    linux/
>      linux-4.0.bbappend
>      linux-4.1.bbappend
>      linux-4.0/            [4.0-specific patches]
>      linux-4.1/            [4.1-specific patches]
>      linux/                [patches that apply to both]
>
> which suggests that both my .bbappend files would have to contain the line:
>
>    FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"
>
> so the SRC_URI search path for linux-4.0.bbappend entries would be
> prepended with:
>
>    * linux-4.0/        [4.0-specific patches]
>    * linux/            [patches that apply to both]
>
> and similarly for linux.4.1.bbappend. how am i doing so far? this would
> mean that, for each recipe, the more specific directory would be searched
> before the general directory. but wait ... there's more.
>
>    now i want to further categorize patches based on exclusive to mach1,
> exclusive to mach2, or applicable to both, and since the machine name is
> one of the entries in FILESOVERRIDES, i can extend the directory structure
> as:
>
>    linux-4.0/
>      mach1/
>      mach2/
>    linux-4.1/
>      mach1/
>      mach2/
>    linux/
>      mach1/
>      mach2/
>
> and there's my 3x3 matrix of patches, correct? and here's where it gets
> unclear.
>
>    i really don't want to have to number all my patches with prefixes like
> 0001-, 0002- and so on, so what is the ordering of processing for .scc,
> .cfg and .patch/.diff files? rather than just lump all the patches into
> a single .scc file, i want to refine the patches across multiple .scc
> files. is there an imposed order on SRC_URI entries, .scc files and so
> on? that's probably all i need to finish this off.

No matter what you method you choose, ordering is as they appear in the
SRC_URI (and normal variable evaluation rules apply)/.

Having maintained more than a few kernel's, my warning is that depending
on your patches, the advantages of mixing version independent patches
with version specific (and board ones) can end up causing a lot of extra
work and maintenance pain. It of course all comes down to what parts of
the kernel they touch, but assuming a normal set of patches you'll find
that you end up tweaking things for order, and then moving patches into
version/board specific places, etc. In particular if you update the base
kernel's to have things like -stable, or other patches that touch lots
of code.

Outside of the kernel version handling (see my warning above), managing
the patches by the SRC_URI works, as would .scc files. Since the entire
point of .scc files is to define a board entry point (the top level .scc
file), and then have it include common patches, configs, etc, all from
that file.

There is another alternative to that management of patches/configs/boards,
and you can create a kernel-cache directory and refer to it on the
SRC_URI. In master, that's how all the boards and patches are managed.

Cheers,

Bruce



>
> rday
>
>
>


