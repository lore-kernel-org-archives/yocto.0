Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53909E008A2; Fri, 23 Mar 2018 12:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F4D2E007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:53:33 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id k135-v6so3952093ite.2
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Kl02KuEvwvSd7XlAAb8eRpScUVY0DSTlJ633baFdN9Y=;
	b=kBmJrPHPrqBGDO0iDfCW3e23dwWQuQU2dlJ2Eadiu9SOyWV8mFgHc0Fldw54v7nTO0
	4zYsXHoS6frPhPvX+YzatJfMvQ7H1e0LasihsswOo4napNPVkomfVgPob2L4ZG4oaw+7
	DX8ibI64M5ijT2NrKbTEf/JUXY5wPXMb4CyedU6MzG5fjMIcLTbhkoi9mdCiQu0jhAha
	X71AfobEmb3NsVq8vD3qhdr3BxH/cnV2r6TwntUKBjJcGAWhiXdJBRkpSOp4DqMpucM4
	V130H0qRGPdP98mUDqBwgsL3BXZBFc0qC8c3ybWBEa6v5rQsCcTeaMesA50R2uQdLolu
	GWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Kl02KuEvwvSd7XlAAb8eRpScUVY0DSTlJ633baFdN9Y=;
	b=SteQ6IAqPzh5AFHkgy4uitqAs57y7xLEH+AIbr7MX7yaa71xJ+dgPDXfGTuQKK5P4o
	pGu30hP25msiKCT6sR6ViZTcDafA/jMMDdWEwgOFqHfZN1MAGdkWMaMxczGY4UM6aCB0
	NuyYKwC+u6QxHigVzdx1BXW788dE4wg21J4ctsLbP1oF9ylA5fKpOoEScIHxaVfLr1Rr
	7HmfJ7WKrGqY8+7pKhX3BuGJ3lokuYvq51D9tZIKIVAWXDVe8zA2Gmo0gUdC6tL0FSyL
	PVrWfUCeQUvND5w8phiTY6qmcoRmSlRJRmZ48boZhjARRw8ubP0Pe65PX4mHrduYscBo
	dfPg==
X-Gm-Message-State: AElRT7HppFxSuQiehAEhXV4Md3GdJc7o8TKuS6veskvoMGu+EDycK+IX
	FsEv4MFg1cT2EpV5JygdKkPhJBvGNbvcIlhJIQ3mPQ==
X-Google-Smtp-Source: AIpwx4/dH6tckLidh0H3Ds9eXpoadl0PBUDj46qH83Df91T+YHIU9bWIEoicy8knhcqmFb3M/sT0BI+KPb794eHz2DU=
X-Received: by 2002:a24:4c0e:: with SMTP id
	a14-v6mr14396309itb.34.1521834812581; 
	Fri, 23 Mar 2018 12:53:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 23 Mar 2018 12:53:12 -0700 (PDT)
In-Reply-To: <CAFzUWGk1kpvN-Ujnk8YwUKb4=jFAdv6bQqEBRLVnQ-6+4JA+gQ@mail.gmail.com>
References: <CAFzUWGk1kpvN-Ujnk8YwUKb4=jFAdv6bQqEBRLVnQ-6+4JA+gQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 23 Mar 2018 19:53:12 +0000
Message-ID: <CAJTo0LbF8nq5ZviSQobOushx_kGZV2FbR6zWNqpb0H2cUnaDkA@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: No module named setuptools -- even with "inherit setuptools"?
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
X-List-Received-Date: Fri, 23 Mar 2018 19:53:34 -0000
Content-Type: text/plain; charset="UTF-8"

Should work, as the setuptools class depends on
python-distribute-native which is provided by
python-setuptools-native, and the class also inherits pythonnative so
it should be running the python from the sysroot and not the host
python.

I'd verify that it's not explicitly running /usr/bin/python at some
point, instead of the python binary in $PATH.

Ross

On 23 March 2018 at 18:46, Giordon Stark <kratsg@gmail.com> wrote:
> Hi,
>
> I'm a bit perplexed. I don't know what I'm doing wrong here, but this is the
> log data:
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | Traceback (most recent call last):
> |   File "setup.py", line 2, in <module>
> |     from setuptools import setup
> | ImportError: No module named setuptools
> | ERROR: python setup.py build execution failed.
> | WARNING:
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/run.do_compile.3286:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/log.do_compile.3286)
> ERROR: Task
> (/local/d4/gstark/meta-l1calo/recipes-python/python-construct_2.9.39.bb:do_compile)
> failed with exit code '1'
>
> with the recipe looking like this... (below). Any ideas?
>
> DESCRIPTION = "Python declarative parser for binary data"
> HOMEPAGE = "http://construct.readthedocs.org/en/latest/"
> SECTION = "devel/python"
> LICENSE = "BSD-3-Clause"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=3fd0f2c25089e629957285e6bc402a20"
>
> PYPI_PACKAGE = "construct"
> inherit pypi setuptools
>
> SRC_URI[md5sum] = "39407f91407138f687ea2ecf8d758a1f"
> SRC_URI[sha256sum] =
> "c23ef47fd5751d821e5c17d9b3b02d1f3c465e66b8a205b9c791c4abef747138"
>
> DEPENDS = "python python-six"
> RDEPENDS_${PN} += "python-lang python-shell python-six python-debugger"
> --
> Giordon Stark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

