Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E65CE00C43; Wed,  6 Feb 2019 15:11:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B95AFE00BFB
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 15:11:24 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id w18so10276175ite.1
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 15:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=b01g0A8sDQWOyagXAFtspoWCAZI5d8G8B/8mDnW+msA=;
	b=FHm/EShFp5AIi81pzKzGTq+uFIq4wZIbE02pBggXmLZkkjyZ7R58/7jKB9zXtiM1rm
	hwPF0eyp1c2Ey70jYmiTCcq9xu/i6sMoS6RSG+6EtWcsuh4lGtl7+6QdLvApbz7fBbUy
	5siygH2SuXSavxn2Jm6JqKYUYl52VDgXUtmGSBAr6oJ/6nNacZV2SnMJ+GrxKWkstOBU
	MRi7dDO6773WHvSuEMVi8q6KFf1x2vv3mzaQ4Pk4qzKkIViiAFJXhpCXkgYTPV58GAa6
	uYTFNFNWJXC6bOKd/N74oBFXoGeBIlwtVTedXx52s5SL5Z/QyyhXNRtVbKAmuQXi/KMY
	SxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=b01g0A8sDQWOyagXAFtspoWCAZI5d8G8B/8mDnW+msA=;
	b=jt39JP2b3U7j40Uxxyd87jfnm/ihuDOgxo3ogDq+WRDyA1uK+nF28rdsLowpWV0Iv9
	e/S5jx/CSFL+pf8RpoapBcr1a9wdT+yznItgq7mgy48b0zIhKhOn+k5vYrHDtuQgd15e
	ueVQTNr7nSQqXHQhjI55AqtmR/rBIHbHydrIOsp/zJTh/ZONBz91wIMgt52mkVoGVmHT
	5ACyKJTNqKbvxWWT+wjfnNSQXzD8QEkPfyUp/YvghQDdL995u+cNkWz3f1irbDTglTHV
	2a88tTYnS/hUQb4loIJ3GA1yKFYmvAuVgH0eUtxKUPJDNoOVNpZftsUD6635H3vjW9ML
	lihw==
X-Gm-Message-State: AHQUAub1G5zpY4kSdTwjpf/4ijy0gB4QooMfLZzrHEdine0ZcRJnmoZJ
	F/HEm22Zsq9jNd4XGiNuT/+kenhtjS3cbA3LitG3DncL
X-Google-Smtp-Source: AHgI3IYsDMRcoj6WDR+JomXwZNUbpcoukP3QaiOKJYDBaPa5yy9SgNSVV6k1TL1pTO5Op/iBU8tU/s+HoDsiRXX+1LM=
X-Received: by 2002:a6b:f317:: with SMTP id m23mr1596028ioh.91.1549494684238; 
	Wed, 06 Feb 2019 15:11:24 -0800 (PST)
MIME-Version: 1.0
References: <1549477388545.2721@planar.com>
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
	<1549490698733.2960@planar.com>
	<CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
	<CALbNGRSf+rO6jCgZMWA5DPb6ZOdz4Xw=U+7jesYn24vN6afFOw@mail.gmail.com>
In-Reply-To: <CALbNGRSf+rO6jCgZMWA5DPb6ZOdz4Xw=U+7jesYn24vN6afFOw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 7 Feb 2019 00:11:12 +0100
Message-ID: <CALbNGRSFTLXtRa4Q7nAsA3dctrj3axXkbD=N3KAh71iMiMHryQ@mail.gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 23:11:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 6, 2019 at 11:53 PM Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
>
> On Wed, Feb 6, 2019 at 11:24 PM Andreas M=C3=BCller <schnitzeltony@gmail.=
com> wrote:
> >
> > On Wed, Feb 6, 2019 at 11:05 PM Matt Schuckmann
> > <Matt.Schuckmann@planar.com> wrote:
> > >
> > > Hi Andreas,
> > >
> > > Thanks for the response, do you set build type in each recipe individ=
ually or is there some central .conf file or other other location that you =
set it?
> > >
> > > Matt S.
> > Honestly: I do not set them yet because I thought RelWithDebInfo is
> > default. That assumption was based on some projects but I checked now:
> > it does not seem to be something to rely on...
> >
> Will build-/run-test this with my 'world':
>
> diff --git a/meta/classes/cmake.bbclass b/meta/classes/cmake.bbclass
> index fd40a9863e..a8e08e6d6f 100644
> --- a/meta/classes/cmake.bbclass
> +++ b/meta/classes/cmake.bbclass
> @@ -153,6 +153,7 @@ cmake_do_configure() {
>           -DCMAKE_TOOLCHAIN_FILE=3D${WORKDIR}/toolchain.cmake \
>           -DCMAKE_VERBOSE_MAKEFILE=3D1 \
>           -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \
> +         -DCMAKE_BUILD_TYPE=3D${@d.getVar(oe.utils.vartrue('DEBUG_BUILD'=
,
> 'Debug', 'RelWithDebInfo', d))} \
>           ${EXTRA_OECMAKE} \
>           -Wno-dev
>  }
>
> Takes a while...
>
Not exactly: After short build I saw:

* There are some sed on '*-noconfig.cmake' they are going to break
* libeigen fails because it supports 'Debug' and 'Release' only (and I
bet there are more)

Will skip further tests and get the feeling that a common solution won't do=
...

Andreas

