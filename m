Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6CC9E01137; Thu,  5 Jul 2018 03:59:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5899E00CDE
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 03:59:42 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id v8-v6so16026411oie.5
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 03:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fXZtrm7ndDchjHnGTY9OW08si9Foka+ldry90GQvVbs=;
	b=aI+axNZRUAmMtz4cLVN8RMJc5q4MbvccpYrf2ddldp0G+tR8+cgv8wDhs317Cp2WLX
	VsIxs8UNUpXqmkQjVmLBxfcyff+F5Og5Rdyf3kCYqkAg9k9PS+NVCPm8K0VBwUJoMWli
	zXhLFF0/Zscu2NDqeB35iWN7kskeOTjvlE71pbIfvoW9tomxmNaYdREEoxM1vYTuLeIG
	WmdRZ2hZMfJqtZ6fsa1GXXsUJN3rFvlb2liGe4BZarIdkVqUazz6oWnBIzjAdaWIJ/uF
	ajiUoC9hTLt3w38xXPFu17dHmPfsHjXjLRRnviURn88T38DTXROKwTYmw1Skh4t4UqC5
	cKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fXZtrm7ndDchjHnGTY9OW08si9Foka+ldry90GQvVbs=;
	b=VbX0im5AUlOEMWr3OcVSASlUBj+LcseCSvog7v6SYoCyh76YPLpm6Sn9bU2viyOLZs
	2QMwuxLucDJjIICJPSAqvNcgNiINmHgE01Z3RGP+6CXsF3feevuqQQUIOo2+G7jQOOev
	kEkfqcB+QlE7JvLYKsgkIhEoFjQoD3UdUYytfxdGd3zqvdrHH5ILs3l9L7wBqdNpaewC
	I2ZLhR73M2pJyX3iFgW/T4yqbt4TbUDnZMA8Il5HcvpVU0ZL2BJrXX+3IT7Lx7yjuGJA
	CaHsR6r7JlHV11WF7qHZglQg3bHpJttjhwaCn5EJfw1keb4gP161uGM1cu1lgJ1s6iKX
	pgqA==
X-Gm-Message-State: APt69E2v/1qY0X9pMieT5f1hjyFXsz3F7WD2wwaP/pWEyfVXuc7loRIJ
	+fiJDKWaofdbjTzLTJsJiU7qbO/XepAVDyykZ5pdhw==
X-Google-Smtp-Source: AAOMgpcXWRz8Zn6q2mBLujdjTf79Sd0EJhUq0eqy8m6PE88fAuwuI5GXI3jYoP3vz19d7yQY6gonKCi1rmJ3zTonWkw=
X-Received: by 2002:aca:e715:: with SMTP id
	e21-v6mr6516200oih.18.1530788382212; 
	Thu, 05 Jul 2018 03:59:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 03:59:21 -0700 (PDT)
In-Reply-To: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Jul 2018 11:59:21 +0100
Message-ID: <CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Thu, 05 Jul 2018 10:59:43 -0000
Content-Type: text/plain; charset="UTF-8"

On 5 July 2018 at 08:26, Oliver Westermann <owestermann@gmail.com> wrote:
> I'm fiddeling around with yocto. I want to move some python stuff onto an
> embedded board and use the nxp mx8 yocto. Everything worked as expected
> until now, I was able to create yocto recipes for python modules like pyv4l2
> (is there any interest for recipes like these to be commited to
> meta-python?).
>
> Now I wanted to install pillow for some image manipulation, but whereas
> other python module recipes worked fine, this one fails and I don't
> understand why.
>
> Yocto reports missing setuptools:
>
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | NOTE: make clean
> | python setup.py clean
> | Traceback (most recent call last):
> |   File "setup.py", line 22, in <module>
> |     from setuptools import Extension, setup
> | ImportError: No module named setuptools
>
> I've googled around and everything suggests that inherit setuptools3 is
> missing, but it's present in my recipe. This is my python3-pillow_5.2.0.bb:
>
> SUMMARY = "Pillow (The friendly PIL fork)"
> HOMEPAGE = "http://python-pillow.org/"
> LICENSE = "EPLv1"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=c6379001ecb47e2a0420c40177fc1125"
>
> SRC_URI[md5sum] = "52d93a34f4180abcff04876f23eaa9b9"
>
> PYPI_PACKAGE = "Pillow"
>
> inherit pypi setuptools3
>
> BBCLASSEXTEND = "native nativesdk"
>
> Any idea whats missing or what I am doing wrong (other than that the license
> line is incorrect)?

Oh, that's a fun one.

So setuptools/distutils/etc doesn't have the concept of a "configure"
phase but it also doesn't remove the default implementation.  The
default implementation will try to do a 'make clean' first to remove
existing build artifacts.  Normally this does nothing with Python code
as there's never a Makefile, but pillow has a Makefile.  This makefile
does 'python setup.py clean', which is running the *host* Python2 and
you don't have distutils installed.  So, it fails.

Three solutions in order of hackiness (more to less)
1) Set CLEANBROKEN="1" in the recipe to stop the clean happening
2) Nullify do_configure in the recipe with do_configure[noexec] = "1"
3) Override do_configure in distutils3.bbclass to call setup.py
directly to do a clean in do_configure

I'd say do (1) in your recipe and I'll send a patch for (3) to oe-core.

And yes, this recipe would be very welcome in meta-python.

Ross

