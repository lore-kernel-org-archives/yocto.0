Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72978E01342
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:17:27 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id fs19so2332999vbb.30
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=WHScM1uxvsE/Qpt9jO3MscA/igqLlsomSFci7Wd6CkU=;
	b=WJ+pXiNpkLXrq+BeFaGNpVYoEt/j5AmS4U+jD7tV9ZP/2aP4Z13jvOZKZ6ECyR8Gsd
	kCZyRMTkTD9TeSjvo8EV+kXlP+yIiIvmGzOVnKCvvInSauxy4b0030BiIOowrNrK41bU
	LKZQflPey7Cxh4I1eOUdvEXUwDDFQXtZROVFq+OOPnqPEppxAZUAG3jIV6X2izf3+Oiu
	qsY3IeM8Qxt4gRApsH+X99CpEP9zgPJ4t1ufZbP1C2RWmvL9rosYNj/HE9Y1617IQLDM
	OxYGFaF2oL4knw8SpOn3tWJA3tT4Xlpv1m7f/Lu/XwHgTz+o6dfssVPQvwmrLXkLaV99
	BYaQ==
X-Received: by 10.52.230.197 with SMTP id ta5mr3579812vdc.103.1363101446756;
	Tue, 12 Mar 2013 08:17:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.232.226 with HTTP; Tue, 12 Mar 2013 08:17:06 -0700 (PDT)
In-Reply-To: <20130312150751.17B58E01466@yocto-www.yoctoproject.org>
References: <20130312150751.17B58E01466@yocto-www.yoctoproject.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Mar 2013 08:17:06 -0700
Message-ID: <CAJTo0LbX-o5C5HMKPPLjYyqnQoHUy+cW+ySYjE7ad5jRtAxbnQ@mail.gmail.com>
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
X-Gm-Message-State: ALoCoQmuz2I09b4ZA5fn47sEzR+YgPu8QM+iYSIwG6d2bvSF+HCZvK8Iuk5WmAX/RA0y/kM2KeWj
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Makefile package missing
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
X-List-Received-Date: Tue, 12 Mar 2013 15:17:27 -0000
Content-Type: text/plain; charset=UTF-8

On 12 March 2013 08:07, Saridakis, Dean   (US SSA)
<dean.saridakis@baesystems.com> wrote:
> I have a recipe for a set of simple user applications I need on the rootfs.
> However, my application package was only built w/ -dev & -dbg suffixes
> (whereas it looks like everything else also has a 3rd package w/o any
> suffix).

You're installing into /usr/local/bin but not adding those files into
the package using FILES_${PN}.  The default value of that will pick up
most relevant files in the prefix, but you're not installing into the
prefix (if you uncommented the my_bindir=${bindir} line, this should
work).

It's best to always respect the distro policy and use the variables
such as bindir, datadir, libdir.  You're files will go to the right
places and the default FILES_* variables will be used.

Ross

