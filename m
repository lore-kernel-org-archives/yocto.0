Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9E774C80A75
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 11:42:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2011 09:42:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,220,1299484800"; d="scan'208";a="722474057"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by orsmga001.jf.intel.com with ESMTP; 21 Mar 2011 09:42:38 -0700
Message-ID: <4D877FFD.5080407@intel.com>
Date: Mon, 21 Mar 2011 09:42:37 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <im7i6a$aqu$1@dough.gmane.org>
In-Reply-To: <im7i6a$aqu$1@dough.gmane.org>
Subject: Re: build failure - poky-image-lsb-sdk-beagleboard
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
X-List-Received-Date: Mon, 21 Mar 2011 16:42:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 06:00 AM, Robert Berger wrote:
> Hi,
>
> I don't know if I'm posting to the right mailing list, but just wanted
> you to know that the latest and greatest from git fails when trying to
> build poky-image-lsb-sdk for beaglebaord.
>
> | make[3]: Leaving directory
> `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
> | [ -d sgml ] || mkdir sgml
> | cd sgml; sgml2txt .././sgml/libuser.sgml
> | Processing file .././sgml/libuser.sgml
> | troff: fatal error: can't find macro file s
> |  fmt_txt::postASP: Empty output file, error when calling groff.
> Aborting...
> | make[2]: *** [sgml/libuser.txt] Error 1
> | make[2]: Leaving directory
> `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/temp/log.do_compile.5485
> for further information)
> NOTE: package libuser-0.57.1-r1: task do_compile: Failed
> ERROR: Task 1822
> (/work/rber/poky/meta/recipes-extended/libuser/libuser_0.57.1.bb,
> do_compile) failed with exit code '1'

Hi Robert,

I'm guessing you're building on a Debian-based host distro. Please 
ensure both the groff and groff-base packages are installed.

We just recently fixed our Quick Start guide to include the groff 
package dependency for Debian-based hosts, but it appears it hasn't been 
pushed out to our production web site yet.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

