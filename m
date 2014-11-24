Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A52FE00863; Sun, 23 Nov 2014 18:18:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25C88E00863
	for <yocto@yoctoproject.org>; Sun, 23 Nov 2014 18:18:52 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 23CB6A409E; Mon, 24 Nov 2014 02:18:52 +0000 (UTC)
Date: Mon, 24 Nov 2014 02:18:52 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141124021851.GA11281@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 24 Nov 2014 02:18:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
man                      1.6g                N/A                 41965 d                  Saul Wold <sgw@linux.intel.co...        No data                       
dtc                      1.4.0+gitAUTO...    N/A                 41965 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libdaemon                0.14                N/A                 41965 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libnss-mdns              0.10                N/A                 41965 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libffi                   3.1                 N/A                 41965 d                  Saul Wold <sgw@linux.intel.co...        No data                       
puzzles                  r10116              N/A                 41965 d                  Ross Burton <ross.burton@inte...        No data                       
libxslt                  1.1.28              N/A                 41965 d                  Ross Burton <ross.burton@inte...        No data                       
mesa                     10.1.3              N/A                 41965 d                  Ross Burton <ross.burton@inte...        No data                       
libpng                   1.6.13              1.6.6               418 day                  Ross Burton <ross.burton@inte...        No data                       
at-spi2-atk              2.12.1              N/A                 41965 d                  Ross Burton <ross.burton@inte...        No data                       
tzdata                   2014j               N/A                 41965 d                  Robert Yang <liezhi.yang@wind...        No data                       
latencytop               0.5                 N/A                 117 day                  Richard Purdie <richard.purdi...        No data                       
python-pygobject         2.28.3              3.13.3              41965 d                  Richard Purdie <richard.purdi...        Newer versions of python-pygob...
quicky                   0.4                 N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
nativesdk-qt4-tools      4.8.6               N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-x11-free             4.8.6               N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
dosfstools               2.11                N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
blktool                  4-6.1               N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-native               4.8.6               N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
python-smartpm           1.4.1               N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
unfs3                    0.9.22.r490         N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
cdrtools-native          3.01a20             N/A                 41965 d                  Paul Eggleton <paul.eggleton@...        No data                       
waffle                   1.3.0               N/A                 41965 d                  No Maintainer info                      No data                       
nss-myhostname           0.3                 N/A                 41965 d                  No Maintainer info                      No data                       
docbook-xsl-styleshe...  1.78.1              N/A                 41965 d                  No Maintainer info                      No data                       
pseudo                   1.6.2               N/A                 41965 d                  Mark Hatle <mark.hatle@windri...        No data                       
bind                     9.9.5               N/A                 41965 d                  Kai Kang <kai.kang@windriver....        No data                       
pax                      3.4                 N/A                 41965 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
tremor                   20120314            20120122            623 day                  Cristian Iorga <cristian.iorg...        Same revision on different SVN...
libatomics-ops           7.2                 N/A                 41965 d                  Cristian Iorga <cristian.iorg...        No data                       
sudo                     1.8.10p3            N/A                 41965 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
lz4                      r123                122                 86 days                  Armin Kuster <akuster808@gmai...        No data                       
nettle                   2.7.1               N/A                 95 days                  Armin Kuster <akuster808@gmai...        3.0.0 breaks gnutls, api chang...
xinetd                   2.3.15              N/A                 117 day                  An?bal Lim?n <anibal.limon@li...        No data                       
lsof                     4.87                N/A                 117 day                  An?bal Lim?n <anibal.limon@li...        No data                       
midori                   0.5.5               N/A                 41965 d                  Alejandro Hernandez <alejandr...        No data                       
Manual Check Count: 36
Manual Need Check Count: 36
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

