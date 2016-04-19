Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71050E00DCE; Tue, 19 Apr 2016 11:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95FA4E008EE
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 11:39:03 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id c20so9333371pfc.1
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 11:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=z4o0jn3MuIhYov/ZXFeAu66DVEQo6rUwYcmXKHM257U=;
	b=nhOCERr/GpswajFvJuRfjPPnowJCFcRt9YC2Ujonki1krmmOV6y6ayI5cC/2UuluuI
	DEO4JDzB6dnBCpT5dE9eyhldZ5fZXPYMlPqYLJ/91mnpH8Lwr5P3JRFEHv7B+ZOF3SEO
	yZKmszGLBHLpUxU81gLyleVKKwQXa5xRlu8yghQ9TzFGzyJ+XRReeqYM+IbkfwPE4QTz
	Ey6UkMtndhJC7S5ej9lnG+3sS4EIrarLdj3r444imFIKzzVB+ShlIO19VwBD9E/q4XdM
	swRV0b2EJ6NgvSjnyS/LkY/QCtP09TivNQkAp5f5lEjilFbEG4lPv/Y+PawQC3IWRlQA
	PZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=z4o0jn3MuIhYov/ZXFeAu66DVEQo6rUwYcmXKHM257U=;
	b=RoJOsLT68VdKM4dfgLuv12ROqfsuwKy4ArMcG4ZeD3PEesSkrNgMPwFVqjUiqbY4c6
	11I2YU93yNTo3n8CjhDrq+PN+B9pRTA03RStoksSWOdes2gUXl1FlZlzp0olZ8Xmk8fI
	OKpAwap7uS5/ZGP55RTgUDuW2J1okWCiC+itXiDY014ZArionOocHvl707WUWJIv5EH2
	iWYJGXBdiV/43ZzXnMzlPucezuJBRAD/ius14dBKNfkYzLkGo3fxX3QUL1ehwC/xMhOj
	UL7nyV8Ffp7g7bZG75d4W2m7ravYPw8FBXfAFdexAqun9le/RP4KOtMTKh3pPSmFP297
	HMIw==
X-Gm-Message-State: AOPr4FXR6mEuEZ+YqrZ88GCRwdKYT7CzKHO0emEUrc7RD00pZhGP9uVc7GZd5zx6YbDjYw==
X-Received: by 10.98.44.72 with SMTP id s69mr6222856pfs.31.1461091142723;
	Tue, 19 Apr 2016 11:39:02 -0700 (PDT)
Received: from [10.43.100.29] ([64.2.3.194])
	by smtp.googlemail.com with ESMTPSA id
	s26sm92564152pfa.0.2016.04.19.11.39.01 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Apr 2016 11:39:01 -0700 (PDT)
To: yocto@yoctoproject.org
References: <54866.10.252.24.10.1461091144.squirrel@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <57167B45.2010000@gmail.com>
Date: Tue, 19 Apr 2016 11:39:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <54866.10.252.24.10.1461091144.squirrel@linux.intel.com>
Subject: Re: gobject introspection release notes
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
X-List-Received-Date: Tue, 19 Apr 2016 18:39:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

thanks for the write up.

- armin

On 04/19/2016 11:39 AM, alexander.kanavin@linux.intel.com wrote:
> Hello,
> 
> here is the information about gobject introspection that should be placed
> to the release notes of the upcoming yocto release.
> 
> 1. Introduction
> 
> This Yocto release adds support for generating and packaging GObject 
> introspection data. GObject introspection data is a description of the API
> provided by libraries built on top of GLib framework, and that framework's
> GObject mechanism in particular. The data is generated when building such
> a library, by linking the library with a small executable binary that 
> asks the library to describe itself, then executing the binary and 
> processing its output. Making this work in a cross-compilation environment
> is difficult, because the library is produced for the target architecture,
> 
> but its code needs to be executed on the build host. This problem is 
> solved in Yocto by running the code through Qemu emulator which allows 
> precisely that, but unfortunately Qemu does not always work perfectly (see
> known issues list below).
> 
> 2. Why all this trouble?
> 
> GObject introspection is nowadays the standard mechanism for accessing
> GObject-based software from runtime environments. If you want to construct
> 
> GStreamer pipelines using Python, or control UPnP infrastructure using 
> Javascript and GUPnP, this is the only way to do it.
> 
> 3. Where does generated introspection data go?
> 
> Gir files go to -dev packages, typelib files go to main packages
> (they are packaged together with libraries that are introspected).
> 
> 4. I don't need introspection data (or Qemu does not work on my
> combination of build host and target architecture), how can I switch it  
> off?
> 
> You have two options:
> a) add
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "gobject-introspection-data" to your
> distro configuration. This will disable building introspection data using
> qemu, but will still enable building introspection tools and  libraries
> (building them does not require the use of qemu).
> 
> b) add
> MACHINE_FEATURES_BACKFILL_CONSIDERED = "qemu-usermode"
> to your machine configuration. This will disable the use of qemu when 
> building packages for your machine; at the moment this feature is
> used only by introspection recipes and has the same effect as option a), 
> but in the future there may be other features that this affects.
> 
> If introspection data is disabled, it can still be obtained through other 
> means (for example, by copying the data from a suitable sysroot, or 
> generating it on the target hardware). Yocto currently does not provide 
> specific support for these techniques.
> 
> 5. How do I enable generating introspection data in my library package?
> (variant: I have a library that no longer builds against latest Yocto  
> release, and build process prints introspection related errors, how to fix
> it?)
> 
> a. Inherit gobject-introspection class.
> 
> b. Make sure introspection is not disabled anywhere in the recipe or its
> includes. Also, make sure that 'gobject-introspection-data' is neither
> 
> in DISTRO_FEATURES_BACKFILL_CONSIDERED, and 'qemu-usermode is not in 
> MACHINE_FEATURES_BACKFILL_CONSIDERED, or nothing will happen.
> 
> c. Try to build the recipe; if this results in build errors that look like
> something is unable to find .so libraries, check where these
> libraries
> are in the source tree and add GIR_EXTRA_LIBS_PATH=${B}/something/.libs to
> the recipe (look at recipes in oe-core which have that variable for a 
> template).
> 
> c. Any other errors probably mean that introspection support in a package
> is not entirely standard, and breaks down in a cross-compilation
> environment. Custom-made fixing is needed then - please come to the yocto 
> mailing list for help.
> 
> 6. How do I test that introspection works in an image?
> 
> a. Make sure that 'gobject-introspection-data' is not in
> DISTRO_FEATURES_BACKFILL_CONSIDERED and 'qemu-usermode' is not in
> MACHINE_FEATURES_BACKFILL_CONSIDERED.
> 
> b. Build core-image-sato.
> 
> c. Start terminal, start python in the terminal.
> 
> d. Type out something like:
> 
>>>> from gi.repository import GLib
>>>> GLib.get_host_name()
> 
> e. Also, try something more advanced, for example:
> http://python-gtk-3-tutorial.readthedocs.org/en/latest/introduction.html
> 
> 7. Known issues:
> 
> - qemu-ppc64 crashes out immediately; so introspection data
> cannot be built on that architecture
> 
> - x32 is not supported by qemu; therefore introspection data is disabled
> there.
> 
> - musl is causing transient glib binaries to crash on assertion failures,
> so generating introspection data is disabled there as well
> 
> - introspection is disabled for some specific packages under specific
> arhcitectures (such as gcr, libsecret, webkit), because qemu is not able 
> to run the binaries correctly
> 
> 
> Thanks,
> Alex
> 

