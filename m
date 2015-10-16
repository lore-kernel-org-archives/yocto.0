Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C047AE00BDC; Fri, 16 Oct 2015 07:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82199E00BC1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 07:31:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Oct 2015 07:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,689,1437462000"; d="scan'208";a="828293214"
Received: from mbabyjoh-mobl.fi.intel.com ([10.237.72.71])
	by orsmga002.jf.intel.com with ESMTP; 16 Oct 2015 07:31:50 -0700
Date: Fri, 16 Oct 2015 12:45:32 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Federico Pietro Briata <federicobriata@gmail.com>
Message-ID: <20151016094532.GA1659@mbabyjoh-mobl.fi.intel.com>
References: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+KKcbm9JAeutnDhyYfVprxt3AZYX0B9n44Cokt3yMhiS8TPZw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-7-jre was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
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
X-List-Received-Date: Fri, 16 Oct 2015 14:31:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Oct 16, 2015 at 03:35:22PM +0200, Federico Pietro Briata wrote:
>
>Hi Folks,
>I'm trying to compile java without x11 and unfortunately also without success..
>
>I've added in my local.conf:
>
>DISTRO_FEATURES_remove = "x11"
># Java build settings
>PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
>PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
>PREFERRED_VERSION_openjdk-7-jre = "85b01-2.6.1"
>PREFERRED_VERSION_icedtea7-native = "2.1.3"
>PREFERRED_PROVIDER_openjdk-7-jre = "openjdk-7-jre"
>
>but I get this error
>
>ERROR: Nothing RPROVIDES 'openjdk-7-jre' (but /home/f34389b/yocto/PCM/R5.0/sources/meta-fede/recipes-images/images/fede-java-test.bb RDEPENDS on or otherwise requires it)
>ERROR: openjdk-7-jre was skipped: missing required distro feature ['x11'] (not in DISTRO_FEATURES)
>
>Patching those files:
>meta-java/recipes-core/classpath/classpath.inc
>meta-java/recipes-core/jamvm/jamvm.inc
>meta-java/recipes-core/jamvm/jamvm_git.bb
>meta-java/recipes-core/openjdk/openjdk-common.inc
>poky/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc

>like this:
>-REQUIRED_DISTRO_FEATURES = "x11"
>+#REQUIRED_DISTRO_FEATURES = "x11"
>seems to be a temporary workaround

These lines were added by this commit:

---
commit 24b98ac3a6ca7fadfba24709aac8d0b71316e299
Author: Mario Domenech Goulart <mario@ossystems.com.br>
Date:   Tue Aug 18 17:14:30 2015 -0300

   Avoid parse time errors due to dependency on x11, for distros without x11
        
   BitBake raises some errors when processing recipes that depend on x11
   for distros that don't have x11 in DISTRO_FEATURES. To work around
   that issue, REQUIRED_DISTRO_FEATURES = "x11" (from
   distro_features_check.bbclass) has been set for the following recipes:
                            
    * cacao
    * classpath
    * jamvm
    * openjdk-6-release
    * openjdk-7-release
                                                   
 That makes BitBake skip those recipes during the cache generation
 (they'd still be parsed, but ignored).
---

Even if we revert this commit, the openjdk-7-jre build will fail 
due to dependency on gtk+, libxt...etc. 

Recently Jens Rehsack did some work in this direction for icedtea7:
http://lists.openembedded.org/pipermail/openembedded-devel/2015-October/103849.html

We will have to follow that way to get rid of the x11 dependency in other packages.

>
>regards
>federico

Best Regards,
Maxin

