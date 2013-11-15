Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD88DE01389
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 02:49:48 -0800 (PST)
Received: from [173.34.6.101] (port=36949 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VhGy9-0003ub-7a
	for yocto@yoctoproject.org; Fri, 15 Nov 2013 05:49:45 -0500
Date: Fri, 15 Nov 2013 05:49:37 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311150538110.30641@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: undocumented MACHINE_FEATURES, and what makes something a MACHINE feature?
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
X-List-Received-Date: Fri, 15 Nov 2013 10:49:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  quick scan shows the following MACHINE features are not listed in
section 10.2 of the ref manual:

 rtc
 vfat
 phone
 qvga
 efi
 pcibios

conversely, "screen" is listed but doesn't appear to be a valid
MACHINE feature. but here's a curiosity i noticed.

  "wifi" is listed in the ref manual as a MACHINE feature but,
throughout the dora source tree, here is the set of tests for it as a
"FEATURE":

$ grep -r "base_contains.*_FEATURES" * | grep wifi
meta/recipes-connectivity/neard/neard.inc:
${@base_contains('DISTRO_FEATURES', 'wifi','wpa-supplicant', '', d)} \
meta/recipes-connectivity/connman/connman.inc:
${@base_contains('DISTRO_FEATURES', 'wifi','wifi', '', d)} \
meta/recipes-core/packagegroups/packagegroup-base.bb:
${@base_contains("DISTRO_FEATURES", "wifi", "packagegroup-base-wifi",
"", d)} \
meta/recipes-core/packagegroups/packagegroup-base.bb:
${@base_contains('COMBINED_FEATURES', 'wifi',
'packagegroup-base-wifi', '',d)} \
meta/recipes-core/packagegroups/packagegroup-base.bb:
${@base_contains('DISTRO_FEATURES', 'wifi', 'kernel-module-hostap-cs',
'',d)} \
meta/recipes-core/packagegroups/packagegroup-base.bb:
${@base_contains('DISTRO_FEATURES', 'wifi',
'kernel-module-orinoco-cs', '',d)} \
meta/recipes-core/packagegroups/packagegroup-base.bb:
${@base_contains('DISTRO_FEATURES', 'wifi',
'kernel-module-spectrum-cs', '',d)}"
$

  as you can see, the only tests for 'wifi' involve either
DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
individually. under the circumstances, then, can 'wifi' be considered
a legitimate MACHINE feature if it's never being tested in that
context? (the same can be said for 'bluetooth', by the way.)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

