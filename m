Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF79DE00932; Thu,  2 Apr 2015 03:16:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E456E008EC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 03:16:44 -0700 (PDT)
Received: from [70.30.87.145] (port=51689 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YdcB9-0005g4-Mn; Thu, 02 Apr 2015 06:16:52 -0400
Date: Thu, 2 Apr 2015 06:16:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4Pw2M6aLuhjEmpWb4MMNdSTrAbYrdTrn8q3atokJsqp3Q@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1504020602230.8123@localhost>
References: <alpine.LFD.2.11.1503311824570.28969@localhost>
	<551B4086.8050200@windriver.com>
	<alpine.LFD.2.11.1504010306190.24212@localhost>
	<551BD3A5.8020807@windriver.com>
	<alpine.LFD.2.11.1504010722160.13136@localhost>
	<CADkTA4Pw2M6aLuhjEmpWb4MMNdSTrAbYrdTrn8q3atokJsqp3Q@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Thu, 02 Apr 2015 10:16:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 1 Apr 2015, Bruce Ashfield wrote:

... again, snip ...

> I completely agree .. better to sort this out sooner rather than
> later, I'm just trying to narrow down on a configuration that allows
> me to see the problem and poke at the smouldering pile. If git is
> doing something different now, it won't be hard to fix, but hands
> on, versus code inspection, is the real trick here.

  ok, now i'm confused about where i'm getting my kernel source from.
with a fresh build for qemux86 and deliberately not using any of my
local mirror content, i did:

  $ bitbake -c fetchall linux-yocto

assuming the fetch would take a while due to, you know, git checkout.

  the first puzzler is that my downloads directory very quickly
contained (among other things):

-rw-rw-r--. 1 rpjday rpjday 81688872 Feb  8 22:20 linux-3.19.tar.xz

should i have expected that? why do i suddenly have what looks like a
stock linux-3.19 tarball when git should be used for this?

  and here's the salient bit from the fetch log file, clearly showing
a sizable tarball being downloaded from downloads.yoctoproject.org:

///// START /////
DEBUG: For url
git://git.yoctoproject.org/linux-yocto-3.19.git;bareclone=1;branch=standard/common-pc,meta;name=machine,meta
returning
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz
... cut ...
DEBUG: Fetching
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz
using command '/usr/bin/env wget -t 2 -T 30 -nv --passive-ftp
--no-check-certificate -P /home/rpjday/oe/builds/qemux86/downloads
'http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz''
DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
-t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
/home/rpjday/oe/builds/qemux86/downloads
'http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz'
/// END ///

  that tarball is 927M as you can see here:

http://downloads.yoctoproject.org/mirror/sources/

dated mar 24, so that's fairly new and makes me wonder if there's
something weird/broken about it. waiting for wget to finish ... ok,
done. now try to cuild:

  $ bitbake linux-yocto

hmmmmmmm ... and it's already blown by the validate_branches task, so
suddenly, no problem. weird.

  it is entirely possible that, because i was using a local mirror
loaded with tarballs, an earlier kernel tarball was being picked up
and wasn't compatible with later content. after dropping any reference
to my local mirror, validate_branches appears to work.

  still curious as to the presence of the linux-3.19 xz tarball in my
downloads directory.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



