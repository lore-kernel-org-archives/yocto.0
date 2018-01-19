Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2997DE01066; Fri, 19 Jan 2018 08:36:32 -0800 (PST)
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
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6856E00CF7
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 08:36:30 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id z47so1466374uac.0
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 08:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RPU0HAa5ZBWAUARixKUVovUoU6NY4XmIBoRE4EHWlcA=;
	b=BPz7ApRaLrouSBmnOVQqxyNv30rjIGEiLdIdAFzK0X2Dp1w22Cao0BwWDxEdtUeI4q
	xF4oeEWf2EsmClZm7d7p5rgzOKsksBBvwFA1g7QzvOgjFALur+cIwjBu/4KDYZJ9aU6M
	zFLgKywvT2ZxQCT2Av+y7mlZNdfFj2uRWCAOoo+ZAEcjcKEwJmmO8LENtWY8jyTcyqni
	qWAipzvKPqNuk0Sbl9ReUH2cs5c6ysvDXPziVgD77Qleqfz3MnRPmV7woB/w+VSfgQgG
	eQxNuD0noVgzNhwlX3WU6ozttFIh6A/Paxy6YTYWnWjyMJ4jC40xi946C8M5r0QpIw7j
	pQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RPU0HAa5ZBWAUARixKUVovUoU6NY4XmIBoRE4EHWlcA=;
	b=IAGXJBu5aep7Si9m2f/fV/ekRwll1erWC5PbBeciBSog+2qHopCyWLypjrc++eBw8V
	UW2jVmtVh0CIW6ibYHOj+yJ5aUft1JlCCTJaS7dzkoOx7O8ZiKLvtUh9ej0glMmjwAkd
	CYslgoOMydo0mIlQx4z79lodJuWE1zrKiwNEUK9lgcwqEm3Xyvb27wIyS687Kptvd/OL
	k8MCwOOK5Dkxuiubbul0IrTk3/+73X7rX1c1ZIC9QIMenbLEeXypaCiJEl8cUBNt7EPB
	g2AjAhzqjmhuxM2WYT3WGPRk+mPF2XgYqh3IaJP4SQrK904/PeCN5UlmhCsB8gqnDcbk
	b9aA==
X-Gm-Message-State: AKwxyte6ClicjQH79v2KcAvLrbEEpejUroWMqxvpOvHqZz3tDupuS8dx
	SWlfhN0bQxYjACCpduHZOLfjGB/mmndEK/gG/+4=
X-Google-Smtp-Source: ACJfBou9cSR7qeoZiK0L4k3H8xNOOU8gMmC8fMmDZPJL0bVyjZ7KqdHKO+vGTPhy6y/I8pmR/0QmwXSgBb2Qa4TjcxQ=
X-Received: by 10.176.83.76 with SMTP id y12mr9131498uay.109.1516379789403;
	Fri, 19 Jan 2018 08:36:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Fri, 19 Jan 2018 08:36:28 -0800 (PST)
In-Reply-To: <cf336aca-3cb1-4e1f-e7fc-601311a7d87b@linux.intel.com>
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
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 19 Jan 2018 17:36:28 +0100
Message-ID: <CAC+thW1JpGq4p+OhWg-mtxBHwacULiJCvWY7jtxHV5vFkXFDvw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
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
X-List-Received-Date: Fri, 19 Jan 2018 16:36:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 19, 2018 at 1:32 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
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
>
> I'm similarly ignorant about this stuff (our resident graphics stack expert
> Jussi Kukkonen left a few months ago), but let's consider the build files:

Yes! Jussi helped a lot in the past with issues raised by graphic
recipes from meta-raspberrypi, most notably 'userland' (see below)...

> - the offending tests are wrapped in "if build_egl and build_x11_tests"
>
> - build_egl is controlled by a PACKAGECONFIG, and I guess you do have it
> available

Yes, if I understand correctly, meta-raspberrypi uses either 'mesa' or
'userland' [1]
as providers for virtual/egl, mesa being chosen only for 64bit builds
of raspberrypi3.

PREFERRED_PROVIDER_virtual/egl ?=
"${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa",
"userland", d)}"

BTW I gave the 64bit a spin right now to see if something changed with
mesa instead of userland... and it turned out to build just fine
(tests included).
Nailing it down to something userland is supposed to provide but does
not as expected?

[1] https://github.com/raspberrypi/userland

> - "build_x11_tests = build_glx and x11_dep.found()" - build_glx is similarly
> controlled by a PACKAGECONFIG, and enabled if x11 is in DISTRO_FEATURES:
>
> PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
> PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"
>
> This is where I think the configuration is not quite right. Instead of
> virtual/libx11, it should say virtual/libgl. And if that dependency cannot
> be satisfied, then the x11 option should be altogether disabled in the
> distro/local config (in poky mesa provides virtual/libgl). At least that's
> how it's configured in many other recipes throughout oe-core.

Can you point to any in particular so I can have a look at the pattern?

> Can you try:
> a) disabling x11 PACKAGECONFIG in your local config and see if things build?

Yes, they do. As expected, meson does not find the X11 dependency and
skips building tests...

> b) changing the dependency in that option to virtual/libgl and see what kind
> of error you get, if any. I guess this is the right fix after all.

Nope, below change has no effect. The error is the same as in the
original post (missing symbols from X11/Xlib.h)

diff --git a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
index 72167a2..ee9db24 100644
--- a/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
+++ b/meta/recipes-graphics/libepoxy/libepoxy_1.4.3.bb
@@ -20,7 +20,7 @@ REQUIRED_DISTRO_FEATURES = "opengl"
 DEPENDS = "util-macros"

 PACKAGECONFIG[egl] = "-Denable-egl=yes, -Denable-egl=no, virtual/egl"
-PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libx11"
+PACKAGECONFIG[x11] = "-Denable-glx=yes, -Denable-glx=no, virtual/libgl"
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} egl"

 EXTRA_OEMESON_append_libc-musl = " -Dhas-dlvsym=false "

