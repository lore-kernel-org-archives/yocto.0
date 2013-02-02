Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 676E6E006F5
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 20:35:35 -0800 (PST)
Received: from [98.142.68.251] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1U1UpB-000EXf-KT; Sat, 02 Feb 2013 04:35:34 +0000
Received: from [192.168.0.33] ([98.142.68.251]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	r124ZJeh011896
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Fri, 1 Feb 2013 22:35:25 -0600
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.251
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX18IRh0GsuQulhXz3AjBEryZedxdMaQh0xU=
Message-ID: <1359779719.31775.17.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: Patrick Turley <PatrickTurley@gamestop.com>
Date: Fri, 01 Feb 2013 22:35:19 -0600
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C37AE5C@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
	<510B49AC.405@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C37AE5C@GV1HQPEX03.babgsetc.pvt>
X-Mailer: Evolution 3.6.2 (3.6.2-3.fc18) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Sat, 02 Feb 2013 04:35:35 -0000
Content-Type: multipart/alternative; boundary="=-nK9FTL1rIm522EbhizL2"

--=-nK9FTL1rIm522EbhizL2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

While, I'm not an expert, I would like to point out:
http://kernel.org/doc/index-old.html (the new index references this but
the information isn't on the new index page directly).

One thing mentioned is that a make distclean is required for reasonable
results between any run with different architectures.  So you can't run
a make scripts to get scripts for the local system in a build directory
configured for cross compiling for the device and expect it to work
correctly.

Also, about the config prompts: during dependency checking, the .config
file is validated, and if it fails validation, make oldconfig is run, as
it assumes the config was pulled from a previous kernel version.  Since
a .config file is ARCH specific, it will almost always be invalid when
checked against a different architecture, and thus fire off a make
oldconfig.  This is why you get prompted to answer questions when you do
"make scripts" and have a .config for another architecture.

Also, I suspect you need to ensure the cross compiler is being called
when necessary for the make scripts.  It looks like the errors are from
passing arm gcc parameters to an x86 gcc.  You can try "make ARCH=arm
CROSS_COMPILE=/???/" instead, where /???/ is the prefix to your arm
cross compiler.  The kernel build actually uses both cross and non-cross
compilers during build so you have some support tools compiled to run
natively and others that run on the end machine, so you don't want to
override CXX and C++ to be the cross compiler.


Brian

On Sat, 2013-02-02 at 00:48 +0000, Patrick Turley wrote:

> On Jan 31, 2013, at 10:50 PM, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> 
> > On 13-01-23 10:17 AM, Patrick Turley wrote:
> >> 
> >> On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<bruce.ashfield@windriver.com>
> >>  wrote:
> >>> On 13-01-23 12:34 AM, Patrick Turley wrote:
> >>>> 
> >>>> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<bruce.ashfield@windriver.com>  wrote:
> >>>> 
> >>>>> On 13-01-23 12:14 AM, Patrick Turley wrote:
> >>>>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.com>   wrote:
> >>>>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
> >>> 
> >>> Argh. I'll have to just run the commands myself and stop spamming the
> >>> list with ideas :) It's just a matter of making lkc accept the defaults
> >>> (i.e. you could also use allyesconfig, or allnoconfig) or even better
> >>> not trigger that config check at all.
> >> 
> >> You're very kind to have spent so much time on my problem already. I look forward to hearing back.
> > 
> > I'm not sure if you are still interested in this topic, but I took
> > a few minutes to look into this more today .. just to understand
> > exactly what is happening.
> > 
> > It is what was discussed on the thread already, when you invoke
> > make scripts, there is an explicit dependency on auto.conf and
> > that is what triggers the make oldconfig if the .config is newer
> > than it is. Technically we are safe from this, assuming that the
> > .config and captured auto.conf match, and that auto.conf is in the
> > SDK.
> > 
> > The other way that oldconfig is triggered in my experience (and
> > testing today) is what we mentioned before. If your .config was
> > generated with ARCH=<foo> (even ARCH=i386 the default) and you then
> > execute 'make scripts', you'll trigger the oldconfig.
> > 
> > So to avoid it, you should execute your make scripts with ARCH=<your arch>
> > on the command line.
> > 
> > As for saving ARCH in the .config, it has been considered in the past,
> > but never implemented. Other elements such as CROSS_COMPILE are now
> > saved, but not ARCH= since it isn't directly used in the .config, it's
> > a Makefile construct.
> 
> I absolutely *am* still interested in this issue, and thank you for taking another look.
> 
> There are two commands that I'm interested in executing:
> 
>     -- make oldconfig
> 
>     -- make scripts
> 
> (Since I install the SDK under /opt, I use sudo when running these commands, but I don't *think* that's important.)
> 
> 
> Here's what happens with the first command:
> 
> $ sudo make oldconfig ARCH=arm
>   HOSTCC  scripts/basic/fixdep
>   HOSTCC  scripts/basic/docproc
>   HOSTCC  scripts/kconfig/conf.o
>   HOSTCC  scripts/kconfig/kxgettext.o
>   SHIPPED scripts/kconfig/zconf.tab.c
>   SHIPPED scripts/kconfig/lex.zconf.c
>   SHIPPED scripts/kconfig/zconf.hash.c
>   HOSTCC  scripts/kconfig/zconf.tab.o
>   HOSTLD  scripts/kconfig/conf
> scripts/kconfig/conf --oldconfig Kconfig
> #
> # configuration written to .config
> #
> 
> As you say, adding "ARCH=arm" puts the build at ease and it completes just fine.
> 
> 
> Here's what happens with the second command:
> 
> $ sudo make scripts ARCH=arm
> scripts/kconfig/conf --silentoldconfig Kconfig
>   HOSTCC  scripts/genksyms/genksyms.o
>   SHIPPED scripts/genksyms/lex.c
>   SHIPPED scripts/genksyms/parse.h
>   SHIPPED scripts/genksyms/keywords.c
>   HOSTCC  scripts/genksyms/lex.o
>   SHIPPED scripts/genksyms/parse.c
>   HOSTCC  scripts/genksyms/parse.o
>   HOSTLD  scripts/genksyms/genksyms
>   CC      scripts/mod/empty.o
> cc1: error: unrecognized command line option "-mlittle-endian"
> cc1: error: unrecognized command line option "-mapcs"
> cc1: error: unrecognized command line option "-mno-sched-prolog"
> cc1: error: unrecognized command line option "-mabi=aapcs-linux"
> cc1: error: unrecognized command line option "-mno-thumb-interwork"
> scripts/mod/empty.c:1: error: bad value (armv5t) for -march= switch
> scripts/mod/empty.c:1: error: bad value (armv5t) for -mtune= switch
> make[2]: *** [scripts/mod/empty.o] Error 1
> make[1]: *** [scripts/mod] Error 2
> make: *** [scripts] Error 2
> 
> Recall that, when I do *not* give the "ARCH=arm" argument, I get reams of config questions, but the build works.
> 
> This is an improvement in that the config questions are gone but, of course, the build fails.
> 
> Perhaps it *should* fail. Perhaps I'm doing something that actually doesn't make sense. Or perhaps I'm doing something that Yocto just isn't ready to support. At this point, I should say:
> 
> 1) I have a workaround for all this, so I am *not* dead in the water.
> 
> 2) I am a kernel building n00b and it legitimately may not be worth your time (or anyone else's) to continue to look at this until I "catch up." I don't want anyone throwing up their hands in frustration and saying "Doesn't this guy know anything?" It's perfectly reasonable to cut me off at this point :)
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=-nK9FTL1rIm522EbhizL2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.6.1">
</HEAD>
<BODY>
While, I'm not an expert, I would like to point out: <A HREF="http://kernel.org/doc/index-old.html">http://kernel.org/doc/index-old.html</A> (the new index references this but the information isn't on the new index page directly).<BR>
<BR>
One thing mentioned is that a make distclean is required for reasonable results between any run with different architectures.&nbsp; So you can't run a make scripts to get scripts for the local system in a build directory configured for cross compiling for the device and expect it to work correctly.<BR>
<BR>
Also, about the config prompts: during dependency checking, the .config file is validated, and if it fails validation, make oldconfig is run, as it assumes the config was pulled from a previous kernel version.&nbsp; Since a .config file is ARCH specific, it will almost always be invalid when checked against a different architecture, and thus fire off a make oldconfig.&nbsp; This is why you get prompted to answer questions when you do &quot;make scripts&quot; and have a .config for another architecture.<BR>
<BR>
Also, I suspect you need to ensure the cross compiler is being called when necessary for the make scripts.&nbsp; It looks like the errors are from passing arm gcc parameters to an x86 gcc.&nbsp; You can try &quot;make ARCH=arm CROSS_COMPILE=/???/&quot; instead, where /???/ is the prefix to your arm cross compiler.&nbsp; The kernel build actually uses both cross and non-cross compilers during build so you have some support tools compiled to run natively and others that run on the end machine, so you don't want to override CXX and C++ to be the cross compiler.<BR>
<BR>
<BR>
Brian<BR>
<BR>
On Sat, 2013-02-02 at 00:48 +0000, Patrick Turley wrote:
<BLOCKQUOTE TYPE=CITE>
<PRE>
On Jan 31, 2013, at 10:50 PM, Bruce Ashfield &lt;<A HREF="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</A>&gt; wrote:

