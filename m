Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (unknown [64.71.164.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 567C3E01506
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:48:34 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52]:64609)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1UmPs9-0004Fw-Mk
	for yocto@yoctoproject.org; Tue, 11 Jun 2013 10:48:33 -0400
Received: by mail-pb0-f52.google.com with SMTP id xa12so8521336pbc.25
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HQNg3sYayrt4H1s1GdLN7qhZ5edqSZ6zYh3mZlnv+kQ=;
	b=EH8rdJK5HVP5WDiRnw9R1g5gmRxdEQiViywhiSY7xsweww9n9QYO/HPqIk9QMwR7u1
	AE0NEnekyxnuiS5fhgv2v0nqpX6aPusetQ2dbsL/hSttj/Sd8204TaOQCra9AKv8iwJO
	XeNCk5tSGQV2wqGTl1fdwwOeFCS/+c3EbD023H69ckS55UKM7OEWghjeUzGXUiBI6bMP
	DjND0UKN7YMsvzd7QbYUq6PMGtMgjKVL9v0uxCNiuU0Gy0xDWqbJCNcRCmAU+/68zBzk
	VBH2fR7tMsKue7VlFljXaV7qT9w3Cv0j8Obp0VmMR0SDr2ExXlNiO/GnWvTJUxcKXvYM
	smdQ==
X-Received: by 10.66.154.225 with SMTP id vr1mr19625306pab.85.1370962114002;
	Tue, 11 Jun 2013 07:48:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.252.134 with HTTP; Tue, 11 Jun 2013 07:47:53 -0700 (PDT)
In-Reply-To: <51B732EF.9080902@windriver.com>
References: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
	<51B732EF.9080902@windriver.com>
From: Javi Roman <javiroman@kernel-labs.org>
Date: Tue, 11 Jun 2013 16:47:53 +0200
Message-ID: <CACWQdqC6UwX7jYgxp-aRE4pUBz3G=npAAyBRuv3OJQQ_9Y4X_w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Custom kernel in Yocto/dylan branch.
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
X-List-Received-Date: Tue, 11 Jun 2013 14:48:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

With

SRC_URI_append = "file://defconfig"


Javi Roman


On Tue, Jun 11, 2013 at 4:23 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-06-11 10:18 AM, Javi Roman wrote:
>>
>> Hi!
>>
>>
>> I few years ago I used to work with OpenEmbedded (the classical
>> branch). The addition of new kernel recipes was easy for me,
>> nevertheless I'm unable to do similar things with the current
>> Yocto-dylan branch.
>>
>> The current Yocto-dylan is based on Linux kernel 3.x branches, all the
>> documentation regarding add custom kernels or new kernel features are
>> based on those 3.x branches. However, I would like to use a 2.6.32
>> Linux kernel (it's a constraint for my project).
>>
>> I'm using the following kernel recipe in my bsp:
>>
>> linux/
>>        linux-yocto-abacus/
>>                   defconfig
>>         linux-yocto-abacus_2.6.32.bb
>>
>> #####  linux-yocto-abacus_2.6.32.bb ####
>>
>> inherit kernel
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> SRC_URI_append =3D "file://defconfig"
>>
>> PROVIDES =3D "virtual/kernel"
>>
>> SRC_URI =3D
>> "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
>> it;protocol=3Dgit;nocheckout=3D1"
>>
>> LINUX_VERSION =3D "2.6.32"
>> LINUX_VERSION_EXTENSION =3D "-abacus"
>>
>> # tag: v3.4    76e10d158efb6d4516018846f60c2ab5501900bc
>> # tag: v2.6.32 459b3d520991ec1b8e5ba68fbc4b206d602fee6e
>> SRCREV=3D"459b3d520991ec1b8e5ba68fbc4b206d602fee6e"
>>
>> PR =3D "r1"
>> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>>
>> COMPATIBLE_MACHINE =3D "romley"
>>
>> ############ end ###################
>>
>> When I build the kernel with:
>>
>> # bitbake virtual/kernel
>>
>> The kernel is downloaded from kernel.org, with the correct git tag
>> (v2.6.32) and is built with success. Nevertheless, the "defconfig" is
>> not properly added in the kernel configuration. If I run:
>>
>> # bitbake virtual/kernel -c menuconfig
>>
>> The ncurses menuconfig is not using the "defconfig" added by me.
>>
>> The "defconfig" with all kernel configurations is a deprecated feature?
>> Which is the correct way to add a new kernel recipe?
>
>
> It definitely should still be working, we have plenty of defconfig
> users (whether right or wong ;) and it is tested daily.
>
> How did you specify your defconfig on the SRC_URI ?
>
> Bruce
>
>>
>> Many thanks!
>> Javi Roman
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

