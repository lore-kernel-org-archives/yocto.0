Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E7FE017CA
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 03:35:49 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id ex4so2758541wid.8
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 03:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nM57bzmPWjUPE4amdubnPRksDpLHQ0PPTGbt9f92YjU=;
	b=Ba9BR67rgVP0ZThN9Bjz/Mz/rJxjl/YEzYP444YB0k1kOuwGPgjqHTvebL1DNz09IZ
	N6tUV7w0lDX2PYuQdu+lAnjd4HE9Eke2Q7Y1OYUngfkS3ZHYqdz+/qfQTkq5ymv0LcNt
	W+POSTxEWmP1MGwjTp53U8O8pmbF3qOkUPEEaKOI7N3IAPbRaAr359PVKDON1qLHVO1V
	ExA41RxY25h8iDXcSjL/F0rfBQ7FCp6ERFOW6tZ5Ktw7ICt3wN9Bs2jxe4i35BGi/0h0
	+tk4Wle7BuvnmR5+8U5dYkayyFNbBW+pquq0pvFbfVl0zYdjD5vErOyWnwBKPkIFrx9W
	i5Yg==
MIME-Version: 1.0
X-Received: by 10.194.178.166 with SMTP id cz6mr2091503wjc.53.1383215747950;
	Thu, 31 Oct 2013 03:35:47 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Thu, 31 Oct 2013 03:35:47 -0700 (PDT)
Date: Thu, 31 Oct 2013 16:05:47 +0530
Message-ID: <CABHD4K_SbwvCNRnj78UwvJXe0F+-HzeVWp564-djUPcWNRhvbQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OPerf support in Yocto
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
X-List-Received-Date: Thu, 31 Oct 2013 10:35:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

We are using OProfle as a profiling tool adn but have to requirment to
move Operf tool
As of now our build infrastructure is generating Oprofile binaries but
there is no Operf
Bianry is generated after build.

We found some pathces realted to PPC architecture which enable OPerf for PPC
But as we are on ARM ,how do we enable Operf for ARM.

Below is our source of OProf

/poky/meta/recipes-kernel/oprofile/oprofile_0.9.8.bb

require oprofile.inc

PR = "${INC_PR}.3"

DEPENDS += "virtual/kernel"
DEPENDS_append_powerpc64 = " libpfm4"

SRC_URI += "${SOURCEFORGE_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz \
            file://0001-Add-rmb-definition-for-AArch64-architecture.patch \
            file://0001-OProfile-doesn-t-build-for-32-bit-ppc-the-operf_util.patch
\
            file://0001-Handle-early-perf_events-kernel-without-PERF_RECORD_.patch
\
            file://0001-Fix-up-configure-to-handle-architectures-that-do-not.patch
\
            file://0001-Change-configure-to-look-for-libpfm4-function-first-.patch
\
            file://0001-ophelp-lists-events-Fix-doc-URL-for-ppc64-arch.patch \
            file://0001-Allow-ppc64-events-to-be-specified-with-or-without-_.patch
\
            file://0001-Fix-PPC64-specific-libpfm-usage-so-it-doesn-t-break-.patch"

SRC_URI[md5sum] = "6d127023af1dd1cf24e15411229f3cc8"
SRC_URI[sha256sum] =
"ab45900fa1a23e5d5badf3c0a55f26c17efe6e184efcf00b371433751fa761bc"

S = "${WORKDIR}/oprofile-${PV}"

Thanks
Amit

