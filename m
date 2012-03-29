Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04E89E00596
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 17:51:01 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2753915lag.35
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 17:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TkEx2JWOItdX/3wkbI2ZnNl6p0DbypGZacTxSnDFjQI=;
	b=BOR2Yyo/BNBKe9PmzWYc5neNMUplVh6/nkFXt/7K+DIutLjTDjR6YR4gi08iVMMzap
	G0CERzLU1Klc+XHE9g7ta1/VvyaRv/uNieVDvjAynS0Df9hnSsV3vePvWam/9FTTRYV4
	XdxJxG5xCR7LFXGZt3Xfxex4VdYvTfWIiyR33ZnhRk6Bk+WgIfx6A5GNsAQBwLB9zaNa
	Mi7WGL+F6gRcd+RXFaWcD0WAv3GTWVDCybupw8IL+q/5KZl9IJk07Km3FY8Nv1fMc/5C
	QyNP+vi5sFavsCcdoZz1Br3ZSIcaLNKyVcw1hWKH1CWx6otqpRm+Turwj1mwGaxMPUnO
	BAuw==
Received: by 10.152.146.39 with SMTP id sz7mr25698803lab.3.1332982260763; Wed,
	28 Mar 2012 17:51:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Wed, 28 Mar 2012 17:50:30 -0700 (PDT)
In-Reply-To: <4F73A462.4010707@linux.intel.com>
References: <1332524095-8135-1-git-send-email-trini@ti.com>
	<1332958601-24500-1-git-send-email-trini@ti.com>
	<CAMKF1srabV0SzD9XpufjMvJAcvyiHbP_Pd+SeAxP=5__FuP89Q@mail.gmail.com>
	<20120328220613.GD4903@bill-the-cat> <4F73A462.4010707@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Mar 2012 17:50:30 -0700
Message-ID: <CAMKF1srALuU1DJ_HRDp7ZVQQ25Ri9V37KecrgNdiTVhZEbNRCA@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH v2] ia32-base.inc: Use '=+' for IMAGE_FSTYPES
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
X-List-Received-Date: Thu, 29 Mar 2012 00:51:02 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 28, 2012 at 4:53 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> Doesn't seem to me that it would impact the final output at all.

exactly that was my point.

