Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DE2E00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 11:51:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp31 with SMTP id 31so1790085ywp.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 11:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=uyxAUw0LQlJhwAPaChPbOQONBjFgLHCT2+M90FsF1KM=;
	b=V8x/N0Hbyqs/vGWwzQQVUI/xuoZoRiCbfIubvzH5ezZCdkvqk4whhrpzTGSb7+gXgo
	cGdeTNGYzpPwJ855qEtYf8SDhqYcwq8Ri117BsdS4SAIyLD3EOZi+Pflr9E6mfrNMw/v
	K5QKIm8jyKT6h3KpaOZvO+un/DWEDiz8i6Nmk=
Received: by 10.152.111.1 with SMTP id ie1mr2826709lab.7.1322077895063; Wed,
	23 Nov 2011 11:51:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Wed, 23 Nov 2011 11:51:05 -0800 (PST)
In-Reply-To: <4ECD4CF8.4020005@linux.intel.com>
References: <4ECAF89E.1030505@mindchasers.com> <4ECC2718.50008@linux.intel.com>
	<4ECD4CF8.4020005@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Nov 2011 11:51:05 -0800
Message-ID: <CAMKF1spQGcQM9NwTrHyntYMmZByS0ztkqUGUC6=3sZOztvqWBw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Atom netbook recommendation?
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
X-List-Received-Date: Wed, 23 Nov 2011 19:51:37 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 23, 2011 at 11:43 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> We also have things working on the Toshiba NB305. The atom-pc machine
>

FWIW I have asus eepc here and it works great with yocto/oe-core/meta-intel