<FONT COLOR="#737373">&gt; On 13-01-23 10:17 AM, Patrick Turley wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt; </FONT>
<FONT COLOR="#737373">&gt;&gt; On Jan 23, 2013, at 7:48 AM, Bruce Ashfield&lt;<A HREF="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</A>&gt;</FONT>
<FONT COLOR="#737373">&gt;&gt;  wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; On 13-01-23 12:34 AM, Patrick Turley wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt; </FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt; On Jan 22, 2013, at 11:17 PM, Bruce Ashfield&lt;<A HREF="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</A>&gt;  wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt; </FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt;&gt; On 13-01-23 12:14 AM, Patrick Turley wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt;&gt;&gt; On Jan 22, 2013, at 10:43 PM, Bruce Ashfield&lt;<A HREF="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</A>&gt;   wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 13-01-22 9:26 PM, Patrick Turley wrote:</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; </FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; Argh. I'll have to just run the commands myself and stop spamming the</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; list with ideas :) It's just a matter of making lkc accept the defaults</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; (i.e. you could also use allyesconfig, or allnoconfig) or even better</FONT>
<FONT COLOR="#737373">&gt;&gt;&gt; not trigger that config check at all.</FONT>
<FONT COLOR="#737373">&gt;&gt; </FONT>
<FONT COLOR="#737373">&gt;&gt; You're very kind to have spent so much time on my problem already. I look forward to hearing back.</FONT>
<FONT COLOR="#737373">&gt; </FONT>
<FONT COLOR="#737373">&gt; I'm not sure if you are still interested in this topic, but I took</FONT>
<FONT COLOR="#737373">&gt; a few minutes to look into this more today .. just to understand</FONT>
<FONT COLOR="#737373">&gt; exactly what is happening.</FONT>
<FONT COLOR="#737373">&gt; </FONT>
<FONT COLOR="#737373">&gt; It is what was discussed on the thread already, when you invoke</FONT>
<FONT COLOR="#737373">&gt; make scripts, there is an explicit dependency on auto.conf and</FONT>
<FONT COLOR="#737373">&gt; that is what triggers the make oldconfig if the .config is newer</FONT>
<FONT COLOR="#737373">&gt; than it is. Technically we are safe from this, assuming that the</FONT>
<FONT COLOR="#737373">&gt; .config and captured auto.conf match, and that auto.conf is in the</FONT>
<FONT COLOR="#737373">&gt; SDK.</FONT>
<FONT COLOR="#737373">&gt; </FONT>
<FONT COLOR="#737373">&gt; The other way that oldconfig is triggered in my experience (and</FONT>
<FONT COLOR="#737373">&gt; testing today) is what we mentioned before. If your .config was</FONT>
<FONT COLOR="#737373">&gt; generated with ARCH=&lt;foo&gt; (even ARCH=i386 the default) and you then</FONT>
<FONT COLOR="#737373">&gt; execute 'make scripts', you'll trigger the oldconfig.</FONT>
<FONT COLOR="#737373">&gt; </FONT>
<FONT COLOR="#737373">&gt; So to avoid it, you should execute your make scripts with ARCH=&lt;your arch&gt;</FONT>
<FONT COLOR="#737373">&gt; on the command line.</FONT>
<FONT COLOR="#737373">&gt; </FONT>
<FONT COLOR="#737373">&gt; As for saving ARCH in the .config, it has been considered in the past,</FONT>
<FONT COLOR="#737373">&gt; but never implemented. Other elements such as CROSS_COMPILE are now</FONT>
<FONT COLOR="#737373">&gt; saved, but not ARCH= since it isn't directly used in the .config, it's</FONT>
<FONT COLOR="#737373">&gt; a Makefile construct.</FONT>

