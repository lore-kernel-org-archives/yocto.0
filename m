Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77096E00CDC; Thu,  1 Sep 2016 00:50:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B0E7E00C51
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 00:50:22 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id l94so131537309ual.0
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 00:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/omwZtGZ1WHHjf4Y45dga5bN38+256LrhdDCZtix3jI=;
	b=vcnKvUD7/j/4bFa5vPKh3MnDMHk+pco4OtWfipRYWEZMRrYAWryu99Qlv9DO6ynn6T
	D+btS1v5axlIlFabkkkVQtpfgTgDtyTB+eyWQR2PM5tiDofRvyhavEaI6WgK5yzwYmkL
	4+u/GY31dtV8FGsKATWzrnTUjPtEVVP+C3UKyhsynobWAoQCNDrnH8IiljtiURgebDga
	xTIwdJ1odMnSBpSSuN0Yn+CoPtv1jICDsuHERR8PsuOr5QU7c/MHyJv2hdXYR9tpvJxl
	8nCVuaOyzilTvwf2Bl9c50nF1GBWG3trG9PPMjgIdhGNyW+z5cohupWZwkB0EvBz5vQb
	SIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/omwZtGZ1WHHjf4Y45dga5bN38+256LrhdDCZtix3jI=;
	b=Kon4c7DrObPciKfygggBTG/b8+r3qbkyHotDj2nFyfEHSoTpaTaXJazUuNLSFgornJ
	qkw03JdLcuI7hemFQ99f+FYEIaWC9TBRlG5zmaIM7Uj0ni6Dxaw4AF13A1YBUXIbQywT
	CBRbE12diMYMJrzHouK15PRycJbvQ8OwA0dkY+ZQdJQ3GZ8Kkrs9yjiLQRizrS1uyteA
	1biGCFrJFwH+5a21ZrYr+3ixPlLKrJchCgPLiX2qe6e/wEJV4R7D3XF+RK3ab8X/Aw84
	+qtQ9ISRe+aJcJiYnSV5UJrWOeYz1M+EUJUTAsMqZkAgmmuPsSK2AAi+nYHMyobJfzrD
	wr0A==
X-Gm-Message-State: AE9vXwOZb1GnYw2siAYK1HenmimQ4TKirCnDOQDMeYdUnuPS+t17FuNh6KqmgxZBCUx6wimQsxNIBAUH+ZYUsg==
X-Received: by 10.176.1.183 with SMTP id 52mr7322499ual.3.1472716222082; Thu,
	01 Sep 2016 00:50:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.73.23 with HTTP; Thu, 1 Sep 2016 00:50:01 -0700 (PDT)
In-Reply-To: <87poooc2ha.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 1 Sep 2016 09:50:01 +0200
Message-ID: <CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 07:50:27 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 31, 2016 at 6:44 PM, Pietro <pulsarpietro@posteo.net> wrote:
> Hi all,
>
> I am new to the Yocto building system and I could be talking nonsense. I
> used to work with buildroot time ago and I remember there is an area
> where compiled software/packages/tools previously built are "staged" and
> used when building other packages.
>
> Is there something like that available with Yocto ? Specifically I would
> like to add a package which uses the Google Protocol Buffer, I do not have
> administrator rights on the machine and I can't install the packages I
> need system wise.
>
> Is it possible to add recipes and use them at building time without
> including them in the image being generated ?
>
> A good example for that would be the protoc, the protocol buffer description
> file compiler.
>

There is a recipe for protobuf in meta-oe (2.6.1). All you need to do,
is include meta-oe in your layers (bblayers.conf) and have
protobuf-native listed in DEPENDS inside your package recipe.

The protoc compiler will be available in the PATH when package is
being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PROG
should be able to find it.

Cheers,
-- 
Maciej Borzecki
RnDity

