Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50087E00831
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 18:10:47 -0800 (PST)
Received: by mail-pb0-f53.google.com with SMTP id ma3so5889845pbc.40
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 18:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ESHxsYVwuiHhYNV4I2pDDcKZGsuIF0iAT4qcXe3EQ08=;
	b=Qve0toHBdQFYl84Qb6W65cgk8Xp/M1GV3dj9XzudNoEoQKjP6t0CY8Fw0iy0ipuXAp
	ytzkflY9622+pwlqEn+VRQZla30NaNPOChfnn/z6TB1jWABpCp54PklMyBmwKUIZT2wC
	UPKUuJrwUS1q6KsjkT3EoEFi0f2RDt3evZOv7X/7qu9bT1RH+Ah+ma9Clv+grqmKthsh
	rQshkfuXy4X2SnvIfcQB+4WIr0G/TrJjbzIRm23hjrj5El+QWxqDAYZzgcIGbIVFqyjO
	bb/qVuyCfO03MbGPP34gmnsPpg5XjvzuLKSaJVLexJqWZ6G6yxhMCwBBvkU2HpSAyd3j
	JGIQ==
MIME-Version: 1.0
X-Received: by 10.68.173.132 with SMTP id bk4mr460772pbc.169.1387851047510;
	Mon, 23 Dec 2013 18:10:47 -0800 (PST)
Received: by 10.68.149.197 with HTTP; Mon, 23 Dec 2013 18:10:47 -0800 (PST)
In-Reply-To: <52B879B7.8000808@mindchasers.com>
References: <52B879B7.8000808@mindchasers.com>
Date: Mon, 23 Dec 2013 22:10:47 -0400
Message-ID: <CADkTA4Pxv1hnjxMW4b7yy3Q1-xn2scMROyU2ZaLmZ_i_R+VLQQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Development of Yocto Project Kernel outside of Intel?
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
X-List-Received-Date: Tue, 24 Dec 2013 02:10:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 23, 2013 at 1:58 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> Hello,
>
> Can someone please share with me the forecast (or any info) on whether the
> Yocto Project Kernel methodology will be picked up by additional non Intel
> cores / companies in 2014 or beyond?
>
> I was just reviewing the available branches in linux-yocto-dev and
> linux-yocto-3.10, and I see that the overwhelming majority of them are for
> Intel chipsets / development boards.
>
> It seems to me that the methodology documented in the Yocto Project Kernel
> manuals is well thought out and useful.  However, due to the cores that I
> have chosen to use to date, it's just been something I browse through and
> forget about.
>
> I think it would be great if all the Yocto member companies that are
> deploying processors would jump on board and support their kernel(s) the
> same way.
>
> Any information regarding this will be greatly appreciated.

I can add a few thoughts.

We obviously have the reference BSPs to represent the major architectures, and
on the linux-yocto mailing list, we've been looking at BSPs from LSI as well as
some other pending boards (I'm waiting on them to be submitted, so I
won't mention
them here). The xilinx boards also have some yocto-style support in
their repository
with us working to adopt and integrated version of them as we move
into Yocto 1.6+.

It's generally a slow process to get kernel versions aligned, but with
the LF LTSI
kernel(s), it helps create a neutral version that the Yocto project,
OSVs, semis and
others can use as a synchronization point. LTSI is part of the
linux-yocto kernel
trees as an integrated baseline, and LTSI has recently picked up more
attention ..
which has a byproduct of more BSPs being available in a similar
format, version and
configuration.

Obviously we'd also love to see all relevant BSPs completely
mainlined, with short
stays in the Yocto tree (or others) as a BSP is developed, stabilized
and eventually
upstreamed.

There's obviously a place for cutting edge trees, semi trees for the
latest and greatest,
stable trees .. and integrated staging grounds for all of the above.
So navigating that
mix, takes time, and we are getting there.

Cheers,

Bruce


>
> Thank you,
>
> Bob
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

