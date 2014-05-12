Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8DEE00B0B; Sun, 11 May 2014 19:01:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2403E00B0B
	for <yocto@yoctoproject.org>; Sun, 11 May 2014 19:01:09 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id C0AAAA4048; Mon, 12 May 2014 02:01:09 +0000 (UTC)
Date: Mon, 12 May 2014 02:01:09 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140512020109.GA9767@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 12 May 2014 02:01:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
puzzles                  r10116              N/A                 41769 d                  Valentin Popa <valentin.popa@...        No data                       
mesa                     9.2.5               N/A                 41769 d                  Valentin Popa <valentin.popa@...        No data                       
libpng                   1.6.10              1.6.6               222 day                  Valentin Popa <valentin.popa@...        No data                       
man                      1.6g                N/A                 41769 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libffi                   3.0.13              N/A                 41769 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libxslt                  1.1.28              N/A                 41769 d                  Ross Burton <ross.burton@inte...        No data                       
midori                   0.5.5               N/A                 41769 d                  Ross Burton <ross.burton@inte...        No data                       
tzdata                   2013i               N/A                 41769 d                  Robert Yang <liezhi.yang@wind...        No data                       
quicky                   0.4                 N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
nativesdk-qt4-tools      4.8.5               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-embedded...  1.2.0               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-x11-free             4.8.5               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
dosfstools               2.11                N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
blktool                  4-6.1               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-native               4.8.5               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-x11          1.2.0               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
python-smartpm           1.4.1               N/A                 41769 d                  Paul Eggleton <paul.eggleton@...        No data                       
lz4                      r112                N/A                 41769 d                  No Maintainer info                      No data                       
nettle                   2.7.1               N/A                 41769 d                  No Maintainer info                      No data                       
unfs3                    0.9.22.r490         N/A                 41769 d                  No Maintainer info                      No data                       
pseudo                   1.5.1               N/A                 41769 d                  Mark Hatle <mark.hatle@windri...        No data                       
xinetd                   2.3.15              N/A                 41769 d                  Laurentiu Palcu <laurentiu.pa...        No data                       
latencytop               0.5                 N/A                 41769 d                  Laurentiu Palcu <laurentiu.pa...        No data                       
bdwgc                    7.2d                gc-7.2d             623 day                  Laurentiu Palcu <laurentiu.pa...        No data                       
bind                     9.9.5               N/A                 41769 d                  Kai Kang <kai.kang@windriver....        No data                       
pax                      3.4                 N/A                 41769 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
ubootchart               0.0+r12             0.0+r12             608 day                  Cristiana Voicu <cristiana.vo...        No data                       
tremor                   20120314            20120122            427 day                  Cristian Iorga <cristian.iorg...        Same revision on different SVN...
libatomics-ops           7.2                 N/A                 41769 d                  Cristian Iorga <cristian.iorg...        No data                       
Manual Check Count: 29
Manual Need Check Count: 29
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

