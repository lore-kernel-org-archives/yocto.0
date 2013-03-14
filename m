Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CED84E01460;
	Thu, 14 Mar 2013 14:37:22 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id p43so2618730wea.24
	for <multiple recipients>; Thu, 14 Mar 2013 14:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Cn98UV0fhtxzFgJGAQIcZS0XCO8OmNx2cUUL9UeRzC8=;
	b=SeZv0eAU/l4rgvNEjt7jdHVWu8V4zgMHgN0t7C8/rDFIEC1+NiTtIqlRVMLrQjYiLr
	/H2J5IcahqETP8JC+izEE7Dhq/cCDdFFNbi9qMvwALf54yW55CNfHMnONaXU4IyDRDv5
	1h/h1x9tYuprJJ7Of3cHSZ7PXu+8btYShvnlbtEI0VMHdLwPJ/lA5dIKiVtbcPZm0SiX
	zWHm7aGQuvsAzfsX1DLUybFblnEGlTIH3qAWO/SN6a6ya/y7h7XkjKddcfnPxmM/vx3r
	R4fnTUWDLpuz9bRs3YpRYA+2oRYg2pR21vnGGfvpyvqpLOUlrmcTy4Sg8IqHNjdst6OF
	Tlfw==
X-Received: by 10.180.76.84 with SMTP id i20mr6998328wiw.9.1363297041570; Thu,
	14 Mar 2013 14:37:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 14:37:01 -0700 (PDT)
In-Reply-To: <5142396A.9060609@windriver.com>
References: <CACzyEJ_WLRVObY-EuECAaF4UyCS8x9DJsHOhn9p45EhurS5g8g@mail.gmail.com>
	<5142396A.9060609@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 14:37:01 -0700
Message-ID: <CACzyEJ8NxC4vpipe=-7B3wmTgsYpN=-v6mWQxjwCAibbpAxqoA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH] [meta-realtime] Add rt-app and define core-image-realtime
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
X-List-Received-Date: Thu, 14 Mar 2013 21:37:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 1:56 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-14 12:52 PM, Insop Song wrote:

>
> This patch looks ok, what are the differences from your original
> layer ? I've already imported changes from there, so I'd just
> like to hear about differences between the two.
>

do_configure with --with-deadline option fails, that's why I've added
a patch to set "deadline" option by default instead of getting it from
configure.

I've tried to figure out the do_configure failure but was not able to
figure it out.
You can try this without my patch and add "--with-deadline" to configure.


> I also have schedtool staged in the tree already, if you wait
> until tomorrow, I can push that tree and you can test and extend
> that base.
>

Sounds good.

Regards,

Insop

