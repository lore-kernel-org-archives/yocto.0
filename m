Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38EBDE00D75; Thu, 14 Dec 2017 02:40:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0556E00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 02:40:40 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id d66so5636861qkg.1
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 02:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7H+ZinWfzcJoGWy7v3ekuL5ZN69gq+1NmmkTTiPMIlE=;
	b=nuRKzaUJXYFvwhazrF821q8Yer40xWanRVRkKqS90cziYte75Sncjllr/ITjgOIhxY
	bOrY4SNGBEP0BbAdg9PKn9sveYoX8Pd7VNKDH7V0siBlEcOINVUqBJ7T9hRz2nv/WiJS
	wEoEsMJCVWLCkB22wxpY7yCn8S9HsHXA7fhTlCfspMKiLuSEMj58gGIygmDs/rpmUPGP
	L6jJik38AQzYn3bkq+6m2hB/6QnGYexiTjiGW883VNktH6OOnWUcvFQbCNaLS3noSECG
	JKwXQxp8iDVow/KzZ7EkV8Kx4HOlOkRWJKPFzDTZJREGv+eKEUKeSKLdXsy+WI8t4qUE
	DHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7H+ZinWfzcJoGWy7v3ekuL5ZN69gq+1NmmkTTiPMIlE=;
	b=svLx+FHKpYzFzPvp/vWX4GBCEZ0fdMFcKgeIY+NkKfIgYr5+sE4uXtOhIQlMph1UKh
	pOUjgDVV2YeijQH5xTpvQt8K43ulMOYbE7tKOdz6DDE2LAICg+2JPSxMPcoTrZc73zvd
	H7ndj9EeXxeWf3nuplAlsQF9kZLBoPYPh8qBWoKZfUvWHl2G/kOGXnf9Wx/zs6brqNAo
	3iPVzy8dfw0wyHmKYbYZjQDcHsBOBLlkh+coyQxFMSRRWe5Ana/dHchmpniJYSY3vEis
	abwDelGZfoUxFjCwxmdkgwdtiT/yELJ9+yLHtp3so0ffRAWKcFWSZdxqPdtXCuSnA7Br
	a+Ag==
X-Gm-Message-State: AKGB3mISQaJutcxH/eR9qWeoxlcBt6FscuoQprCOhuFAmssTCgiWFX1m
	UZKDadEMGqzqb43dNkAs2algSAj2PX89ZfnuyxW9Qw==
X-Google-Smtp-Source: ACJfBovjTzACsRpZkQJstDf1v7E/dshGCMdfjgRCteZF7soim3cx/A88sw0ElflqbcOn1UU32HNlaLVO7craM4K9jZ8=
X-Received: by 10.55.12.135 with SMTP id 129mr15627635qkm.137.1513248039516;
	Thu, 14 Dec 2017 02:40:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Thu, 14 Dec 2017 02:40:38 -0800 (PST)
In-Reply-To: <CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Thu, 14 Dec 2017 11:40:38 +0100
Message-ID: <CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 10:40:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.com>:
> On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>>
>> hey guys,
>>
>> any body tried the real time kernel? I get an error, it is snot in the
>> compatibility list.
>> can we skip it?
>>
>> thanks
>>
>> --
>
> Good news: I use RT kernel only together with VC4 graphics and have lots =
of
> fun on PI2/3.
> Bad news: As far as I know it is not in meta-raspberrypi but in my fork [=
1].
> There were attempts to land the RT-patches in meta-raspberrypi but that w=
as
> denied for huge patch size :(

If the patch size was the only problem one can pull it by doing the
following in the recipe:

SRC_URI +=3D " \
    https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/patch-4.9.65-rt=
56.patch.gz;name=3Drt-patch
\
"

SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
SRC_URI[rt-patch.sha256sum] =3D
"47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"

Note that above sums are "random" and not the for the actually file
but are there for reference.

That way you do not need to keep a copy of it in meta-raspberrypi.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

