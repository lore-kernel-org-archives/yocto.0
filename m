Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F7D0E00724; Wed, 29 Mar 2017 06:11:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D88C9E00655
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 06:11:12 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id h125so7915102lfe.0
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 06:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=7Rm9hql9CWyOb6gxbENH7az5cfDTOaz0gYt7cyV9gi0=;
	b=x5wVqWxnSqllWhTkU5M7pNcZ5nfMxWbqsQM/dmrZfiLMGd5nLZzMm6JbFW83wielcH
	zW7saL6LuWM3El2zMNTcbBN9IlZufrlHxkNYLdDEoooBz8Rilzd5ORXfze9+3WD4VWG6
	C6uDY7ECuXaMGsHBhAH/9eg/JBk8+ucaEyawUNB7V2ZcjebPs1BaZ9YwcR+yn6n+UcCK
	oE55tgW0vilppoHDUPQ417nnhQh4jCZIPRm3L1sapjsV5GsvS9J2vCmExB66etzrmlHW
	yC/HcTCU8xOLJEMuDt+KhbX0n6okAqP0E4h0J9gG5JNOdHjDbwaz9gmH4AAYoNJr41WK
	bQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=7Rm9hql9CWyOb6gxbENH7az5cfDTOaz0gYt7cyV9gi0=;
	b=WYuMurtCq816hiLFH63CRxDYJVAt4l4NEB9+cvAK4lIiJF/I3pOmFR1QJzR9Z/G/+s
	xun6/jrFMe8+Me2+LfPVxL2n/6k6d+mb1K1Y/DoTz+CNZ5edV9MMETxH+25ywqVky0uF
	3O4lVpuflns+T1LtvviFxxBDwj45Pml7XaBbwDREs6FC1uAE66rPMKRlxUpGr7kg2Wsq
	06Kk1ipfR0JJ+NeP16l6MldD02hKg5GsZN8FarW/7P0UqzTjOru+XmIhxVQO/b51O/y+
	avTqm1ZYpNKO7gzqU6t1Uil8xSHNgIvSzdSxnnayqIxclbSXXGoAJ57sdUYeEv+cmzrX
	EC4w==
X-Gm-Message-State: AFeK/H0tJ2EKTCLTBYkeSJJKkP9I3t++JMpU47De4JUF8NMd6JrY6nx0Pr/ksV71NVbIeg==
X-Received: by 10.25.225.79 with SMTP id y76mr124282lfg.96.1490793071142;
	Wed, 29 Mar 2017 06:11:11 -0700 (PDT)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218]) by smtp.gmail.com with ESMTPSA id
	u128sm1310137lff.4.2017.03.29.06.11.10 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 29 Mar 2017 06:11:10 -0700 (PDT)
Date: Wed, 29 Mar 2017 15:11:08 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170329131108.orqn4tgvxjtcv6hk@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <7c1531b4731e4f4fbed57af401b0f4d4@dettmbx01.intra.ifm>
MIME-Version: 1.0
In-Reply-To: <7c1531b4731e4f4fbed57af401b0f4d4@dettmbx01.intra.ifm>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: how to include a static library in SDK?
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
X-List-Received-Date: Wed, 29 Mar 2017 13:11:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

* Jovic, Vladimir <vladimir.jovic@ifm.com> [170329 11:10]:

> Hello,

> I have a recipe that creates a static library. The directory is as follows:
> example-staticlib/
> example-staticlib/example-staticlib_0.1.bb
> example-staticlib/files/
> example-staticlib/files/lib.c
> example-staticlib/files/lib.h
> example-staticlib/files/Makefile

> Files content is:


> 1.     example-staticlib_0.1.bb :

> DESCRIPTION = "example stared library"
> LICENSE = "LGPLv2"
> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/LGPL-2.0;md5=9427b8ccf5cf3df47c29110424c9641a"
> SRC_URI = "file://lib.c \
>            file://lib.h \
>            file://Makefile"
> PR = "r0"
> S = "${WORKDIR}"
> ALLOW_EMPTY_${PN} = "1"
> do_install () {
>             oe_runmake install DEST=${D}
> }
> TOOLCHAIN_TARGET_TASK += "example-staticlib-dev"
> TOOLCHAIN_TARGET_TASK += "example-staticlib-staticdev"

If you only want this staticdev package, the line above should go into
your *image* recipe, not `example-staticlib`.




> When I do:
> bitbake core-image-minimal -c populate_sdk

Did you ever add:

TOOLCHAIN_TARGET_TASK += "example-staticlib-staticdev"

to core-image-minimal.bb or core-image-minimal.bbappend?

> I can see that the library and the header are in build/tmp/sysroot
> but when I call the generated script in build/tmp/deploy/sdk/ to install the sdk, I can see that the library is not installed in the sdk sysroot. The header is there, but the static library is not.

> I also tried adding this to local.conf:
> EXTRA_IMAGE_FEATURES += "staticdev-pkgs"
> but that also didn't install the library.

Like Ross stated, if you want *all* staticdev packages, you need to add

SDKIMAGE_FEATURES += "staticdev-pkgs"


Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

