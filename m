Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00C724C80B70
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 07:54:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxn22 with SMTP id 22so481976yxn.35
	for <yocto@yoctoproject.org>; Wed, 03 Nov 2010 05:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=uvSkvpBSCeH7roiH7cWh/1A0UXWxq3ETKLfN4RvRtlE=;
	b=nt7MT8Gbt6NkepMYxjHsPDpnpTLYXrSc87SOOYlIEzb3VOnysPDVTQXF2OnA/DxSFZ
	7HE+Q8D4YGIYerPgfK6awelx18uS7PfuejwrA17zijFlTEiSPclGXVNzqQk1+IGfzNw1
	l/ipfscO63fO/2vygR8F71W7n8geDmsjljOGg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=MFF04xyVyc6jzdXnvAJNKlwe8Kzq1dij9Df+5UuShYyIj9fMBIsaePfmYR02DDY8EA
	yCZPJB0xGSbJp9PsmYThDqYBCguestqJICtA+1hBBmR7q5aMRjA9HUT07mWlTee+Qdn1
	3W2Ugj67zT+8KQEoPDFJbkWKrRU501ori2iBc=
MIME-Version: 1.0
Received: by 10.42.230.65 with SMTP id jl1mr1196644icb.134.1288788881164; Wed,
	03 Nov 2010 05:54:41 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Wed, 3 Nov 2010 05:54:41 -0700 (PDT)
In-Reply-To: <1288781721.28481.4906.camel@rex>
References: <AANLkTi=p0jSowGAVwNrixt67hDR105fgkmJyRE-Eq0yd@mail.gmail.com>
	<AANLkTi=VA_3KRUsFkRTirpOTuMXLu3uLYwC6fFt4om8a@mail.gmail.com>
	<1288781721.28481.4906.camel@rex>
Date: Wed, 3 Nov 2010 13:54:41 +0100
Message-ID: <AANLkTinPRh-c_3ymdxU_4cWsE9ahM6MV94_6=P9JH-XF@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: some yocto/poky issues and errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 12:54:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/3 Richard Purdie <rpurdie@linux.intel.com>:
> On Wed, 2010-11-03 at 09:27 +0100, Frans Meulenbroeks wrote:
ess it would be nice if bitbake would have given a decent error msg though.
>>
>> Frans (btw: still confused on the do_package thing)
>
> Can you point at a copy of this recipe or the do_package function? At
> this point its hard to guess what the problem might be. I suspect you
> might be right about there being a reference to but not a definition of
> a variable.

Richard, the recipe was a private kernel recipe which actually didn't
do too much.

It reads:

recipes/linux/linux-factory_2.6.34.bb:

FILESPATHPKG_append = ":linux-${PV}"

require linux_${PV}.bb

PACKAGES = ""
PROVIDES = ""
KERNEL_IMAGE_BASE_NAME = "${KERNEL_IMAGETYPE}-${PN}-${PV}-${PR}-${MACHINE}"
KERNEL_IMAGE_SYMLINK_NAME = "${KERNEL_IMAGETYPE}-${PN}-${MACHINE}"

S = "${WORKDIR}/linux-${PV}"

do_populate_sysroot() {
}

do_install() {
}

python do_package() {
}

As you see the do_package function is empty.
Basically this recipe was created as a mechanism (not necessarily the
best :-) ) to create a 2nd kernel for the same hardware which could be
used for factory upgrade. Idea is that this kernel has a much smaller
defconfig.

Actually I don't really know any more how/why I came to the code
above. I guess I just copied some stuff from oe kexecboot recipes. It
did what I needed it to do, so I just moved on to the next issue.
(and I must admit that I have no idea why the python thingie is there
before do_package, but I saw the same in a few other oe recipes).

Frans.

