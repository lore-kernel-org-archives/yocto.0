Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396A3E01408
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 05:13:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ICDbG4001234;
	Wed, 18 Apr 2012 13:13:37 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32694-06; Wed, 18 Apr 2012 13:13:33 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ICDQv7001224
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Apr 2012 13:13:27 +0100
Message-ID: <1334751210.24091.77.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 18 Apr 2012 13:13:30 +0100
In-Reply-To: <4F8D7857.1070508@linux.intel.com>
References: <cover.1334624662.git.dvhart@linux.intel.com>
	<1334650153.616.29.camel@ted> <4F8D7857.1070508@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [1.2] poky-tiny: Separate the libc features required for meta-toolchain
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
X-List-Received-Date: Wed, 18 Apr 2012 12:13:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 07:04 -0700, Darren Hart wrote:
> On 04/17/2012 01:09 AM, Richard Purdie wrote:
> > I had a thought about this:
> > 
> > diff --git a/meta/conf/distro/include/default-distrovars.inc b/meta/conf/distro/include/default-distrovars.inc
> > index 16b3108..f770919 100644
> > --- a/meta/conf/distro/include/default-distrovars.inc
> > +++ b/meta/conf/distro/include/default-distrovars.inc
> > @@ -10,12 +10,14 @@ LIMIT_BUILT_LOCALES ?= "POSIX en_US en_GB"
> >  ENABLE_BINARY_LOCALE_GENERATION ?= "1"
> >  LOCALE_UTF8_ONLY ?= "0"
> >  
> > -DISTRO_FEATURES_LIBC ?= "ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
> > +DISTRO_FEATURES_LIBC_DEFAULT ?= "ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
> >                                         libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse \
> >                                         libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code \
> >                                         libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc \
> >                                         libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc \
> >                                         libc-posix-wchar-io"
> > +DISTRO_FEATURES_LIBC ?= "${DISTRO_FEATURES_LIBC_DEFAULT}"
> > +DISTRO_FEATURES_LIBC_virtclass-nativesdk = "${DISTRO_FEATURES_LIBC_DEFAULT}"
> >  DISTRO_FEATURES ?= "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g x11 ${DISTRO_FEATURES_LIBC}"
> >  
> >  IMAGE_FEATURES ?= ""
> > 
> > Probably not something for release at this point but maybe after it...
> 
> Interesting.... I need to investigate the meta-toolchain build a bit
> more. I didn't think it was just the nativesdk recipes that were failing.

I screwed up and accidentally merged the above in another commit.
Thankfully the code actually works and I'm therefore not going to revert
it and it will go into the release. I tried a quick build with poky-tiny
and I think this diff is a good summary for a working meta-toolchain:

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 327cc1e..503444f 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -68,11 +68,7 @@ DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
 # If you do not plan to build meta-toolchain, you can save ~461KB by
 # commenting out the DISTRO_FEATURES_LIBC_TOOLCHAIN assignment
 # gettext needs wchar, m4 needs spawn and locale, elfutils needs ftraverse
-DISTRO_FEATURES_LIBC_TOOLCHAIN = "libc-posix-clang-wchar \
-                                  libc-spawn libc-locale-code \
-                                  libc-ftraverse libc-libm-big \
-                                  libc-posix-regexp-glibc \
-                                 "
+DISTRO_FEATURES_LIBC_TOOLCHAIN = ""
 
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
diff --git a/meta/classes/gettext.bbclass b/meta/classes/gettext.bbclass
index 89faa30..95818c6 100644
--- a/meta/classes/gettext.bbclass
+++ b/meta/classes/gettext.bbclass
@@ -15,7 +15,7 @@ def gettext_oeconf(d):
         return '--disable-nls'
     return "--enable-nls"
 
-DEPENDS_GETTEXT = "virtual/gettext gettext-native"
+DEPENDS_GETTEXT ??= "virtual/gettext gettext-native"
 
 BASEDEPENDS =+ "${@gettext_dependencies(d)}"
 EXTRA_OECONF_append = " ${@gettext_oeconf(d)}"

so we should be able to drop DISTRO_FEATURES_LIBC_TOOLCHAIN early in the
1.3 cycle, we just need to tweak the gettext class (it was overwriting
the value of DEPENDS_GETTEXT set in canadian-cross.bbclass).

Cheers,

Richard 


