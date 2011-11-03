Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6126E006F9
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 06:28:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Nov 2011 06:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,449,1315206000"; d="scan'208";a="85683476"
Received: from unknown (HELO envy.home) ([10.255.15.181])
	by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2011 06:28:19 -0700
Message-ID: <4EB296F3.5020009@linux.intel.com>
Date: Thu, 03 Nov 2011 06:28:19 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Mike Tsukerman <miketsukerman@gmail.com>
References: <CALs2vteB3NaOGvAL4fB_GUVhaV=pYsg1V=H=+f_NtEXs9z2gmQ@mail.gmail.com>
In-Reply-To: <CALs2vteB3NaOGvAL4fB_GUVhaV=pYsg1V=H=+f_NtEXs9z2gmQ@mail.gmail.com>
X-Enigmail-Version: 1.3.2
Cc: yocto@yoctoproject.org
Subject: Re: libtool can't read a la files
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
X-List-Received-Date: Thu, 03 Nov 2011 13:28:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Mike,

On 11/03/2011 02:50 AM, Mike Tsukerman wrote:
> Hello, I've build core-image-minimal-dev (it does not metter for what
> architecture, the same bugs appears in arm and i586) image and faced a
> problem. When i'm trying to build something from tarball, i get a
> libtool errors. It's not only for libz and not every time happens. What
> is going wrong?
> But all .la files exists.

When you run the bitbake command, there is a block of "OE Build
Configuration" which lists the version, the machine, and the layer
revisions being used to build the system. Please provide this
information when reporting a bug. It also helps to know which
distribution you are building on. If you've made any changes to your
local.conf or bblayers.conf to modify the way the image is being built,
please include that as well.

> 
> libtool: link: (cd ".libs" && rm -f "librpmbuild.so.2" && ln -s
> "librpmbuild.so.2.0.1" "librpmbuild.so.2")
> libtool: link: (cd ".libs" && rm -f "librpmbuild.so" && ln -s
> "librpmbuild.so.2.0.1" "librpmbuild.so")
> /bin/sed: can't read =/usr/lib/libz.la <http://libz.la>: No such file or
> directory
> libtool: link: `=/usr/lib/libz.la <http://libz.la>' is not a valid
> libtool archive
> make[2]: *** [librpmbuild.la <http://librpmbuild.la>] Error 1
> make[2]: Leaving directory `/home/root/rpm-4.9.1.2/build'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/home/root/rpm-4.9.1.2'
> make: *** [all] Error 2
> 
> 
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

