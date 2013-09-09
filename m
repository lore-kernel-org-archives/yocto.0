Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E843E006B5
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 07:24:14 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id f12so4083920vbg.11
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 07:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kBGgwiIxvXO4zh62WpmQ1X23DtF6yN1LAmTQpdpNyhg=;
	b=Qc4WOA6NyEdn0dl1nL9c5lxeEj/zBm6udI2rwqoRB+5qpxwKChOoImMHSH/beTViZE
	1xLg/4tkhHIu1aqxnDAJuc4EGdw5HRXMloQGawwJ8NXEUIV6jKyraOemaHxTIQ/oiulA
	sCZvE1OJY29OGwmEoRAgifbpxMDKHSA8QBmIAG+KPdoXBuu+T71BwnFYDFsA4b1LDqTK
	Y5asBVAspOSsHyKh0bEJqcslUt9WRA1+GKZtwJ7k+ZMZGONCp0qk/3XPZzo3kZYOl30b
	4kT8y1TLl6cpjbf9FAnvN9iMjlT8kbeZE9AyA1EbI8yOXXvuVj07O1X6XLSe/qS4VRqZ
	lgYQ==
X-Received: by 10.220.84.65 with SMTP id i1mr43580vcl.51.1378736653359; Mon,
	09 Sep 2013 07:24:13 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Mon, 9 Sep 2013 07:23:33 -0700 (PDT)
In-Reply-To: <522C5052.8080600@philipp-wagner.com>
References: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
	<1378211205-4866-2-git-send-email-paul@paulbarker.me.uk>
	<522C5052.8080600@philipp-wagner.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 9 Sep 2013 15:23:33 +0100
X-Google-Sender-Auth: FVQm6PfHO_TwVcCKO-8oEPlXEyU
Message-ID: <CANyK_8feZmbfna1Yt4+cqs4jVhkF=_+wwqkpfhE0yd+oAHZYDQ@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
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
X-List-Received-Date: Mon, 09 Sep 2013 14:24:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 8 September 2013 11:24, Philipp Wagner <lists@philipp-wagner.com> wrote:
> Hi,
>
> a general question to start: 3.11.0 is out now as well (and it works, at
> least in my tests), should we add that as well?
>

I think 3.10 would be a better choice first, as Greg Kroah-Hartman has
indicated that this will be the next Long-Term Support kernel
(http://www.kroah.com/log/blog/2013/08/04/longterm-kernel-3-dot-10/)
and oe-core also has a 3.10 series linux-yocto kernel. I threw in a
recipe for 3.8 as it's what I was playing with at the time and it
matches with oe-core also having a 3.8 series kernel.

> Am 03.09.2013 14:26, Paul Barker wrote:
>> +PR = "r6"
>
> I guess this does not matter, but would r1 not be more natural?

We can probably drop PR completely.

>> +UDEV_GE_141 ?= "1"
>
> This is already part of linux.inc, is it necessary here again?

I just copied the previous kernel recipe and made my changes. If this
is unnecessary here (which it looks to be), it'll also want removing
from the 3.6 and 3.2 recipes.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

