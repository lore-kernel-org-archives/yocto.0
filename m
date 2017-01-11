Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D5AE0049A; Wed, 11 Jan 2017 08:33:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B698E003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 08:33:32 -0800 (PST)
Received: by mail-vk0-f54.google.com with SMTP id r136so46081126vke.1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 08:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fr1OAfHvj50G2ptlFGD+6RJOBkVF2/yTDlDEuA7l1hI=;
	b=NGi7AByJRWZXYIKhChRdFIuPocx91so5v0nRtL6vYs/h9Qznv6j2zxpWGABEzRs5r3
	h5oNf2KCulohX5ETTUmQ85YhSJC46XicAo5vrOUCWCt6N9Fp6Q8KA9efk7Vj2AALYKWL
	D/YIzu8nI8bZGJRMpd1pvMm7m0i+3PdvAGJ67VN6gnp9ds1lkVQHKuSiG77kA9IzwqWo
	nLfNH4RcRI7nOGHm6dnGab+ci5Ot0aFe6TkJK0gEUfeXSPuvNEB7qUkoBHnmLM6xl+Nl
	VPcHTDdDtrE9Xhd2vbg21tv7WUCiZAVwVA7tsVi0LZ1ttrQpq5icssYfEKsgDcCxqnpH
	aJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fr1OAfHvj50G2ptlFGD+6RJOBkVF2/yTDlDEuA7l1hI=;
	b=GhRjyLmP+z1mn5M48vZJ4+M4efUeN/70PKVsamAwBRfTDURsT7+1u/uylCn2k/kL7g
	DYR7VmHGY2iuXGkRxCMPmFiPwJ4VDaNdZLpgX+NSKgcBnAVsBMQ06SUIaI8L+CubVO5z
	RGcDSRZS8aNQOGu1SCEWofWe1BJ0xtBhtVwc7uTO3KbPoCWDP/SPYBxYSGfhTGdDQRQw
	hf+Ubpd8jcwIWcuJKabSzHNV6laCaZXoNdMmf/FdV/yP4SxRZWpiD683JO520EwvEhlz
	diIKmdLS6L5Gi8aMWywka6m8sBOEFAlQil88NKnhN1Uysmwwj9/ve19GHQ6z/I1Ulsnj
	rW+Q==
X-Gm-Message-State: AIkVDXJzVG1MdnVOxQF9GzN09pBN9DBywM0EWG2nY/BthUbq9KMCxv6Ry0hP0dyC6fDJqAYACheM50CVdLIsig==
X-Received: by 10.31.168.7 with SMTP id r7mr4503441vke.148.1484152412053; Wed,
	11 Jan 2017 08:33:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Wed, 11 Jan 2017 08:33:01 -0800 (PST)
In-Reply-To: <AMSPR01MB184AE4354C8942FD9F9F5B992660@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
References: <AMSPR01MB18430DE5FD33B321C4C42E192670@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
	<CAMKF1soquB9=wLxYz2sR4r1uC5wz34rAH=4EJHNMuOkxN6zpGQ@mail.gmail.com>
	<AMSPR01MB184AE4354C8942FD9F9F5B992660@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jan 2017 08:33:01 -0800
Message-ID: <CAMKF1sqZ=5W5rp6YXvU-EGQN19aTdRvXDmj_1x+wpC0EcBLy9w@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSROOT variables not availables ?
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
X-List-Received-Date: Wed, 11 Jan 2017 16:33:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

STAGING_DIR_HOST and STAGING_DIR_NATIVE are OE variables that can be
used in recipes to point to target and build host sysroots
respectively.

On Tue, Jan 10, 2017 at 11:22 PM, Karim ATIKI <karim_atiki@hotmail.com> wro=
te:
> Khem,
>
>
> Ok.
>
> How are they specified using Yocto build system ?
>
> Is there any doc link ?
>
>
>
> K.
>
>
> ________________________________
> De : Khem Raj <raj.khem@gmail.com>
> Envoy=C3=A9 : mardi 10 janvier 2017 20:39
> =C3=80 : Karim ATIKI; yocto
> Objet : Re: [yocto] [bitbake] OECORE_TARGET_SYSROOT and
> OECORE_NATIVE_SYSROOT variables not availables ?
>
> These are specified differently when using the Yocto build system you sho=
uld
> not be using these variables in your makefiles
> On Tue, Jan 10, 2017 at 8:11 AM Karim ATIKI <karim_atiki@hotmail.com> wro=
te:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> Hi,
>>
>>
>>
>>
>>
>>
>>
>>
>> I'm using generated Poky SDK to cross-compile our program source-codes,
>> which works fine.
>>
>>
>>
>>
>>
>>
>>
>>
>> Now I wish to integrate the build of the project into Yocto recipes usin=
g
>> our makefiles.
>>
>>
>>
>>
>>
>>
>>
>>
>> However, some custom parameters in the makefiles are using the variables
>> OECORE_TARGET_SYSROOT  and OECORE_NATIVE_SYSROOT to manage paths.
>>
>>
>>
>>
>> But it appears that these 2 variables do not exists when the makefiles a=
re
>> called in a do_compile() function of a recipe.
>>
>>
>>
>>
>>
>>
>>
>>
>> Is it normal ? Did I did something wrong ?
>>
>>
>>
>> Should my recipe inherit something specific?
>>
>>
>>
>>
>>
>>
>>
>>
>> Or should I "source" my
>> "environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi" from the SDK =
into
>> my recipe file ? (=3D> not portable)
>>
>>
>>
>>
>>
>>
>>
>>
>> Thanks.
>>
>>
>>
>>
>>
>>
>>
>>
>> Z.
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> --
>>
>> _______________________________________________
>>
>> yocto mailing list
>>
>> yocto@yoctoproject.org
>>
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

