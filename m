Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73E2FE00C89; Mon, 18 Sep 2017 20:15:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E60C2E00A38
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 20:15:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8J3FSWN016422
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 18 Sep 2017 20:15:28 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 18 Sep 2017 20:15:27 -0700
To: Chanho Park <parkch98@gmail.com>, <yocto@yoctoproject.org>
References: <76d0f29a-b6d7-6dc3-1b18-4ef001f487c9@windriver.com>
	<CAPTzV15N3SqnOTcvoiGvj5F1d7RNZkwNGYBPTkpNsKcDCLUNKQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <0832fa19-40ff-d644-c959-c8483988d473@windriver.com>
Date: Mon, 18 Sep 2017 22:15:26 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAPTzV15N3SqnOTcvoiGvj5F1d7RNZkwNGYBPTkpNsKcDCLUNKQ@mail.gmail.com>
Subject: Re: [meta-selinux] Update announcement
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
X-List-Received-Date: Tue, 19 Sep 2017 03:15:31 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/18/17 9:34 PM, Chanho Park wrote:
> Hi Mark,
> 
> Thanks for the update.
> When I ran the semanage tool, I got below errors.
> 
>> ImportError: No module named lib2to3.pgen2.parse
> 
> Does the setools use python3 instead of the python2?

Are you running this on the target or as part of the build?  Part of the system
requires meta-python components to operate properly.  If this piece requires
additional components that are not set as requirements, it's a bug.

Patches welcome.  (I did not experience this when I did a build.)

--Mark

> Best Regards,
> Chanho Park
> 
> On Fri, 15 Sep 2017 at 6:27 AM Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     I have pushed an update to meta-selinux to work with master.  A few key changes:
> 
>     The oe-selinux and poky-selinux distro configurations HAVE BEEN REMOVED!  It is
>     now up to the user to enable the components using the appropriate
>     DISTRO_FEATURES as documented in the README file.  (acl xattr pam selinux)
> 
>     The layer now requires meta-selinux as part of the 'setools' upgrade.  The tool
>     is now a python based tool.
> 
>     SELinux componetns have been updated to version 2.7.
> 
>     Refpolicy is at 2.20170204, git at master as of yesterday.
> 
>     The README for the layer has been updated to include some additional information
>     about running the included images.
> 
>     Changelog:
> 
>     f1f0860 openssh: set ChallengeResponseAuthentication to no
>     24cce7b refpolicy: fix a typo in RDEPENDS
>     827b305 initscripts: use the 'i' option for restorecon command
>     eeb2c2f audit: fix the wrong packaging for auditd.service
>     2aadc0d audit 2.7.1 -> 2.7.6
>     beaaa37 attr: fix ptest failures when selinux enabled
>     232bfeb systemd: Remove inherit enable-selinux, obsolete
>     40a581d selinux: uprev include file to 20170804
>     3aafa96 libsepol: uprev to 2.7 (20170804)
>     375dfa6 libselinux: uprev to 2.7 (20170804)
>     b00974f libsemanage: uprev to 2.7 (20170804)
>     43adb0c checkpolicy: uprev to 2.7 (20170804)
>     f838032 secilc: uprev to 2.7 (20170804)
>     c9186be policycoreutils: uprev to 2.7 (20170804)
>     9b70823 sepolgen: remove package
>     d8d6ac6 mcstrans: add package 2.7 (20170804)
>     9a07ac8 restorecond: add package 2.7 (20170804)
>     a5b5f5b selinux-sandbox: add package 2.7 (20170804)
>     1d3df56 selinux-python: add package 2.7 (20170804)
>     17cda5a semodule-utils: add package 2.7 (20170804)
>     28b961c selinux-dbus: add package 2.7 (20170804)
>     a1f9832 selinux-gui: add package 2.7 (20170804)
>     493b567 policycoreutils: fixes for 2.7 uprev
>     fe8bc07 refpolicy_common: depends on semodule-utils-native
>     fdf7612 setools: uprev to 4.1.1
>     96b54b4 packagegroup-*: sync package names
>     2c7c0e9 selinux-python: add setools to RDEPENDS
>     8bd72df refpolicy-git: Update to lastest git version
>     694b8d1 README: Update and remove references to distros, replace w/
>     DISTRO_FEATURES
>     4fefe83 Refactor to conform to YP Compat requirements
>     6733785 README: Add information about running the system
>     dddf265 packagegroups: Fix LIC_FILES_CHKSUM
>     bca5c61 refpolicy: Add '/bin/bash.bash', an update-alternative to the policy
>     907e373 policycoreutils: Update fixfile
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> -- 
> Best Regards,
> Chanho Park


