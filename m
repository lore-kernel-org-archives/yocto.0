Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26BFE00DC9; Sat, 20 Jan 2018 09:07:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B53BEE0083E
	for <yocto@yoctoproject.org>; Sat, 20 Jan 2018 09:07:03 -0800 (PST)
Received: by mail-vk0-f53.google.com with SMTP id g83so2739050vki.4
	for <yocto@yoctoproject.org>; Sat, 20 Jan 2018 09:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w9s6aiadHEsrikdWkMC6FHQF+YcAl+N2NCaZ2U+tvSI=;
	b=Q55Br3+4gEILvgT5ZrmYodKYi8yltbMV/6l/vDxXRzZ8qf4cM+7xiMaTnMuYHm3VM8
	qI1RAR50SUoCPgzq1eSTtFDQySCIjdRKM6jtM2/stBxhJb66MhZG0cmSIMX9knX/acaY
	dI3Sxc/IPpEELIn/DPYTI79ZSeUewJZB+7dIjASxv68pQlYKrXVwOhqGQPRQhfLWSMRV
	alcwCkKhycvyQNd6HFo58JthgCPQ4OjDHnjUP/qoYEDMA4sYuHP6ZBlo6ZAK7w5rLbub
	tU76qwDT1ka5Zd5k4GWIOo4a1bdFowvpibZ8gsCvj9ShVBiLakUGCE8Mb6DNTmYmLtg9
	bioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w9s6aiadHEsrikdWkMC6FHQF+YcAl+N2NCaZ2U+tvSI=;
	b=EyTLZkMc1wYxsN0CAPGF/UL0oLOPAQReJXhLWxaSfWRmmp8/JIUgJQVUX1PGsV/7Yt
	ItkteOyCr3jzVqsR7/wYztHJc/0znclDi/2/3mQEVY0jXXaoUmxHX8OdpP0Fhj1nDvgS
	b3pNmjcGKzPLM3kgjKFyypEZGCj2+cMvjBc2L4A3Jq5IEDqRZu/PKNU5FQSZUjQaYCUc
	1ROWlrpNvM0d3bzNtdPEyotAjh2BwRcLJRPtAGU1VvqEdNDHbSxm1qQTS9jp/y4kWoV7
	Zdd/YJGhKwtLpL7ZkP21pQtYcAMGF3TIU36x8XQufBMo+KbjDncD9mqP3fwH8Mo8x/73
	k8mg==
X-Gm-Message-State: AKwxytc27hpmjf6J7du51EIwxSWhwjB/Ou01UA1l/RX44hIkCiRYHsmk
	jKOhTpUbMJ/AQRlR4cUDYbV7slpg7wjFyYDdc4U=
X-Google-Smtp-Source: AH8x225KlTj0rz5KsnGbue5Bj7LnpZjV08t+pTf+UAmgUkEzz2e9yg496aWIw5O06hBrN/EpTWGtkjqAMCS15cbsh2U=
X-Received: by 10.31.78.194 with SMTP id c185mr1361645vkb.19.1516468022538;
	Sat, 20 Jan 2018 09:07:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Sat, 20 Jan 2018 09:07:01 -0800 (PST)
In-Reply-To: <21d74a6f-8833-ac0b-c2e7-72063cdf809c@intel.com>
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
	<21d74a6f-8833-ac0b-c2e7-72063cdf809c@intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 20 Jan 2018 18:07:01 +0100
