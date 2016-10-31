Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA30CE00C1D; Mon, 31 Oct 2016 16:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C275E00BC3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 16:56:55 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id 50so568492uae.2
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 16:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TOYfNyKr2hDjV29kBpBNHTjQkMxQcoToC2j3iImagtw=;
	b=Z8D6kpll8/WUq+Wllf0Y50NjOlBWPGqOhSgu1pivpA4sLycnsrSqNR9GkTrjB50FRD
	g704lLDW0CKoEffXoRkxl6jgqA97EYLxxViErC+w1ogYHL0c+bcfuTMvcVGvLGlOUjSq
	m+op3QY9X0y0q9Nn6X0dOL/cNqjY/ZBnC9ZP+i25t6mxcLCO41kRmFCjKkhm+0TD8HBA
	mzFXSV2ITozAfzNDvej34HL8wep8Fmo/Tw55fI/OR8q1G8uzoJZsyIWyd76ASdHRbgJA
	97+Gx4ZwC2WKJ5xoHuowutobYNpCUpZuzYTYvi1vMCrAFXU7N9oYerpJPoqnI73fAp6u
	UbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TOYfNyKr2hDjV29kBpBNHTjQkMxQcoToC2j3iImagtw=;
	b=NqzQ/ipLiFlnKeaxzP5QDVvMYnV88f1i8vfE1jOuHIPtPf+r1UsEPLHtwVwlsIJROv
	xSXIueeUw3UGaNDi8aaiOODu2Vax2KK/KpW+y+2c3NNSKBmqn6n1a3mX1sjfyoKHr6lz
	5j0MEyJ6Yj2gIJCofSPsnw6wTnMk+JNuRCSHjD75T4JlQbxEOfRVQQp8eRTm/RrVjPjQ
	39qe93DoOcQmpY4uiTElfxesoZlKF+w98c6/x4bxkeaGP6UwzItzp6Zg/vavMkZXmAAE
	kKUwohkCiazJODWXXLx1Qi4NU1mPdASDhv8UIo5DBr0AkhcNQIWpZXm/wiZqlU1wdyXX
	WMuA==
X-Gm-Message-State: ABUngvfuYFWx4JGCwXWviaIDIhxGspYMRgyv1VuQj06m9f3UcF6sHacmi6SjdRUovej89WlBaYcAAmDWuZZrrg==
X-Received: by 10.176.1.17 with SMTP id 17mr21968856uak.143.1477958214298;
	Mon, 31 Oct 2016 16:56:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Mon, 31 Oct 2016 16:56:23 -0700 (PDT)
In-Reply-To: <2078671.b1bTT14Ux0@peggleto-mobl.ger.corp.intel.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
	<1850332.dJ48PBlyDk@peggleto-mobl.ger.corp.intel.com>
	<5362FBF7-1336-4A63-8A5B-4DD670C84C25@gmail.com>
	<2078671.b1bTT14Ux0@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 31 Oct 2016 16:56:23 -0700
Message-ID: <CAMKF1sr1Gp41NAA9ZwNs+LLE61G5iCFnxuETJvkwMPbJ8fmNow@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 23:56:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 31, 2016 at 3:44 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Mon, 31 Oct 2016 15:36:24 Khem Raj wrote:
>> > On Oct 31, 2016, at 2:59 PM, Paul Eggleton <paul.eggleton@linux.intel.=
com>
>> > wrote:>
>> > On Mon, 31 Oct 2016 09:37:07 Khem Raj wrote:
>> >>> On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) <vmartin@avaya.=
com>
>> >>> wrote:
>> >>>
>> >>> We are looking at upgrading from Yocto 1.8 to 2.2.
>> >>>
>> >>> Yocto 2.2 has a minimum kernel requirement of 3.2.0.
>> >>>
>> >>> This isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but ma=
y be
>> >>> an issue for our automated build machines (x86, Linux 2.6.32=E2=80=
=94CentOS 6.)
>> >>>
>> >>> However, there is a note that says
>> >>> =E2=80=9CFor x86 and x86_64, you can reset OLDEST_KERNEL
>> >>> <http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#v=
ar-O
>> >>> L
>> >>> DEST_KERNEL> to anything down to 2.6.32 if desired.=E2=80=9D
>> >>>
>> >>> Is it possible to configure things such that we can keep supporting =
the
>> >>> old kernel for the SDK while we support a more up-to-date kernel for=
 the
>> >>> target?
>> >>
>> >> I think that should be the default. We do not set it for x86/nativesd=
k
>> >> case. File a ticket if thats not the case.
>> >
>> > SDK_OLDEST_KERNEL is the variable that's supposed to be controlling th=
is,
>> > but I noticed a couple of weeks ago that we aren't feeding
>> > SDK_OLDEST_KERNEL into glibc for nativesdk, so we should fix that - I'=
ve
>> > filed a bug [1] and will sort that out. I think we should probably set
>> > the SDK_OLDEST_KERNEL default for x86 to 2.6.32 at the same time - I
>> > assume there are no objections?
>>
>> Yes, its for nativesdk/glibc, I think for target x86 we should keep 3.2
>
> Right, I'm not proposing changing the target value.
>
> It turns out setting SDK_OLDEST_KERNEL in an arch-specific manner is a li=
ttle
> awkward since there aren't overrides that can be used for the SDK value, =
but
> we can do it from conf/machine-sdk/*.conf though.
>

yes understood, we do have aarch64 as another option for nativesdk but
practically
not there yet I guess.

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

