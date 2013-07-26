Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EFD5E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:15:01 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id gd11so396471vcb.19
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=5Wxz2X/C0dhdKJfr5kxdQZI3SCcZkNtQfNXknlArhw0=;
	b=sblHIMqWOROKXa19mPyI7El8RtJMZUaV92OlDytH6JYpuHHo0BvtKDjcTV8ISQW5aW
	sRpDd7gT0z7wXFK2arJdFwQN9ZCcce6pxEEevg9iwia8vjXmQOKdL5vJuhK3OP65oc8g
	ZS5aBEwjDdfMLBdlPh3v8SYWvabhxGEzy6u/TFR7U0mu7P4Q2AuffIpAUJik9yrQ+XG5
	ugjyrmHFMKxBQNLgMoNSwdMtFLa/vypbvFwP9VJ/qyKmHUG38zG1SSOdgrsmUD1a59Yu
	QV3EQVIUXaN++g2nC1L59BVMoD7p16rVLKOximP2YF+F1P8tvf3QDFKfOSLOSt7G+IPQ
	3glg==
X-Received: by 10.58.164.101 with SMTP id yp5mr20158001veb.0.1374837301213;
	Fri, 26 Jul 2013 04:15:01 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Fri, 26 Jul 2013 04:14:21 -0700 (PDT)
In-Reply-To: <CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 26 Jul 2013 12:14:21 +0100
X-Google-Sender-Auth: IgDKRG2B7l4lqOSYbleu_inGOSo
Message-ID: <CANyK_8feNxvXV2h2Lz7PFt57qE514yKc8kXiAJgxnQ760HyvqA@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:15:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 26 July 2013 11:57, Laszlo Papp <lpapp@kde.org> wrote:
> Actually, I also have problems with Debian stable? See the bugreports I
> sent. It is mentioned as "supported distribution". Yet, it does not work. I
> do not to follow the parallelism with Arch accordingly.

The cost of supporting a distro will be dependent on the rate and
magnitude of changes within that distro. Arch has large, frequent
updates to core packages and so would have to be re-tested almost
continuously. "Stable" releases of many distros limit how and when
they will update things like gcc, binutils, etc and try not to
introduce backwards-incompatible changes. Such things still slip
through, but they are rare, so OE/Yocto can cope with the developer
time needed to get the problem fixed. Supporting a rolling-release
distro which follows the latest toolchain updates would essentially be
an open-ended commitment.

> People can always revert the offending arch package to one week older if
> they wanna use Yocto, or they can fix it. I do not see it a problem, and
> easily solvable, especially with a clear CI documentation which should
> happen for any node, anyhow.

So we'd have to say "Arch Linux, with xxx version of gcc, yyy version
of binutils, etc" was supported, not just "Arch Linux". How many
packages do we specify the version of?

> The problem is currently that there is no any focus on Arch

This is incorrect. Just because there Arch isn't "supported" doesn't
mean no-one cares about it. When the sanity check for a broken make
3.82 was added to OE, I put in a bug report to Arch
(https://bugs.archlinux.org/task/35968) and it got fixed.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

