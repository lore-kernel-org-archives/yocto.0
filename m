Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58F00E00A48; Thu, 17 Nov 2016 17:46:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 223F5E00A0A
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 17:46:13 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2016 17:46:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,655,1473145200"; d="scan'208";a="192804208"
Received: from brfu-mobl2.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.154.192])
	by fmsmga004.fm.intel.com with ESMTP; 17 Nov 2016 17:46:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michel D'HOOGE <michel.dhooge@free.fr>
Date: Fri, 18 Nov 2016 14:46:07 +1300
Message-ID: <4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <669555700.320493216.1479293301778.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <669555700.320493216.1479293301778.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Fri, 18 Nov 2016 01:46:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michel,

On Wed, 16 Nov 2016 11:48:21 Michel D'HOOGE wrote:
> I try to produce an extensible SDK for core-image-sato with the following
> configuration:
> 
> BB_VERSION = "1.32.0"
> BUILD_SYS = "x86_64-linux"
> NATIVELSBSTRING = "universal"
> TARGET_SYS = "x86_64-poky-linux"
> MACHINE = "vtc7200"
> DISTRO = "poky-systemd"
> DISTRO_VERSION = "2.2"
> TUNE_FEATURES = "m64 corei7"
> 
> The machine is based on an intel-corei7, with some features removed. And the
> distro is poky-based, with only systemd (as detailed in the ref manual).
> And I get the following error:
> 
> 
> ERROR : buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install
> packages. Command '/mnt/Yocto/vedecom-x86/build/tmp/sysroots/x86_
> 64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated
> nativesdk-locale-base-en-us nativesdk-git nativesdk-make native
> sdk-ca-certificates nativesdk-tar nativesdk-python3-modules
> nativesdk-texinfo nativesdk-python3-git nativesdk-ncurses-terminfo-base n
> ativesdk-chrpath nativesdk-python3-misc nativesdk-git-perltools
> nativesdk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives
> dk-python3-core' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> E: Unable to locate package nativesdk-buildtools-perl-dummy
> 
> The package exists and is in:
> tmp/deploy/deb/buildtools-dummy-nativesdk/nativesdk-buildtools-perl-dummy_1.
> 0-r2_allarch.deb while the other listed packages are in
> tmp/deploy/deb/x86_64-nativesdk.
> 
> It seems this package is empty, so maybe I should simply remove it from
> poky/meta/recipes-core/meta/buildtools-tarball.bb.

FYI the purpose of this package is to take precedence over the real nativesdk-
perl so that it doesn't get into the buildtools, since we prefer to avoid the 
issues associated with overriding the host perl there. If you remove this 
package then perl will enter buildtools and you will experience other issues.

I think the issue is this hasn't really been tested with deb packaging. You 
have hit a genuine bug though - would you mind filing a bug at 
http://bugzilla.yoctoproject.org?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

