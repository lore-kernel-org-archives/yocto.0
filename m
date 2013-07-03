Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6636E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 02:46:05 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so5653114veb.25
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 02:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=2DNcLMZVJXlMsFscNDjfQNsCoOpsOh9V85vvMhnhJ1I=;
	b=NSVMBqcHg2QE9+uW+ag8IyBRRatM85SFTH8/qGSDnMSEPaTuzSo8fcXuNXjdG+b2oj
	1ZtbwWgEVPMyHbtEZAsTTumBuaN/AlzFpIneimyRb8kRLkbSJvuksy1oufnr2vdg5nqU
	UZyfkaRlJ4jGpqSWOov+4ETOujQ0CHHro8Xh/D1kRaSq8AEVCxQfHXZ2KbRh3tKp5hBS
	AIjxl/9icvm1anx4br1bq/NerNBekuLSUgPPQj+3MbFrGq6MnbQON3betMBcScUenqUS
	kjemqSojituFLz9FHmMfYe3nACorwId+2jhUTx7jMT27q0OmEG1QVHOUL6XbX4YWi7cZ
	47jw==
X-Received: by 10.52.29.106 with SMTP id j10mr1628vdh.77.1372844765398; Wed,
	03 Jul 2013 02:46:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 3 Jul 2013 02:45:45 -0700 (PDT)
In-Reply-To: <698B637504BE4C3C83BA8EC60B0D77E8@PAULD>
References: <6915E88EED1243A0989D0097AC115254@PAULD>
	<CAJTo0LbEzXwXK5MCvRqFeotATAgnBpJGboLH4KvebyNZbKAFzg@mail.gmail.com>
	<698B637504BE4C3C83BA8EC60B0D77E8@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Jul 2013 10:45:45 +0100
Message-ID: <CAJTo0LaGonDeqg5Ljk9dCMDUhY7HoW9xF9nf3TxuTXRxShpwrA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQmRx610/4ul7wi60k+rwdF+rOtu9jh0+0tA8OhsL59a5IzPvIM95YoN/e/JJo/bpLWFY2io
Cc: yocto@yoctoproject.org
Subject: Re: Creating a volatile image
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
X-List-Received-Date: Wed, 03 Jul 2013 09:46:08 -0000
Content-Type: text/plain; charset=UTF-8

On 3 July 2013 09:26, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
>> but if you turn off atime writes to / you won't be
>> making that many writes to / anyway.
>
> How does one turn off atime? By modifying /etc/fstab? How is that done? By
> supplying a different source file to get copied into the image, or by
> overwriting the built-in one in my own recipe? I need to do that anyway,
> since I have a second partition to mount.

You can override the fstab provided by base-files with your own, and
use the mount option "noatime".

Ross

