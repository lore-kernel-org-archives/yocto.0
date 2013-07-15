Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96034E01482
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 06:17:52 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id da11so9683802veb.6
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 06:17:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=D5f/AcPlGyp9PBDkmkfLrqL3QQpZCZCXVIXn5orhSGI=;
	b=BmyffU30yikxIixtmdZG6Mn/lsy/YeLJEEK8pJ6BFjXM7+n8bnvB+dxcmFVCqXA8LS
	aFdOH8dQTifyvecvTzt/tjwAVPlPZaCAyv/lSW+xUurmyx/agdRcumkH2QT3jNt9EStl
	vHp7z5oSOtjAMaxdvYApAlwVZDsCsTbRsBlD4TgjUFOdTh8uvhDLuOgaanO6WdT4YlyC
	89o3C14du25k1r/dJCVpXT+J5sZ9GIwnZApSOCh1YE0i0/szmI3XlMBlr5AMrvHvKoJG
	l/HNMScmyeKdY/5AbX52sRZKr/xOE8LTFDM90DV1VihdA1Kx8tJhXgn/qt8J32esdOvl
	K68g==
X-Received: by 10.220.58.195 with SMTP id i3mr28699887vch.38.1373894271933;
	Mon, 15 Jul 2013 06:17:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 15 Jul 2013 06:17:30 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E3646FC@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E3646FC@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Jul 2013 14:17:30 +0100
Message-ID: <CAJTo0LaJXHHWBwVRr88N22J7vqMGMQbyCBa1EVBqpA5d05QBjw@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
X-Gm-Message-State: ALoCoQltaT4cnTdDPFFgTnR5CMllZCu1IZCDYfkOVwubPqQiXB1WRq0Hay1MRzZsEP2px4O5jbXn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-1.4 Build error.
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
X-List-Received-Date: Mon, 15 Jul 2013 13:17:55 -0000
Content-Type: text/plain; charset=UTF-8

On 15 July 2013 13:38, Amit Kumar <Amit.Kumar@lntinfotech.com> wrote:
>     Failed to fetch test data from the network. Please ensure your network
> is configured correctly.

Assuming that you did have network connectivity, then the problem
normally is that you need to have a proxy configured in the terminal.
Exporting http_proxy=http://my-proxy/ (obviously fix that) in the
terminal should sort it.

Ross

