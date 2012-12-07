Return-Path: <sean.liming@annabooks.com>
Received: from mail30c40.carrierzone.com (mail30c40.carrierzone.com
	[209.235.156.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13769E00294
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 11:04:14 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from [192.168.1.135] (cpe-76-95-171-22.socal.res.rr.com
	[76.95.171.22]) (authenticated bits=0)
	by mail30c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qB7J4AMo027448
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 7 Dec 2012 19:04:12 +0000
Message-ID: <50C23DAA.8060506@annabooks.com>
Date: Fri, 07 Dec 2012 11:04:10 -0800
From: Sean Liming <sean.liming@annabooks.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-CSC: 0
X-CHA: v=2.0 cv=OYkv+GvY c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=uBsBa1gr-CYA:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=-OWP6-lA5iQA:10
	a=Y0fAcc27QDNdqW6dmbAA:9 a=wPNLvfGTeEIA:10 a=nHK3ipOpxeAA:10
	a=vEsmK8AOyQCOx286bMoA:9 a=QEXdDO2ut3YA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020207.50C23DAD.0016, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: QA issue with custom recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Dec 2012 19:04:15 -0000
X-Groupsio-MsgNum: 10911
Content-Type: multipart/mixed; boundary="------------080700070501030901020603"

--------------080700070501030901020603
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I am trying to create a simple hello world recipe for a helloworld.c 
file. The recipe almost works except it hits a QA issue: WARNING: QA 
Issue: hello: Files/directories were installed but not shipped

The warning leads to a failure in the do_rootfs.

Base image: core-image-minimal, and here is the build output:
-----------------------
Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "cedartrail"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp
meta-intel
meta-cedartrail
meta-apps         = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: QA Issue: hello: Files/directories were installed but not shipped
   /usr
   /usr/bin
ERROR: Function failed: do_rootfs
--------------------------


What am I missing in the recipe?

-- 
Regards,

Sean D. Liming
Owner
Annabooks
Cell: 858-774-3176



--------------080700070501030901020603
Content-Type: text/plain; charset=UTF-8;
 name="hello.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="hello.bb"

DESCRIPTION = "Hello World Application"
LICENSE = "GPL-2"
LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"

SECTION = "apps"

SRC_URI = "file:///home/sean/workspace/Hello/HelloYocto.c"
SRC_URI[md5sum] = "4f5c57b446cc08a7299d4dca58c49cda"
SRC_URI[sha256sum] = "f357d9214f9c585d8b3997c6a3038eb28b218de264a8bb39ae8474949ad2b98d"

S = "${WORKDIR}"

do_compile() {
 ${CC} ${CFLAGS} ${LDFLAGS} /home/sean/workspace/Hello/HelloYocto.c -o helloyocto
}

do_install() {
 install -d ${D}${bindir}
 install -m 0755 helloyocto ${D}{bindir}
}




--------------080700070501030901020603--
