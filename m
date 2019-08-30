Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F9EE00E00; Thu, 29 Aug 2019 23:41:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E067E00929
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:41:38 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id m2so5207608qkd.10
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oqr9uxjRQoJ/39pRr/HwFLi8beHPrOfFyhVokGDS/3o=;
	b=N9nOZGsaLVaJNIxGH11xIWxAzmWxwT/mjvPEzj4xnXpIYm6GnHVGrhSBcZwzNG8nBh
	F2IYukT2tTLR/hm50XQ99J1ZpstemMKv09RYDyUtc92hxi7LvMhLe+BGvVijXxPM4KtB
	h8NMtS8bXbUIKFzuSDjAHA2iq1vhaPYquH/hleLbKtc0uzHhewQ+purUWwlnuPg+Kj6K
	xe6/lRFjeuFW+XewvClDU2kvy+CTYPQLhmpMP2Ee8IYGv/4RXV1q1NWZTuzv7kImKHbd
	JqjdBZgAQcT4jux7zNtdwMBeeCihSL5kgQQ9pripSN7ZkjQLFHiQksKzRuWCsWh77pk5
	gPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oqr9uxjRQoJ/39pRr/HwFLi8beHPrOfFyhVokGDS/3o=;
	b=ZHCOLJ0pFbtqpbQ967zdUnxjeZEjDNUhQcIxwRX8S5ACFpcIcKReAESVVHUgya6mzn
	29pXaclunOfJOmLnIYJJshJZ1kBCDZFx9ZzRkOoc1/dQc+4/uBpEIxAey8Qh6Tediynu
	TSVXDbSp1mC+GAuW0Njf+O0fQkdyN+7Msgfz/mKZOmKqxHTal4tKwwdU/iWYL5akPl3Y
	u6BWotowmticw38a1x0raPiQrrcacAfPBKxYwi8XD/WDtZJCB9g+Huo+7aFZe+dKUPLe
	Bzz2pkvP/pRGXJj6erAEmOewKszE5/0e/uVTr3XsF8BCSFG5b5WrbKMZJ8HilZnv46iP
	Ui1Q==
X-Gm-Message-State: APjAAAUNCsuNGxIdTlRTvgZ+jhuOKtbWP3QsOsbDgFvuBWyTCubkxdMb
	Qxue4qc8WwHf85dGPBIZg0adzSQ/MYgY4jbliCRvUt/B31Y=
X-Google-Smtp-Source: APXvYqygCVinfQB3sj2z1OYEM573WLf+vQc19vOCl/2idcYb8jP4CHhF0vFBotNAFHN29Fsgkq+z5eeDwOafuPlHyrY=
X-Received: by 2002:a37:a44f:: with SMTP id n76mr2518007qke.414.1567147297553; 
	Thu, 29 Aug 2019 23:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH0y8_xLhwLY7ns-NSEaPdBE39kvxF2RFH-pQz0_-rQROw@mail.gmail.com>
In-Reply-To: <CAEFUPH0y8_xLhwLY7ns-NSEaPdBE39kvxF2RFH-pQz0_-rQROw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 30 Aug 2019 08:41:26 +0200
Message-ID: <CAGAf8Lx6Qx27xcfnLW=Z0cp+D1CdiTA0Y7fM6WEvOp=PotsWEQ@mail.gmail.com>
To: SIMON BABY <simonkbaby@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Issue: Files/directories were installed but not shipped
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
X-List-Received-Date: Fri, 30 Aug 2019 06:41:39 -0000
Content-Type: text/plain; charset="UTF-8"

Maybe this web pointer to similar problem can help you (as a reference
examlpe)?!

https://yocto.yoctoproject.narkive.com/20hVZuCp/files-directories-were-installed-but-not-shipped

Zoran
_______

On Fri, Aug 30, 2019 at 7:21 AM SIMON BABY <simonkbaby@gmail.com> wrote:
>
> Hello,
>
> I am getting "ERROR:  QA Issue:  Files/directories were installed but not
> shipped". Can you please help to resolve. My logs and bb files are below.
>
>
> ERROR: QA Issue: zipcpp: Files/directories were installed but not shipped in any package:
>   /usr
>   /usr/include
>   /usr/src
>   /usr/lib
>   /usr/include/zipc.h
>   /usr/include/logger.h
>   /usr/include/fmt
>   /usr/include/fmt/format.h
>   /usr/include/fmt/ranges.h
>   /usr/include/fmt/printf.h
>
>
> bb file:
>
>
> #
> # This file is the zipcpp recipe.
> #
>
> DEPENDS = "zeromq cppzmq"
> SUMMARY = "ZeroMQ based IPC C++ library"
> SECTION = "base"
> LICENSE = "CLOSED"
>
> SRC_URI = "git://git@elsvsapp02/TDY/ZIPCpp.git;protocol=ssh;branch=develop"
> SRCREV = "${AUTOREV}"
>
> S = "${WORKDIR}/git"
>
> LIB_ARTIFACT = "libzipcpp.so"
> LIB_VERSION = "1"
>
> do_install() {
>     install -d ${D}${libdir}
>     install -m 0755 ${S}/bin/${LIB_ARTIFACT}.${LIB_VERSION} ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
>     ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION} ${D}${libdir}/${LIB_ARTIFACT}
>     install -d ${D}${includedir}
>     install -m 0644 ${S}/include/zipc.h ${D}${includedir}
>     install -m 0644 ${S}/include/logger.h ${D}${includedir}
>     install -d ${D}${includedir}/fmt
>     install -m 0644 ${S}/include/fmt/* ${D}${includedir}/fmt
> }
>
> #do_install_append() {
> #    rm -r ${D}/usr/share
> #}
>
> FILES_${PN} += "${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}"
> FILES_${PN} += "${libdir}/${LIB_ARTIFACT}"
> PACKAGES = "${PN}"
>
>
> Rgds
>
> Simon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

