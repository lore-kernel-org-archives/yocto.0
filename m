Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE398E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:43:45 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfa15 with SMTP id fa15so12606440vbb.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b6Snap42LnxP4dXF04NSREt0O8+cajiojZV1yl0mqcE=;
	b=viZYWECfZ3BmAaD9jna5GFNrJxNN6b5LoCbvg48hgHlDcqBTh41eAp59E5CnOd12tg
	ncUn+vaUhvVtVm45GFpGV79uo2msXiUQCCsjesf1CYShld4isL0naC0+JbRwRPHjo08v
	/FzEe0/adSXqtms/d8kxNPmMebRxS9pPQ1H38=
MIME-Version: 1.0
Received: by 10.52.94.242 with SMTP id df18mr5148267vdb.122.1325105023907;
	Wed, 28 Dec 2011 12:43:43 -0800 (PST)
Received: by 10.52.161.103 with HTTP; Wed, 28 Dec 2011 12:43:43 -0800 (PST)
In-Reply-To: <CABcZAN=OiDbQT28=R0tak0-1+EdeA-3YbkUVSDnzFZP6R9NOiA@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
	<CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
	<CABcZAN=OiDbQT28=R0tak0-1+EdeA-3YbkUVSDnzFZP6R9NOiA@mail.gmail.com>
Date: Wed, 28 Dec 2011 15:43:43 -0500
Message-ID: <CADzUK1KGOFCQbTFSU5FmjERuUMBft-m5FSgtgrX_NmDF1MfSzg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to require image recipe from another layer?
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
X-List-Received-Date: Wed, 28 Dec 2011 20:43:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

Must be the hangover from the holidays!

I typed the path as you suggested (I did replace recipes-core with
recipes-sato), but I must have had a type somewhere and it did not
work and gave the same error. I then tried the relative path - which I
copied and pasted - instead of typing and it worked. So I assumed
thats what it must have been.

Now, I have the following as my recipe and it works just fine. As I
said - must be the hangover from the holidays.

require recipes-sato/images/core-image-sato.bb
IMAGE_FEATURES += "helloworld"

Thanks again

Autif

On Wed, Dec 28, 2011 at 3:31 PM, Chris Larson <clarson@kergoth.com> wrote:
> On Wed, Dec 28, 2011 at 1:22 PM, autif khan <autif.mlist@gmail.com> wrote:
>> Thats right. Accounting for the relative, path, the following recipe
>> seems to works.
>>
>> require ../../../meta/recipes-sato/images/core-image-sato.bb
>> IMAGE_FEATURES += "helloworld"
>
>
> That's not what I was referring to. You don't need the full relative
> path. It will automatically search BBPATH if you require a relative
> path. if you do require recipes-sato/images/core-image-sato.bb, it
> will search your layers and find it.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

