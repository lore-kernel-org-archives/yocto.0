Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6E6E00A42
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 11:34:45 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id h18so17164066igc.1
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 11:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Os/pC8gmy9s98XhpZkHyDzaZAXesJ2Y1XVgIpRP6JGM=;
	b=dH6Aol7tDroQD8mDbQtqCkMOzCQzAqd1bIZxhmMmBtmvXdb5hw2Wuk1byu2GnOh7S/
	wpJw3fOrXzJPCiMWH1aRhD/DPzSzZhzVKQhp9WG8D7iPyK5c3ViliQez+lGon6k2yvvZ
	1XkNLqknGs4xOzieep5jX+dP/933XxcyG7BL2hrMejjidHvMeHXuQz6f5EPcjTwI1xMm
	P9k5NZ3cMX9Bzu0CerX/TtHbMT9MQbjg8a/YMDmVMcaJZbX/vIpd0QhN6HZJE6Jgavhv
	la2kMS+8qBQjererO12lGiwLTA4FJukBWr4dDn0fv3U/lTtuXmyNz6AdVzxJ+BZdQgXH
	TmNw==
X-Received: by 10.50.43.170 with SMTP id x10mr17665410igl.20.1394134484932;
	Thu, 06 Mar 2014 11:34:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Thu, 6 Mar 2014 11:34:14 -0800 (PST)
In-Reply-To: <CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
	<CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
	<CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Mar 2014 11:34:14 -0800
Message-ID: <CAMKF1srUeJ-Djk_ibR=PYW9MS3FVX20psJZMMguxYEVWdwoVJQ@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: Joel Parker <joelparker27@yahoo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Thu, 06 Mar 2014 19:34:46 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi
<bianchirickkutta@gmail.com> wrote:
> Khem,
> Is this the same process if I needed to get the kernel headers and source
> onto the build?
>

this is application development so kernel headers for userspace will be there.

>
> On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com>
>> wrote:
>> > $ bitbake meta-toolchain
>>
>> do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
>> and install that SDK
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

