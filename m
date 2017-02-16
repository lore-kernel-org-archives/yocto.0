Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EBDFE00A1F; Wed, 15 Feb 2017 18:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D39E00A0A
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:53:57 -0800 (PST)
Received: by mail-vk0-f48.google.com with SMTP id t8so2900922vke.3
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3oVugM+40UG9/WwKB1ritYUeBd9xTm8O0eso2ufVLEI=;
	b=sPYKhjqAP0Yov7UVB5LI2ZRqgfDT9aX5Zkr6xfsjj34wTFgPBSXCpgEBsA9wmH/RUV
	lNknCXMACWrmxcwZTRXbkT4QS2Jk+ee7z03yyhHIlx1ahP04rhczo1W/zyfEFMSWqgTF
	uZtwCvMxqFgp2RFgCqrII9Dz73hll2Jk8jlIscYJdisHydXOjddt8Q3suUKNAXrAnFX7
	A7hvSzj6w4aWNEQNaV5aSlKNJ373obw+EVeuuzh5Y94xtKyv92JEjqJTbcflVhR+gkP2
	J6j6Cw8Wzf828eKERzCjI2/BHLAsojnGvzm0IhU8vx2u5WqKlkOVxtG1YT95XGEr4PTA
	z2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3oVugM+40UG9/WwKB1ritYUeBd9xTm8O0eso2ufVLEI=;
	b=HwCI3LKKX0T4OcaU+mjx3eDIZGypUSTuQkn9LPHWjgCsQdaRWyiMsBGFr2BMkDJVfA
	hxFw8vcjUvkyERXb/zIus1EoQLD7rT6wrmNT43AWVdbV57hTaBaSokzv3Dqzbb3GAxRW
	wZ/oc5Thp4qLO8W7r0QuF8rK6o90Th0W/B48krgTm9m70bA6jCI8udUTNNZdG1pF/xzR
	OuxV9n+5+47UBafLPaXQlKdP3ne3Mp6rmKvcazl263mTXgpMdkwPjEAxDYtDK/Pl85mQ
	MWahtifiAEzX9j7sgw1mOzvyKM6cknxTvVlGXKu+HlnlgP3UqnTbyx+SLua6U849Az2G
	gkyg==
X-Gm-Message-State: AMke39k14/UwqdYsYDrSChGZM54BRww99HyCHI9yHo6oYCfsUpUjbw2ItvLpVJSwAlVufl0I1rDzGken4TBPKA==
X-Received: by 10.31.153.8 with SMTP id b8mr19357312vke.140.1487213637208;
	Wed, 15 Feb 2017 18:53:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Wed, 15 Feb 2017 18:53:26 -0800 (PST)
In-Reply-To: <DM5PR0101MB295324100DA9294101797F66B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB295324100DA9294101797F66B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Feb 2017 18:53:26 -0800
Message-ID: <CAMKF1sqq7W8TQYVRAWJuyP9eTs5Xyrkd=4a6n3kx4u1J0wSADQ@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-efl build?
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
X-List-Received-Date: Thu, 16 Feb 2017 02:53:59 -0000
Content-Type: text/plain; charset=UTF-8

Takashi-san

On Wed, Feb 15, 2017 at 6:35 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:
> Hello, Yocto.
>
>
> I am trying to build EFL on top of my mayland environment (krogoth based).
>
> I thought it would be easy since there is meta-openembedded/meta-efl
> recipes, but now I am stuck.
>
>
> Specifically, I am experiencing x11 dependency (the recipes erquire x11 to
> be in DISTRO_FEATURES here and elsewhere), but for my target I am settting
> wayland only, no x11.
>
> (e.g. it says it needs libxcb, etc.)
>
>
> Is it normal and I am failing to configure it properly?
>
>
> I found below, but it does not talk much about the build errors I am facing,
> and if the targets I am specifying is correct, etc.
>
>
> https://www.enlightenment.org/distros/yocto-start
>
> If you are aware of any previous attempt, or, guide that I just overlooked
> for my laziness - I highly appreciate your pointers.
>

Using some preexisting image like angstrom one would be a good start
for you e.g.

https://github.com/Angstrom-distribution/meta-angstrom/blob/master/recipes-images/angstrom/efl-nodm-image.bb

it should work if you were to use angstrom distribution but if you
dont it should serve a good jump start.

