Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BF75E006BC; Sat, 15 Aug 2015 08:58:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC554E0052C
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 08:58:38 -0700 (PDT)
Received: by igfj19 with SMTP id j19so31147539igf.0
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 08:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=vHDskOBqntac821pxLVeOK9e7fC2sVX+O4G7DkpUv1M=;
	b=S+sjuxLOzIWZ8IrLwTGmOGj0GUAKI9aIcBzHGXLh5y9yBkaMDVV/pXsdpSAIjQv0Px
	aHL4liyyy5tGGWwQnwBaZweqEUAsx0+pPmGeoOzwYNpgquqbF1vtAVYfQBbwfUmrXEYp
	7Jfyso2K6S3bCiNTjfdNpvnI530T+NcHPsyuzHXBFRO5WnMCT5riK/HfA7LhL2MlsX8g
	VXzFkBOubKsS3BSclQ94Tf1GOXuWkmz0qs0reVcda2YFllmpIKG7FGUhHFmxSzzvWBqW
	X1yzcdVxwmB4oufFaz8UH6cyVsjXMCk11jzj7A9pckrALDwCj2b4tF/yQBcwV25+teVD
	0QwQ==
X-Received: by 10.50.30.226 with SMTP id v2mr8931323igh.11.1439654317260; Sat,
	15 Aug 2015 08:58:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Sat, 15 Aug 2015 08:58:07 -0700 (PDT)
In-Reply-To: <D873F586B6E4C24CB574DB3058959F8F011B5A14C3@vie196nt>
References: <D873F586B6E4C24CB574DB3058959F8F011B5A14C3@vie196nt>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 15 Aug 2015 08:58:07 -0700
Message-ID: <CAMKF1srvfSR_L4mKhAu-7NLtS9BZt-34o8SHLAUfQJVuJ-4vbg@mail.gmail.com>
To: FLASCH Franz <Franz.FLASCH@frequentis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disable global compile flags or tune settings for specific recipe
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
X-List-Received-Date: Sat, 15 Aug 2015 15:58:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 8, 2015 at 4:27 AM, FLASCH Franz
<Franz.FLASCH@frequentis.com> wrote:
> Hi!
>
> I=E2=80=99ve a question regarding global compile flags in yocto:
>
> I have an autotools project and also a working recipe for it. My problem =
is,
> that I also have external shared libraries which I need to link in, when
> compiling this package. However these libraries were built without
> additional compile settings like =E2=80=9C-mfloat-abi=3Dhard -mfpu=3Dneon
> -mtune=3Dcortex-a8=E2=80=9D - so the compiled package doesn=E2=80=99t wor=
k with these external
> libraries.
>
> Is it possible to disable the global compile tune flags for one specific
> recipe? I do not want to disable the global compiler flags just for this
> single package.

you could do so by TUNE_CCARGS_remove =3D "-mfloat-abi=3Dhard"
but larger problem is it might not work on target which is compiled
with hard float ABI
since it will still link into glibc and libgcc and other C runtime
libs which are hardfloat.
better option for you is to remove callconvention-hard from TUNE_FEATURES

>
> I think these flags are coming from this:
> TUNE_FEATURES     =3D "armv7a vfp thumb neon callconvention-hard cortexa8=
"
>
> Maybe there are also more which have to be disabled, but I don=E2=80=99t =
know which
> and how.
>
> Any suggestions are greatly appreciated.
>
> Regards,
> Franz
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

