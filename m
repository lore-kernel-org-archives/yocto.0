Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 866F5E008A6; Sun,  4 Jan 2015 18:01:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NAME_EMAIL_DIFF autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.2 NAME_EMAIL_DIFF Sender NAME is an unrelated email address
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A795FE00751
	for <yocto@yoctoproject.org>; Sun,  4 Jan 2015 18:01:08 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id A5FC5A409E; Mon,  5 Jan 2015 02:01:08 +0000 (UTC)
Date: Mon, 5 Jan 2015 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20150105020108.GA5636@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Jan 2015 02:01:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
puzzles                  r10116              r10286              42007 d                  Ross Burton <ross.burton@inte...        No data                       
autogen-native           5.18.3              N/A                 42007 d                  Robert Yang <liezhi.yang@wind...        No data                       
v86d                     0.1.10              N/A                 42007 d                  Richard Purdie <richard.purdi...        No data                       
latencytop               0.5                 N/A                 159 day                  Richard Purdie <richard.purdi...        No data                       
nativesdk-qt4-tools      4.8.6               N/A                 42007 d                  Paul Eggleton <paul.eggleton@...        No data                       
quicky                   0.4                 N/A                 42007 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-native               4.8.6               N/A                 42007 d                  Paul Eggleton <paul.eggleton@...        No data                       
unfs3                    0.9.22.r490         0.9.22.r494         42007 d                  Paul Eggleton <paul.eggleton@...        No data                       
cdrtools-native          3.01a20             N/A                 42007 d                  Paul Eggleton <paul.eggleton@...        No data                       
zisofs-tools-native      1.0.8               N/A                 42007 d                  No Maintainer info                      No data                       
pseudo                   1.6.2               N/A                 42007 d                  Mark Hatle <mark.hatle@windri...        No data                       
pax                      3.4                 N/A                 42007 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
pax-utils                0.9.2               N/A                 42007 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
tremor                   20120314            20120314            665 day                  Cristian Iorga <cristian.iorg...        Same revision on different SVN...
lz4                      r123                r123                128 day                  Armin Kuster <akuster808@gmai...        No data                       
xinetd                   2.3.15              N/A                 159 day                  An?bal Lim?n <anibal.limon@li...        No data                       
lsof                     4.88                N/A                 159 day                  An?bal Lim?n <anibal.limon@li...        No data                       
Manual Check Count: 17
Manual Need Check Count: 17
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

