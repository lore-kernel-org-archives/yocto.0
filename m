Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB2CE00758; Wed, 12 Aug 2015 13:22:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B37E00474
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 13:22:00 -0700 (PDT)
Received: by igxp17 with SMTP id p17so7841908igx.1
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 13:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=sCHFbzz8+ynGAlDRgRyaX2sJSFWvp5jMviRyz3bVA1U=;
	b=QrRcbNGURf2yCVLsEOHZIed7LBQSEVLvm2GGS9PQyYGxT/xjHxsOBynf3UwyMv5pcR
	i4iuHWYXyRBfYyIOm7vMiTNiatgEuMAq3bj4GOOvXvhBFIvHitX+Sjia5p4hkh10SwJA
	bc7C5N00zyY0ZawAn8NfAYz4pyn2ysrBX0ShiRT2MaJZZHniZiyhrz3AsJEFrGVVnZEH
	wP9eB0iLtFvxdPMb22i8hKsRcL4YcyfjOK4R4c0rFD8gyFE5h5WwUnX2//mONS4FJFes
	L0f68RZiuvTuDkBYipUglY8kF9EcIzFj4EwOiTHt6WTeQdTqKgM3uugl1lKZob2ly0nD
	Ahzg==
MIME-Version: 1.0
X-Received: by 10.50.97.97 with SMTP id dz1mr24191223igb.64.1439410920141;
	Wed, 12 Aug 2015 13:22:00 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Wed, 12 Aug 2015 13:22:00 -0700 (PDT)
In-Reply-To: <CALbNGRRU+HT+o7KsK_DDVFGMQgjERyp5ASfHE39YzeaomUxHnQ@mail.gmail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com>
	<55CB5F4A.9060806@osg.samsung.com>
	<CALbNGRRU+HT+o7KsK_DDVFGMQgjERyp5ASfHE39YzeaomUxHnQ@mail.gmail.com>
Date: Wed, 12 Aug 2015 22:22:00 +0200
Message-ID: <CALbNGRRpXGJ6HwkTNu-sZFn3_qPdc4s9n=o-TWVTyfKiAxnHZw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Wed, 12 Aug 2015 20:22:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2015 at 7:15 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> FYI: I managed to get the vc4 driver loaded (should be in my repo
> branch vc4-2). With this I get some repeating kernel error messages
> (don't have them here). I am sure that I read something about these
> messages when preparing vc4 (yes I started similar before you sent
> patches).
>
> Hope I have some energy left tonight to check further and let you know...
>
From xorg perspective all looks fine

[595923.730] (II) modeset(0): [DRI2] Setup complete
[595923.730] (II) modeset(0): [DRI2]   DRI driver: vc4
[595923.730] (II) modeset(0): [DRI2]   VDPAU driver: vc4
[595923.740] (--) RandR disabled
[595923.745] (II) AIGLX: enabled GLX_MESA_copy_sub_buffer
[595923.745] (II) AIGLX: enabled GLX_ARB_create_context
[595923.745] (II) AIGLX: enabled GLX_ARB_create_context_profile
[595923.745] (II) AIGLX: enabled GLX_EXT_create_context_es2_profile
[595923.745] (II) AIGLX: enabled GLX_INTEL_swap_event
[595923.745] (II) AIGLX: enabled GLX_SGI_swap_control and GLX_MESA_swap_con=
trol
[595923.745] (II) AIGLX: enabled GLX_EXT_framebuffer_sRGB
[595923.745] (II) AIGLX: enabled GLX_ARB_fbconfig_float
[595923.745] (II) AIGLX: GLX_EXT_texture_from_pixmap backed by buffer objec=
ts
[595923.747] (II) AIGLX: Loaded and initialized vc4
[595923.747] (II) GLX: Initialized DRI2 GL provider for screen 0
[595923.782] (II) modeset(0): Setting screen physical size to 338 x 270

but kernel complains periodically ~6s with

[   36.814922] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
BOs to validate
[   43.060516] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
BOs to validate
[   49.325115] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
BOs to validate
[   55.558433] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
BOs to validate

Will check what this message want me to say - anybody out there with
helping hints?

Andreas

