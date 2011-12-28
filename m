Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2891E006DC
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:06:39 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so14110015vcb.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=k13iU2Q6Gu3rewiY5ekoL8ROJrONcIPjvH4jmNPHK2I=;
	b=I8cWV7pvppfWcpZg/ucItNMX3fp2ROh+bXwpJHFQ5hRwI3vHYjLVSnSEMAGz3HPNBV
	Ehmwimub7vuPeVhBlaE6hUD7bu30zDndwVGPHJ05dHFJtzBL9Ze4Lt+tVVEqCs9oltOl
	fvAJVrgE8vq1oH+sdOLSqicTOqkExyaSTOP+M=
MIME-Version: 1.0
Received: by 10.220.155.147 with SMTP id s19mr19235565vcw.14.1325102799079;
	Wed, 28 Dec 2011 12:06:39 -0800 (PST)
Received: by 10.52.161.103 with HTTP; Wed, 28 Dec 2011 12:06:39 -0800 (PST)
Date: Wed, 28 Dec 2011 15:06:39 -0500
Message-ID: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: How to require image recipe from another layer?
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
X-List-Received-Date: Wed, 28 Dec 2011 20:06:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have the following problem and I am not sure how to resolve it.

I have created my own layer (say) meta-autif

In the layer - I have my recipes (say) helloworld, many more may be

Now I want to add these packages to the core-image-sato recipe for the
image. This recipe resides in meta layer (under recipes-sato/images)

I have the following recipe (say) core-image-autif.bb

require core-image-sato.bb
IMAGE_FEATURES += "helloworld"

When I execute "bitbake core-image-autif", I get the following error

ERROR: Could not include required file core-image-sato.bb

However, when I copy core-image-sato.bb from meta/recipes-sato/images
to the same directory as core-image-autif.bb, I get the image (with my
helloworld and other apps)

My question is - if there is a way to include/require a recipe form a
different directory? If yes, what is it? If not, is there a
recommended solution - that scales (if the core-image-sato.bb changes,
that should be reflected in core-image-autif).

Thanks

Autif

