Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95CCBE00321
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 19:19:14 -0700 (PDT)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 15 Aug 2011 19:19:24 -0700
Received: by gxk10 with SMTP id 10so8475826gxk.25
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 19:19:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.180.33 with SMTP id i21mr14505090yhm.151.1313461163264;
	Mon, 15 Aug 2011 19:19:23 -0700 (PDT)
Received: by 10.236.95.145 with HTTP; Mon, 15 Aug 2011 19:19:23 -0700 (PDT)
Date: Mon, 15 Aug 2011 19:19:23 -0700
Message-ID: <CAPhnLPCsNfi-NimLyK=yrNs+Z2Me_4A4x6ygbL3uLyv==qKHkQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.1 Milestone 3 released
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
X-List-Received-Date: Tue, 16 Aug 2011 02:19:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the third milestone of the coming
October release of Yocto 1.1. This milestone release is available at:

http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m3.tar.bz2

Additional tarballs for the meta-intel, meta-qt3 and eclipse plugin are
available at:

http://mirrors.kernel.org/yocto/poky/meta-intel-bernard-5.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/poky/meta-qt3-bernard-5.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/poky/eclipse-poky-bernard-5.1.0-m3.tar.bz2

For information on 1.1 M3 test results see:
http://wiki.yoctoproject.org/wiki/Yocto_1.1_Milestone_Test_Report#Yocto_1.1_M3_RC3_Fullpass_Test_Report

Thanks you everyone for all the hard work.

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

--------------------
Bernard 5.1.0-m2 Errata
--------------------
Release name: poky-bernard-5.1.0-m3
Repo: git://git.yoctoproject.org/poky.git
Branch: 1.1_M3
Tag: 1.1_M3.final
Hash: 3b8eada6cc2e4d03c1424d9e686226eb67493a9f
Download locations:
http://autobuilder.yoctoproject.org/downloads/poky/poky-bernard-5.1.0-m3.tar.bz2
http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m3.tar.bz2

--------------------
Features
--------------------
1. Inter-core communication methods
2. More bug fixing for HOB and performance improvement
3. Multi-lib support
4. Update to the Indigo (the latest Eclipse release)
5. Live images

--------------------
Known Issues
--------------------
1358 Yocto build fails on Fedora 15, succeeds on Opensuse 11.4 and Ubuntu 11.04.
1362, 1362 Some failure in building lib32 and lib64
1281, 1364 and 1359 There are some problems with HOB on package
dependency setting and reload

