Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0242.outbound.protection.outlook.com [207.46.163.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF33E0043F
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 10:31:51 -0800 (PST)
Received: from [192.168.3.163] (184.71.143.26) by
	BY2PR01MB473.prod.exchangelabs.com (10.141.144.12) with Microsoft SMTP
	Server (TLS) id 15.0.878.16; Tue, 18 Feb 2014 18:31:46 +0000
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Feb 2014 10:31:41 -0800
Message-ID: <1392748301.12758.111.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-Originating-IP: [184.71.143.26]
X-ClientProxiedBy: BY2PR08CA013.namprd08.prod.outlook.com (10.242.234.161)
	To BY2PR01MB473.prod.exchangelabs.com (10.141.144.12)
X-Forefront-PRVS: 0126A32F74
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009001)(6009001)(6049001)(174874002)(199002)(189002)(85306002)(50466002)(81342001)(76786001)(94946001)(81686001)(95666001)(74706001)(76796001)(69226001)(81542001)(77096001)(83322001)(74366001)(77156001)(95416001)(19580395003)(86362001)(19580405001)(87286001)(87266001)(93516002)(87976001)(93916002)(62966002)(94316002)(65816001)(80022001)(74876001)(80976001)(50986001)(76482001)(74662001)(4396001)(51856001)(53806001)(49866001)(50226001)(47736001)(47976001)(54316002)(92726001)(88136002)(56776001)(42186004)(83072002)(33646001)(85852003)(79102001)(81816001)(93136001)(76176001)(31966008)(74502001)(66066001)(47446002)(47776003)(89996001)(77982001)(59766001)(90146001)(56816005)(46102001)(92566001)(63696002)(23676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR01MB473; H:[192.168.3.163];
	CLIP:184.71.143.26;
	FPR:BCAEF2F5.8E169046.E9E9D173.4CCCF15A.20335; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
X-OriginatorOrg: inmotiontechnology.com
Subject: Yocto Python Issue
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
X-List-Received-Date: Tue, 18 Feb 2014 18:31:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I am using yocto 1.5 build environment on CentOS 6 with the prerequisite
tools package installed to ensure that I have python 2.7, an up-to-date
'tar' etc as instructed in the manual.

I have encountered the following error in a package I am building that
uses python:

| [SWIG PYTHON WRAP omg2000]
| mkdir -p build-omg2000/
| swig
-I/home/dwatkins/workspace/epsilon/repo_MG-os_test2/build/tmp/sysroots/omg2000/usr/include  -Wall -python -o build-omg2000/omgll_python_wrap.c omgll.i
| touch .lib-omg2000-omgll
| touch .lib-omg2000-omgll
| [PYTHON SO omg2000]
| cd build-omg2000 && python omgll_setup.py build
| Traceback (most recent call last):
|   File "omgll_setup.py", line 1, in <module>
|     from distutils.core import setup, Extension
|   File
"/home/dwatkins/bin/opt/i686/poky/1.5-1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/distutils/core.py", line 20, in <module>
|     from distutils.dist import Distribution
|   File
"/home/dwatkins/bin/opt/i686/poky/1.5-1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/distutils/dist.py", line 10, in <module>
|     from email import message_from_file
| ImportError: No module named email
| make[1]: *** [build-omg2000/python/_omgll.so] Error 1

Apparently the 'distutils' module needs an 'email' module and that was
never included with it.  There is also no 'pip' included with it, nor
could I find a python-pip-native recipe.  I tried using the 'get-pip.py'
from python.org and got basically the same traceback because it tried to
use the same thing.

dwatkins@kihei:32bit build $
find /home/dwatkins/bin/opt/i686/poky/1.5-1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/ | grep email
/home/dwatkins/bin/opt/i686/poky/1.5-1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site-packages/git/test/fixtures/reflog_invalid_email
dwatkins@kihei:32bit build $

As indicated above, there isn't an email package as part of the python
distro that was built in the ADT.

Is there a remedy for this?  If it comes down to manually installing a
python email module, anyone know what version I need to get for python
2.7 (or will email-6.0.0a1 from python.org work)?


-- 

Regards,

Darcy

---

Darcy Watkins
Senior Software Developer
In Motion Technology, Inc.
350-625 Agnes St. New Westminster, BC
Canada, V3M 5Y4
[P1]


