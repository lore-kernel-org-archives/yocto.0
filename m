Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29049E00942; Wed, 11 Feb 2015 22:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD014E008EA
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 22:46:18 -0800 (PST)
Received: from [99.240.204.5] (port=36635 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YLnXR-0006XA-FH; Thu, 12 Feb 2015 01:46:13 -0500
Date: Thu, 12 Feb 2015 01:46:12 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: akuster808 <akuster808@gmail.com>
In-Reply-To: <54DBF8B6.5060904@gmail.com>
Message-ID: <alpine.LFD.2.11.1502120143040.18913@localhost>
References: <alpine.LFD.2.11.1502111225140.5138@localhost>
	<54DBF8B6.5060904@gmail.com>
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
Subject: Re: anyone else seeing a "ncurses-native" build error?
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
X-List-Received-Date: Thu, 12 Feb 2015 06:46:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 11 Feb 2015, akuster808 wrote:

> I haven't.
>
> - Armin

  please don't top post.

> On 02/11/2015 09:27 AM, Robert P. J. Day wrote:
> >
> >    building for a MIPS target on a fully-updated 64-bit fedora rawhide
> > system:
> >
> > | gcc  -DHAVE_CONFIG_H -I../ncurses
> > -I/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses
> > -isystem/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> > -D_GNU_SOURCE -DNDEBUG -I. -I../include
> > -I/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/../include
> > -I/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> > -isystem/home/rpjday/oe/builds/vtss/minimal/tmp/sysroots/x86_64-linux/usr/include
> > -D_GNU_SOURCE -O2 -pipe  --param max-inline-insns-single=1200 -fPIC -c
> > /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/base/lib_initscr.c
> > -o ../obj_s/lib_initscr.o
> > | In file included from
> > /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/curses.priv.h:283:0,
> > |                  from ../ncurses/lib_gen.c:19:
> > | _744.c:835:15: error: expected ')' before 'int'
> > | ../include/curses.h:1594:56: note: in definition of macro 'mouse_trafo'
> > |  #define mouse_trafo(y,x,to_screen) wmouse_trafo(stdscr,y,x,to_screen)
> > |                                                         ^
> > | Makefile:1682: recipe for target '../obj_s/lib_gen.o' failed
> > | make[1]: *** [../obj_s/lib_gen.o] Error 1
> > | make[1]: *** Waiting for unfinished jobs....
> > | make[1]: Leaving directory
> > '/home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/build/narrowc/ncurses'
> > | Makefile:134: recipe for target 'libs' failed
> > | make: *** [libs] Error 2
> >
> >    totally new to me, about to dig in ...

  i just tried a totally generic qemux86/core-image-minimal build on
this fedora rawhide system, and got exactly the same build error.
first time i've ever seen this, this build used to work fine.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

