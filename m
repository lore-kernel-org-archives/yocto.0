Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D455E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:13:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so9441720qcs.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=MjGPUS/rBcHxxxEAXQFZGougLVTqJHscpvKUvbf9qWU=;
	b=UJBOHkI1lq19mmYi7xmVGKAwT1RTOZWXiqnt1hVkyI1YUQ1wL3lmJfBFhqBZPcv1tD
	7bHtftsNz4nHQzakku6n5BsoX95zZ9353N5jbMoF0CKjbB7J5oiIYXR5VI7pO7THkrk9
	ZB/oqKx7pMfWvBw46O2HZluCK0kf85R7PqaxQ=
Received: by 10.224.42.10 with SMTP id q10mr23383156qae.26.1325103191295; Wed,
	28 Dec 2011 12:13:11 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Wed, 28 Dec 2011 12:12:50 -0800 (PST)
In-Reply-To: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 28 Dec 2011 13:12:50 -0700
X-Google-Sender-Auth: -n2d9IwJlUorFM6HyLo5SRw-GuE
Message-ID: <CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
To: autif khan <autif.mlist@gmail.com>
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
X-List-Received-Date: Wed, 28 Dec 2011 20:13:12 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 28, 2011 at 1:06 PM, autif khan <autif.mlist@gmail.com> wrote:
> I have the following problem and I am not sure how to resolve it.
>
> I have created my own layer (say) meta-autif
>
> In the layer - I have my recipes (say) helloworld, many more may be
>
> Now I want to add these packages to the core-image-sato recipe for the
> image. This recipe resides in meta layer (under recipes-sato/images)
>
> I have the following recipe (say) core-image-autif.bb
>
> require core-image-sato.bb
> IMAGE_FEATURES += "helloworld"

You want something like:

require recipes-core/images/core-image-sato.bb
-- 
Christopher Larson