Message-ID: <CAC+thW30_2-svZ_KUVfxdAgde0rhgLkSnD4kyUVA75FCr5jiAg@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
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
X-List-Received-Date: Sat, 20 Jan 2018 17:07:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jan 20, 2018 at 10:29 AM, Anuj Mittal <anuj.mittal@intel.com> wrote:
> On 01/19/2018 08:32 PM, Alexander Kanavin wrote:
>>
>>> I'll try to recap a little bit but, please, forgive my ignorance in
>>> graphics stacks and libraries.
>>> Disclaimer: mostly working on headless systems... my bad!
>>> This is what I think I understand here (remember I test building poky
>>> + meta-raspberrypi):
>>> * libepoxy recipe in poky uses PACKAGECONFIG to conditionally depend
>>> on virtual/X11 when this is available in DISTRO_FEATURE
>>> * the latter is the case for poky which is the DISTRO I'm building
>>> for. This gives i.e. a populated recipe-sysroot/usr/include/X11
>>> * upstream meson.build conditionally builds tests if X11 is
>>> available... so we expect they should build fine in this case
>>> * compile fails on test/egl_common.c which does not explicitly include
>>> X11/Xlib.h by itself. Doing so moves things forward but, to me, does
>>> not seem to be the right thing to do.
>>>
>>> Is this correct to assume that the upstream tested usecases are
>>> probably getting the include otherwise, maybe conditionally as Alex
>>> initially suggested. If so, where should we look for the missing
>>> pieces?
>>
>> I'm similarly ignorant about this stuff (our resident graphics stack
>> expert Jussi Kukkonen left a few months ago), but let's consider the
>> build files:
>>
>> - the offending tests are wrapped in "if build_egl and build_x11_tests"
>>
>> - build_egl is controlled by a PACKAGECONFIG, and I guess you do have it
>> available
>>
>> - "build_x11_tests = build_glx and x11_dep.found()" - build_glx is
>> similarly controlled by a PACKAGECONFIG, and enabled if x11 is in
>> DISTRO_FEATURES:
>>
>> PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
>> PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"
>>
>> This is where I think the configuration is not quite right. Instead of
>> virtual/libx11, it should say virtual/libgl. And if that dependency
>> cannot be satisfied, then the x11 option should be altogether disabled
>> in the distro/local config (in poky mesa provides virtual/libgl). At
>> least that's how it's configured in many other recipes throughout oe-core.
>>
>> Can you try:
>> a) disabling x11 PACKAGECONFIG in your local config and see if things build?
>> b) changing the dependency in that option to virtual/libgl and see what
>> kind of error you get, if any. I guess this is the right fix after all.
>
> Yes, glx in libepoxy should be disabled if it is not in DISTRO_FEATURES.
> glx depends on gl and x11 so if it is to be enabled, both of them should
> be present.
>
> However, x11 without glx and just egl should still be valid configuration.
>
> I think the correct configuration should be:
>
>
> diff --git a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
> b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
> index 72167a2..0043bec 100644
> --- a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
> +++ b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
> @@ -15,12 +15,14 @@ UPSTREAM_CHECK_URI =
> "https://github.com/anholt/libepoxy/releases"
>
>  inherit meson pkgconfig distro_features_check
>
> -REQUIRED_DISTRO_FEATURES = "opengl"
> -
>  DEPENDS = "util-macros"
>
> +REQUIRED_DISTRO_FEATURES = "${@bb.utils.contains('PACKAGECONFIG',
> 'glx', 'x11', '', d)}"
> +PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'glx x11', d)} \

Did you mean 'opengl x11' or is glx a valid distro feature? I don't
see it mentioned anywhere else...

> +                   ${@bb.utils.contains('DISTRO_FEATURES', 'opengl',
> 'egl', '', d)}"
> +
>  PACKAGECONFIG[egl] = "-Denable-egl=yes, -Denable-egl=no, virtual/egl"
> -PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
> -PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"
> +PACKAGECONFIG[glx] = "-Denable-glx=yes, -Denable-glx=no, virtual/libgl"
> +PACKAGECONFIG[x11] = ",, virtual/libx11"
>
>  EXTRA_OEMESON_append_libc-musl = " -Dhas-dlvsym=false "
>
> I didn't test this on all combinations. Perhaps someone can help test on
> rpi?

Thanks, I volunteer to keep testing with rpi configurations, but I
don't understand the realm enough to judge the patch effect on other
scenarios.

