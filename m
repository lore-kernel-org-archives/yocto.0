Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C19DCE00F67; Mon, 12 Mar 2018 08:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB69BE0106C
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 08:00:06 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id z9so16697804wmb.3
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 08:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O+W9+aC3qzCyYFNmXJyG843WqDKnB33AzXVr5zU85HM=;
	b=E8NX/2HnuGTX59E7HwmmNueHe7S1XL7Aaq+4ZiM8DQcOFf5mABy5Abrj6QaV4iIxVA
	tCjqsNXz1YGbTKDhzfl8cooKZu9vbH7xhxX6mGpSkOwuKzfAm5Ww5Yb2mzq1KjzDxOXb
	4H/f2uYimIx+UZjfAu41gkOSU120uKJli5JN1OPpQvHNwHsdDmqbf8EVgGV5iARaGYoe
	wagzuPyv45KVB2sbhktIp3RtxNX+OTLobtdnXGB9xJC0Fo08UPGQ9eJHCmwguO0CeXrL
	friaFsgpK/S6I2Y/lp0SRQiF0Vl1VFBY0Imava76yuzZCID7MWmkVxxiDXTIdiCF+8pA
	/d5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O+W9+aC3qzCyYFNmXJyG843WqDKnB33AzXVr5zU85HM=;
	b=fXh4fw0aYB5A+JIOYIs/suC+TZ2tcEUiMCuazaZ1G57R1b/tozOypTivpXNJ3+FSbP
	4AYh121p5tgJtZgJ8jETREEPPGqsTpVZqe7cDGOrWpeQkmoscHW8AmjoeVTrNpaDAQkc
	EL2UTuO/L9bbXnoQpBp+NuRGPBcc1hftZamvlvkK1sCOtLuFc2EVEpc6EYo+RcEtOdUR
	ocdHeIORb8oa2B2v3Gtnl2y1nJCRX6p7LNKY95BGqdFd6/Ud1l7gMZO2ZFYm0y0Tl8MM
	1I0mUY8FkKWDszUltwKq8nYQ1cvwBLL5Fy7EhybFV1jcXGJXKIw0+K7ZwKIuazIBLXR+
	TfAA==
X-Gm-Message-State: AElRT7FKl1K3SPWgdSZ+1gmwxLxqNoEY2y8Z8Le190U6mcwW3OzcRNIm
	4g/ADv3ldiv2NzJ3XNTsQDnSw73kOu4RWrwb83U=
X-Google-Smtp-Source: AG47ELv4L7qGypPfulGu4A1YTVCF7heoxe0dG1SjqQlNvA/eg5BUqzZTlAOmjbZCaC2CwfUe+YbwJiIyioq9RqMDnz4=
X-Received: by 10.28.17.77 with SMTP id 74mr5810649wmr.67.1520866805332; Mon,
	12 Mar 2018 08:00:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.130.97 with HTTP; Mon, 12 Mar 2018 07:59:24 -0700 (PDT)
In-Reply-To: <CAJTo0LZ6g01VWHG59yg_PyYBv9VTWih5YEzzNF7YjFP3m7cJeg@mail.gmail.com>
References: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
	<CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
	<CAKYr3zwfPo26gCC40NAgYuC3Cr23KeXUhGO=JLsDZEat8aO77Q@mail.gmail.com>
	<CAJTo0LZ6g01VWHG59yg_PyYBv9VTWih5YEzzNF7YjFP3m7cJeg@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 12 Mar 2018 15:59:24 +0100
Message-ID: <CAKYr3zxjvaHuJWSLnAiPH=WV=DiFqM78c=yds3uf_3gDAJJjVQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "Yocto-mailing-." <yocto@yoctoproject.org>
Subject: Re: Function failed: do_package_qa
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
X-List-Received-Date: Mon, 12 Mar 2018 15:00:08 -0000
Content-Type: text/plain; charset="UTF-8"

---------snip----------

okay ive updated the makefile with your edits and read the doc, the
new version is here... is it on the right track ??? much appreciated
the insight....
modifications below....

#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#

DESCRIPTION = "DLT Wrapper"
SECTION = "libs"
DEPENDS = "boost libusb1 dlt-daemon"
LICENSE = "COMPANY_COMMON_LICENSES"
LIC_FILES_CHKSUM =
"file://${COMPANY_COMMON_LICENSES}/LICENSE;md5=18f1f6bf24836561f3a65cef19477d20"

CFLAGS += "-std=gnu++14"

inherit cmake

# Use local tarball
SRC_URI = "file://DLTWrapper.tgz"

# The base package, this includes everything needed to actually run
the application on the target system.
PACKAGES += "FILES-${PN}-lib"

FILES_${PN}-lib = "\
    ${libdir}/lib*.so.* \
    ${includedir}/*"

# Make sure our source directory (for the build) matches the directory
structure in the tarball
S = "${WORKDIR}/DLTWrapper"
PACKAGES = "${PN} FILES-${PN}-lib ${PN}-dev ${PN}-dbg ${PN}-staticdev"

RDEPENDS_${PN}-staticdev = ""
RDEPENDS_${PN}-dev = ""
RDEPENDS_${PN}-dbg = ""

INSANE_SKIP_${PN} = "ldflags"
INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_SYSROOT_STRIP = "1"
SOLIBS = ".so"
FILES_SOLIBSDEV = ""

do_install () {
install -d ${D}${libdir}
install -m 0755 ${WORKDIR}/libfoo.so ${D}${libdir}
install -m 0755 ${WORKDIR}/DLTWrapper/include/* ${D}${includedir}

