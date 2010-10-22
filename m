Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C271E4C8101B
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 13:22:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Oct 2010 11:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,224,1286175600"; d="scan'208";a="566554166"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by orsmga002.jf.intel.com with ESMTP; 22 Oct 2010 11:22:04 -0700
Message-ID: <4CC1D64B.3050606@linux.intel.com>
Date: Fri, 22 Oct 2010 11:22:03 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Lightning/1.0b2 Thunderbird/3.1.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: "Hohndel, Dirk" <dirk.hohndel@intel.com>
Subject: Fetcher error reporting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 18:22:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Richard,

Here is an example of the do_fetch/do_unpack failure that I believe is 
representative of what Dirk saw and what I have been seeing periodically.

I saw the following while building libproxy in poky-image-sdk-live on a 
Fedora 13 box behind the firewall. I saw identical failures with opkg on 
a different machine - also behind the firewall. Both SRC_URIs point to 
googlecode.

log.do_fetch:
-------------
NOTE: fetch http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz
NOTE: libproxy-0.4.3: 
http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz has no entry 
in conf/checksums.ini, not checking URI

log.do_unpack:
--------------
gzip: stdin: unexpected end of file
tar: Child returned status 1
tar: Exiting with failure status due to previous errors
NOTE: Unpacking 
/vol/1/dvhart/poky.git/build/downloads/libproxy-0.4.3.tar.gz to 
/vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/libproxy-0.4.3-r2/
ERROR: Task failed:

With opkg, I tried the following which resulted in the same error.

$ bitbake -c clean;
$ rm downloads/*opkg*
$ bitbake opkg

In both cases, using wget to manually download the file and place it in
the downloads directory allowed the build to continue.

-- 
Darren Hart
Embedded Linux Kernel

