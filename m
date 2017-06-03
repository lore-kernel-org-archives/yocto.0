Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F412AE009A0; Sat,  3 Jun 2017 05:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A096E0082A
	for <yocto@yoctoproject.org>; Sat,  3 Jun 2017 05:17:31 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dH7zg-0000UN-0K
	for yocto@yoctoproject.org; Sat, 03 Jun 2017 14:17:24 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@exalondelft.nl>
Date: Sat, 03 Jun 2017 14:17:23 +0200
Organization: Exalon Delft BV
Message-ID: <ogu9cd$n9o$1@blaine.gmane.org>
References: <ogstl6$5tv$1@blaine.gmane.org>
	<CAMKF1soAhvG-qdO9Axpuw4cNHuoCuPwfSJKm2L85WGe924LeRQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: Re: libpam-systemd not built, but enabled in systemd PACKAGECONFIG
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
X-List-Received-Date: Sat, 03 Jun 2017 12:17:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7Bit

Khem Raj wrote:

> On Fri, Jun 2, 2017 at 4:51 PM, Ferry Toth
> <ftoth@exalondelft.nl> wrote:
>> That is when building systemd with morty.
>>
>> I have DISTRO_FEATURES pam set, but I find --disable-pam in the configure
>> log.
>>
>> In fact only --enable-split-usr  --enable-xz and --enable-nls are set
>> according to the log. None of these are set through PACKAGECONFIG.
>>
>> And everything that is set through PACKAGECONFIG is --disabled...
>>
>> It looks inverted..
>>
>> What am I doing wrong?
> 
> Can you show output of
> 
> bitbake -e systemd | grep -e "^DISTRO_FEATURES="

DISTRO_FEATURES="systemd alsa argp bluetooth ext2 largefile usbgadget 
usbhost wifi xattr zeroconf pci pam ipv4 ipv6 libc-backtrace libc-big-macros 
libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 		
			libc-crypt-ufc libc-db-aliases libc-envz 
libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse 			
		libc-getlogin libc-idn libc-inet-anl libc-libm libc-
locales libc-locale-code 					
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn 
libc-streams libc-sunrpc 					
libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp 
libc-posix-regexp-glibc 					
libc-posix-wchar-io pulseaudio bluez5 gobject-introspection-data"

But thanks for pointing this out, I had looked here before, but I had missed 
the following line (bitbake -e systemd | grep -e "PACKAGECONFIG="):

# $PACKAGECONFIG_pn-systemd
#   set /home/ferry/tmp/edison-intel/my/edison-morty/meta-intel-edison/meta-
intel-edison-distro/conf/distro/poky-edison.conf:21
#     "xz"
PACKAGECONFIG_pn-systemd="xz"

I appears I also had a line in my conf:
PACKAGECONFIG_pn-systemd = "xz"

This appears to overrule the distro features.

The conf file is a remnant of:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-edison/tree/meta-intel-edison-distro/conf/distro/poky-edison.conf

So it looks like meta-intel-edison-distro cn never have worked well.

>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --



