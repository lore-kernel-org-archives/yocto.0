Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C20FE00723
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 02:11:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 May 2012 02:11:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="159040808"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 31 May 2012 02:11:58 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.105.37])
	by linux.intel.com (Postfix) with ESMTP id 248F22C8001
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 02:11:58 -0700 (PDT)
Message-ID: <4FC735E1.2030707@linux.intel.com>
Date: Thu, 31 May 2012 12:12:01 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BAY158-W20600DF937B42CE9117DE9B90B0@phx.gbl>
In-Reply-To: <BAY158-W20600DF937B42CE9117DE9B90B0@phx.gbl>
Subject: Re: task 240 of 4900 and task 1526 of 4900 failed When I followed "The Yocto Project Quick Start"
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
X-List-Received-Date: Thu, 31 May 2012 09:11:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/31/2012 11:49 AM, fungjack wrote:
> 
> Hello all!
> When I followed "The Yocto Project Quick Start" and ran bitbake -k core-image-sato, two tasks(240 and 1526) failed. My host is Ubuntu 10.04. Who can give me some advices? Thanks!
> 
> NOTE: Running task 240 of 4900 (ID: 586, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack)
> NOTE: Running task 1526 of 4900 (ID: 874, /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack)
> NOTE: package perl-5.14.2-r6: task do_unpack: Started
> NOTE: package perl-native-5.14.2-r0: task do_unpack: Started
> ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/temp/log.do_unpack.15111
> Log data follows:
> | NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/
> | 
> | gzip: stdin: invalid compressed data--crc error
> | tar: Child returned status 1
> | tar: Error is not recoverable: exiting now
> | ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-intercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> NOTE: package perl-native-5.14.2-r0: task do_unpack: Failed
> ERROR: Task 586 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack) failed with exit code '1'
> ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/temp/log.do_unpack.15114
> Log data follows:
> | NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-linux/perl-5.14.2-r6/
> | 
> | gzip: stdin: invalid compressed data--crc error
> | tar: Child returned status 1
> | tar: Error is not recoverable: exiting now
> | ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz'. Unpack command PATH="/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> NOTE: package perl-5.14.2-r6: task do_unpack: Failed
> ERROR: Task 874 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3307 tasks of which 3305 didn't need to be rerun and 2 failed.
> 
> Summary: 2 tasks failed:
>   /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack
>   /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> 
> 
>  		 	   		  
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hello,

The archive seems to be corrupted somehow, gzip: stdin: invalid compressed data--crc error
Remove /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz and try again.
You may also see /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/perl-native-5.14.2-r0/temp/log.do_unpack.15111 for further info on this.

-- 
Mihai Lindner

