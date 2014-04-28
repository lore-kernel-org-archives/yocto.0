Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40EE9E00BAA
	for <yocto@yoctoproject.org>; Sun, 27 Apr 2014 19:01:33 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 3A02EA4048; Mon, 28 Apr 2014 02:01:33 +0000 (UTC)
Date: Mon, 28 Apr 2014 02:01:33 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140428020132.GA17937@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Package Report System]Upgrade recipes name list
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
X-List-Received-Date: Mon, 28 Apr 2014 02:01:33 -0000
X-Groupsio-MsgNum: 19220
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+ae91e3d552     2.5+gitAUTOINC+3d0ad80        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+cf7b498        Saul Wold <sgw@linux.intel.com>                   
oprofileui-server             0.0+gitAUTOINC+f168b8bfdc     0.0+gitAUTOINC+389e187        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+ac76440      Paul Eggleton <paul.eggleton@linux.intel.com>     
lz4                           r112                          N/A                           No Maintainer info                                
gummiboot                     43+gitAUTOINC+4062c51075      44+gitAUTOINC+ac4a587         No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+6cb822d       No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+addb230        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.1+gitAUTOINC+f2d42b7     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofileui                    0.0+gitAUTOINC+f168b8bfdc     0.0+gitAUTOINC+389e187        Laurentiu Palcu <laurentiu.palcu@intel.com>       
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+5923077      Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+8854      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          17+gitAUTOINC+49d8e0b590      17+gitAUTOINC+f5cdd57         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.5+gitAUTOINC+ae91e3d552     2.5+gitAUTOINC+3d0ad80        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.2.1+gitAUTOINC+62f11f7      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+35d      Cristiana Voicu <cristiana.voicu@intel.com>       
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+dec41bc        Cristian Iorga <cristian.iorga@intel.com>         
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 28
Upgrade Total Count: 32
The based commit merge time is:
Sun Apr 27 01:27:55 2014 +0100
The based commit is:
commit a688c9cbab43179a92c8115cae5095817cafc0ea
Author: Jacob Kroon <jacob.kroon@mikrodidakt.se>
Date:   Sat Apr 26 17:05:30 2014 +0200
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--UugvWAfsgieZRqgk
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--UugvWAfsgieZRqgk--
