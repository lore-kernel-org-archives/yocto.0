Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E04DEE00717
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 06:05:02 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 06 Sep 2012 06:04:56 -0700
Received: by obbtb18 with SMTP id tb18so2955924obb.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 06:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ckYgebVmGoU+m9y8A6g8xSg5euOn/pJi857UvtMmVj4=;
	b=Pxors6HfJCnfIBuc+HZHfrw25iOEvhm86Ji3DHNUmYeJpDqVik6hm9lAoQTXaH+RF1
	8AhY+OTslGrJfgZmrmD8X0kTVVVpUYCjRT9Uv06GfMFw4rHcZ1vtFu9/9SY58gxabzsw
	HnzFauC4R41CsR2yswb6Of3NcpKrPgN88LBwSxvnF1sv1aF4aUuDx6kbygQIzhuDFMBB
	ndSXTk+s75C9qt4oYs16r9LgvEBTFfsHyUWBJ1rrdJGUY001lxZBfOGWWkb7bwyEuDOp
	nGMmRkSTLMW29ctfYsflKITx7TjRdKG3Eghi13tBJ0HoDVsuQmnnbLKK2ALYaMFf9+oG
	k+Dg==
Received: by 10.182.154.70 with SMTP id vm6mr1920151obb.50.1346936701517; Thu,
	06 Sep 2012 06:05:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Thu, 6 Sep 2012 06:04:41 -0700 (PDT)
In-Reply-To: <CAK18fxEb3gjEEwhvN-du3eJvgUVCbjXU2Ag4kicFFDt6xra6og@mail.gmail.com>
References: <CAK18fxEb3gjEEwhvN-du3eJvgUVCbjXU2Ag4kicFFDt6xra6og@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Sep 2012 14:04:41 +0100
Message-ID: <CAJTo0LYmPf0g_qv6X+8MefjzfWr4gsr33SaszHsG82PiGg+oEg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQlm5O/xcHbCqAzjXLStKUkY32uGlT6a/8wREdPpsdRCmxUyBNmkpLftyYinSZ4oW+JuNz/F
Cc: Yocto Project <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: opengl / libgl / libgles
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 13:05:03 -0000
Content-Type: text/plain; charset=UTF-8

(CCing oe-core, discussion should happen there really)

On 6 September 2012 11:00, Andrei Gherzan <andrei@gherzan.ro> wrote:
> In DISTRO_FEATURES we have opengl. That is pretty vague and generally we
> don't want to have mesa on machines where there is no libgl but only gles +
> egl. For example if we want to compile something that adds a DEPENDS based
> on DISTRO_FEATURE opengl, this dependency will be added even if there is no
> libgl implemented for that specific machine.
>
> First idea would be that opengl (gl / gles) are machine related. On the
> other hand opengl can be a DISTRO_FEATURE as we have a software
> implementation - mesa.
>
> How would you guys see a solution for this? The idea that came into my mind
> was to map opengl to libgl or libgles. Or to both if there is the case.

(First I must apologise for the uneven flow of this mail - my mornings
been pretty choppy but hopefully people can see what I'm thinking)

I've been thinking about this quite a lot recently, as the current
setup is broken in some way on most hardware.  There is a bigger
problem than just distro or machine features - the packaging isn't
obvious or correct either.

First, we need a concrete definition of the "opengl" distro feature.
I propose just "some form of OpenGL functionality" without any
implications about what specification is present.

Then, machine features for the portions of OpenGL that the hardware
supports - gl, gles1, gles2.  I'd love to say "gles" means GLESv2 but
I suspect we're not quite safe from the horrors of hardware that only
supports GLESv1 yet.

We then need more virtual providers for the GL libraries.  Mesa is an
obvious provider - it provides libgl, libglesv1, libglesv2 and libegl.
 On Raspberry Pi the binary drivers provide libglesv1, glesv2, and
egl.  As the performance of the software renderer will be terrible,
unsetting the libgl provider makes a lot of sense.

Because there are multiple providers of the GL libraries, and they are
not all specific to a single machine, every package that provides GL
packages need to be namespaced.  The Debian-renaming makes this
trickier but luckily it can be overridden in the recipe, so Mesa
should be building libgl-mesa, libegl-mesa, and so on.  Every other
provider of the GL libraries should do this too.

Library dependencies are also broken, of course.  A package that links
to libGL.so.1 shouldn't get a dependency on mesa-dri or whatever was
installed to provide that library, but a dependency on a virtual
"libgl" package.  As far as I'm aware this isn't something that the
automatic shlibs dependency generation handles, but there is plenty of
prior art for this.

Finally we can talk about packages.  Take xorg-xserver, this can
optionally support the GLX extension.  If the opengl distro feature is
set then it can pass --enable-glx (I've a patch for this[1] already).
GLX requires GL so on Raspberry Pi this will mean building mesa and
using the software renderer which really isn't a good idea, so that is
a strong argument for making the xserver machine-specific and checking
both the opengl distro feature *and* the gl machine feature.
(side-note: GLX is deprecated, use EGL!)

Maybe I need to spend tomorrow morning writing my scribbles down into
something more organised on the wiki, after the collective wisdom of
oe-core has pointed out why this plan is stupid.

Cheers,
Ross

[1] http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=ross/xorg&id=e7b034379026457f291356e181c6a9ecd7fdb23b

