Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8364AE0084A; Mon, 26 Jun 2017 17:18:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11349E00524
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 17:18:00 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id 62so10832893wmw.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 17:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tABHshp2Ps21VQDYqA8n5namo0FOQqsyYi54uLcKys0=;
	b=WaLoo0TrB50tdijT39CQfU+FNuxlvXitMXZp64raTzpFpehL1SamICsUKS6zKWYZPh
	Kqwo9WydfES20m4L6TTXUSHtJMoKHCbgqvtSr3U46cuyDMakxUb//uPCRrGaa7ATIiNY
	1FB4L7B7Ppk+GArnMtolUOvCrBdbFLveqSEalBZllFc2otFTpHTi8fmrgZbfI/eCLw/X
	cPSjJYdRKiprtLi1nfnguWLP0GbjbAWFJDJsfdhUqZz702GuaDDa3dye8E9IloD+i3QD
	nfH5DHB+d3d9DBcrX0hZlVphV9hkz9ZILbURoRAqMiP3GK006hryOPexLn+AIrgDcfLR
	nD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tABHshp2Ps21VQDYqA8n5namo0FOQqsyYi54uLcKys0=;
	b=eyaxnBkx0BCloyJjPVgTvJZEnKzDm4wUmLZE4xOmrCFmX4C92jX78RIFh7DD7oH87T
	7p2++snfzTLSAOgACdW4LW1t+9sCqcNSr877Ihy07n6fuuFkWKtWkgY6XgMdex0KCkTW
	gPQrlxLVwub2PEUDIAyD4zzjatCQtJNmMxUK529Bf5btoSHH0MS8iZx4LVJltu0pUg7l
	xs/l8flzyxZ8Vpk+G5BG88gCFvQxGv4BPIF8oM7Pc/FLuZwEmJaCqzAlTU7pGsYQjZxC
	y++cZWk8F/jisgAtrBMJV/w5BVvHKvshgV3PBUy2yC/JAGlaKvppv6NRHZg6kvJOO0eZ
	49RQ==
X-Gm-Message-State: AKS2vOwpET9kKFWvpooFV2W0/MtjZXgAgPFhQgGCF2c3ZFuEwvrSNvby
	2+Smng/hCJ34iY7bzBY9jtOQ2Fo/Kg==
X-Received: by 10.80.139.229 with SMTP id n34mr1700485edn.127.1498522679852;
	Mon, 26 Jun 2017 17:17:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Mon, 26 Jun 2017 17:17:29 -0700 (PDT)
In-Reply-To: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
References: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Jun 2017 17:17:29 -0700
Message-ID: <CAMKF1spCGQ_caUvCM8BBXhbdqqZ_WPzc45QpJWohAKkYDDa-aQ@mail.gmail.com>
To: Kenny Koller <kenny@understoryweather.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Determining the correct layers for a Beaglebone build.
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
X-List-Received-Date: Tue, 27 Jun 2017 00:18:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 26, 2017 at 4:35 PM, Kenny Koller
<kenny@understoryweather.com> wrote:
> I'm trying to figure out which set of meta layers I need to build a distro
> and images for a Beaglebone Black.
>
> I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latter has
> recipes for the Beaglebone.
>
> I also found this page which suggests cloning meta-yocto:
>
> https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone
>
> Then there is meta-ti. Where does this fit in?

yocto project used beaglebone black as one of its reference boards
so you can find a default reference yocto BSP for it.

Secondly, meta-ti is TI BSP layer which also supports beaglebone black
since the board is from TI


>
> Also when I clone say poky should I checkout the branch or a specific tag?
>

you can use git clone git://git.yoctoproject.org/poky -b pyro
for getting latest stable release.

> It's not clear to me the best way start with a piece of hardware then
> determine the correct layers.

I would suggest to do a bit more investigation as to what you need.
meanwhile you can build yocto reference BSP and play with it. There
are many packages that meta-ti would have that you might need depending
upon what you plan to do.

>
> Thanks.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

