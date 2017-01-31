Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27EC0E0095F; Tue, 31 Jan 2017 13:04:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 931A1E007EB
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 13:04:54 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP; 31 Jan 2017 13:04:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,316,1477983600"; d="scan'208";a="54174950"
Received: from shyuesio-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.240])
	by orsmga004.jf.intel.com with ESMTP; 31 Jan 2017 13:04:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Date: Wed, 01 Feb 2017 10:04:50 +1300
Message-ID: <2116568.gZo4XLsKAG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.5-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <a68bf963-cd32-38b1-dbc6-557437b08113@smart-home-technology.ch>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<CAPLgG=msOLC7HGUaz3qZSqi_mBn7f9cqng=ZcBZs6B9a6griNQ@mail.gmail.com>
	<a68bf963-cd32-38b1-dbc6-557437b08113@smart-home-technology.ch>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Empty "normal" package, filled dev and dbg packages, tr-50 lib
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
X-List-Received-Date: Tue, 31 Jan 2017 21:04:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jakob,

On Tuesday, 31 January 2017 5:53:47 PM NZDT Jakob Hasse wrote:
> I still try to include the tr-50 library into my build, which is an
> autotools manages library. The code is fetch from git by bitbake.
> The good thing: it builds, the compilation of the library itself gives
> no errors and after it I find the .so files several times in the build
> directory.
> However, the packaging does not work as intended:
> It builds the dev and dbg Versions of the package, but not the "normal"
> version of the package:
> ls
> ./tmp/work/armv7a-vfp-neon-dey-linux-gnueabi/tr-50/0.1-r0/deploy-rpms/armv7a
> _vfp_neon/ tr-50-dbg-0.1-r0.armv7a_vfp_neon.rpm
> tr-50-dev-0.1-r0.armv7a_vfp_neon.rpm

It's very likely that do_install isn't installing files into the right place, 
or isn't installing anything with the result that nothing but -dev and -dbg 
packages are created (they are marked ALLOW_EMPTY by default so they will 
always be written out).
 
> I could make bitbake building that package but that package was empty then.
> 
> My recipe:
> 
> DESCRIPTION = "the tr-50 (MQTT) library to communicate with the swisscom
> devicewise cloud"
> SECTION = "libs"
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM = "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"
> # md5sum only when source is a tar.gz
> SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
> SRC_URI = "git://github.com/inhedron/libtr50.git;protocol=https"
> SRCREV = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
> 
> # tryed the three lines below already, didn't help:
> #FILES_${PN}-dev = ""
> #FILES_SOLIBSDEV = ""
> #ALLOW_EMPTY_${PN} = "1"

Right, none of that is going to help.
 
What you really need to do is look in the install destination directory - i.e. 
the "image" subdirectory under the work directory - you can find the latter 
pretty easily if you're unsure:

bitbake -e tr-50 | grep ^WORKDIR=

Where are files being installed under there? Are there any files there at all?
Once we see what's there we can figure out what the fix will be.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

