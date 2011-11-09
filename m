Return-Path: <tom.rini@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEECEE00309
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 11:13:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk31 with SMTP id 31so6554574qyk.14
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 11:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0MokT2GTWH/gvTmVJi/ZWx2yvk5RIOhvsOGJ5XPryd4=;
	b=goURYs3JajtslqsZjxkeuYBqllqvU1hmaZCBiT/Mee3/02oZVZDpgJ0iNyj+d4ArWY
	fBmfhsPHyo/Xo50Ci6feF7dc+k5jkmDL/1eiJgyChjqsHEqxguALrZIL4orsIwIH8RjT
	BnbSLE1aZbn4mPKY/PPjlO3G2Oq/lEnLleW8Y=
MIME-Version: 1.0
Received: by 10.229.251.73 with SMTP id mr9mr522192qcb.264.1320865993738; Wed,
	09 Nov 2011 11:13:13 -0800 (PST)
Received: by 10.229.94.72 with HTTP; Wed, 9 Nov 2011 11:13:13 -0800 (PST)
In-Reply-To: <4EBAD015.6040901@intel.com>
References: <CAPhnLPCKxivJQtQJ23=f4Y7GmPAoHZ2FncB0KT4GUu+t-qiUtA@mail.gmail.com>
	<CA+M6bXkgwL53FytKNc78UxAYd24tKM_s3P4t46Bc6Ncm82fMuA@mail.gmail.com>
	<4EBAD015.6040901@intel.com>
Date: Wed, 9 Nov 2011 12:13:13 -0700
Message-ID: <CA+M6bXk9=OCCxx6AQpo1bs3SDAE6QGYE-ARKj_TCCf0jM=tPDQ@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Darren Hart <darren.hart@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: New ways of keeping up with the status of the build.
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
X-List-Received-Date: Wed, 09 Nov 2011 19:13:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 9, 2011 at 12:10 PM, Darren Hart <darren.hart@intel.com> wrote:
> On 11/09/2011 08:00 AM, Tom Rini wrote:
>> On Tue, Nov 8, 2011 at 2:17 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>> I've implemented two new ways of keeping up with the yocto
>>> autobuilder's build status (other than the obvious way of looking at
>>> autobuilder.yoctoproject.org:8010 of course)
>>>
>>> First is through the yocto-builds@yoctoproject.org email list. If you
>>> haven't joined it yet, please do. It's in testing phase right now and
>>> only sends out the last 20 lines of the autobuilder log on a failure
>>> and the URL to the steps that failed.
>>> The second is through the #yoctobuildstatus irc channel. yocto-ab-bot
>>> is the yocto-autobuilder IRC bot which announces build events to the
>>> channel or via PM. I'm keeping it off of #yocto to keep it from
>>> spamming the channel but it should be relatively low traffic. Again,
>>> this is all still in testing phase, so things may change.
>>
>> There's also http://autobuilder.yoctoproject.org:8010/rss which I
>> suspect is under-utilized by people.
>>
>
> Nice. Added to my feed, with a filter on "failed". The subjects are
> really long and difficult to parse. Could these be massaged a bit? Just
> dropping 75% of the commit hash would help a lot :)

Sounds like a generic buildbot change to use rev-parse --short in a few places?

-- 
Tom

