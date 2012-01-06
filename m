Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B13BE0030B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 01:52:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q069pxwk002455
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 6 Jan 2012 01:51:59 -0800 (PST)
Received: from [128.224.162.219] (128.224.162.219) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 6 Jan 2012 01:51:59 -0800
Message-ID: <4F06C43D.3090102@windriver.com>
Date: Fri, 6 Jan 2012 17:51:57 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [128.224.162.219]
Subject: Design Document of "Yocto 1656 Recipe creation/import script"
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
X-List-Received-Date: Fri, 06 Jan 2012 09:52:00 -0000
X-Groupsio-MsgNum: 4106
Content-Type: multipart/mixed; boundary="------------020508060804010208010808"

--------------020508060804010208010808
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

This is the design document of "Yocto 1656 Recipe creation/import 
script". Please help to review it.
Any suggestion is appreciate.

Regards,
Kai

--------------020508060804010208010808
Content-Type: text/plain; name="recipe_creation_bb.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="recipe_creation_bb.txt"

    Design documnet for Recipe creation/import script

* Purpose

The feature is from Yocto 1.2 Bug 1656. A script or similar system
that would allow you to give is an upstream URL, tarball, patch set,
package (SRPM, or debian style) and generate a recipe based on those
instructions. 

Name it with bitbake-createbb, and integrate into the build system
to use the build system infrastructure that similiar with bitbake-runtask.

* Usage:
bitbake-createbb <SRC_URI> [PATCH_SRC_URI]

* Steps
1 download the source package frowm the SRC_RUI
2 get package name and version from package or tarball name. 
3 get summary and description from SRPM spec file or debian control file, or from configure files. 
4 get license and license checksum. 
5 get dependent packages
  |-- just parse spec file or debian control file
  |-- or get them by parse configure files
6 remove downloaded files

--------------020508060804010208010808--
