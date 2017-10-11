Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32AAFE00C7B; Wed, 11 Oct 2017 12:56:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91CBCE00C77
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 12:56:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Oct 2017 12:56:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,362,1503385200"; d="scan'208";a="145423982"
Received: from stan55-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.68])
	by orsmga002.jf.intel.com with ESMTP; 11 Oct 2017 12:56:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Thu, 12 Oct 2017 08:56:20 +1300
Message-ID: <2178504.Ibe9gh1eKU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <158f5845a0574c538b147a1fcc70a6c3@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<4335149.ZQHvdiGDWE@peggleto-mobl.ger.corp.intel.com>
	<158f5845a0574c538b147a1fcc70a6c3@sakuraus.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Wed, 11 Oct 2017 19:56:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 12 October 2017 6:07:55 AM NZDT Greg Wilson-Lindberg wrote:
> Thanks for the info, now I understand what is going on. Hopefully I can find
> a way to get rid of the RPATH, I don't like ignoring errors or warnings.
> 
> I've spent some more time looking into this, I haven't been able to find out
> where the -rpath comes from. If I start a devshell none of the environment
> variables have it set. In the run.do_compile log none of the environment
> variables have it set, it's not set in the run.do_configure log. But in the
> log.do_compile file the command that links the library:
> 
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/
> x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc ... 
> -Wl,-rpath,/usr/lib 
> 
> There it is at the end of the command line.
> 
> As you can see the build for zint is based on CMake. Do you have any
> suggestions as to where I can look to figure out how this is getting set,
> I've done searches of all of the files in the zint download and the only
> ones that have -rpath in them are some files that build a tcl based support
> program that has its own autotools based build system.

This seems to be something that CMake handles itself. From a quick google 
which found the CMake wiki page on the subject [1], you may perhaps set 
CMAKE_SKIP_RPATH? In theory you could do that via EXTRA_OECMAKE in the recipe
i.e.

EXTRA_OECMAKE += "-DCMAKE_SKIP_RPATH=TRUE"

Cheers,
Paul

[1] https://cmake.org/Wiki/CMake_RPATH_handling

-- 

Paul Eggleton
Intel Open Source Technology Centre

