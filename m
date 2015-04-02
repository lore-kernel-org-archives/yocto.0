Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D4EE00932; Thu,  2 Apr 2015 03:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 280AAE008EC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 03:45:17 -0700 (PDT)
Received: from [70.30.87.145] (port=51901 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ydccf-0001Ms-N7; Thu, 02 Apr 2015 06:45:18 -0400
Date: Thu, 2 Apr 2015 06:45:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
Message-ID: <alpine.LFD.2.11.1504020637030.15063@localhost>
References: <alpine.LFD.2.11.1503311547440.7527@localhost>
	<8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
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
Subject: Re: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Thu, 02 Apr 2015 10:45:21 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1431720659-1427971055=:15063"
Content-ID: <alpine.LFD.2.11.1504020637430.15340@localhost>

--8323328-1431720659-1427971055=:15063
Content-Type: TEXT/PLAIN; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.LFD.2.11.1504020637431.15340@localhost>

On Tue, 31 Mar 2015, Khem Raj wrote:

> > On Mar 31, 2015, at 12:54 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >  i asked about this a few weeks ago, finally getting back to it
> > ... for better or worse, i'm running fedora rawhide, updated to
> > the point where i have gcc-5.0.0:
> >
> > $ gcc --version
> > gcc (GCC) 5.0.0 20150208 (Red Hat 5.0.0-0.10)
> > Copyright (C) 2015 Free Software Foundation, Inc.
> > This is free software; see the source for copying conditions.  There is NO
> > warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> > $
> >
> > which causes a number of build issues trying to build for something as
> > simple as qemux86.
> >
> >  first, there is a linemarkers issue with gcc-5.0 that i got around
> > by adding to local.conf:
> >
> >  CPPFLAGS_append= " -P”
>
> This should not be required. Can you post the failing package with error details
> it should be fixed.
> >
> > and there were two native build issues due to gcc-5.0 being far
> > pickier with warnings that i sidestepped with the cheap hack:
> >
> >  ASSUME_PROVIDED += "elfutils-native"
> >  ASSUME_PROVIDED += "binutils-native”
>
> There is 2.25 update available on my contrib tree.
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master
> should help with binutils.

  i *think* i mentioned earlier that the first failing package build
is ncurses-native:

| In file included from
/home/rpjday/oe/builds/qemux86/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/curses.priv.h:283:0,
|                  from ../ncurses/lib_gen.c:19:
| _9187.c:835:15: error: expected ')' before 'int'
| ../include/curses.h:1594:56: note: in definition of macro
'mouse_trafo'
|  #define mouse_trafo(y,x,to_screen)
wmouse_trafo(stdscr,y,x,to_screen)
|                                                         ^
| gcc  -DHAVE_CONFIG_H -I../ncurses
-I/home/rpjday/oe/builds/qemux86/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses
-isystem/home/rpjday/oe/builds/qemux86/tmp/sysroots/x86_64-linux/usr/include
-D_GNU_SOURCE -DNDEBUG -I. -I../include
-I/home/rpjday/oe/builds/qemux86/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/../include
-I/home/rpjday/oe/builds/qemux86/tmp/sysroots/x86_64-linux/usr/include
-isystem/home/rpjday/oe/builds/qemux86/tmp/sysroots/x86_64-linux/usr/include
-D_GNU_SOURCE -O2 -pipe  --param max-inline-insns-single=1200 -fPIC -c
/home/rpjday/oe/builds/qemux86/tmp/work/x86_64-linux/ncurses-native/5.9-r15.1/ncurses-5.9/ncurses/base/lib_isendwin.c
-o ../obj_s/lib_isendwin.o
| Makefile:1682: recipe for target '../obj_s/lib_gen.o' failed

  this appears to be related to the issues listed in this post
describing a mass rebuild of fedora packages with gcc-5.0.0:

https://lists.fedoraproject.org/pipermail/devel/2015-February/207549.html

particularly this:

"Main offender this time is probably the gnu11 change that entails
different inline semantics, enables some warnings by default, bumps
the __STDC_VERSION__, and so on.  Hopefully it won't take too long
till these packages catch on. Many packages were not prepared for the
new major version of GCC.  There's also been quite a lot of churn
because of the preprocessor now emitting linemarkers in the output
when the -P option is not turned on.  The C++ compiler now rejects
some code that it used to accept.  Furthermore, GCC 5 has a batch of
new warnings, which, combined with -Werror, caused some additional
failures."

  sure enough, down that page, ncurses and a bunch of other packages
are identified as having the issue:

"these packages failed to build because of the changes in the
preprocessor; gcc started to generate line directives to better detect
whether a macro tokens come from a system header - see
http://gcc.gnu.org/PR60723 The fix is to use the -P option if the code
isn't prepared to deal with such directives."

  i see that your oe-contrib repo has a newer version of binutils, but
not of ncurses, although your ncurses SRC_URI is different. anyway,
this is just what i've tripped over lately on my rawhide system.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1431720659-1427971055=:15063--
