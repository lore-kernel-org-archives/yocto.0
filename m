Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D410CE00595
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 22:29:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2012 22:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,223";a="104855370"
Received: from unknown (HELO [10.255.14.168]) ([10.255.14.168])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2012 22:29:56 -0800
Message-ID: <4F28DBE3.4010107@linux.intel.com>
Date: Tue, 31 Jan 2012 22:29:55 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
In-Reply-To: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
Subject: Re: Build Error
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
X-List-Received-Date: Wed, 01 Feb 2012 06:29:56 -0000
X-Groupsio-MsgNum: 4529
Content-Type: multipart/mixed; boundary="------------060907030308040308070508"

--------------060907030308040308070508
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi James,

On 31/01/12 22:20, James W. wrote:
> hi all:
> i am new comer.
> i meet  a error:
>
> NOTE: package pciutils-3.1.9-r0: task do_configure: Started
> ERROR: Function failed: do_configure (see
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> for further information)
> ERROR: Logfile of failure stored in:
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> Log data follows:
> | ERROR: Function failed: do_configure (see
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> for further information)
> | Configuring libpci for your system..../configure: 1: Syntax error:
> Unterminated quoted string

I cam across this error today also, I'd be willing to bet the OS you're 
building on is using the dash shell (Ubuntu)?

I created a patch earlier and submitted it for inclusion. I've attached 
it for your convenience, it hopefully it will be merged soon.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

--------------060907030308040308070508
Content-Type: text/x-patch;
 name="0001-pciutils-fix-configure-script-for-dash.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-pciutils-fix-configure-script-for-dash.patch"

From 451986a48fc38f11cca09b7890753c899cfab265 Mon Sep 17 00:00:00 2001
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 31 Jan 2012 15:21:00 -0800
Subject: [PATCH 1/2] pciutils: fix configure script for dash

configure.patch was missing a closing quote in a sed expression which
causes script execution to error on less forgiving shells such as dash.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../pciutils/pciutils-3.1.9/configure.patch        |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch b/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
index 658e597..66c9f91 100644
--- a/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
+++ b/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
@@ -67,7 +67,7 @@ diff -r af2b10cc3c14 lib/configure
  		cpu=`/usr/sbin/lsattr -F value -l $proc -a type | sed 's/_.*//'`
  	else
 -		cpu=`uname -m | sed 's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/'`
-+		cpu=${4:-`uname -m | sed 's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/`}
++		cpu=${4:-`uname -m | sed 's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/'`}
  	fi
  	if [ "$sys" = "GNU/kFreeBSD" -o "$sys" = "DragonFly" ]
  	then
-- 
1.7.7.6


--------------060907030308040308070508--
