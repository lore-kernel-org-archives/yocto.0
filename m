Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E207E00947; Sun, 21 Dec 2014 18:01:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NAME_EMAIL_DIFF autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.6 NAME_EMAIL_DIFF Sender NAME is an unrelated email address
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E426FE0086F
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 18:01:11 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id E097CA409E; Mon, 22 Dec 2014 02:01:11 +0000 (UTC)
Date: Mon, 22 Dec 2014 02:01:11 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141222020111.GA19647@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Dec 2014 02:01:13 -0000
X-Groupsio-MsgNum: 22699
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
chkconfig-alternatives-native 1.3.59+AUTOINC+cd437ecbd8     1.3.59+gitAUTOINC+cd437e      Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.1.0+gitAUTOINC+2cf87e6      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+e6f437adfe     Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+e4db49730e     Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+92686f2      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2014.07+gitAUTOINC+5241      2014.10+gitAUTOINC+d8bec      Saul Wold <sgw@linux.intel.com>                   
dtc                           1.4.0+gitAUTOINC+65cc4d2      1.4.1+gitAUTOINC+302fca9      Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+e6f437adfe     Saul Wold <sgw@linux.intel.com>                   
cross-localedef-native        2.20                          28+gitAUTOINC+f80af76648      Saul Wold <sgw@linux.intel.com>                   
build-appliance-image         8.0                           12.0.0+gitAUTOINC+02627a      Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.4+gitAUTOINC+9039582      1.2.4+gitAUTOINC+a53ed92      Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+24efb0      Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
update-rc.d                   0.7                           0.7+gitAUTOINC+eca680ddf2     Saul Wold <sgw@linux.intel.com>                   
xf86-video-omapfb             0.1.1+gitrAUTOINC+28c006      0.1.1+gitAUTOINC+             Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitAUTOINC+5d3d49b      Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d6e9     Ross Burton <ross.burton@intel.com>               
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitAUTOINC+a68d27e725     Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f41ab     Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.4.1+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007fc4     Ross Burton <ross.burton@intel.com>               
lttng-modules                 2.5.0                         2.5.2+gitAUTOINC+b80f1df      Richard Purdie <richard.purdie@linuxfoundation.org>
glibc-initial                 2.20                          28+gitAUTOINC+f80af76648      Richard Purdie <richard.purdie@linuxfoundation.org>
lttng-tools                   v2.5.0                        2.5.3+gitAUTOINC+75d9667      Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+3dddb01fef     Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+44cdb6      3.17.3+gitAUTOINC+e4c122      Richard Purdie <richard.purdie@linuxfoundation.org>
lttng-ust                     2.5.0                         2.5.2+gitAUTOINC+85d1d27      Richard Purdie <richard.purdie@linuxfoundation.org>
glibc                         2.20                          28+gitAUTOINC+f80af76648      Richard Purdie <richard.purdie@linuxfoundation.org>two glibc plugins are based o...
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+40bb568      Paul Eggleton <paul.eggleton@linux.intel.com>     
opkg-utils                    0.1.8+gitAUTOINC+127b371      0.1.8+gitAUTOINC+53274f0      Paul Barker <paul@paulbarker.me.uk>               
mmc-utils                     0.1                           0.1+gitAUTOINC+f4eb241519     No Maintainer info                                
eglinfo-fb                    1.0                           1.0+gitAUTOINC+223817ee37     No Maintainer info                                
eglinfo-x11                   1.0                           1.0+gitAUTOINC+223817ee37     No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      0.14.6+gitAUTOINC+3ab811      No Maintainer info                                
prelink                       1.0+gitAUTOINC+faa069deec     1.0+gitAUTOINC+3ceadf992d     Mark Hatle <mark.hatle@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      43+gitAUTOINC+eb3daf2ca4      Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+79e08f8edb     Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f62596a     Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
rt-tests                      0.89                          0.89+gitAUTOINC+c5f2a443      Darren Hart <dvhart@linux.intel.com>              
hwlatdetect                   0.89                          0.89+gitAUTOINC+c5f2a443      Darren Hart <dvhart@linux.intel.com>              
connman-gnome                 0.7                           0.7+gitAUTOINC+fe1a60aa30     Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+0e5f63771d     0.0+gitAUTOINC+38e5405c96     Cristian Iorga <cristian.iorga@intel.com>         
kmod                          18+gitAUTOINC+ae58de0fcb      19+gitAUTOINC+fd56638aed      Chen Qi <Qi.Chen@windriver.com>                   
guilt-native                  git                           0.35+gitrAUTOINC+6fe15cb      Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+23345b8846     0.2+gitAUTOINC+f36581291d     Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 42
Upgrade Total Count: 45
The based commit merge time is:
Sun Dec 21 13:52:17 2014 +0000
The based commit is:
commit 15de188692d2572d897799424e2a22eab24c78e2
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Dec 21 13:50:35 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--bg08WKrSYDhXBjb5--
