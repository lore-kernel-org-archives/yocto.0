Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CEE34C80120;
	Tue, 14 Jun 2011 13:22:28 -0500 (CDT)
Received: from mail-ew0-f52.google.com ([209.85.215.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 14 Jun 2011 11:22:27 -0700
Received: by ewy28 with SMTP id 28so2143541ewy.25
	for <multiple recipients>; Tue, 14 Jun 2011 11:22:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.52.207 with SMTP id e55mr3240220eec.3.1308075745491; Tue,
	14 Jun 2011 11:22:25 -0700 (PDT)
Received: by 10.14.48.66 with HTTP; Tue, 14 Jun 2011 11:22:25 -0700 (PDT)
Date: Tue, 14 Jun 2011 11:22:25 -0700
Message-ID: <BANLkTimVqbyCPFW23f2Au566Vp=74JHeUw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Cc: yocto-announce@yoctoproject.org
Subject: [Announcement] Milestone 1 released.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Jun 2011 18:22:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the first milestone of the coming
October release of Yocto 1.1. This milestone release is available at:

http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m1.tar.bz2

This release includes support for the updated kernel for some additional
BSPs, initial upgrades to gcc to bring it to 4.6.0 and work done on
license.bbclass to begin attempting to standardize the LICENSE field.

Thanks for all the hard work.

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

--------------------
Bernard 5.1.0-m1 Errata
--------------------

Release name: poky-bernard-5.1.0-m1
Repo: git://git.yoctoproject.org/poky.git
Branch: 1.1_M1
Tag: 1.1_M1.final
Hash: b4a215bd94cf1508782e49b1a3f8c6b1f7effbb9
Download locations:
http://autobuilder.yoctoproject.org/downloads/poky/poky-bernard-5.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m1.tar.bz2

--------------------
Features
--------------------
- OE-Core rebranding and restructure around the branding effort is complete
- 2.6.37 kernel support for n450 and atom-pc
- gcc upgraded to 4.6
- license infrastructure:
 - Standardized on SPDX license naming convention
 - New LICENSE parser

--------------------
Known Issues
--------------------
Bug 916 - beagleboard: apmd complains about lack of APM support in kernel
Bug 772 - [beagleboard] Can not recognize NAND flash on board
Bug 765 - [beagleboard] USB does not work on beagleboard
Bug 764 - [beagleboard] X server can not startup on beagleboard

