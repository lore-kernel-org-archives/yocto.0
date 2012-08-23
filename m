Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B9FE002AB
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 13:46:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7NKkoqk025201;
	Thu, 23 Aug 2012 21:46:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24309-07; Thu, 23 Aug 2012 21:46:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7NKkdgI025195
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 23 Aug 2012 21:46:41 +0100
Message-ID: <1345754799.14369.59.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf Streif <rudolf.streif@linux.com>
Date: Thu, 23 Aug 2012 21:46:39 +0100
In-Reply-To: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
References: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [ADT] Autotools: configure using --with-libtool-sysroot
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
X-List-Received-Date: Thu, 23 Aug 2012 20:46:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-08-22 at 16:22 -0700, Rudolf Streif wrote:
> I tried, according to the documentation
> at http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem), to configure and compile the autotooled GNU Hello World Applcation for x86 and ARM with
> 
> 
> ./configure --host=i586-poky-linux --with-libtool-sysroot=
> ${YOCTODIR}/adt-sysroots/x86
> 
> 
> and
> 
> 
> ./configure --host=armv5te-poky-linux-gnueabi --with-libtool-sysroot=
> ${YOCTODIR}/adt-sysroots/arm
> 
> 
> As expected configure does not recognize
> --with-libtool-sysroot: configure: WARNING: unrecognized options:
> --with-libtool-sysroot.
> 
> 
> Running the suggested commands:
> 
> 
> $ libtoolize --automake
> $ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
>         [-I <dir_containing_your_project-specific_m4_macros>]
> $ autoconf
> $ autoheader
> $ automake -a
> did not make a difference (same error message). However, compiling the
> application worked just fine.

Which libtoolize script/binary is being used (try "which libtoolize")?

It probably works fine since your sample app isn't actually linking to
anything. That could be the other reason actually, perhaps there you
don't use libtool in your sample app?

> Questions:
>       * What exactly is --with-libtool-sysroot supposed to do?

Its an option to tell libtool to prefix library references with the path
to the sysroot.

>       * What could be the reason that the steps to update the
>         configure script to recognize the option do not work?

It sounds like it is updating configure but not with the version of
libtool that the ADT comes with. You did source the ADT environment
script before running the above commands (assuming it does use libtool)?

Cheers,

Richard



