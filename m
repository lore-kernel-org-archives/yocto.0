Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBD36E00DE3; Wed, 13 Nov 2019 07:59:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8155AE00DAF
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 07:59:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2019 07:59:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="229786990"
Received: from bhatavin-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.249.42.178])
	by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2019 07:59:29 -0800
To: yocto@yoctoproject.org
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <ef8d315c-2258-a523-6b81-2d6baf4266dd@intel.com>
Date: Wed, 13 Nov 2019 15:59:29 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
Subject: Re: pkg-config not found
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
X-List-Received-Date: Wed, 13 Nov 2019 15:59:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 12/11/2019 21:06, Mark Hawthorne wrote:
> I have an autotools build that uses the following autoconfig file:
> --------------------
> AC_INIT([my-program], [1])
> AM_INIT_AUTOMAKE([-Wall -Werror foreign])
> AC_LANG(C++)
> AC_PROG_CXX
> AX_PTHREAD()
> PKG_CHECK_MODULES(LIBPNG, libpng >= 1.6.34)
> PKG_CHECK_MODULES(FREETYPE2, freetype2 >= 21.0.15)
> PKG_CHECK_MODULES(EGL, egl > 0)
> PKG_CHECK_MODULES(GLES2, glesv2 > 0)
> PKG_CHECK_MODULES(GLM, glm >= 0.9.9)
> PKG_CHECK_MODULES(SPATIALITE, spatialite >= 4.3.0)
> AC_CONFIG_FILES([Makefile])
> AC_OUTPUT
> --------------------
> 
> I have made the following bitbake recipe file
> 
> --------------------
> SUMMARY = "my program"
> HOMEPAGE = ""
> DESCRIPTION = ""
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = 
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
> SRC_URI = "git://user@bitbucket.org/user/myrepo.git 
> <http://user@bitbucket.org/user/myrepo.git>"
> 
> SRCREV = "dc1391dbc82702fd0126d4156d4ab59571427efe"
> 
> DEPENDS_${PN} = "libpng freetype glm libegl libgles2 libspatialite"
> 
> S = "${WORKDIR}/git"
> 
> inherit pkgconfig autotools
> --------------------
> 
> The build fails with this error:
> --------------------
> configure: error: in 
> `/home/user/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/my-program/1.0-r0/build':
> configure: error: The pkg-config script could not be found or is too 
> old.  Make sure it is in your PATH or set the PKG_CONFIG environment 
> variable to the full path to pkg-config.
> 
> Alternatively, you may set the environment variables LIBPNG_CFLAGS and 
> LIBPNG_LIBS to avoid the need to call pkg-config.
> --------------------

That *should* work.  The config.log in the build directory might have 
more useful information.

Ross

