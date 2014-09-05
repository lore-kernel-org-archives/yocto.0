Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 498FFE00744; Thu,  4 Sep 2014 18:58:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Sep 2014 18:58:02 PDT
Received: from smtp.tibbo.com (smtp.tibbo.com [93.174.104.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF2DE004F5
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 18:58:02 -0700 (PDT)
Received: (qmail 2381 invoked by uid 508); 5 Sep 2014 05:30:13 +0400
Received: from 59-120-32-27.hinet-ip.hinet.net (HELO ?192.168.1.20?)
	(dvorkin@tibbo.com@59.120.32.27)
	by smtp.tibbo.com with SMTP; 5 Sep 2014 05:30:13 +0400
Message-ID: <54091713.2090004@tibbo.com>
Date: Fri, 05 Sep 2014 09:51:15 +0800
From: Dvorkin Dmitry <dvorkin@tibbo.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: wrong automatic dependency
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
X-List-Received-Date: Fri, 05 Sep 2014 01:58:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello!

I wrote my own recipe for crda.
(http://wireless.kernel.org/en/developers/Regulatory/CRDA)

Dependencies is:
DEPENDS = "libgcrypt libnl"
RDEPENDS_${PN} = "udev wireless-regdb"

Crda Makefile is using python to rebuild it's database in 
build/installation step.
After installation I have several packages: crda itself, crda-dev, 
crda-doc, ... etc.
In my image I'm using only 'crda' package that doesn't need python.

But it seems Yocto detects python and add automatic dependency of python 
to my image anyway.

$ grep "crda" ./*.dot | grep pyt
./task-depends.dot:"crda.do_build" -> "python-dbus.do_package_write_ipk"
./task-depends.dot:"crda.do_build" -> "python.do_package_write_rpm"
./task-depends.dot:"crda.do_build" -> "python.do_package_write_deb"
./task-depends.dot:"crda.do_build" -> "python.do_package_write_ipk"
./task-depends.dot:"crda.do_build" -> 
"python-pygobject.do_package_write_rpm"
./task-depends.dot:"crda.do_build" -> 
"python-pygobject.do_package_write_deb"
./task-depends.dot:"crda.do_build" -> 
"python-pygobject.do_package_write_ipk"
./task-depends.dot:"crda.do_build" -> "python-dbus.do_package_write_rpm"
./task-depends.dot:"crda.do_build" -> "python-dbus.do_package_write_deb"

Is there any way to get rid of python dependency in this and only this 
recipe? it makes my image significally bigger.

