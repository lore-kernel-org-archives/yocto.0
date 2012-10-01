Return-Path: <daniel.toussaint@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF9DE013A6
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 20:06:51 -0700 (PDT)
Received: by obhx4 with SMTP id x4so6064841obh.35
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 20:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=yG5lnAvRgYhi78/Y94tVA/v1jXM++ABVKaGlH8UgSTs=;
	b=hwbC41+O593nILu+q9G2sIFNEX48sWXzrVZCXC208l7+Kcoki2aQEwSgaLs5wkvUdE
	piBBgH+oXNdhlaK/kb6PvvCukrfAEAVGsdTQBOUUd5TfDdDigikwrWWp2kYLJQ/2n/T/
	WcNKiqRgcLwYU527+rF9RTnQ+ml5WxckJAoVA5m7Vi3/QqUW4ontu6PznglFPKn2mCcf
	1aEY/YZOOvgP/dlZK9CoaQD/WVWdJba3b0Dts2j7+cJm7eSJgF6/qRRTz7Hd12ydSsWo
	7ilrKHr1v05n1pNvY+L5D9CDA2SlOM28GXz/pWJgMMRzVAW1CLAn+H1wTOSlGkuoA9wz
	pmhQ==
MIME-Version: 1.0
Received: by 10.60.19.195 with SMTP id h3mr10559682oee.102.1349060811143; Sun,
	30 Sep 2012 20:06:51 -0700 (PDT)
Sender: daniel.toussaint@gmail.com
Received: by 10.76.11.40 with HTTP; Sun, 30 Sep 2012 20:06:51 -0700 (PDT)
In-Reply-To: <1349028546.27656.5.camel@empanada>
References: <CADVYk4R5Otcqasgxo5uNMmx=KCgeu2G+JbUH82wP-BQvsAdASA@mail.gmail.com>
	<1349028546.27656.5.camel@empanada>
Date: Mon, 1 Oct 2012 11:06:51 +0800
X-Google-Sender-Auth: 6uCFhN18XCziNOkdyG2f50ZHBDI
Message-ID: <CADVYk4S8joOguxB48K+FBE3DojBdE6H8YzDcGcuMXkRC9rVceQ@mail.gmail.com>
From: Daniel Toussaint <daniel@dmhome.net>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Replacing xorg.conf in my custom layer.
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
X-List-Received-Date: Mon, 01 Oct 2012 03:06:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Tom, that solved it right away.

On Mon, Oct 1, 2012 at 2:09 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Sun, 2012-09-30 at 23:45 +0800, Daniel Toussaint wrote:
>> I have my own custom layer on top of Yocto. My layer provides a custom
>> machine , custom image and a couple of applications that go into it.
>> My problem : Nomatter what I do, I can't get my own custom xorg.conf
>> into the image - everytime I rebuild, I end up with the one from the
>> Yocto recipe.
>>
>>
>> I have created a new recipe in my layer :
>>
>> recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend :
>>
>
> Hi,
>
> I just sent a patch yesterday to fix similar problems in some other
> BSPs.
>
> The fix was to replace this:
>
>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>>
>
> with this:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> Can you try making that change in your layer and see if that helps?
>
> Tom
>
>> Then in that recipe's  directory a new directory called
>> "xserver-xf86", and in turn a subdirectory named after my machine
>> name. That directory contains my xorg.conf
>>
>> I have copied the above information from other Yocto recipies that
>> seem to work.....hopefully someone can point out my mistake or
>> something that I am missing.
>>
>> Thanks a lot.
>>
>> (Below some extra info that might be helpful in finding the problem)
>>
>>
>>
>> Image definition:
>> -----------------------
>> IMAGE_FEATURES += "apps-console-core x11-base xf86-video-fbdev
>> apps-x11-core package-management"
>> IMAGE_INSTALL += "gox task-core-boot task-base-extended  python
>> qt4-plugin-sqldriver-sqlite qt4-plugin-phonon-backend-gstreamer
>> python-threading python-io python-datetime"
>>
>> LICENSE = "MIT"
>>
>> inherit core-image
>>
>>
>>
>> Machine definition :
>> -----------------------
>> MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>>
>> IMAGE_FSTYPES += "tar.gz"
>>
>> KERNEL_IMAGETYPE ?= "bzImage"
>>
>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>
>> PREFERRED_PROVIDER_virtual/libgl  = "mesa-dri"
>> PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
>> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
>> PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
>>
>> XSERVER_IA32_BASE = "xserver-xorg \
>>            xf86-input-mouse \
>>            xf86-input-keyboard \
>>            xf86-input-evdev \
>>            xf86-input-synaptics \
>>            mesa-dri \
>>            "
>>
>> XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
>>            xserver-xorg-extension-dri2 \
>>            xserver-xorg-extension-glx \
>>            xserver-xorg-extension-extmod \
>>            xserver-xorg-extension-dbe \
>>            xserver-xorg-module-libint10 \
>>            "
>>
>> XSERVER_IA32_I915 = "xf86-video-intel \
>>            mesa-dri-driver-i915 \
>>            "
>>
>> XSERVER_IA32_I965 = "xf86-video-intel \
>>            mesa-dri-driver-i965 \
>>            "
>> XSERVER_IA32_FBDEV = "xf86-video-fbdev"
>>
>>
>> XSERVER ?= "${XSERVER_IA32_BASE} \
>>            ${XSERVER_IA32_EXT} \
>>            ${XSERVER_IA32_I915} ${XSERVER_IA32_FBDEV} \
>>            "
>>
>
>



-- 
Gtalk: daniel.toussaint@gmail.com
Skype: supertoussi
Cell: +886-915-680-291

