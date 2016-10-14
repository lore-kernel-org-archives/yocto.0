Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2108AE00EEC; Fri, 14 Oct 2016 07:56:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1BA0E00BEA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 07:56:11 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 8F08AC0203; Fri, 14 Oct 2016 10:56:10 -0400 (EDT)
Date: Fri, 14 Oct 2016 10:56:10 -0400
To: Mike Looijmans <mike.looijmans@topic.nl>
Message-ID: <20161014145610.GA20432@csclub.uwaterloo.ca>
References: <CALbNGRRHQJGxcNCLNN+q4YGeV=VwfPbtO_XrcoMj-ngQkjSiqw@mail.gmail.com>
	<8ab5758c-c2e2-db35-c5fa-abc107c3ef1b@topic.nl>
MIME-Version: 1.0
In-Reply-To: <8ab5758c-c2e2-db35-c5fa-abc107c3ef1b@topic.nl>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: yocto@yoctoproject.org
Subject: Re: Big endian ARM machine with NEON wanted
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
X-List-Received-Date: Fri, 14 Oct 2016 14:56:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Oct 14, 2016 at 07:41:13AM +0200, Mike Looijmans wrote:
> ﻿On 13-10-16 19:20, Andreas Müller wrote:
> >
> >Does anybody know a big endian and common machine supporting NEON? I
> >would need one for testing my port of portaudio.
> 
> 
> Most ARM systems can run in both big-endian and little-endian modes.
> Somewhere early during boot this choice is being made.
> 
> Having said that, since big-endian machines are getting rare, there's very
> little support for big-endian ARM systems. Most (if not all) boards can run
> big-endian, but software support is usually lacking, in particular in the
> bootloader parts where this matters.
> 
> If it's just for testing some software, maybe you can use a QEMU machine?

Well from what I was able to find, it seems ARMv7 systems can only run
BE8 mode, while ARMv5 and older had BE32 mode, and ARMv6 had both options.

Qemu seems to support BE8 mode when emulating ARMv7 (at least if you
have a recent enough version).

-- 
Len Sorensen

