Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65964E009AC; Tue, 22 May 2018 02:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D079E0086B
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 02:20:03 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id j186-v6so24455927ita.5
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 02:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=h2QNubT2Zc9dHc/sasgjqR8DVCUHMax8WqqJG+OhAis=;
	b=Cm95EYCIo9mfycLZrG+4vv9t6GZmEAIPSG4Gq7FPHsr5uvjZiPCpuxUHb6KYM1BjZq
	KRErZ1eaPk6pBR+lE23ZQpihLsV6GaIaFIvFN2WRM+u/NJyGOACJ038mAQPmqGlsPlnm
	3ikSjk0Xr0K4MDU1PFXcnGhPjME945hROjkJ+4z8qX1o5cO0eHDnNqtbufsDUIMsmqqw
	uGT4gyf4IKsQtnFukazDDFCSPzR9joCCuOD5qwaBm/8obDTCn4mFcMknTjh/BMY9PXwI
	2buFXOIWgtLWcDGTaFfbuO+jr4Aw3hKsNs2XtM56EzqMBjUqAd4oQ2xTyfBQ3C03Ivsg
	1njA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=h2QNubT2Zc9dHc/sasgjqR8DVCUHMax8WqqJG+OhAis=;
	b=sZufVl9/jvXjROFgOOj2QOSsI712zOZ0aYDQY24oz7DyrvpTJ1eCTZluRxcMM7sbbR
	Olf7nMuaGKjjbLAlkFSRypc4mfMU46Q6Mn9nZUwDCaW1UyyqC40bDvY9XFIL+7XswBxI
	SF1EhyZ2udUe92OFDWJJ121Ck4qIlNms5BrRXrgKrhQe1Ny78r8+eeJ4ZwnftNq2BjfQ
	9bFRkwDcTMuXyECqhimk6Iu817KXhfJnIB5bu8h47b6KLmd8gUamIiqds8VLvNO9oQjs
	0fq98tE1HwS1x6lwoEtc1+8eeOolLfEWiM+gdZQhV2Xvvph46GAgftOduBkbQJ6SuOvk
	Xfig==
X-Gm-Message-State: ALKqPweLo4ak9WKY//rI8XK7gNx7QTlxh8sObZFjrKyhskmbX4BBVN5R
	SrWqu1BgrKG0uy3NrHNVsfSwUvbVibMATem9SL3A7A==
X-Google-Smtp-Source: AB8JxZo/24IGb3fY3ILLaBvs4DVC9Zh0G/3LQLCkeyjfmOIV9Bx/5SlLFRpGbxuiCEkpACTN6l3OC9twWJ5DZGxs0ec=
X-Received: by 2002:a24:496:: with SMTP id 144-v6mr490376itb.131.1526980803523;
	Tue, 22 May 2018 02:20:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Tue, 22 May 2018 02:19:43 -0700 (PDT)
In-Reply-To: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
References: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 May 2018 10:19:43 +0100
Message-ID: <CAJTo0LYdi-cXJY6aNoNqVy0+o+EtjfEX-=Cg6RampP3QB7C6UQ@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native recipe question
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
X-List-Received-Date: Tue, 22 May 2018 09:20:06 -0000
Content-Type: text/plain; charset="UTF-8"

On 22 May 2018 at 08:43, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> I'm having to build a package (arrayfire) for Tegra. This package requires
> to first build a x86_64 utility (bin2cpp) which is then used for building
> the tegra arrayfire.
>
> Do I understand correctly that I should create:
>
> arrayfire-native.bb: for compiling the x86_64 utility. If so how do I
> instruct the platform?
> arrayfire.bb: for compiling the tegra platform. This recipe requires
> arrayfire-native.bb and I should get a copy in the recipe-sysroot-native
> folder?

That's one solution, but if it's jus a single tool that you need built
then you can build that yourself using the host compiler.  The best
practise here is for the upstream build to respect CC_FOR_BUILD ("use
this compiler to build binaries that I need to run at build time")
which we already export.  As presumably arrayfire doesn't do this,
then you can just build it yourself first.  For example, the Pango
recipe in oe-core basically does this:

do_compile_prepend_class-target () {
            make CC="${BUILD_CC}" LDFLAGS="${BUILD_LDFLAGS}" -C
${B}/tests gen-all-unicode
}

Which makes it build tests/gen-all-unicode using BUILD_CC (host
compiler, not cross compiler) for target builds before it goes and
builds the rest of the project.

Ross

