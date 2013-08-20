Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BEDEE01358
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 05:04:27 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id c13so199983vea.38
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 05:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BUV3mmeaIrBsiHiGJwpIUtbAj1l3Jb2cHwVhi6FG0+Q=;
	b=BgOANtunZK20QNc0TfY2XRAoKInQ328/zoAj2l+NoEtPKvzdemedBS+yEJleV55pdi
	YgeCHYQKKYWJbjtKAJspZZ+GtNmtpowofY/paPZpJpMn9iP76Rq08nGTcG+oG7+0CemY
	nG14oDiI+WTmsvrtDvhx6Efr3s5HWlHI9bHXN/9jIjrhyyvFjpwQ8fEUEboGVLh3hDmX
	64kAN9oqJYqIJ06pxV3FivXzDOCM42bbgoXU79Hkw8UOlNSrNO6FpgIwEp1e3jWGGfmW
	wHbhBfZ9ZAnIUUBi79+ClaiHBqgfK0/LXRdFtC5YZxngYh25efIxDgzE67wsSnk7xkx8
	zY0A==
X-Gm-Message-State: ALoCoQlZzhvSQkFUyFDnDydQ9BUlk/3vF/bKvie9SCUPE+1MBq0t5wxRFNGlUmDT6xK0Th3jHnNJ
X-Received: by 10.52.165.111 with SMTP id yx15mr45276vdb.33.1377000266928;
	Tue, 20 Aug 2013 05:04:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 20 Aug 2013 05:04:06 -0700 (PDT)
In-Reply-To: <C0360C54FF104163BE67C2C714409398@PAULD>
References: <C0360C54FF104163BE67C2C714409398@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Aug 2013 13:04:06 +0100
Message-ID: <CAJTo0LYbxT61+Dd_S2f+Det3vk-Fr2q1MgGKOgZ0AM9wxKsaeA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building one package needs header from another
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
X-List-Received-Date: Tue, 20 Aug 2013 12:04:29 -0000
Content-Type: text/plain; charset=UTF-8

On 20 August 2013 08:29, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> I'm trying to build python-matplotlib, which is a plotting package for
> PyGTK, and I need to compile the GDK rendering backend so that I can put
> plots onto the screen. (This is for a Gumstix, and I'm using their Danny
> branch metadata.) The backend source file needs to include pygtk/pygtk.h,
> which is all over the place in the fragments of the target rootfs since
> I've built that for the target system, but isn't anywhere to be found in
> the cross-compilation environment, so the compilation fails.

If you've built pygtk then the target sysroot should have the headers
in, and for me it does:

ross@melchett /data/poky-master/tmp/sysroots/genericx86
$ find . -name pygtk.h
./usr/include/pygtk-2.0/pygtk/pygtk.h

This is probably a problem with python-matplotlib, can you share the
configure and build logs?  It's probably looking in the wrong place.

Ross

