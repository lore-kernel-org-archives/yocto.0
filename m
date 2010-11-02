Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DBBF4C803A5
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 15:41:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2KfMNO010583
	for <yocto@yoctoproject.org>; Tue, 2 Nov 2010 20:41:22 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 09874-10 for <yocto@yoctoproject.org>;
	Tue,  2 Nov 2010 20:41:18 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2KfDVE010577
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 2 Nov 2010 20:41:14 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: yocto <yocto@yoctoproject.org>
Date: Tue, 02 Nov 2010 20:41:04 +0000
Message-ID: <1288730464.28481.2336.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Python version problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 20:41:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I've seen a few comments that people are struggling with the python
version Poky requires not being present in certain distros. I can now
point to one potential solution in the form of a standalone install of
python (in /opt/poky) which Poky itself can generate. I've shared
prebuilt 32 and 64 bit versions of these at:

http://autobuilder.yoctoproject.org/downloads/miscsupport/python-nativesdk-standalone-i586.tar.bz2
http://autobuilder.yoctoproject.org/downloads/miscsupport/python-nativesdk-standalone-x86_64.tar.bz2

They are not statically linked but are self contained with all the
libraries they need so should work on pretty much any Linux system.

To use them, extract as root in / and then just run:

export PATH=/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/:$PATH
or
export PATH=/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/:$PATH

before running bitbake and the version of python in these tarballs will
be used by bitbake instead.

For reference, you can generate these tarballs by running:

SDKMACHINE=i586 bitbake external-python-tarball
or
SDKMACHINE=x86_64 bitbake external-python-tarball

using Poky's master branch.

Cheers,

Richard



