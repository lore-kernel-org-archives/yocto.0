Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D9F2E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:31:42 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qabg40 with SMTP id g40so6348316qab.14
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 12:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=XB8XPGpgM9vHlGZGohRH99t5X2+ddsvDMRzlqxyyedQ=;
	b=FNmYkUUSsCbg8UVT89VbaBDRHG+GN/1uaOc5mPfQd0KiX37HNLb7bY/zfSBXinADE0
	S6ws55Jn57Wx3x000EB6D+KP3mHO+pDIo7XmxxjSISuH7Priq2YDevL45hyWWtIjo9ca
	osKflg5Pu6DmNBa4Kvhq+ztjFjLSopXEV/z44=
Received: by 10.224.212.10 with SMTP id gq10mr39535456qab.75.1325104301246;
	Wed, 28 Dec 2011 12:31:41 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Wed, 28 Dec 2011 12:31:20 -0800 (PST)
In-Reply-To: <CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
References: <CADzUK1KE=DHJp3WDGdqOv62QAvGbrc=pnVCUNpYQ4RU+KXpZJg@mail.gmail.com>
	<CABcZANka9vU=D4aT6szH47Q6NJK3CHucWwhN=0Jg+iu3B5HCbg@mail.gmail.com>
	<CADzUK1Kqmbrt_o3Dr-YsLPaBg=SSjFZuyWJO_v_2rM7bcQHe9A@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 28 Dec 2011 13:31:20 -0700
X-Google-Sender-Auth: w-XRV78SfdjpU-3VLALPXPOFUXU
Message-ID: <CABcZAN=OiDbQT28=R0tak0-1+EdeA-3YbkUVSDnzFZP6R9NOiA@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Dec 2011 20:31:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 28, 2011 at 1:22 PM, autif khan <autif.mlist@gmail.com> wrote:
> Thats right. Accounting for the relative, path, the following recipe
> seems to works.
>
> require ../../../meta/recipes-sato/images/core-image-sato.bb
> IMAGE_FEATURES += "helloworld"


That's not what I was referring to. You don't need the full relative
path. It will automatically search BBPATH if you require a relative
path. if you do require recipes-sato/images/core-image-sato.bb, it
will search your layers and find it.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

