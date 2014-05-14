Return-Path: <hans.beckerus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24744E00975; Wed, 14 May 2014 10:40:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hans.beckerus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 475 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 10:40:10 PDT
Received: from mail-ob0-f178.google.com (unknown [209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978F8E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 10:40:10 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id va2so2537350obc.9
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 10:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=u7eLKRYWwfYdI7BFFTs4VfGm4gVk6pO5M2UITSQfVVQ=;
	b=HFN2XMSErejJV4yetxQlCgvACEpxAGXJuVVvZuM/hLCd691Hn+LUMiphA1SagXJmYg
	3FlrkoWd2Edhruhh0OLfLmu/y8US+ruAuJEnRRa7Lb7B91YuK7DWg/62swXv6X6GV3yj
	LMEsK5lGPZQzSuluUU6CbfA5QW/G5KQPs94Pi1p/DNphS5up44vCZLDBOqGXchdd8sV/
	A5ffKlxP28gZRgsXJg48Rt4zA1mJAhHHjpCasd5yooGClUNW+6pMRGcLdXCGAznL+rYH
	LNcpTKRxozeup7b/n+7L6D5YWdj3pA0G4ahcWwrSbb4xYxd7y1tSU6l8qujdx+gu3vLM
	eLxg==
MIME-Version: 1.0
X-Received: by 10.182.144.194 with SMTP id so2mr4751094obb.31.1400088734634;
	Wed, 14 May 2014 10:32:14 -0700 (PDT)
Received: by 10.182.24.106 with HTTP; Wed, 14 May 2014 10:32:14 -0700 (PDT)
Date: Wed, 14 May 2014 19:32:14 +0200
Message-ID: <CAFyqS9q2-dJ-ZSTz9OMDAQjGMwWrCmtGbLzS1+ZmQsb8D=axWQ@mail.gmail.com>
From: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: procps_3.2.8: problem with install of a user defined package split
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
X-List-Received-Date: Wed, 14 May 2014 17:40:16 -0000
Content-Type: text/plain; charset=UTF-8

Hi. We have problem with one of our .bbappend files that tries to
split procps in some more fine grained packages.
Currently this is only done for 'top' and 'ps'. The actual issue here
is that /usr/bin/top.procps gets installed on our image but *not*
/bin/ps.procps?

The IMAGE_INSTALL sets both procps-ps and procps-top.
The .bbappend looks like this:

--

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PRINC = "0"

PACKAGES =+ "${PN}-lib ${PN}-top ${PN}-ps "

# Make sure base package installs ${PN}-lib
RDEPENDS_${PN} = "${PN}-lib"

FILES_${PN}-top = "${bindir}/top.procps"
FILES_${PN}-ps = "${base_bindir}/ps.procps"
FILES_${PN}-lib = "${libdir}/*-${PV}.so ${base_libdir}/*-${PV}.so"

--

As simple as it can be  ;) The packages-split folder contains both
packages, and they both contain the proper files after a build. That
is, procps-ps/bin/ps.procps and procps-top/usr/bin/top.procps.

If we instead change to the below it works!?

--

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PRINC = "0"

PACKAGES =+ "${PN}-lib ${PN}-top_ps "

# Make sure base package installs ${PN}-lib
RDEPENDS_${PN} = "${PN}-lib"

FILES_${PN}-top_ps = "${bindir}/top.procps ${base_bindir}/ps.procps"
FILES_${PN}-lib = "${libdir}/*-${PV}.so ${base_libdir}/*-${PV}.so"

--

Using the latter recipe and after updating IMAGE_INSTALL both
ps.procps and top.procps ends up in our image.
But, due to all the frustration we have had with this, we would really
like to understand why things seems to fail miserably when using the
first variant of  it.
Using both recipes the lib package get installed correctly. We also
have busybox applets enabled for 'ps' and 'top' but that we will take
care of using the already existing logic in procps for
update-alternatives. But since '/bin/ps.procps' does not get installed
there is no point in even trying.

Anyone that has a clue?

We are on a very early Yocto/poky 1.5 baseline.

Thanks.
Hans

