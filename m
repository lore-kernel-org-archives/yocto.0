Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96654E004E9
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2011 12:38:04 -0700 (PDT)
Received: from mail-qw0-f52.google.com ([209.85.216.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2011 12:38:04 -0700
Received: by qaea17 with SMTP id a17so1493242qae.25
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2011 12:38:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.73.87 with SMTP id p23mr838972qcj.267.1318966683318; Tue,
	18 Oct 2011 12:38:03 -0700 (PDT)
Received: by 10.229.237.141 with HTTP; Tue, 18 Oct 2011 12:38:03 -0700 (PDT)
Date: Tue, 18 Oct 2011 12:38:03 -0700
Message-ID: <CAPhnLPDxBCkzUDBhnr=7bnieTnT8Y=exhkUakcHP1UE+0ka8mg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: Small change to edison release.
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
X-List-Received-Date: Tue, 18 Oct 2011 19:38:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

All

Two small issues I wanted to bring to the communities attention.

First, we found a small issue with the edison tarball this morning in
how it was packaged that caused an inconsistency with what was
documented. I've fixed this issue  in the tarball. The tarball now
extracts to poky-edison-6.0 as is referenced in the quick start guide.
The new md5sum of this tarball is: 49a4c748aac1ab40d22834d54c84510a.
The edison-6.0.md5sum file has been updated to reflect this change and
resigned with the yocto release gpg key.

The second issue I found late last night while verifying the release.
I had included older md5sums in the release announcement. I've
corrected these on the release webpage:

    * poky
      - Git location: git://git.yoctoproject.org/poky.git
      - Git branch: edison
      - Git tag: edison-6.0
      - Git rev: 1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c
      - Download:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2
      - Mirror:
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/poky-edison-6.0.tar.bz2
      - md5sum: 49a4c748aac1ab40d22834d54c84510a
    * meta-qt3
      - Git location: git://git.yoctoproject.org/meta-qt3.git
      - Git branch: edison
      - Git tag: edison-6.0
      - Git rev: 0e9784d26df51bd564b8f23bd40a6c36969abd5c
      - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-qt3-edison-6.0.tar.bz2
      - Mirror:
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-qt3-edison-6.0.tar.bz2
      - md5sum: 72487d69975fa5f2b70adaddbd6f3f77
    * meta-x32
      - Git location: git://git.yoctoproject.org/experimental/meta-x32.git
      - Git branch: edison
      - Git tag: edison-6.0
      - Git rev: 78a8f65718b7ad7c93103a82026575687271cf5d
      - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-x32-edison-6.0.tar.bz2
      - Mirror:
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-x32-edison-6.0.tar.bz2
      - md5sum: 6feac672080c471774e64d3b7474d35e
    * eclipse-poky
      - Git location: git://git.yoctoproject.org/experimental/eclipse-poky.git
      - Git branch: edison
      - Git tag: edison-6.0
      - Git rev: 63bad411b63fe2913ac7dff44e1e8b03ee4f8505
      - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/eclipse-poky-edison-6.0.tar.bz2
      - Mirror:
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/eclipse-poky-edison-6.0.tar.bz2
      - md5sum: a91b2abf7fe42c07f7d2974faf93f286

Please note, the md5 table, edison-6.0.md5sum should always contain
the correct md5 values and should be used as the md5sum table of
record. This is a new part of the release process that I've begun
doing so as to be able to validate that the build artifacts that we
generate are original and not compromised in any way.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

