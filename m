Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2150DE0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 07:28:44 -0800 (PST)
Received: by lagw12 with SMTP id w12so1561280lag.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 07:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Balyue1p9Toetafhtyt5qmL6PxXTCXsHPwA4e1RXoQE=;
	b=oR65NNUGXgwwe7MmRTUPiFFIJ0YE5LT3qWje3HrbDdfJ5V2X+c1nsGBJzlwvMcu8HK
	VCbiTDTSGvBioZXyJmnpKByXWbB5211a2zADBEi2rmvlMVxnlEklhpa4bVQ6d+m1x4BE
	OQuVAZm0ADdyL5Z06/RivJ5yjENBgf7HLxQD8=
Received: by 10.112.85.70 with SMTP id f6mr8946928lbz.16.1329319723638; Wed,
	15 Feb 2012 07:28:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.111.225 with HTTP; Wed, 15 Feb 2012 07:28:13 -0800 (PST)
In-Reply-To: <1329290581.3039.18.camel@babel.joshhome>
References: <1329290581.3039.18.camel@babel.joshhome>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Feb 2012 07:28:13 -0800
Message-ID: <CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Feb 2012 15:28:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 14, 2012 at 11:23 PM, Joshua Immanuel <josh@hipro.co.in> wrote:
> its latest version libharu_2.2.1.bb. The generated .so, .la and .a files
> for this are in the name 'libhpdf'. (I guess this will not cause any
> problem.) These files are found in ${WORKDIR}/image/usr/lib
>
> My custom-image RDEPENDS for libharu. While building the custom-image
> bitbake complains
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0| error: Failed dependencies:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 libharu is needed by ta=
sk-custom-hdb-1.0-r3.ekino
>
> How do I fix this issue?

the .a files are going into -static package and I guess
there is .so and not .so.X which means .so goes into
-dev package and hence your libharu package is empty
so you have to redirect the files into correct package
with the help of FILES_${PN} =3D "libharu.so ...." etc.

