Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29ECE00BEF; Mon, 19 May 2014 04:13:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44579E00BE6
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 04:13:20 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4JBDB8x011213; Mon, 19 May 2014 12:13:11 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vIC7nDbVhLRl; Mon, 19 May 2014 12:13:11 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4JBD4Sw011197
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Mon, 19 May 2014 12:13:06 +0100
Message-ID: <1400497977.28353.168.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Christopher Larson <clarson@kergoth.com>
Date: Mon, 19 May 2014 12:12:57 +0100
In-Reply-To: <CABcZAN=LmEaxJ5OLJ1h4y3r6WxacSZdAEp09eu-gEVkUcseHbw@mail.gmail.com>
References: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
	<CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
	<CAAPegz1nmK+A0ECf7oKNPkTS+MkU5pPm7Dy-+nELM=uzO+q5Pw@mail.gmail.com>
	<CABcZAN=LmEaxJ5OLJ1h4y3r6WxacSZdAEp09eu-gEVkUcseHbw@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: git.py support for submodules
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
X-List-Received-Date: Mon, 19 May 2014 11:13:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2014-05-17 at 13:19 -0700, Christopher Larson wrote:
> 
> 
> On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com> wrote:
>         
>         On May 17, 2014 3:58 PM, "Christopher Larson"
>         <clarson@kergoth.com> wrote:
>         >
>         >
>         >
>         > On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com>
>         wrote:
>         >>
>         >> Hello.
>         >>
>         >> I noticed that git.py doesn't seem to have support for
>         submodules. I worked around this in my recipe by adding a pre
>         configure step but I was wondering if a patch to add another
>         option to git.py to fetch submodules would make sense and be
>         welcomed (pending it's implementation of course).
>         >
>         >
>         >  See gitsm.py.
>         >
>         >
>         > -- 
>         > Christopher Larson
>         > clarson at kergoth dot com
>         > Founder - BitBake, OpenEmbedded, OpenZaurus
>         > Maintainer - Tslib
>         > Senior Software Engineer, Mentor Graphics
>   >
>         I couldn't actually figure out how to use it. I looked at the
>         code and wasn't sure how it war supposed to do or what it was
>         for.
>
> You use it exactly the way you use git.py - gitsm:// instead of
> git://.  It's basically git fetching plus submodule handling. I
> personally would rather see it merged into git.py, but I can see the
> reasoning. 

FWIW the reason its separate is that mirroring is not in a good state
with submodules since git is doing magic things behind the scenes that
the fetcher and its mirror infrastructure have no knowledge of. We
should probably document that somewhere though.

There are a few ways it can be fixed but its ugly and I'd prefer to have
that code isolated for now. It could easily be merged later and it needs
someone who cares about submodules to fix it up to be a first class
citizen before that can happen. 

Cheers,

Richard




