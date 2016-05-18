Return-Path: <christian.fuchs@fos4x.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7359E00C66; Wed, 18 May 2016 04:05:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9205E00C2A
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:05:45 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id n129so179167987wmn.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fos4x.de; s=google;
	h=subject:references:cc:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=NWoZvDDJFM5X/bcK0V+cbxzvnk6BLCYYjswfT+ObQL8=;
	b=v8pFYaIgx+SUBFtKhKKkQQk5iruDwjopfE21/JiQqyLP5AGdzebGDvfuTHEbJa5QWH
	+MqEPfGBFtiRJlf/iv8Xh3xBJXhdrUaLc6cRAuI7owSfFpz5UPmRwXB/ZAwmLCa9VFHY
	g8v1jYTyZkAEIb1J4f7oY7F2k51uSuQFhn0Mk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=NWoZvDDJFM5X/bcK0V+cbxzvnk6BLCYYjswfT+ObQL8=;
	b=GQwSrhhTJnLItRlgPmxRbEjRQ21MjSm/Dmh+jj03IOA1YR/pJnyAXaK2NPwa9+WqEQ
	M2qiy45ymK/DA0cOR/paJb0LnWvFlGoZUOE8N2fSXtl9ZgK1rhYp9n3injM/Z/T5pnp5
	oSiGVgGIU2hbocbYVup+kOkdwgY9ZIMqPVPt77abfJIaqNe7OKjTd8hCrcswblaGJyQQ
	f5W1jeeQvwUIOD1UzYjefRGJrpm1XL2luSNgA9IgHdfcVB8K1uXdKSIA7eHbMRYKq+3N
	IXVrL6eNPhEwLCYiyDWMuv5jFbySTCvdxlAyWvPuc8HJ+aKWpzuKJgtxY6GCATw9Enaz
	GUAA==
X-Gm-Message-State: AOPr4FXhvAhMJZOcX8mEmtKWjF/vUW2meiq5hIueWAAS7OPYyHP3U/18VPMFVCJwKaO7aA==
X-Received: by 10.28.153.73 with SMTP id b70mr2353353wme.81.1463569544181;
	Wed, 18 May 2016 04:05:44 -0700 (PDT)
Received: from [10.0.102.17] (pd907f7af.dip0.t-ipconnect.de. [217.7.247.175])
	by smtp.googlemail.com with ESMTPSA id
	a75sm8531803wme.18.2016.05.18.04.05.43 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 May 2016 04:05:43 -0700 (PDT)
References: <bf3219da-4a88-f071-fa00-b46b2872afc5@fos4x.de>
	<CAMKF1sqkeLzhgppY0Pf2rUXwYHOXwjQo+L=arawCmUF52vtO0A@mail.gmail.com>
	<4be89ee9-9d84-ede0-ee24-cd55c9c4cf8a@fos4x.de>
	<CAJTo0La7EH5dwtpQMxYnjTytpQKaRJRoSRdMq248qGYneqYgcw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Christian Fuchs <christian.fuchs@fos4x.de>
Message-ID: <159eb54e-b88a-2292-9147-fff2f293f369@fos4x.de>
Date: Wed, 18 May 2016 13:05:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0La7EH5dwtpQMxYnjTytpQKaRJRoSRdMq248qGYneqYgcw@mail.gmail.com>
Subject: Re: Curl recipe not applying DISTRO_FEATURES
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
X-List-Received-Date: Wed, 18 May 2016 11:05:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Am 18.05.2016 um 12:38 schrieb Burton, Ross:

>
> On 18 May 2016 at 08:58, Christian Fuchs <christian.fuchs@fos4x.de 
> <mailto:christian.fuchs@fos4x.de>> wrote:
>
>     I just checked and EXTRA_OECONF is not correctly expanded. It is
>     missing the "ac_cv_sizeof_off_t=8" part that is present on the
>     Ubuntu machine.
>
>
> Have you verified that DISTRO_FEATURES is identical on both?
Yes DISTRO_FEATURES is identical. On both bitbake -e curl | grep 
^DISTRO_FEATURES shows:

DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia 
usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 
libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets 
libc-charsets libc-crypt                     libc-crypt-ufc 
libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab 
libc-ftraverse                     libc-getlogin libc-idn libc-inet-anl 
libc-libm libc-locales libc-locale-code         libc-memusage libc-nis 
libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams 
libc-sunrpc     libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar 
libc-posix-regexp libc-posix-regexp-glibc libc-posix-wchar-io largefile 
multiarch tiny pam keyboard usbhost ext2 ipv6 pcmcia pulseaudio sysvinit"

>
> Ross

