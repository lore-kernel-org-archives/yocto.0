Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3D65E00B88; Sun, 15 Jun 2014 19:21:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC03E00B20
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 19:21:07 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 0BB16A4048; Mon, 16 Jun 2014 02:21:07 +0000 (UTC)
Date: Mon, 16 Jun 2014 02:21:07 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140616022106.GA17066@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Package Report System]Manual check recipes name list
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
X-List-Received-Date: Mon, 16 Jun 2014 02:21:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
man                      1.6g                N/A                 41804 d                  Saul Wold <sgw@linux.intel.co...        No data                       
ubootchart               0.0+r12             0.0+r12             643 day                  Saul Wold <sgw@linux.intel.co...        No data                       
libffi                   3.1                 N/A                 41804 d                  Saul Wold <sgw@linux.intel.co...        No data                       
puzzles                  r10116              N/A                 41804 d                  Ross Burton <ross.burton@inte...        No data                       
libxslt                  1.1.28              N/A                 41804 d                  Ross Burton <ross.burton@inte...        No data                       
mesa                     10.1.3              N/A                 41804 d                  Ross Burton <ross.burton@inte...        No data                       
midori                   0.5.5               N/A                 41804 d                  Ross Burton <ross.burton@inte...        No data                       
libpng                   1.6.10              1.6.6               257 day                  Ross Burton <ross.burton@inte...        No data                       
tzdata                   2014d               N/A                 41804 d                  Robert Yang <liezhi.yang@wind...        No data                       
xinetd                   2.3.15              N/A                 41804 d                  Richard Purdie <richard.purdi...        No data                       
latencytop               0.5                 N/A                 41804 d                  Richard Purdie <richard.purdi...        No data                       
lsof                     4.87                N/A                 41804 d                  Richard Purdie <richard.purdi...        No data                       
bdwgc                    7.2d                gc-7.2d             658 day                  Richard Purdie <richard.purdi...        No data                       
quicky                   0.4                 N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
nativesdk-qt4-tools      4.8.6               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-embedded...  1.2.0               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-x11-free             4.8.6               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
dosfstools               2.11                N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
blktool                  4-6.1               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-native               4.8.6               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-x11          1.2.0               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
python-smartpm           1.4.1               N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
unfs3                    0.9.22.r490         N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
cdrtools-native          3.01a20             N/A                 41804 d                  Paul Eggleton <paul.eggleton@...        No data                       
lz4                      r112                N/A                 41804 d                  No Maintainer info                      No data                       
waffle                   1.3.0               N/A                 41804 d                  No Maintainer info                      No data                       
nettle                   2.7.1               N/A                 41804 d                  No Maintainer info                      No data                       
pseudo                   1.5.1               N/A                 41804 d                  Mark Hatle <mark.hatle@windri...        No data                       
bind                     9.9.5               N/A                 41804 d                  Kai Kang <kai.kang@windriver....        No data                       
pax                      3.4                 N/A                 41804 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
tremor                   20120314            20120122            462 day                  Cristian Iorga <cristian.iorg...        Same revision on different SVN...
libatomics-ops           7.2                 N/A                 41804 d                  Cristian Iorga <cristian.iorg...        No data                       
Manual Check Count: 32
Manual Need Check Count: 32
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

