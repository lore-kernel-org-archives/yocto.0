Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C24BE00C3E; Tue, 11 Jul 2017 16:56:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D5C3E00BD0
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 16:56:39 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2017 16:56:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,347,1496127600"; d="scan'208";a="991861467"
Received: from clsulliv.jf.intel.com ([10.7.201.36])
	by orsmga003.jf.intel.com with ESMTP; 11 Jul 2017 16:56:35 -0700
To: Tim Orling <timothy.t.orling@linux.intel.com>, yocto@yoctoproject.org
References: <20170711212552.26897-1-timothy.t.orling@linux.intel.com>
From: Cal Sullivan <california.l.sullivan@intel.com>
Message-ID: <c1f0d9f7-54fd-f7bc-a2d1-35232f9e8e1d@intel.com>
Date: Tue, 11 Jul 2017 16:56:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20170711212552.26897-1-timothy.t.orling@linux.intel.com>
Subject: Re: [meta-alexa-demo][PATCH] Fix setuptools_scm build error for several python packages
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
X-List-Received-Date: Tue, 11 Jul 2017 23:56:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I actually wasn't able to reproduce the issue.I added alexapi to my 
IMAGE_INSTALL and ran a build, see below:

[clsulliv@clsulliv build]$ bitbake core-image-minimal
Parsing recipes: 100% 
|############################################################################################################| 
Time: 0:00:08
Parsing of 1825 .bb files complete (0 cached, 1825 parsed). 2581 
targets, 143 skipped, 0 masked, 0 errors.
NOTE: There are 4 recipes to be removed from sysroot x86_64, removing...
NOTE: There are 1 recipes to be removed from sysroot corei7-64, removing...
NOTE: There are 1 recipes to be removed from sysroot intel-corei7-64, 
removing...
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "intel-corei7-64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "pyro:7c27bf2dd85ee77d643d975add4256e957652a5c"
meta-intel        = "pyro:16aea09d224f3ed2021623d17c3e807f4b8ff18d"
meta-oe           = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta-alexa        = "master:1b5618a1af6ea79f51aa89480b857648584c581f"
meta-python
meta-multimedia   = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

Initialising tasks: 100% 
|#########################################################################################################| 
Time: 0:00:11
Checking sstate mirror object availability: 100% 
|#################################################################################| 
Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 5678 tasks of which 5653 didn't need to 
be rerun and all succeeded.

I'm curious as to what's different for you guys.

---
Cal


On 07/11/2017 02:25 PM, Tim Orling wrote:
> python-setuptools-scm-native is needed at build time for:
>    python-cheroot
>    python-cherrypy
>    python-portend
>    python-tempora
>
> Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
> ---
>   recipes-devtools/python/python-cheroot_5.1.0.bb   | 2 +-
>   recipes-devtools/python/python-cherrypy_10.1.1.bb | 2 +-
>   recipes-devtools/python/python-portend_1.8.bb     | 2 +-
>   recipes-devtools/python/python-tempora_1.6.1.bb   | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-devtools/python/python-cheroot_5.1.0.bb b/recipes-devtools/python/python-cheroot_5.1.0.bb
> index 2da3115..e8795d1 100644
> --- a/recipes-devtools/python/python-cheroot_5.1.0.bb
> +++ b/recipes-devtools/python/python-cheroot_5.1.0.bb
> @@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/cheroot"
>   
>   BBCLASSEXTEND = "nativesdk"
>   
> -DEPENDS += " swig-native"
> +DEPENDS += " swig-native python-setuptools-scm-native"
>   
>   RDEPENDS_${PN} += " \
>       python-pip \
> diff --git a/recipes-devtools/python/python-cherrypy_10.1.1.bb b/recipes-devtools/python/python-cherrypy_10.1.1.bb
> index 2a75fd8..6a9086a 100644
> --- a/recipes-devtools/python/python-cherrypy_10.1.1.bb
> +++ b/recipes-devtools/python/python-cherrypy_10.1.1.bb
> @@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/CherryPy"
>   
>   BBCLASSEXTEND = "nativesdk"
>   
> -DEPENDS += " swig-native"
> +DEPENDS += " swig-native python-setuptools-scm-native"
>   
>   RDEPENDS_${PN} += " \
>       python-pip \
> diff --git a/recipes-devtools/python/python-portend_1.8.bb b/recipes-devtools/python/python-portend_1.8.bb
> index f50de7c..926d238 100644
> --- a/recipes-devtools/python/python-portend_1.8.bb
> +++ b/recipes-devtools/python/python-portend_1.8.bb
> @@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/portend"
>   
>   BBCLASSEXTEND = "nativesdk"
>   
> -DEPENDS += " swig-native"
> +DEPENDS += " swig-native python-setuptools-scm-native"
>   
>   RDEPENDS_${PN} += " \
>       python-pip \
> diff --git a/recipes-devtools/python/python-tempora_1.6.1.bb b/recipes-devtools/python/python-tempora_1.6.1.bb
> index 417818b..4412030 100644
> --- a/recipes-devtools/python/python-tempora_1.6.1.bb
> +++ b/recipes-devtools/python/python-tempora_1.6.1.bb
> @@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/tempora"
>   
>   BBCLASSEXTEND = "nativesdk"
>   
> -DEPENDS += " swig-native"
> +DEPENDS += " swig-native python-setuptools-scm-native"
>   
>   RDEPENDS_${PN} += " \
>       python-pip \


