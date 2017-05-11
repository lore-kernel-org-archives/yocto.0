Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1DBFE00B62; Thu, 11 May 2017 13:25:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC3ADE0095F
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 13:25:23 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id m4so4105595ioe.0
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 13:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pp1/MTdJfhRk68lXv9qQLUkNPyOtUKbRHonCwtHNwO4=;
	b=c29eGTX0Qrla039Uo6jgER5O4y0SWv1GT/LVDt0AsGNxGL56rTvC6C0MwOh5RWDz97
	luJpM79k3YeQycaucjSBrKmu7FkLFljWZX4bs+bPJmGm/meVSyXoSSMkfC0nCbkKQV8T
	fE4wAi3/H+pqRpOj3N+jESBRefSB9b5OU99+td2+INykQQzLdKH3YMF7KtAtv48ezFyf
	evT3zocTMYBUtVkN3nO6T/3m9qrX2Aa1GSSAomo0VG+3+O4+oNlNLW2n4zhE4LH6yOm0
	kWBjoAOgFhMJscl90tsiHwiSyD8yzaDMcyVjDK58krRBneUmYbF1fziaEJlasC2SGnuX
	17Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pp1/MTdJfhRk68lXv9qQLUkNPyOtUKbRHonCwtHNwO4=;
	b=GJ5RuhyhbwXxQVZ8i1+DGwrpizD3Z5L/iPyFD94/0LS5UrnvSXimzbNrXpUJ7I1w0W
	8sdTwXtCzjPaSUzJfi9STArEl8d5QMrmuUuKj7jdZCVLFmE/E0RCJ8WYq8R5CujLgHrG
	zyaYSAIQpYxpQ9UzSzsQqEGnVq6h6t1JOnDCdB0gP2XCWw2IILBDfBWiPph+VIyOji6+
	C9eyWWCTvs4aICdMypyXo5wu9+Qg93kZ0CbIDNVLJ8dW0KQhD9z1mF8B6IqzHHcQbxS9
	aKIIElf54BrRoPpKvOANXK4FBRTFfADZEmlBZSA++w6LuPxFfk/FHhxYrii/pQIhBC1W
	+jJA==
X-Gm-Message-State: AODbwcBLHg4n34mFUH5CSbntHB1Z0FANjM+WVHuw2DZKU0Q0P91yojA7
	1BZOHmz85aqEDDFiHcOYNQ1HTiRBng==
X-Received: by 10.107.180.130 with SMTP id d124mr387010iof.47.1494534323195;
	Thu, 11 May 2017 13:25:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Thu, 11 May 2017 13:24:42 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <20170510064845.30839-1-raj.khem@gmail.com>
References: <20170510064845.30839-1-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 11 May 2017 21:24:42 +0100
Message-ID: <CAK18fxEtDeHJJsxqnizrmiVPfMZRFJqSn5j0u0B_NFdLHnBg9A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Add missing GLES2 defines
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
X-List-Received-Date: Thu, 11 May 2017 20:25:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, May 10, 2017 at 7:48 AM, Khem Raj <raj.khem@gmail.com> wrote:
> Needed by weston
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch | 30 ++++++++++++++++++++++
>  recipes-graphics/userland/userland_git.bb          |  1 +
>  2 files changed, 31 insertions(+)
>  create mode 100644 recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch
>
> diff --git a/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch b/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch
> new file mode 100644
> index 0000000..2232d4b
> --- /dev/null
> +++ b/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch
> @@ -0,0 +1,30 @@
> +From 55a66f56a14eb8c3ae8294860e49efc9c9598c46 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Wed, 10 May 2017 06:39:34 +0000
> +Subject: [PATCH] GLES2/gl2ext.h: Define GL_R8_EXT and GL_RG8_EXT
> +
> +weston code uses these defines
> +Upstream-Status: Pending
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + interface/khronos/include/GLES2/gl2ext.h | 3 +++
> + 1 file changed, 3 insertions(+)
> +
> +diff --git a/interface/khronos/include/GLES2/gl2ext.h b/interface/khronos/include/GLES2/gl2ext.h
> +index 4eacf7f..283e3e1 100644
> +--- a/interface/khronos/include/GLES2/gl2ext.h
> ++++ b/interface/khronos/include/GLES2/gl2ext.h
> +@@ -327,6 +327,9 @@ typedef void* GLeglImageOES;
> + #define GL_RGBX_BRCM                                            0x80EE
> + #endif
> +
> ++#define GL_R8_EXT                                               0x8229
> ++#define GL_RG8_EXT                                              0x822B
> ++
> + /* GL_EXT_texture_type_2_10_10_10_REV */
> + #ifndef GL_EXT_texture_type_2_10_10_10_REV
> + #define GL_UNSIGNED_INT_2_10_10_10_REV_EXT                      0x8368
> +--
> +1.9.1
> +
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 9526fae..1176ef2 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -33,6 +33,7 @@ SRC_URI = "\
>      file://0011-build-shared-library-for-vchostif.patch \
>      file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
>      file://0013-Implement-triple-buffering-for-wayland.patch \
> +    file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch \
>  "
>  S = "${WORKDIR}/git"
>

Merged to master.

--
Andrei Gherzan

