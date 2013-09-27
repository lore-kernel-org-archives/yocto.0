Return-Path: <czyhit@126.com>
Received: from m15-19.126.com (m15-19.126.com [220.181.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 293BFE0164C
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 22:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=MOS7JfhADW1zLlY17p3jyEnZXrhFtT1Nxw+5
	P35p6j0=; b=HiTtquXvvD1u8W0oCeSqDPFPL1xstWwdj31BPWJW9CKUDc9nUerN
	zA/El2AAdTueCWUXlCnn/26rcHvLMVI1owX86IepNdWqr2zKNBnO3H7U3poB8at+
	rRV1iGgsEOKmWeVTHGl+3jICkVk50jmMUhWP1S/ztMmMQHSSAwO7dus=
Received: from czyhit$126.com ( [123.119.247.101] ) by ajax-webmail-wmsvr19
	(Coremail) ; Fri, 27 Sep 2013 13:35:55 +0800 (CST)
X-Originating-IP: [123.119.247.101]
Date: Fri, 27 Sep 2013 13:35:55 +0800 (CST)
From: =?GBK?B?stzWvtHQ?= <czyhit@126.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20130822(23259.5548.5550) Copyright (c) 2002-2013 www.mailtech.cn
	126com
X-CM-CTRLDATA: lOEjvmZvb3Rlcl9odG09MjYyNTo4MQ==
MIME-Version: 1.0
Message-ID: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
X-CM-TRANSID: E8qowGCpUUM8GUVSrMg3AA--.10238W
X-CM-SenderInfo: xf21xxbw6rjloofrz/1tbikBmlz00vS4TBCAACsF
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to add a new bb(xerces-c)?
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
X-List-Received-Date: Fri, 27 Sep 2013 05:36:03 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_73513_1933785170.1380260155565"

------=_Part_73513_1933785170.1380260155565
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hello, everyone!
I try to add a new bb(xerces-c) to my image, bb is as followings:


DESCRIPTION = "Xerces-C++ is a validating XML parser written in a portable subset of C++."
HOMEPAGE = "http://xerces.apache.org/xerces-c/"
LICENSE = "Apache"
LIC_FILES_CHKSUM = "file://src/xercesc/dom/DOM.hpp;endline=22;md5=9986d741cab88a8b7bc4a19d3c1b8106 \
file://src/xercesc/parsers/XercesDOMParser.hpp;endline=21;md5=85be7b6e587aa51e4f30c262f1cd695e \
file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=23;md5=4236d3c0f2537b3df547a97d60f93dc0"


PR = "r1"


DEPENDS = "curl icu"


SRC_URI = "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces-c-${PV}.tar.gz"


SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
SRC_URI[sha256sum] = "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"


inherit autotools


S = "${WORKDIR}/xerces-c-${PV}/"


EXTRA_OECONF = "\
--enable-netaccessor-curl \
--enable-transcoder-icu \
--enable-msgloader-icu \
"


but when configure come into the error:
ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/xerces-c-3.1.1'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/temp/log.do_configure.19932
ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit code '1'


who can show me how to port the autotools-based project? Thanks.

------=_Part_73513_1933785170.1380260155565
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Hello, everyone!<div>I try to add a new bb(xerces-c) to my image, bb is as followings:</div><div><br></div><div><div>DESCRIPTION = "Xerces-C++ is a validating XML parser written in a portable subset of C++."</div><div>HOMEPAGE = "http://xerces.apache.org/xerces-c/"</div><div>LICENSE = "Apache"</div><div>LIC_FILES_CHKSUM = "file://src/xercesc/dom/DOM.hpp;endline=22;md5=9986d741cab88a8b7bc4a19d3c1b8106 \</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>file://src/xercesc/parsers/XercesDOMParser.hpp;endline=21;md5=85be7b6e587aa51e4f30c262f1cd695e \</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=23;md5=4236d3c0f2537b3df547a97d60f93dc0"</div><div><br></div><div>PR = "r1"</div><div><br></div><div>DEPENDS = "curl icu"</div><div><br></div><div>SRC_URI = "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces-c-${PV}.tar.gz"</div><div><br></div><div>SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"</div><div>SRC_URI[sha256sum] = "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"</div><div><br></div><div>inherit autotools</div><div><br></div><div>S = "${WORKDIR}/xerces-c-${PV}/"</div><div><br></div><div>EXTRA_OECONF = "\</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>--enable-netaccessor-curl \</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>--enable-transcoder-icu \</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>--enable-msgloader-icu \</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>"</div></div><div><br></div><div>but when configure come into the error:</div><div><div>ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.</div><div>Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/xerces-c-3.1.1'</div><div>ERROR: Function failed: do_qa_configure</div><div>ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/temp/log.do_configure.19932</div><div>ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit code '1'</div></div><div><br></div><div>who can show me how to port the autotools-based project? Thanks.</div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_73513_1933785170.1380260155565--