I absolutely *am* still interested in this issue, and thank you for taking another look.

There are two commands that I'm interested in executing:

    -- make oldconfig

    -- make scripts

(Since I install the SDK under /opt, I use sudo when running these commands, but I don't *think* that's important.)


Here's what happens with the first command:

$ sudo make oldconfig ARCH=arm
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/basic/docproc
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/kxgettext.o
  SHIPPED scripts/kconfig/zconf.tab.c
  SHIPPED scripts/kconfig/lex.zconf.c
  SHIPPED scripts/kconfig/zconf.hash.c
  HOSTCC  scripts/kconfig/zconf.tab.o
  HOSTLD  scripts/kconfig/conf
scripts/kconfig/conf --oldconfig Kconfig
#
# configuration written to .config
#

As you say, adding &quot;ARCH=arm&quot; puts the build at ease and it completes just fine.


Here's what happens with the second command:

$ sudo make scripts ARCH=arm
scripts/kconfig/conf --silentoldconfig Kconfig
  HOSTCC  scripts/genksyms/genksyms.o
  SHIPPED scripts/genksyms/lex.c
  SHIPPED scripts/genksyms/parse.h
  SHIPPED scripts/genksyms/keywords.c
  HOSTCC  scripts/genksyms/lex.o
  SHIPPED scripts/genksyms/parse.c
  HOSTCC  scripts/genksyms/parse.o
  HOSTLD  scripts/genksyms/genksyms
  CC      scripts/mod/empty.o
