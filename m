Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73473E00746
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 17:43:33 -0700 (PDT)
Received: from mail-vb0-f52.google.com ([209.85.212.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 11 Apr 2012 17:43:32 -0700
Received: by vbzb23 with SMTP id b23so972879vbz.25
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 17:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=Ur/S55IJK/dFLK+MJ7l3pETysp7u7b9sYwa9BcPMp70=;
	b=TkLeGdhWZ/H5kAZy8w19vGFgS6PdYLT0k0BE8yqvuIuP0QU91RQ8cV/QA7vf8v+d2z
	CXUheQC2R0Jw1JGeIbYejw/yFHUARSUv5Lm2JA/FZBBjZGLUL83nINKYMvo/cGy2L5W7
	Q8BZtraqmepm8BZGyMsUL9D7c/X8f0ZZkhVbpEN0vrHR+ndFYFCAM1WNOR2OAfQUBZJX
	9tL9vCpMs1EijW08XDso+hlwfTigycBYvB0NS0KsOyw/2EoOZNSqom7nurA3N0VZF0cW
	GeFdHQcpb4H6A//YLYG6uL5j7D1MmNRe4C1jWY0hshW8XWkW+F2KJKpCnvQj458a+ddZ
	Qk0Q==
MIME-Version: 1.0
Received: by 10.52.30.9 with SMTP id o9mr194149vdh.52.1334191412072; Wed, 11
	Apr 2012 17:43:32 -0700 (PDT)
Received: by 10.52.30.52 with HTTP; Wed, 11 Apr 2012 17:43:32 -0700 (PDT)
In-Reply-To: <4F862237.50200@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
Date: Wed, 11 Apr 2012 17:43:32 -0700
Message-ID: <CALZ2gZVWeXoJtoeCys0cJ=g7X+WFCkK_pt32_NEaO6t=3xuAOQ@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQkYW0SaMLCt8lvajMhzJqEQyAQeqL7HRi/8JVVxKri8BjZzlnFIwTVUHdeFDbtOCfJYCQB7
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 00:43:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Excellent topic for a wiki page.

On Wed, Apr 11, 2012 at 5:30 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
>
>
> On 04/11/2012 01:42 PM, Chris Tapp wrote:
>> Is there a page somewhere that gives a rough idea of how quickly a full =
build runs on various systems?
>>
>> I need a faster build platform, but want to get a reasonable price / per=
formance balance ;-)
>>
>> I'm looking at something like an i7-2700K but am not yet tied...
>>
>
>
> We really do need to get some pages up on this as it comes up a lot.
>
> Currently Yocto Project builds scale well up to about 12 Cores, so first
> step is to get as many cores as you can. Sacrifice some speed for cores
> if you have to. If you can do dual-socket, do it. If not, try for a six
> core.
>
> Next up is storage. We read and write a LOT of data. SSDs are one way to
> go, but we've been known to chew through them and they aren't priced as
> consumables. You can get about 66% of the performance of a single SSD
> with a pair of good quality SATA2 or better drives configured in RAID0
> (no redundancy). Ideally, you would have your OS and sources on an SSD
> and use a RAID0 array to build on. This data is all recreatable, so it's
> "OK" if you lose a disk and therefor ALL of your build data.
>
> Now RAM, you will want about 2 GB of RAM per core, with a minimum of 4GB.
>
> Finally, software. Be sure to run a "server" kernel which is optimized
> for throughput as opposed to interactivity (like Desktop kernels). This
> implies CONFIG_PREEMPT_NONE=3Dy. You'll want a 64-bit kernel to avoid the
> performance penalty inherent with 32bit PAE kernels - and you will want
> lots of memory. You can save some IO by mounting your
> its-ok-if-i-lose-all-my-data build partition as follows:
>
> /dev/md0 =A0 =A0 =A0 =A0/build =A0 =A0 =A0 =A0 =A0ext4
> noauto,noatime,nodiratime,commit=3D6000
>
> As well as drop the journal from it when you format it. Just don't power
> off your machine without properly shutting down!
>
> That should get you some pretty good build times.
>
> I run on a beast with 12 cores, 48GB of RAM, OS and sources on a G2
> Intel SSD, with two Seagate Barracudas in a RAID0 array for my /build
> partition. I run a headless Ubuntu 11.10 (x86_64) installation running
> the 3.0.0-16-server kernel. I can build core-image-minimal in < 30
> minutes and core-image-sato in < 50 minutes from scratch.
>
> Hopefully that gives you some ideas to get started.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Jeff Osier-Mixon=A0http://jefro.net/blog
Yocto Project Community Manager @Intel=A0http://yoctoproject.org

