Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C906FE0027E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 11:08:47 -0700 (PDT)
Received: by lboi15 with SMTP id i15so8487746lbo.35
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 11:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2pkmUGJ9tLYldfaF83wm/nMcRMqGRi7G6MRF2RgCWh8=;
	b=u6iegI1epU+38qjrJ7+CviCg3P9NSry6+rR7m6ru8f/UiB8AYCBSnexQGSDX69ucB2
	UQhtJ60n977yyZRo7aulh8T4wZFSRStqwrAFTFsOQhcy60lxLzWiccO7uh11uLNejOoi
	CHCvvVVZslUkGAXGcSYolbi/jf50hCkvUGO43GFeg+8OO73SkLoaQ6xvJQ0ae1KE4xfP
	k/N3lHM6wJ31gSK03sWI7EeLeF17GXmcccETBCGTqRN6rlqZ/XHGRWPFBAZ6cZJ+vNS6
	EIAlGFmuEhZA0xdaXzQKlrSqyBRnWmvid9Aj44De/rOjyPW1jsUP7nHW7NqzcBnCRezv
	66AA==
MIME-Version: 1.0
Received: by 10.112.25.167 with SMTP id d7mr4579042lbg.74.1348510126483; Mon,
	24 Sep 2012 11:08:46 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Mon, 24 Sep 2012 11:08:46 -0700 (PDT)
In-Reply-To: <1411704.42mFN9N5m0@helios>
References: <1716058.TZM8ukYCTx@helios>
	<CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
	<1411704.42mFN9N5m0@helios>
Date: Mon, 24 Sep 2012 14:08:46 -0400
Message-ID: <CAHUNapS-MGXjp1Hm_99awR6QtQYcetFuBexK+xpnZKcAz-Zjdw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 24 Sep 2012 18:08:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 24, 2012 at 12:33 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> IIRC, when we tested the 12.2 pre-release we found we were unable to support
> it due to the following bug:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2201

As you mentioned, this was on a pre-release milestone, 6 months before
the final release.

> If that is definitely fixed and builds run through OK, we should be able to add
> it to our host distro tests and declare it supported.

I just did a fresh test of the quick-start guide and saw a bunch of
warnings, but the build itself completed successfully:

Build Configuration:
BB_VERSION        = "1.15.3"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120924"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:88429f018bbb15749f31067d5e7bf33c21b15f92"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration
find: warning: -path
/home/trevor/devel/yocto/gitrepo-method/build/tmp/work/qemux86-poky-linux/linux-yocto-3.4.10+git1+c5bddf8ea379406ffec550528e17b777a0eba24b_1+59c3ff750831338d05ab67d5efd7fc101c451aff-r4.3/linux/
will not match anything because it ends with /.
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
base_prefix, requires a shared library under exec_prefix (/usr):
libgobject-2.0.so.0 => /usr/lib/libgobject-2.0.so.0 (0xdead1000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
base_prefix, requires a shared library under exec_prefix (/usr):
libgthread-2.0.so.0 => /usr/lib/libgthread-2.0.so.0 (0xdead2000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
base_prefix, requires a shared library under exec_prefix (/usr):
libffi.so.6 => /usr/lib/libffi.so.6 (0xdead3000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
base_prefix, requires a shared library under exec_prefix (/usr):
libglib-2.0.so.0 => /usr/lib/libglib-2.0.so.0 (0xdead4000)
WARNING: QA Issue: udev: /lib/udev/udev-acl, installed in the
base_prefix, requires a shared library under exec_prefix (/usr):
libglib-2.0.so.0 => /usr/lib/libglib-2.0.so.0 (0xdead2000)
NOTE: Tasks Summary: Attempted 1537 tasks of which 1224 didn't need to
be rerun and all succeeded.

Summary: There were 6 WARNING messages shown.

So unless those warnings are host-related I think it's safe to say
openSUSE 12.2 has a base level of support. Is there any definitive
test that anyone can suggest?

