Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2F9CE00F17; Sat,  3 Oct 2015 12:18:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BA35E00A7F
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 12:18:50 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so71693917wic.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 12:18:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=5mzQ+petXjhR7hFpoT2+iymraFMfPqA8YVqx+qPA3a4=;
	b=QhuHeSnvqMXT/iOvQLebiZWd+/yvNyWkHyXtHqGmUbk2WxddO5nK1w+uX1ZJa1w9r2
	4Jo3dpDUs2AyF3sDu0FXzLgDJs18UXgytiC8e6p6xWpv84/iswssc9WZ3LvoO/uHxdkV
	giShO92KjcetGVbyiD9lCaUmj0lCt+zhug52IspJm73cvWqKT+M7qjbx51AtK7I3PduM
	8WDBdxwocDORYlpk0c6qkIl3FIWXmfhJ+Jpy7LNX8HPkcsNUH3w4iX2y/LSFHhf4Ol+5
	uh+EHDfRXoghJrFuLDz1sZ9FlJLfMReVLj7Fr7VbmFuLE9CCBbiY9jzoRq0nJ300nkld
	sj+g==
X-Gm-Message-State: ALoCoQkNQD6EKeFfIKsLlam9hj8MaA+dNW0vcYLwlF9WPpVfmL29Z8XgVeQ27qsgwilJKwRUHjZ1
X-Received: by 10.194.92.166 with SMTP id cn6mr22303454wjb.6.1443899929609;
	Sat, 03 Oct 2015 12:18:49 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	fn4sm5522673wib.11.2015.10.03.12.18.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 12:18:48 -0700 (PDT)
Date: Sat, 3 Oct 2015 21:18:46 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151003191846.GB24208@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
	<CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
	<20151003190310.GA24208@resin>
	<CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 19:18:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 03, 2015 at 12:15:58PM -0700, Khem Raj wrote:
> On Sat, Oct 3, 2015 at 12:03 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Hi,
> >
> > On Sat, Oct 03, 2015 at 12:00:13PM -0700, Khem Raj wrote:
> >> On Sat, Oct 3, 2015 at 11:24 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> > Do you happen to have this patchset in a branch somewhere remote? Something
> >> > doesn't apply the way it should.
> >>
> >> yes
> >> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> >
> > Which these commits:
> > c92ec8f weston: Enable rpi compositor backend
> > 26e2365 userland: Adjust include location for pthreads-headers
> > ec4ebd1 userland: Add wayland support
> > 070df78 userland: Fix install prefix and generate pkgconfigs
> > 4dfa633 userland: Fix multiple inline issues while building with gcc 5.x
> >
> > ... build fails as it follows:
> > fatal error: interface/vmcs_host/wayland-dispmanx-server-protocol.h: No such
> > file or directory
>
> OK so you are not testing the topmost patch for clang ?
> in any case with or with out that patch build works ok for me here.
> Can you show me the DISTRO_FEATURES you are testing with ?
>

I tested with and without - same result.
DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
libc-ftraverse                  libc-getlogin libc-idn libc-inet-anl libc-libm
libc-locales libc-locale-code                   libc-memusage libc-nis
libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
libc-posix-regexp-glibc                     libc-posix-wchar-io largefile
opengl ptest multiarch wayland pulseaudio sysvinit bluez5"

No modification to the default poky distro.

> >
> > Could you give it a try and see if it compiles for you? As well do you have any
> > idea who should provide that header? I don't see it in userland.
> >
> > --
> > Andrei Gherzan

--
Andrei Gherzan