cc1: error: unrecognized command line option &quot;-mlittle-endian&quot;
cc1: error: unrecognized command line option &quot;-mapcs&quot;
cc1: error: unrecognized command line option &quot;-mno-sched-prolog&quot;
cc1: error: unrecognized command line option &quot;-mabi=aapcs-linux&quot;
cc1: error: unrecognized command line option &quot;-mno-thumb-interwork&quot;
scripts/mod/empty.c:1: error: bad value (armv5t) for -march= switch
scripts/mod/empty.c:1: error: bad value (armv5t) for -mtune= switch
make[2]: *** [scripts/mod/empty.o] Error 1
make[1]: *** [scripts/mod] Error 2
make: *** [scripts] Error 2

Recall that, when I do *not* give the &quot;ARCH=arm&quot; argument, I get reams of config questions, but the build works.

This is an improvement in that the config questions are gone but, of course, the build fails.

Perhaps it *should* fail. Perhaps I'm doing something that actually doesn't make sense. Or perhaps I'm doing something that Yocto just isn't ready to support. At this point, I should say:

1) I have a workaround for all this, so I am *not* dead in the water.

2) I am a kernel building n00b and it legitimately may not be worth your time (or anyone else's) to continue to look at this until I &quot;catch up.&quot; I don't want anyone throwing up their hands in frustration and saying &quot;Doesn't this guy know anything?&quot; It's perfectly reasonable to cut me off at this point :)

_______________________________________________
yocto mailing list
<A HREF="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A>
<A HREF="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</A>
</PRE>
</BLOCKQUOTE>
<BR>
</BODY>
</HTML>

--=-nK9FTL1rIm522EbhizL2--
