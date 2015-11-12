Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E51E1E00C5B; Thu, 12 Nov 2015 15:32:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26EE0E00C56
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 15:32:34 -0800 (PST)
Received: by igcph11 with SMTP id ph11so4813070igc.1
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 15:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=3FJYMnhJNxI2TFKxGK7L0JSTuxbKZg1CHmXi91wMEdg=;
	b=wrsdsZbfegUADgiWMTFkrwxv/aWcFTtfjuLyOeq1xWNNsx+GlBqIxQNtZfAy4OIR5k
	p1oRfwtLNGU4JgXCElAfHeKI4bnVCk42DTJaMkr97q2a1zb8iaHXr3KhW4B6nPLWDih2
	zScYeOXvWtOvd1vueOXZPLIWgh8f+HEnT3xdUdg1YnGdDNTZukbbknzmt/l9Go59dya4
	PUGVXALTDd5WUwYYHLV9/ZsTG2KCzr6jcyXKcRL5T3LpH9oyZ6MJi8L4l+8Q9J/KCOMU
	2Ht1x7rsz+fnniqI/NScctCrAA39LSjpkAC2dlcfIGs/e2UFb8aZVhw5jmpSPbUxyyAt
	sEtA==
X-Received: by 10.50.150.9 with SMTP id ue9mr167889igb.56.1447371154233;
	Thu, 12 Nov 2015 15:32:34 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ha7sm408076igb.5.2015.11.12.15.32.32
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Nov 2015 15:32:32 -0800 (PST)
To: "Bystricky, Juro" <juro.bystricky@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
	<55CB8EBD.4080105@gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B6101D623D@ORSMSX109.amr.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5645218D.6000104@gmail.com>
Date: Thu, 12 Nov 2015 18:32:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6101D623D@ORSMSX109.amr.corp.intel.com>
Subject: Re: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
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
X-List-Received-Date: Thu, 12 Nov 2015 23:32:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/12/15 16:01, Bystricky, Juro wrote:
> yes, I ran into the same libgcc problem, I plan on tackling it eventually. 
> Likely some paths are not set correctly.
> For what is worth, try to build the SDK against the poky "dizzy" branch.
> I was able to build Darwin SDK with it. You may need to patch some other files though.
> Anyway, there is new repo https://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin-contrib/
> where I will place some Darwin patches, most notably those I used to build 
> the "dizzy" SDK (later next week).

I can't seem to get even this working (i.e. generating an SDK for MacOSX
using dizzy).

$ cat conf/bblayers.conf

    # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
    # changes incompatibly
    LCONF_VERSION = "6"

    BBPATH = "${TOPDIR}"
    BBFILES ?= ""

    BBLAYERS ?= " \
      /z/darwinSDK/layers/meta-poky/meta \
      /z/darwinSDK/layers/meta-poky/meta-yocto \
      /z/darwinSDK/layers/meta-poky/meta-yocto-bsp \
      /z/darwinSDK/layers/meta-darwin-contrib \
      "
    BBLAYERS_NON_REMOVABLE ?= " \
      /z/darwinSDK/layers/meta-poky/meta \
      /z/darwinSDK/layers/meta-poky/meta-yocto \



$ cat conf/local.conf

    MACHINE ??= "qemux86"
    DL_DIR ?= "/home/trevor/devel/Downloads"
    DISTRO ?= "poky"
    PACKAGE_CLASSES ?= "package_rpm"
    EXTRA_IMAGE_FEATURES = "debug-tweaks"
    USER_CLASSES ?= "buildstats image-mklibs image-prelink"
    PATCHRESOLVE = "noop"
    BB_DISKMON_DIRS = "\
        STOPTASKS,${TMPDIR},1G,100K \
        STOPTASKS,${DL_DIR},1G,100K \
        STOPTASKS,${SSTATE_DIR},1G,100K \
        ABORT,${TMPDIR},100M,1K \
        ABORT,${DL_DIR},100M,1K \
        ABORT,${SSTATE_DIR},100M,1K"
    PACKAGECONFIG_append_pn-qemu-native = " sdl"
    PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
    ASSUME_PROVIDED += "libsdl-native"
    CONF_VERSION = "1"

    SDKMACHINE = "i386-darwin"



build config:
$ bitbake core-image-minimal -c populate_sdk

    Build Configuration:
    BB_VERSION        = "1.24.0"
    BUILD_SYS         = "x86_64-linux"
    NATIVELSBSTRING   = "openSUSE-project-13.2"
    TARGET_SYS        = "i586-poky-linux"
    MACHINE           = "qemux86"
    DISTRO            = "poky"
    DISTRO_VERSION    = "1.7.3"
    TUNE_FEATURES     = "m32 i586"
    TARGET_FPU        = ""
    meta             
    meta-yocto       
    meta-yocto-bsp    = "dizzy:b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94"
    meta-darwin-contrib =
    "juro/dizzy/osx-runtime:396962db08ed77c5ee83cd5dd2c301402ec826c1"



meta-darwin-contrib doesn't have a "dizzy" branch, but I tried all of
the "juro/dizzy/*" branches individually without success. Is there
anything obvious I'm doing wrong?

