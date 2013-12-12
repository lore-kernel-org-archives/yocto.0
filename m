Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1A62E007B8
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:35:57 -0800 (PST)
Received: by mail-ve0-f179.google.com with SMTP id jw12so504007veb.10
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:35:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JVp8ow97TxwvDTNzVQFRIYUH4hsjxu9yqg786KJnjaA=;
	b=Hi8mYKMoi/9vtbjQDkWlnMb5xTYK9pNI6B/INtQsC4tXVdayI1+W1C9ouGapQGSyRE
	gnAdMmXcggUM3/7e9565tN9xwicS5bu2pjyPnlsClcUthv+DfqeMt+gEcahryI5ghOcv
	aEjGj6gkaST1lG2OYbiB7oLyYZzc494QMdK3C9cSfatT+AKi9sR4O4wzThtDNiM6L2XP
	L2dthD2jGeWYbDyL8z5TnhyShnMWPrJrciNKTbtYs7QsdTfiN1zNH4bDhZoEjXCWk0Uh
	PORiugCgDDWLcs6hOKLHxnef1Y4drZLx3nRjQI0FOIKFVoM3S8+VhZR02HETxQrwHrkk
	icTQ==
X-Gm-Message-State: ALoCoQnX4Cpaa/g4yFiT+vPvCK/PUl3+Rk/7cMhzpJ/mVUeMZ2/kWfwK+Fsfso+ULFGueRUKtoKJ
X-Received: by 10.58.54.69 with SMTP id h5mr4293964vep.25.1386866156834; Thu,
	12 Dec 2013 08:35:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 12 Dec 2013 08:35:35 -0800 (PST)
In-Reply-To: <CANwz6nxBCmk6ZW8freK+s07+8QAQjexEgUmHuqJD0dEkORVfvQ@mail.gmail.com>
References: <CANwz6nwwHW9ja1zXiYjpQdF1A5isxb=3=4eCvk01-3-_t3PP6Q@mail.gmail.com>
	<CAJTo0LZU+kU_B4bfwuzZ0tYOfaRs8U00QnpcxodEoJDF9mEGhQ@mail.gmail.com>
	<CANwz6nxBCmk6ZW8freK+s07+8QAQjexEgUmHuqJD0dEkORVfvQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Dec 2013 16:35:35 +0000
Message-ID: <CAJTo0LbV3V=dB2OQwB+XYLqf422Ux54JETbucF4Q=9j3jtHA9w@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky tree
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
X-List-Received-Date: Thu, 12 Dec 2013 16:35:58 -0000
Content-Type: text/plain; charset=UTF-8

On 12 December 2013 16:27, Edward Vidal <vidal.develone@gmail.com> wrote:
> Thanks for the information.  When I removed poky/build/tmp everything worked
> okay.  My build was quick and I did not need to recompile.  My question is
> what relation between poky/build/tmp/work and poky/build/tmp/sysroot?

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#structure-build

work/ is where packages are build.

sysroot/ is where the headers and libraries that you're building to
into, so when you cross-compile an application it can find the right
headers to include and libraries to link against.  It's effectively a
subset of the target filesystem for compilation purposes.

Ross

