Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0141.outbound.protection.outlook.com [207.46.163.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B99B3E0091B
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 15:42:30 -0800 (PST)
Received: from [192.168.3.163] (184.71.143.26) by
	BLUPR01MB471.prod.exchangelabs.com (10.141.81.25) with Microsoft SMTP
	Server (TLS) id 15.0.893.10; Thu, 6 Mar 2014 23:42:21 +0000
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Thu, 6 Mar 2014 15:42:16 -0800
Message-ID: <1394149336.17904.28.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-Originating-IP: [184.71.143.26]
X-ClientProxiedBy: DM2PR06CA029.namprd06.prod.outlook.com (10.141.241.29) To
	BLUPR01MB471.prod.exchangelabs.com (10.141.81.25)
X-Forefront-PRVS: 0142F22657
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009001)(6049001)(6009001)(428001)(189002)(199002)(46102001)(53806001)(77096001)(49866001)(81542001)(47736001)(81342001)(47976001)(50986001)(4396001)(95416001)(50226001)(77156001)(93136001)(86362001)(93916002)(93516002)(92566001)(83072002)(97336001)(51856001)(92726001)(74502001)(76176001)(74662001)(76482001)(87266001)(65816001)(76796001)(56776001)(66066001)(47446002)(42186004)(54316002)(87286001)(80022001)(62966002)(94316002)(94946001)(31966008)(85306002)(76786001)(63696002)(77982001)(47776003)(59766001)(90146001)(80976001)(74706001)(89996001)(79102001)(56816005)(15395725003)(95666003)(69226001)(83322001)(19580395003)(23676002)(74366001)(97186001)(81686001)(15202345003)(81816001)(33646001)(85852003)(50466002)(74876001)(87976001)(88136002)(15975445006)(244015003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR01MB471; H:[192.168.3.163];
	CLIP:184.71.143.26;
	FPR:EC8F31E5.84E25FAF.F1D75F6F.4FC7F0A1.20310; PTR:InfoNoRecords;
	MX:1; A:1; LANG:en; 
Received-SPF: None (: inmotiontechnology.com does not designate permitted
	sender hosts)
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
X-List-Received-Date: Thu, 06 Mar 2014 23:42:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

This is followup to...

https://lists.yoctoproject.org/pipermail/yocto/2014-February/018209.html

...for others dealing with 'cross-python' like issues.

This is the python equivalent to cross compiling.  I found a number of
resources related to python cross-compiling and even a pycon talk where
the presenter covers the hurdles involved to get distutil to “cross”
build as well.

http://stackoverflow.com/questions/19120938/cross-compiling-python-2-7-4
http://www.droboports.com/app-repository/python-2-7-5
http://www.youtube.com/watch?v=nhr-YErfW8k
http://randomsplat.com/id5-cross-compiling-python-for-embedded-linux.html

Fortunately the Yocto/OpenEmbedded folk have these sorted out - you just
have to look in the right place.

My resolution was to ensure that the correct native python is used.
There is the host's native python that is used to run the tools of the
build system (including 'bitbake' itself).

Then there is a python-native that gets symlinked as 'nativepython' into
the native sysroot.  This 'nativepython' is setup sort of as a
crosscompiler python if you want to compile .py to .pyo/.pyc and put the
compiled files on your target.

Finally, there is the python that runs on the target system.

---

My headache was due to using the host's native python (actually ADT
bundled python on CentOS) when I needed to use 'nativepython'.  With a
small amount of shoehorn work, I was readily able to get make rules and
recipes to swig wrap some libraries as python extensions and to build
using nativepython.

There are a couple of variables you have to ensure get passed/exported
through your make to be available to 'nativepython' to point it to the
right sysroot locations of your target.

BUILD_SYS=${BUILD_SYS}
HOST_SYS=${HOST_SYS}
STAGING_LIBDIR=${STAGING_LIBDIR}
STAGING_INCDIR=${STAGING_INCDIR}

If you are using swig-native, you also need to use "-I" to get your
target sysroot include directories to it as well.


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


