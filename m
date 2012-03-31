Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CCAE01304
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 08:39:38 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2494554lag.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 08:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=228fH2hzqwTz3wvVLM/KEAkGHfheC5/5LYHKklurAz4=;
	b=bSxKkkseWGWZvje4Zehp9zyPfnDTKcxUW/vcDK3WGk7AA7EbAX8/M/dUrr7mWnLVWz
	0jwwJ3tqv4Y1xF9wlpFz1NAAXliRHRTYaxfCb2+jhHscQ95AKD94w1PeXrCknKXQO+/i
	lu/RC1ox14vRWKj3J+1a4bSDeXcIBB5r1QyMJGh1U2XxjFafKRrDK7mJEuRbpzFbWGxO
	MMv1iGfhOrgE6mOBYHtwfA3fQLjB3+vpb1MHE1Fg6Ql+dAE2pZs2/j7RYmC6o9OPfqzT
	fG0w/KJbfJcZVR32GbWIlPh7pe9WHPHqq8xCWAbQO/i/7tX0DUAL7idLd3SvdArog2ED
	Uo6Q==
Received: by 10.152.146.163 with SMTP id td3mr2714015lab.31.1333208377159;
	Sat, 31 Mar 2012 08:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Sat, 31 Mar 2012 08:39:06 -0700 (PDT)
In-Reply-To: <20120331075715.GA3950@jama.jama.net>
References: <cover.1333145263.git.nitin.a.kamble@intel.com>
	<0f8cf941e9e7d9c25cd882bae083b536b715cd17.1333145263.git.nitin.a.kamble@intel.com>
	<20120331075715.GA3950@jama.jama.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 31 Mar 2012 08:39:06 -0700
Message-ID: <CAMKF1sr-pKoMaGJLUB7aRs1hLQ0wgVDdS666KzwKgwc8xtnt9Q@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] cross-canadian.bbclass: fix rpath for sdk executables
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
X-List-Received-Date: Sat, 31 Mar 2012 15:39:39 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 31, 2012 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Maybe someone should write vim-syntax file for .bb and .bbclass :).

http://git.openembedded.org/bitbake/tree/contrib/vim

