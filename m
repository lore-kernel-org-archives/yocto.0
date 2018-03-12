Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5534CE00E7D; Mon, 12 Mar 2018 11:17:51 -0700 (PDT)
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
	*      [209.85.128.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2626E0081A
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 11:17:50 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id n12so5545231wra.2
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 11:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CGuHzuAAYPlZaXbswSLW5Ne8lUrNqWPQSashhei+c+E=;
	b=UnenM7h9S2ijkRXydppeBwMOdmJtBV3Ja0F+m71Y3NVmYtmH9hsoB+6HHnl2DEWoMh
	0FX5sdDYk/xrn3cJBaJednm5iltSMj8wpEh2qmw0i9VyTPj9ovYV3fAfFzENnXlK6Uu2
	fxS22Mjig0riq9Xgfkaj/cEp4vb/Uz2kb5Uz/ZAbOghQ9xIa+kHpwzBJQT7IFh7srLoe
	p790VCKT1tsUahqPwU73RdLTa2Dnv0STrooEyl02oKADlQMeUgYBwxA+2qJEYPczY5wy
	sCn5T9Ifj3P2AHEN9oJvyLkOCB6K5sNeKfHQxjzFGyKBhYNHA+nXy/K7JcCk0CUD3nNb
	9rYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CGuHzuAAYPlZaXbswSLW5Ne8lUrNqWPQSashhei+c+E=;
	b=A/+AzkyHTu3oap5Sme3FBJKoQfxqtjqhGD0vkJ4AQmqHWaqZEsT3jY6A8hxBHk5t0a
	wj48hF8+MWTN5rp/ZF/0tkTLrt+yAZ0Z+sXIf3TQNffZkiP++W5v1Aw+Cavtn66skauQ
	2FYCzeamo7hLSQMz2oDocabYXp1waVg3f+qWKgGUNAzW4ZdBfsJeyM8DjZK23LcZMdJe
	4lSSkVkeBEdWzwjglS1rzswLGgfu15rImQpyY+S/pdQsKYuRdOyx8391B4z4fR66WUcI
	qynRFebRfG/TLVFmqsbKWOiF7blwPJmmyDyOpvZwyflBh20KapUXgXXStODeIYR5mBKA
	LJUQ==
X-Gm-Message-State: AElRT7GowfEzeaUn2sloZjilQ5oCQnE2Fo7Sdq77Lm0n/xHPiNm4ngal
	qBOB0Ohywo9amwXUICp1wW0wDvYolWXQHGFVMl0=
X-Google-Smtp-Source: AG47ELu6FrHBjquErRc3oGcboF9N4hqnlJeNSAWKN3FDiJB+Krdxs9iX0dFcf0cRvygzSrR/V7GUKtaWaD34EDDuhEU=
X-Received: by 10.223.195.9 with SMTP id n9mr5654346wrf.252.1520878669086;
	Mon, 12 Mar 2018 11:17:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.130.97 with HTTP; Mon, 12 Mar 2018 11:17:08 -0700 (PDT)
In-Reply-To: <CAKYr3zxjvaHuJWSLnAiPH=WV=DiFqM78c=yds3uf_3gDAJJjVQ@mail.gmail.com>
References: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
	<CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
	<CAKYr3zwfPo26gCC40NAgYuC3Cr23KeXUhGO=JLsDZEat8aO77Q@mail.gmail.com>
	<CAJTo0LZ6g01VWHG59yg_PyYBv9VTWih5YEzzNF7YjFP3m7cJeg@mail.gmail.com>
	<CAKYr3zxjvaHuJWSLnAiPH=WV=DiFqM78c=yds3uf_3gDAJJjVQ@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 12 Mar 2018 19:17:08 +0100
Message-ID: <CAKYr3zw5aMftvpoRJ1EBvjsEH4txMTbh1NdapSBg9uOdv7MOdA@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Mar 2018 18:17:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 12, 2018 at 3:59 PM, Outback Dingo <outbackdingo@gmail.com> wrote:
> ---------snip----------

Okay ive confirmed this works, building fine again all the way through, thanks

>
> okay ive updated the makefile with your edits and read the doc, the
> new version is here... is it on the right track ??? much appreciated
> the insight....
> modifications below....
>
> #
> # This file was derived from the 'Hello World!' example recipe in the
> # Yocto Project Development Manual.
> #
>
> DESCRIPTION = "DLT Wrapper"
> SECTION = "libs"
> DEPENDS = "boost libusb1 dlt-daemon"
> LICENSE = "COMPANY_COMMON_LICENSES"
> LIC_FILES_CHKSUM =
> "file://${COMPANY_COMMON_LICENSES}/LICENSE;md5=18f1f6bf24836561f3a65cef19477d20"
>
> CFLAGS += "-std=gnu++14"
>
> inherit cmake
>
> # Use local tarball
> SRC_URI = "file://DLTWrapper.tgz"
>
> # The base package, this includes everything needed to actually run
> the application on the target system.
> PACKAGES += "FILES-${PN}-lib"
>
> FILES_${PN}-lib = "\
>     ${libdir}/lib*.so.* \
>     ${includedir}/*"
>
> # Make sure our source directory (for the build) matches the directory
> structure in the tarball
> S = "${WORKDIR}/DLTWrapper"
> PACKAGES = "${PN} FILES-${PN}-lib ${PN}-dev ${PN}-dbg ${PN}-staticdev"
>
> RDEPENDS_${PN}-staticdev = ""
> RDEPENDS_${PN}-dev = ""
> RDEPENDS_${PN}-dbg = ""
>
> INSANE_SKIP_${PN} = "ldflags"
> INHIBIT_PACKAGE_STRIP = "1"
> INHIBIT_SYSROOT_STRIP = "1"
> SOLIBS = ".so"
> FILES_SOLIBSDEV = ""
>
> do_install () {
> install -d ${D}${libdir}
> install -m 0755 ${WORKDIR}/libfoo.so ${D}${libdir}
> install -m 0755 ${WORKDIR}/DLTWrapper/include/* ${D}${includedir}

