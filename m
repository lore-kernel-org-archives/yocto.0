Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2738E00D9B; Wed, 30 Sep 2015 03:14:17 -0700 (PDT)
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
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83CD3E00AD9
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 03:14:11 -0700 (PDT)
Received: by igcrk20 with SMTP id rk20so98200476igc.1
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 03:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=FKcr+AHjckYk//3mIoEdF/RC3UtIfahzC3V9cgNXI5c=;
	b=JKVlVQtUvhls/V2bcZpXT52CIBcILRovpINP0awEr2brVg5ypccrUonlnGQSuW+9jV
	18DPdiAr5eQkolwJWV1YFkrS7DLqxNw2CzTYPRR7yhHQBOk6HwcKLmwdakcpPY7IJJXP
	LMBBHEyfpxL3lMTEon7/ry2KwrkjGEdDVFnRe9bVX1VIH0Ng5C/emz9t48s4e930E4fp
	oW4toxlPj03e+TB3z1pxV/+rDYFDGDOonqJCr7SlRSj63ycsvIGlew2Z1URESpFWdRC0
	Hs8/YH4aiDGmnukzpjyXwL5Z5xO4JZxnC5bxC6zbGnyOV9yaE2JR9IC4P1Alceyzwr69
	TJuA==
X-Received: by 10.50.55.3 with SMTP id n3mr22327553igp.11.1443608050795; Wed,
	30 Sep 2015 03:14:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Wed, 30 Sep 2015 03:13:41 -0700 (PDT)
In-Reply-To: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
References: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Sep 2015 03:13:41 -0700
Message-ID: <CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How can i invoke a "particular recipe(.bb)" while building "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only wanted to change "particular recipe(.bb)"
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
X-List-Received-Date: Wed, 30 Sep 2015 10:14:17 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per <pervivek@gmail.com> wrote:
> hi,
>    i want to create a "x" recipe that should automatically get invoke when
> "image" recipe( that produces image) is built. How can i modify the "x"
> recipe that should be invoked while building image recipe.
>
> I don't want to do any modifications to the image recipe, i only wanted to
> do changes in "x" recipe.
> Can any one help on this . thanks in advance

add one of output package its producing ( ipk)  to IMAGE_INSTALL
inside the image recipe.

>
> Thanks and regards
> vivek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

