Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web12.12151.1596512067159075465
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 20:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.193, mailfrom: robert.joslyn@redrectangle.org)
X-Originating-IP: 173.197.191.182
Received: from bucephalus (rrcs-173-197-191-182.west.biz.rr.com [173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0C54B240003;
	Tue,  4 Aug 2020 03:34:23 +0000 (UTC)
Message-ID: <e39309ca4291f18f00abc0dcd81f0385354b470e.camel@redrectangle.org>
Subject: Re: [yocto] [meta-java] icedtea7-native fails to build with error: cc1plus: all warnings being treated as errors
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
To: Jeff Ithier <ithijme@gmail.com>, yocto@lists.yoctoproject.org
Date: Mon, 03 Aug 2020 20:34:19 -0700
In-Reply-To: <32dca10c-bb5d-09c9-c943-9e8a356c731d@gmail.com>
References: <u6iU.1595855785511775765.vBcd@lists.yoctoproject.org>
	 <785c799e6974c0c7485cd682427cfa673760c5da.camel@redrectangle.org>
	 <32dca10c-bb5d-09c9-c943-9e8a356c731d@gmail.com>
User-Agent: Evolution 3.36.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2020-07-28 at 08:30 +0200, Jeff Ithier wrote:
> Hi Robert,
> 
> Thanks for the tip, it seems to have worked and I've gotten past the 
> compilation step.
> 
> Unfortunately, now the build seems to be failing the do_package_rpm
> task 
> with the following error:
> 
> Exception: bb.process.ExecutionError: Execution of 
> '../build/tmp/work/aarch64-poky-linux/icedtea7-native/%-
> r0/temp/run.BUILDSPEC.153296' 
> failed with exit code 127:
> ../build/tmp/work/aarch64-poky-linux/icedtea7-native/%-
> r0/temp/run.BUILDSPEC.153296: 
> 106: rpmbuild: not found
> WARNING: exit code 127 from a shell command.
> 
> Did you also encounter this ?

My builds normally use ipk, but I tried rpm on one and did not see this
error when building icedtea7-native. Sorry!

Thanks,
Robert

> Cheers
> Jeff
> 
> On 7/28/20 5:28 AM, Robert Joslyn wrote:
> > On Mon, 2020-07-27 at 06:16 -0700, ithijme@gmail.com wrote:
> > > Hi,
> > > 
> > > I am trying to build openjdk-8-native, however its icedtea7
> > > dependency
> > > fails to build.
> > > The error is a little hard to parse but it appears to be due to
> > > warnings
> > > being treated as errors.
> > > There are a lot of logs like the following:
> > > 
> > > > In function ‘int fprintf(FILE*, const char*, ...)’,
> > > >     inlined from ‘void ADLParser::frame_parse()’ at
> > > .../build/tmp/work/x86_64-linux/icedtea7-native/2.1.3-r1.0/icedtea-
> > > 2.1.3/build/openjdk-
> > > boot/hotspot/src/share/vm/adlc/adlparse.cpp:1118:34:
> > > > /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:24: error: ‘%s’
> > > directive argument is null [-Werror=format-overflow=]
> > > >   100 |   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1,
> > > __fmt,
> > > >       |
> > > ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > >   101 |    __va_arg_pack ());
> > > >       |    ~~~~~~~~~~~~~~~~~
> > > > cc1plus: all warnings being treated as errors
> > > > make[7]: *** [.../build/tmp/work/x86_64-linux/icedtea7-
> > > > native/2.1.3-
> > > r1.0/icedtea-2.1.3/build/openjdk-
> > > boot/hotspot/make/linux/makefiles/adlc.make:207:
> > > ../generated/adfiles/adlparse.o] Error 1
> > > > make[7]: *** Waiting for unfinished jobs....
> > > > cc1plus: all warnings being treated as errors
> > > 
> > > I am using the following bblayers:
> > > * poky/meta
> > > * poky/meta-poky
> > > * meta-openembedded/meta-oe
> > > * meta-java
> > > 
> > > All layers are from the dunfell branch of their respective
> > > repositories
> > > and are up to date.
> > > 
> > > Can anybody offer any advice on how to successfully build the
> > > openjdk-8-
> > > native recipe ? Anybody have it working themselves ?
> > > 
> > > Cheers
> > > Jeff
> > > 
> > I had the same problem about a month ago. My quick fix was to create
> > an
> > icedtea7-native_%.bbappend in my own layer to disable turning that
> > warning
> > into an error:
> > 
> > CFLAGS_append = " -Wno-error=format-overflow"
> > 
> > I assume it's due to the compiler on your build machine being newer
> > (or at
> > least different) than what the recipe is expecting.
> > 
> > Robert
> > 


