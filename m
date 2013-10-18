Return-Path: <gschmottlach@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9E4E016E2
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 05:04:55 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id l12so851319wiv.9
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 05:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=mcsSS2SLbAOPzejApwi+W//GInwgcW0N4dmBa3L8umE=;
	b=LfsO1XLSzcl/rr0T8/KxtdxKP3CfdLbM+mLx92z8fBBUfUe99QqA6acxGGDCNBL1Qq
	ai9oCLhKd2c9me6if5Z3+14MglYCq57x2Md26V+2tWViNKqW7d/xxpsfj8/8FqLRjLCh
	TjtYkFx3ZC2mxmNL6E18QcUZx9buZkV6fo5e6kHukzHSC8HIRjF4PN1eSxfE0wgO/EVm
	kW6ngzXnUsWyeolVcruxpmN5Iw4vX9WbTsWj28TLT7ieB5YirpwfH7OXtuu5JVF0Rsn9
	YemvVDFwLOOYKQrTYke7pxjeaQrMELFBBs22pwL1/uuYF8STCt92jEEG3xFFqVqpwUNY
	KyUw==
MIME-Version: 1.0
X-Received: by 10.180.219.33 with SMTP id pl1mr2153589wic.49.1382097893918;
	Fri, 18 Oct 2013 05:04:53 -0700 (PDT)
Received: by 10.216.46.196 with HTTP; Fri, 18 Oct 2013 05:04:53 -0700 (PDT)
In-Reply-To: <CALmOhgk=xWywLTTVQar6z1FfXqqGkMWXmYtZd8E=Xqj2pn2yQw@mail.gmail.com>
References: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
	<CAP71WjxftsAwVoew6PtO5fWJv6xTPmWpSAaQgMfy4gZbq_KEeQ@mail.gmail.com>
	<CAMS2kBGt8OgC2uL8Yy=xh4U1Cs+tRiN5R8=iH-=eW7nDoa=cWg@mail.gmail.com>
	<CALmOhgk_wEaBCN8vBFRrNHD7t1UUWAGGk+JEvk3FHg+MCcUE-g@mail.gmail.com>
	<CAMS2kBHwr8aE+OB+xaUr4Eh_5npMGxavVq1xxB+zpoFB1+keyA@mail.gmail.com>
	<CALmOhgk=xWywLTTVQar6z1FfXqqGkMWXmYtZd8E=Xqj2pn2yQw@mail.gmail.com>
Date: Fri, 18 Oct 2013 08:04:53 -0400
Message-ID: <CAMS2kBH_XbKvZgG6LxJQ_5gF_rrEgsZNOisyURqcK6ii_wtGFA@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, 
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OPKG configuration questions
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
X-List-Received-Date: Fri, 18 Oct 2013 12:05:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

>
> On 17 October 2013 11:20, Glenn Schmottlach <gschmottlach@gmail.com> wrote:
>> > Just out of curiosity, is it possible that you added "package-management"
>> > to IMAGE_FEATURES after you already had a successful full build? Or is
>> > it possible that you had already done a full build with "package_rpm" or
>> > "_deb" before switching to "package_ipk"?
>> >
>>
>> I added "package-management" after a successful build.
>
> In that case, if you have the time, I would delete your tmp,
> sstate-cache, and cache directories, as well as your bitbake.lock and
> pseudodone files and rebuild. Does that make any difference?
>

Unbeknownst to me, the "init" script on the target platform was
mounting a tmpfs (ramdisk) filesystem over the top of "/var" thereby
hiding the fact that the opkg database had indeed been installed. So,
once I realized this it was clear why I wasn't see these files when
the target booted.

>> > The reason I ask is (although I never confirmed this definitively but) when
>> > I was playing with this stuff a while back I was sure that this package
>> > stuff
>> > would only get generated after adjusting these configurations when a full,
>> > clean build was performed (i.e. removing <tmpdir> and <sstate-cache>).
>
>> After manually copying the /var/lib/opkg to my target the opkg-cl
>> command now seems to "work". Unfortunately I'm running into difficulty
>> specifying a a new ipkg repo that is mounted via NFS from my
>> development machine. How would I make it scan there as well?
>
> I've never tried that before. But maybe if you created a file (on the
> target) called, for example, /etc/opkg/nfs.conf which contained:
>
>     src/gz nfs /path/to/nfs
>
> maybe that would work? Don't forget to perform an "# opkg update"
> after creating that file.
>

After some trial-and-error (and remembering to call opkg-cl update as
you suggested) I was able to get my alternative feed to work. So at
this point, I *think* I have it all figured out ;-)

Thanks to those on the list who offered their suggestions!


> There's also a remote chance adding this new repository doesn't appear
> to work because your target filesystem is full. I've noticed that in
> the past, and opkg doesn't provide much in the way of feedback if/when
> this happens.

