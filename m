Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089E0E00872; Thu, 15 Nov 2018 06:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD1DAE00872
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:41:07 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id w7so6903873iom.12
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AX9z8vyjQayM1QzT3sjfvE25EPeoOSM0B6fWQsDpobE=;
	b=vJLj9um+TG3AP/J77eA3aNUiLyxfEWmmzvxqp7b+9sGseU4JNfeIeIyuethb5Gng1H
	vIHFsEFp4SXdkwWqi9RoPESt2okrHtr59YzqPVuxo5LQIzoOX237zs1ArYHQoBhONUKk
	ZbNtmAqxm/UyI0Z4Lyf7Z1wPcsqSON6s7IvcDVxtHGJnYyhsv8TngUfVYO7sYxz1Sh06
	KKeqK6iChCbqx8WTFBU509WZxVk+8GcV9tsAie5n1mXM1tDS3/aqcZZQ+BOipdU97kAI
	TpgJZgBoKxypskw5tKq7m06ihXMN0R/xeemu/0TPSfxysR/xWH6wfIrHEuFP17BObLGR
	Eg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AX9z8vyjQayM1QzT3sjfvE25EPeoOSM0B6fWQsDpobE=;
	b=TnMUK3A64IHoDDE7qtt5Uwe86DlKMNgOYw3erKjJ/1yZktzS6uVUHgK+Ym+KXQbKkF
	YwSF4EbNZMmy365AVuXXEQUOiI+NC9WFyd1pa0aKVzPyiWomoUH5p8Jsi7CUKliDCuSg
	gW5j6bFuNrwaxljM1g2bVOguVBX93RyfLDG6GcWUVowp1IfOn66itAdWsHAEuxzfPKJ/
	S5IDmmjyDNeUM2xP2z51lIvmQIEGQimBtQ8IqiuqZQ9PPXSnZoPTV+enhxwqFEY4jV9a
	YvKUjGJQd63eOEVXcpFQprZQYzxcZC+K14FR8e488bczAC78fqdQilG+YwtiHtGSlsAJ
	LRnw==
X-Gm-Message-State: AA+aEWZpbwYoGCcj+WMXaG+vlc5qfxQPSX1jMxZnBcD8OotAPKB5HEdt
	sUWjsjF1NF/48u4FF8IFi3b49ncy+QzB4ttxr8nqxg==
X-Google-Smtp-Source: AFSGD/UHRaUmPFk755ocUFgWwJa0or9rhQOn6TdC7hjW81poTtn4E9waHOByfgDIoXIHBZjndp9ndkXyTNdP19/b8fw=
X-Received: by 2002:a6b:1602:: with SMTP id 2-v6mr4880731iow.201.1542292867119;
	Thu, 15 Nov 2018 06:41:07 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
	<CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
	<CAMKF1sqvJpYzPRHJv3qQfWCkzA0pc5X5GAkOrcBJ=53-Y6kFVA@mail.gmail.com>
	<CABXoSoUqzDtrdea7rFkF0xiXULR4sto+gqcXL4L8TpZy8Ni7bQ@mail.gmail.com>
	<CAJTo0LapW-sOMR8uC4+LMWbUznHDLzQx8gsnV6hyoL=w+6A5Fw@mail.gmail.com>
	<CABXoSoUU9F3xbzFR-mru1ZrD72-DgwBb1tFEwQVxt-JRfgwSsw@mail.gmail.com>
In-Reply-To: <CABXoSoUU9F3xbzFR-mru1ZrD72-DgwBb1tFEwQVxt-JRfgwSsw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2018 14:40:54 +0000
Message-ID: <CAJTo0LYhdm3Gi7R3gnmYksWYrs14tH7r=zAMCDaShegOrhpW1g@mail.gmail.com>
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 14:41:19 -0000
Content-Type: text/plain; charset="UTF-8"

Didn't see it arrive, maybe it's lost in moderation?  What list did
you post it to?

Ross
On Thu, 15 Nov 2018 at 09:28, Samuli Piippo <samuli.piippo@gmail.com> wrote:
>
> patch sent.
> On Thu, 15 Nov 2018 at 11:17, Burton, Ross <ross.burton@intel.com> wrote:
> >
> > Good work!
> >
> > Can we have a patch from someone please?
> >
> > Ross
> >
> > On Thu, 15 Nov 2018 at 08:35, Samuli Piippo <samuli.piippo@gmail.com> wrote:
> >>
> >> On Thu, 15 Nov 2018 at 07:01, Khem Raj <raj.khem@gmail.com> wrote:
> >> >
> >> > On Wed, Nov 14, 2018 at 8:08 PM Joshua Watt <jpewhacker@gmail.com> wrote:
> >> > >
> >> > > On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
> >> > > >
> >> > > > On 11/14/18 9:54 AM, Mark Hatle wrote:
> >> > > > > On 11/13/18 3:56 AM, Samuli Piippo wrote:
> >> > > > >> Hi,
> >> > > > >>
> >> > > > >> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
> >> > > > >> a lot of the executables in the toolchain no longer run correctly on Windows.
> >> > > > >
> >> > > > > Which version of windows?
> >> > > > >
> >> > > > >> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
> >> > > > >> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
> >> > > > >> exit without any output.
> >> > > > >>
> >> > > > >> Has anyone else seen this?
> >> > > > >
> >> > > > > I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
> >> > > > > see if I can find a VM and give it a try later today.
> >> > > >
> >> > > > I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
> >> > > >
> >> > > > Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""
> >> >
> >> > this will be effective just for SDK and native versions I hope, but in
> >> > cases if we
> >> > have this override also applicable for target then this fix is not
> >> > correct. We have
> >> > to keep using it for target builds.
> >> >
> >> > > >
> >> > > > I found that the SDK was not working properly here as well, but only binutils.
> >> > > > The above seems to fix the issue.  (You do have to rebuild your SDK.)
> >> > >
> >> > > I also saw this issue on Windows 7, and your described fix corrected
> >> > > it (Thanks!). On the plus side, the automated SDK testing that I'm
> >> > > working on discovered it as well (e.g. the tests failed because of
> >> > > it), which means that the tests are working and should help prevent
> >> > > issues like this in the future once I get it merged.
> >> > >
> >>
> >> bisect finished last night and the winner was: commit
> >> 491082c56ce34f3fd644f8d4457ccd52af951087
> >> poky.conf: Enable security flags+pie by defaultEnable security
> >> flags+pie by default
> >>
> >> Adding GCCPIE_mingw32 = "" fixes this also for Windows 10
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto

