Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.29877.1623677050900441715
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 06:24:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=gfdj9Lgr;
 spf=neutral (domain: stusta.mhn.de, ip: 198.145.29.25, mailfrom: srs0=q4dc=li=stusta.de=bunk@stusta.mhn.de)
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A442D38C06AF
	for <yocto@yoctoproject.org>; Mon, 14 Jun 2021 13:24:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4G3XGW10ryz3Y;
	Mon, 14 Jun 2021 15:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1623677043;
	bh=PMZtAQbM3K37e9s+WwLvLUc4seVPJRY+hHG9vaSz6ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gfdj9LgrS/lF5OtSd0p35AAM67Sjd++7Cj8O2jHSn/dPAO/o6aOGBYLTKsgypKH4P
	 d6Pdrqet3PFVWVZ5tjLLwiJq7nXsIWA/JWUZ2QZjwK2cwI+nMlVwmR69FEPXyjLi1b
	 +uGc7yfQRKwPJFanMVPUkZ2acmb5CN+nYQE+ENhSdwukJCrqZ5sm0bweui/KuRT/nc
	 ht/SK2Ux2NIchzCMqXEh0dSn/eXDrM9sS9DdE+QTreq3wITNs79vyW3iP4uS0ORnpX
	 Cz2fUCBB/xQMSefEwPt9xnYj6hPXerqiiOEaallGfxotB1ObPJzRpNRh+Bz63otRnz
	 yw1qmQqyDRl4YdGupZC2qe1U+usq1Y+GVEWjbPLLlKv0xUvatbE9f3WSKkrHaxtFrT
	 BjR1K171zLmsUx192ZDbBTkNCPeBF+/d1PAJSUeUXDSly6k6gIPBQzZc0QSJRF9g2x
	 NwK6Ivoi7QnCxFYuObsqqV1fqbKu81cBoDOQl9pYLUOZlYpRzOH1mK1mxJlOZ6jaMp
	 LCTXJj5YENBBA08RF43AJ3tag2601jQGWFRT+6h2DfdRjhp6RceFd7TjHSJbMDh5PM
	 VUsi5TUjxwbrRmL1Y6taQOQWhJe8jLgp9LeR1iv49k2Eo+/HNHBofzS8qAGUoapQPO
	 ABqBbcnyDApAwsK3retJ62CQ=
Date: Mon, 14 Jun 2021 16:24:00 +0300
From: "Adrian Bunk" <bunk@stusta.de>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] thoughts on YP-friendly developer laptop?
Message-ID: <20210614132400.GC5362@localhost>
References: <72e88753-bee4-a983-1c1-359ecc9855f1@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <72e88753-bee4-a983-1c1-359ecc9855f1@crashcourse.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Jun 14, 2021 at 07:58:19AM -0400, Robert P. J. Day wrote:
> 
>   starting to think about a new laptop that will, among other things,
> do lots of OE/YP builds, and i'll start with this as the basis for a
> few questions about hard drives:
> 
> https://www.dell.com/en-ca/shop/gaming-laptops/g15-ryzen-edition-gaming-laptop/spd/g-series-15-5515-laptop/ng155515_sb_ps25e
> 
> while an SSD would be delightful, i'm concerned about how doing
> frequent 40-50G builds would wear out an SSD. so i was considering
> looking for something with a fast regular HD for the actual build
> directories, but room to put in an M.2 NVMe that would hold fairly
> static content, like the OS itself, all the layers, a local source
> mirror and so on.
> 
> am i overthinking this? anyone have a laptop setup that is smokin'
> fast (yeah, 8 core AMD ryzen :-),

When using a laptop with only 16 GB RAM to build with 8 or 16 threads,
on what drive will the heavily used large swap partition be?

gcc loves to use > 2 GB RAM for non-trivial C++ code,
with 16 threads I'd recommend 64 GB RAM.

> and a dual drive layout that seems
> to work well with lots and lots of OE builds?

Ask for the specs of the SSD and do the math.

E.g. 150 TBW / 50 GB/build = 3000 builds

If you are building from scratch so often that the resulting number
is a worry, I'd rather buy 128 GB RAM and use a tmpfs instead of
creating a spinning rust bottleneck.

> rday

cu
Adrian
