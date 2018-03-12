Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47BDCE00DC9; Mon, 12 Mar 2018 06:36:04 -0700 (PDT)
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
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AEB3E00A54
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 06:36:02 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id m4so2911131wrb.7
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 06:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oCBc9rXxbyQBxHoV9NzgDWpCgm8a91z503Vq5CYhUFk=;
	b=IgT3o/nBMVX83ZpIfq4RTecEuyELgMunxCkME7Lf2sXCrecE3YZfJ3RptpMBYzuw2i
	Mu23+nwI/+ckXfN3DYYSNEwh677r0hWeg5if7R73TC43x2VpWnErGS5KfgANM6UA2tEm
	TfXGjyTBho51HrtPQ/35GZoDAeczCb2KkrXMLMjqHMc2aGlJk6V1IqyGPaKBL2mnnlBN
	708tFKW5sg/KMoEGvI/GSMFNAkNG1F3o/K+qskxs9nnXhjyPLN6wmj/2cTsZZD8i8LIc
	EcEM6ftHOjKlJRWMpMrEJS+HLCM3Giti9oISojmM7XE7T5zy5pIv4PW0jkzFaFfZeSp1
	ttDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oCBc9rXxbyQBxHoV9NzgDWpCgm8a91z503Vq5CYhUFk=;
	b=jc+8DSds469K+cdCaZEeuKE44uH3xaWeCzGpNrHAdfLdpyvJWN0icIOEe3LT+LrEEP
	M4tK/d/fe5cuY1LC//Xtj3v8P63L1/PwvGNBV2bsKrld5zWbGR2Gmzo1ExA9qGenNbEa
	PaO6wFggMECoxvVIHSOkewCvUf53nzv4sBRVL74j+pj3j1GnNdK42huYmjA+kTiSt6CS
	ZWruEXJom76GzzcqKoSFnXpcgSQdBYOqwZAEbJiVb/kFQ5bVixgYsOcnxMbS6UkbGHDB
	95kH99gdh9zArELh8t3mpyZKUCB5lys2xbsqfzQhXv+Ucqy3ts2ZwOlE9RdG5oL1fsSS
	yAkQ==
X-Gm-Message-State: AElRT7EO0MJFTY4mjqDvXrKIZW27rKYfTqXuL2rN6IOEeBll3Hc+C+NY
	y19BNMdzAj2gU9tt7Fndpb0/Orj/xIt/fbNEkbY=
X-Google-Smtp-Source: AG47ELv/iUEV6980iakjqqmRdIt2DNlpyN3JbFctp4QknErzI6mdicfoCf4QlZyp/cJXR9wYF/JIMTv9W7dBpl314oU=
X-Received: by 10.223.199.10 with SMTP id k10mr6180177wrg.186.1520861761924;
	Mon, 12 Mar 2018 06:36:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.130.97 with HTTP; Mon, 12 Mar 2018 06:35:21 -0700 (PDT)
In-Reply-To: <CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
References: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
	<CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 12 Mar 2018 14:35:21 +0100
Message-ID: <CAKYr3zwfPo26gCC40NAgYuC3Cr23KeXUhGO=JLsDZEat8aO77Q@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Mar 2018 13:36:04 -0000
Content-Type: text/plain; charset="UTF-8"

Well heres the dltwrapper bb file it appears to build fine
#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#

DESCRIPTION = "DLT Wrapper"
SECTION = "examples"
DEPENDS = "boost libusb1 dlt-daemon"
LICENSE = "COMPANY_COMMON_LICENSES"
LIC_FILES_CHKSUM =
"file://${COMPANY_COMMON_LICENSES}/LICENSE;md5=18f1f6bf24836561f3a65cef19477d20"

TARGET_CFLAGS += "-std=gnu++14"

# This tells bitbake where to find the files we're providing on the
local filesystem
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILES_${PN} += "${includedir}/*"
inherit autotools gettext cmake
# Use local tarball
SRC_URI = "file://DLTWrapper.tgz"

# Make sure our source directory (for the build) matches the directory
structure in the tarball
S = "${WORKDIR}/DLTWrapper"

do_install() {
install -d ${D}${libdir}
install -d ${D}${includedir}
install -m 0755 ${WORKDIR}/build/libDLTWrapper.so ${D}${libdir}
install -m 0755 ${WORKDIR}/DLTWrapper/include/* ${D}${includedir}
}

On Mon, Mar 12, 2018 at 12:58 PM, Burton, Ross <ross.burton@intel.com> wrote:
> At a guess as I don't have any of your recipes to look at, jsonparser and
> dltwrapper packages are broken and putting the libraries into the -dev
> packages.  That probably caused a QA warning too.
>
> Ross
>
> On 12 March 2018 at 11:53, Outback Dingo <outbackdingo@gmail.com> wrote:
>>
>> ERROR: QA Issue: r4-hub rdepends on dltwrapper-dev [dev-deps]
>> ERROR: QA Issue: r4-hub rdepends on jsonparser-dev [dev-deps]
>> ERROR: QA run found fatal errors. Please consider fixing them.
>> ERROR: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in: log.do_package_qa.21297
>>
>> seems ive created a bitbake recipe, which depends on a couple of
>> libraries to be built, so i created the bitbake for the libs and all
>> appears to build fine, however seeing the failure above its basically
>> telling me something isnt being created during the packaging process
>> for the libs to be properly included in the image, they does exist a
>> pkgname-dev.ipkg for each of the libs but not a packagename.ipkg ...
>> any ideas... its kind of holding me up at this point.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

