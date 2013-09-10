Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9500E01549
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 03:35:37 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id oy12so4491753veb.12
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 03:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Ogy0hTYVGSiebmu7sQR3yGDQPJvNa1d26UPoPSAaBpo=;
	b=xlcQLwkbc5zHJmqFCEmF7DBvmlmJUE7w42dls6t7HxD7/ALZNFXroOaOwkq57MwcaF
	41eTBkCcworOefeSy0gF96qWhYeo/B+rjRugSWQkDzInHik4lLc7eBsDBtfO2Ush3bdW
	0+RoI3j43o9mzfagIKZxdwNQeox3OkZBn2Z8aBWLVo2CLIS/r1fQP+bmeSBb6EgvqF7b
	oIQNb1cLOtzLRbwr0LhEb/KGpRDxx1PeMXGT8aSsWJGaxEwGKtCApe4fj9TT7AyekZol
	K2jhIQGUL1Xa9wFd06lB978DogSRftsCS2xvc4R95NIr7JKupHPZpNDJal2a6cV0ehG9
	vBRg==
X-Received: by 10.220.144.68 with SMTP id y4mr132599vcu.28.1378809336525; Tue,
	10 Sep 2013 03:35:36 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Tue, 10 Sep 2013 03:34:56 -0700 (PDT)
In-Reply-To: <CADBzu5BWX_Sk35WGKgmXqXMt1psYQu_u3r-iTMPhbNq70MvV6Q@mail.gmail.com>
References: <CADBzu5BWX_Sk35WGKgmXqXMt1psYQu_u3r-iTMPhbNq70MvV6Q@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 10 Sep 2013 11:34:56 +0100
X-Google-Sender-Auth: qHGNWYDTwlD15Sr5HcDGsg6lfC0
Message-ID: <CANyK_8eF5EzeZaXS_rT=27pKroKFVoTdN28RyBh=tfuCmyKfnA@mail.gmail.com>
To: Nick Gart <nick.gart@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Supported Kernel Versions
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
X-List-Received-Date: Tue, 10 Sep 2013 10:35:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 10 September 2013 05:36, Nick Gart <nick.gart@gmail.com> wrote:
> What is the latest combination of Yocto/Pocky that supports 3.2? I
> noticed that 3.4 is the minimum supported in the latest.

The 'dylan' branch has a 3.2 series kernel recipe, that's what I'm
using for one of my projects. If you're cloning poky that's all you
need. If you're cloning openembedded-core, bitbake and meta-yocto
separately you should use the '1.18' branch of bitbake as that matches
with the 'dylan' branch of the other repositories.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

