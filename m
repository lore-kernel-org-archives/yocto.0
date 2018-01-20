Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57FC9E00DE4; Sat, 20 Jan 2018 01:29:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283C5E00D17
	for <yocto@yoctoproject.org>; Sat, 20 Jan 2018 01:29:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Jan 2018 01:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,385,1511856000"; d="scan'208";a="11839198"
Received: from keng1-mobl1.gar.corp.intel.com (HELO [10.255.163.252])
	([10.255.163.252])
	by fmsmga008.fm.intel.com with ESMTP; 20 Jan 2018 01:29:54 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	Andrea Galbusera <gizero@gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
	<CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
	<24fffbce-1f44-dba6-aed2-913af75ba525@linux.intel.com>
	<CAJ86T=U4m-J8WLdRP6UFP7T=FxyRRMsc7uXzpOyU9uCoimA1_g@mail.gmail.com>
	<28c69ac5-219a-8718-83f6-5f7f2b51bf10@linux.intel.com>
	<CAC+thW07t_5w-g9aWDTSWeqN_V0zH=mEZBDLrUO_5LD97JG5-A@mail.gmail.com>
	<cf336aca-3cb1-4e1f-e7fc-601311a7d87b@linux.intel.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <21d74a6f-8833-ac0b-c2e7-72063cdf809c@intel.com>
Date: Sat, 20 Jan 2018 17:29:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <cf336aca-3cb1-4e1f-e7fc-601311a7d87b@linux.intel.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Sat, 20 Jan 2018 09:29:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/19/2018 08:32 PM, Alexander Kanavin wrote:
> 
>> I'll try to recap a little bit but, please, forgive my ignorance in
>> graphics stacks and libraries.
>> Disclaimer: mostly working on headless systems... my bad!
>> This is what I think I understand here (remember I test building poky
>> + meta-raspberrypi):
>> * libepoxy recipe in poky uses PACKAGECONFIG to conditionally depend
>> on virtual/X11 when this is available in DISTRO_FEATURE
>> * the latter is the case for poky which is the DISTRO I'm building
>> for. This gives i.e. a populated recipe-sysroot/usr/include/X11
>> * upstream meson.build conditionally builds tests if X11 is
>> available... so we expect they should build fine in this case
>> * compile fails on test/egl_common.c which does not explicitly include
>> X11/Xlib.h by itself. Doing so moves things forward but, to me, does
>> not seem to be the right thing to do.
>>
>> Is this correct to assume that the upstream tested usecases are
>> probably getting the include otherwise, maybe conditionally as Alex
>> initially suggested. If so, where should we look for the missing
>> pieces?
> 
> I'm similarly ignorant about this stuff (our resident graphics stack 
> expert Jussi Kukkonen left a few months ago), but let's consider the 
> build files:
> 
> - the offending tests are wrapped in "if build_egl and build_x11_tests"
> 
> - build_egl is controlled by a PACKAGECONFIG, and I guess you do have it 
> available
> 
> - "build_x11_tests = build_glx and x11_dep.found()" - build_glx is 
> similarly controlled by a PACKAGECONFIG, and enabled if x11 is in 
> DISTRO_FEATURES:
> 
> PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
> PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"
> 
> This is where I think the configuration is not quite right. Instead of 
> virtual/libx11, it should say virtual/libgl. And if that dependency 
> cannot be satisfied, then the x11 option should be altogether disabled 
> in the distro/local config (in poky mesa provides virtual/libgl). At 
> least that's how it's configured in many other recipes throughout oe-core.
> 
> Can you try:
> a) disabling x11 PACKAGECONFIG in your local config and see if things build?
> b) changing the dependency in that option to virtual/libgl and see what 
> kind of error you get, if any. I guess this is the right fix after all.

Yes, glx in libepoxy should be disabled if it is not in DISTRO_FEATURES.
glx depends on gl and x11 so if it is to be enabled, both of them should
be present.

However, x11 without glx and just egl should still be valid configuration.

I think the correct configuration should be:


diff --git a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
index 72167a2..0043bec 100644
--- a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
+++ b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
@@ -15,12 +15,14 @@ UPSTREAM_CHECK_URI =
"https://github.com/anholt/libepoxy/releases"

 inherit meson pkgconfig distro_features_check

-REQUIRED_DISTRO_FEATURES = "opengl"
-
 DEPENDS = "util-macros"

+REQUIRED_DISTRO_FEATURES = "${@bb.utils.contains('PACKAGECONFIG',
'glx', 'x11', '', d)}"
+PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'glx x11', d)} \
+                   ${@bb.utils.contains('DISTRO_FEATURES', 'opengl',
'egl', '', d)}"
+
 PACKAGECONFIG[egl] = "-Denable-egl=yes, -Denable-egl=no, virtual/egl"
-PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
-PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"
+PACKAGECONFIG[glx] = "-Denable-glx=yes, -Denable-glx=no, virtual/libgl"
+PACKAGECONFIG[x11] = ",, virtual/libx11"

 EXTRA_OEMESON_append_libc-musl = " -Dhas-dlvsym=false "

I didn't test this on all combinations. Perhaps someone can help test on
rpi?


> 
> Alex
> 


