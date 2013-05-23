Return-Path: <hartmut.behrens@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA65BE0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 09:53:58 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so2352608vcb.21
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 09:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UrYcRm7+sRWlAcZ/0g1WL+Z2kgo2BGMqF9NBS2EXl5U=;
	b=khrI7L42iKqLbweuWunFIwBG+Mnii3J4Z06e0TVoaXBWriJRlsIKmY2xSywP0tN+VQ
	abnH0saZ3yf4+jFcapKOxw8EawU6PHV879xr8435nibz6euVTnppgxYqkPsNRbCpzbUa
	eKDo3vZ93hBYyDG3irK+j3arwoDRrGV0SHqdT4eGiYOkYhXMi8RrDgDZb++aMNcZO9ir
	u4DUHmr4wL2lCmFeaNHwfhNoyLftBxHz5uPGweS/756bQpsYfNPNN3fFHz97qQUHK9kj
	6jKy3pyzwOJ6vRQPL9thw8ZtlgkvDJ/BD5Gz8OxGp2oSwyRdxk2fEKxyBRxBTp1an1U5
	NS2w==
MIME-Version: 1.0
X-Received: by 10.52.191.39 with SMTP id gv7mr5031528vdc.57.1369328037956;
	Thu, 23 May 2013 09:53:57 -0700 (PDT)
Received: by 10.58.220.129 with HTTP; Thu, 23 May 2013 09:53:57 -0700 (PDT)
Date: Thu, 23 May 2013 18:53:57 +0200
Message-ID: <CA+69FtB6Y0MCaynMcVPWAx8YK2WX+9gK5hfz+LOO51JxfUOccw@mail.gmail.com>
From: Hartmut Behrens <hartmut.behrens@gmail.com>
To: yocto@yoctoproject.org
Subject: QA rdepends issue when building xerces-c
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
X-List-Received-Date: Thu, 23 May 2013 16:53:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear Yocto users,

I created a recipe for xerces-c (see below), and when bitbaking, the
error "ERROR: QA Issue: xerces-c rdepends on xerces-c-dev" is
produced.

I added RPROVIDES_${PN} += "xerces-c-dev" to the recipe, incremented
the PR number, and baked again but still without success.

I also tried INSANE_SKIP_${PN} += "dev-so" without any luck.

Might you know how to solve this?

The recipe:

DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
HOMEPAGE = "http://xerces.apache.org/xerces-c/"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
PR = "r6"

SRC_URI = "file://xerces-c-${PV}.tar.gz"
SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"

S = "${WORKDIR}/xerces-c-${PV}"

inherit autotools lib_package pkgconfig gettext

RPROVIDES_${PN} += "xerces-c-dev"

