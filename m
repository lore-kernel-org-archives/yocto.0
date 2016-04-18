Return-Path: <danismostlikely@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7604AE00F26; Mon, 18 Apr 2016 12:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danismostlikely[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47000E00C8D
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 12:48:56 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id x190so24210239vka.3
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 12:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=8ld1aoC53j+Tv+fnD+71yHrYrA32ds6j7ogdYLsXVMk=;
	b=MZBlR180FhKcuiL2L71JmUp8QWah36pVEhacV8eejjHKINucdh/5KyUpXMa4nN+PUR
	sTG6hWtZFcpEf/mzqRr6UUL20fcP8JWhm17XGrgTjQrRlO14SgU8YVAB/nKMtNccHoSP
	Kl7ZOb8aVdAh+5vfJK7Ukr1wU/HTH4u3Y0+DHVaeLy8NemJQMX+gni4uOBd6JgJgn/rG
	SayGI5IbJy4W//rhJD2gUMwfSBiyVjQiAn/1AL5RVswyK/ZDe3QIGprvstm0Gsu9S8JG
	15sIT3cfrCSRNui5hWSM4dbf4vJTjKScpfgLPBNlWFDlU3vbWUlyLNhfxf29wEQXHV89
	h8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=8ld1aoC53j+Tv+fnD+71yHrYrA32ds6j7ogdYLsXVMk=;
	b=gXqIbrcWADidA+XcpQujfc8IOcTd6WSGjz48sfTH8iOMrV0/YfQbMjpDsHXsVkl/Kb
	qYXdydrFYfufwZju3OBcxT1X/Lv6xsuVR7VOP6NWkVdOXGZ0MwTg/A7TKgVBNxK8SvPG
	R1ggSmJGxYSkOOaAbeYT7DGdn0u8zCwrojHTnexSkMbgItj0eherYPLkdWxf8QkpwqUs
	9xIXze4bAR9ZjIpLUJ4+udCZ+soKslvpgS2YscjFWVAV2FJDyQhVD6Zzm+PxlgO94Q+c
	JSMaINtWsi3TTy/dvRpcgKY2pqqh121GEbKqTjOhjbkieBx8K9/964VF5alRDjuZcO4P
	30nw==
X-Gm-Message-State: AOPr4FXzhl8oaEUDsu+zm9tars29BY7vLj709ZtP68yk0dnjwS+j81Rs3LECwQCEDvU+ayB0PAhmG+Do/+sqMA==
MIME-Version: 1.0
X-Received: by 10.159.36.144 with SMTP id 16mr2544890uar.98.1461008936026;
	Mon, 18 Apr 2016 12:48:56 -0700 (PDT)
Received: by 10.103.94.2 with HTTP; Mon, 18 Apr 2016 12:48:55 -0700 (PDT)
In-Reply-To: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
Date: Mon, 18 Apr 2016 13:48:55 -0600
Message-ID: <CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
From: Dan McGregor <danismostlikely@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Mon, 18 Apr 2016 19:49:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 17 April 2016 at 23:15, Khem Raj <raj.khem@gmail.com> wrote:
> Hello all,
>
> I have put together a potential gcc6 upgrade recipe set, and pushed the b=
ranch to tree here
>
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-6
>
> and also at github fork of mine.
>
> https://github.com/kraj/openembedded-core/tree/kraj/master
>
> You need to set
>
> GCCVERSION =3D =E2=80=9C6.%=E2=80=9D
>
> in local.conf to enable it.
>
>
> There are few recipes in OE-Core which still don=E2=80=99t compile e.g.
>
> see
>
> http://errors.yoctoproject.org/Errors/Build/14782/
>
> any help in fixing them or otherwise fixing other layers is appreciated.
>
> gcc6 is a major release for some info see
>
> https://gcc.gnu.org/gcc-6/changes.html
>
> and porting guide
>
> https://gcc.gnu.org/gcc-6/porting_to.html
>
>

I haven't built an image with gcc6 as the compiler yet, but I did
check out your branch to try building with gcc 6 as the host compiler
(Fedora 24). I needed a few more fixes, available at
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Ddankm/gcc-6.
I fixed lzop, pkgconfig, and disabled werror on binutils.
core-image-minimal appears to be well on its way to building.


> Thanks
>
> -Khem
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

