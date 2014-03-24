Return-Path: <jatedev@gmail.com>
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB31E00BE0
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 16:18:20 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q108so18789146qgd.9
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 16:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OzbXWidsM7tbmuxeK7Q2vOELboHuX5/K9h/lX2cZqaQ=;
	b=e6Fh/rb32bKCvqgzubgbLQXBi1VQo7X5G17aqlZgr34X8krsHo8A9ppjoZ2hBGAvSC
	4+75G7otLzMgfNzwQPcjBaRD9ToCpps0vnej5vOamFuISeiUuKQsoPDpBpKOhkvJChD5
	rYoQ9IJY6x7i2z5Evv7NHdAcZBiKPLdgiN2fPb3nxWgMGnSPBzOxC7jDE/N63QRXPN7m
	l8uFge856ZPxUMUB+NsdtJ+0RDY2ZQGFGsBIaXIxHSuEnqeKe/TL3GxuRWCwiN9FOp3q
	j49o5vUUMVSYBxHSjALAOhSh5/OQhuss9yGarvsNT3hgorowI+a1oegz7Mu7XEw7wAdY
	/YRg==
MIME-Version: 1.0
X-Received: by 10.224.151.130 with SMTP id c2mr76722349qaw.67.1395703099574;
	Mon, 24 Mar 2014 16:18:19 -0700 (PDT)
Received: by 10.140.23.234 with HTTP; Mon, 24 Mar 2014 16:18:19 -0700 (PDT)
In-Reply-To: <532CB770.90004@mlbassoc.com>
References: <CAPphmgYBnU6-NtLt+FDgpc97CKsnU6y8OSSGGO9W9isbf0xH7g@mail.gmail.com>
	<532CB035.2020703@mlbassoc.com>
	<CAPphmgbHhHMRTAGtXMsHfbHR6FuQa7MODGW_UQY22xCO2Z38MQ@mail.gmail.com>
	<532CB770.90004@mlbassoc.com>
Date: Mon, 24 Mar 2014 19:18:19 -0400
Message-ID: <CAPphmgZ8ix__X7uvJzuGmiFOTZpcKydCoS-X5Vs15GKA-ujW6Q@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto fetch bottleneck
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
X-List-Received-Date: Mon, 24 Mar 2014 23:18:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

What is the name of the mirror tarball that's created? I am trying to
see if it worked. I saw no log messages stating "Creating tarball of
git repository".


On Fri, Mar 21, 2014 at 6:04 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2014-03-21 15:54, Jate S wrote:
>> The documentation has warnings of space usage. Will it start using
>> lots of space? If so, can I use it on a per mirror basis?
>
> Yes, the tarballs can be quite large, but they are incredibly useful
> with a local mirror.  Especially when you consider that updating a GIT
> checkout, e.g. the Linux kernel. can take a *really* long time.
>
>> I am using a local mirror, so maybe the space usage will not be a problem.
>
> The space needed will not be terribly different than what you've already
> encountered without generating the tarballs.
>
> n.b. it's polite to keep replies on the mailing list so that everyone benefits.
>
>> On Fri, Mar 21, 2014 at 5:33 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2014-03-21 15:27, Jate S wrote:
>>>> I am running into a bottleneck with the linux-yocto recipe on dora
>>>> 1.5.1. The fetch retrieves git2_git.yoctoproject.org.git.tar.gz, but
>>>> then it hits a bottleneck when it must do a git fetch to update to the
>>>> required references. The git server does not have high bandwdith.
>>>>
>>>> One workaround that I've found is to archive the git repository and
>>>> replace the tar.gz in the downloads directory. The recipe then finds
>>>> the required references.
>>>>
>>>> Would BB_GENERATE_MIRROR_TARBALLS actually take care of this? Any
>>>> other recommendations?
>>>
>>> Yes, that's exactly what BB_GENERATE_MIRROR_TARBALLS does.  The updated
>>> tarball will end up in your downloads directory.  If you use any sort of
>>> local mirror, you'll want to push the new tarball to it for the next time.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

