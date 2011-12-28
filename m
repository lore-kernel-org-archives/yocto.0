Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8DCFE006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:22:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so14123120vcb.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vL6NWf63pw8wSW+6Z6sQa87sEaZf24g5U0md3XnSZeY=;
	b=UEmQU0v5yDhg+a/dsJYrpuWOSZWSqy/L+TML+EX5w8qo7EkWdx7sj9tDLpTEo4fda8
	71AnFAc5Si3iSylwgnMVhnj3TWqBpdPwP11ekTF8p7YaxKZJ3qxnrK95RtDRzHzrv/8F
	OYZZMpv5CeKD6uHKKBF7f0/v6pbSm7Mv/LfvU=
MIME-Version: 1.0
Received: by 10.220.231.130 with SMTP id jq2mr10266152vcb.24.1325103747955;
	Wed, 28 Dec 2011 12:22:27 -0800 (PST)
Received: by 10.52.161.103 with HTTP; Wed, 28 Dec 2011 12:22:27 -0800 (PST)
In-Reply-To: <CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
Date: Wed, 28 Dec 2011 15:22:27 -0500
Message-ID: <CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Dec 2011 20:22:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thats right. Accounting for the relative, path, the following recipe
seems to works.

require ../../../meta/recipes-sato/images/core-image-sato.bb
IMAGE_FEATURES += "helloworld"

Thanks for the help

Autif

On Wed, Dec 28, 2011 at 3:12 PM, Chris Larson <clarson@kergoth.com> wrote:
> On Wed, Dec 28, 2011 at 1:06 PM, autif khan <autif.mlist@gmail.com> wrote:
>> I have the following problem and I am not sure how to resolve it.
>>
>> I have created my own layer (say) meta-autif
>>
>> In the layer - I have my recipes (say) helloworld, many more may be
>>
>> Now I want to add these packages to the core-image-sato recipe for the
>> image. This recipe resides in meta layer (under recipes-sato/images)
>>
>> I have the following recipe (say) core-image-autif.bb
>>
>> require core-image-sato.bb
>> IMAGE_FEATURES += "helloworld"
>
> You want something like:
>
> require recipes-core/images/core-image-sato.bb
> --
> Christopher Larson

