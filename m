Return-Path: <czyhit@126.com>
Received: from m15-19.126.com (m15-19.126.com [220.181.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FE6FE015DA
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 21:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=RHFEw8x+rsGCFNYK9wBPXscBU/smZbeQz85i
	6gG4fdI=; b=PPDq4nsF8MqYPf7McL9LicOlpHHwfyNQ/tbw/yCIeYxCPJoQEXX/
	3Nnvmv8tLTzM3vxo805T/HV1Trh4jlTqd/RO0hjOtHHatFseOscIEVtit2AIdzQ5
	qCyaoTOt3uvryPOdvru29hrChY3esV+u88TESE6VXEY+YC4vFqYfCUA=
Received: from czyhit$126.com ( [123.119.247.101] ) by ajax-webmail-wmsvr19
	(Coremail) ; Mon, 30 Sep 2013 12:07:51 +0800 (CST)
X-Originating-IP: [123.119.247.101]
Date: Mon, 30 Sep 2013 12:07:51 +0800 (CST)
From: =?GBK?B?stzWvtHQ?= <czyhit@126.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20130822(23259.5548.5550) Copyright (c) 2002-2013 www.mailtech.cn
	126com
X-CM-CTRLDATA: 6vYsOWZvb3Rlcl9odG09NDc4NDo4MQ==
MIME-Version: 1.0
Message-ID: <7457be49.d1ce.1416d0d052e.Coremail.czyhit@126.com>
X-CM-TRANSID: E8qowGDZf0EY+UhS6OY5AA--.8391W
X-CM-SenderInfo: xf21xxbw6rjloofrz/1tbi0B2oz05087fp0gABsu
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: xerces-c come into ERROR: Function failed: do_qa_configure
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
X-List-Received-Date: Mon, 30 Sep 2013 04:07:59 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_195321_816461113.1380514071853"

------=_Part_195321_816461113.1380514071853
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/xerces-c-3.1.1'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/temp/log.do_configure.31478
ERROR: Task 496 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit code '1'

I have used the followings bb, but the error still exists, how to trace and resolve the problem?
Check oe-classic recipes
http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/xerces-c/xerces-c_3.1.1.bb


DESCRIPTION ="Xerces-c is a validating xml parser written in C++"
HOMEPAGE ="http://xerces.apache.org/xerces-c/"
SECTION ="libs"
PRIORITY ="optional"
LICENSE ="Apache-2.0"

SRC_URI ="http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"

inherit autotools pkgconfig

PACKAGES ="libxerces-c \    libxerces-c-dbg \    libxerces-c-dev \    xerces-c-samples \    xerces-c-samples-dbg \"

FILES_libxerces-c ="${libdir}/libxerces-c-3.1.so"
FILES_libxerces-c-dbg ="${libdir}/.debug/"
FILES_libxerces-c-dev ="${libdir}/lib*.la \    ${libdir}/lib*.a \    ${libdir}/libxerces-c.so \    ${libdir}/pkgconfig/xerces-c.pc \    ${includedir}/xercesc \"
FILES_xerces-c-samples ="${bindir}/*"
FILES_xerces-c-samples-dbg ="${bindir}/.debug/"

SRC_URI[md5sum] ="6a8ec45d83c8cfb1584c5a5345cb51ae"
SRC_URI[sha256sum] ="a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"

BBCLASSEXTEND +="native"

------=_Part_195321_816461113.1380514071853
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><pre style="padding: 0px; margin-top: 0px; margin-bottom: 0px;"><code><pre>ERROR: This autoconf log indicates errors, it looked at host include and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/xerces-c-3.1.1'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/temp/log.do_configure.31478
ERROR: Task 496 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit code '1'<span style="font-size: 14.44444465637207px; line-height: 25.55555534362793px;">
</span></pre><div style="font-size: 13px; line-height: normal;"><br></div><pre style="font-size: 14.44444465637207px; line-height: 25.55555534362793px;">I have used the followings bb, but the error still exists, how to trace and resolve the problem?</pre><pre style="font-size: 14.44444465637207px; line-height: 25.55555534362793px;">Check oe-classic recipes
http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/xerces-c/xerces-c_3.1.1.bb</pre></code></pre><pre style="padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 13px; line-height: normal;"><code><br></code></pre><pre style="padding: 0px; margin-top: 0px; margin-bottom: 0px; font-size: 13px; line-height: normal;"><code>DESCRIPTION <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"Xerces-c is a validating xml parser written in C++"</span>
HOMEPAGE <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"http://xerces.apache.org/xerces-c/"</span>
SECTION <span class="hl sym">=</span>  <span class="hl str" style="color: rgb(255, 0, 0);">"libs"</span>
PRIORITY <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"optional"</span>
LICENSE <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"Apache-2.0"</span>

SRC_URI <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"</span>

inherit autotools pkgconfig

PACKAGES <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"libxerces-c \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    libxerces-c-dbg \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    libxerces-c-dev \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    xerces-c-samples \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    xerces-c-samples-dbg \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">"</span>

FILES_libxerces<span class="hl sym">-</span>c <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"${libdir}/libxerces-c-3.1.so"</span>
FILES_libxerces<span class="hl sym">-</span>c<span class="hl sym">-</span>dbg <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"${libdir}/.debug/"</span>
FILES_libxerces<span class="hl sym">-</span>c<span class="hl sym">-</span>dev <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"${libdir}/lib*.la \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    ${libdir}/lib*.a \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    ${libdir}/libxerces-c.so \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    ${libdir}/pkgconfig/xerces-c.pc \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">    ${includedir}/xercesc \</span>
<span class="hl str" style="color: rgb(255, 0, 0);">"</span>
FILES_xerces<span class="hl sym">-</span>c<span class="hl sym">-</span>samples <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"${bindir}/*"</span>
FILES_xerces<span class="hl sym">-</span>c<span class="hl sym">-</span>samples<span class="hl sym">-</span>dbg <span class="hl sym">=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"${bindir}/.debug/"</span>

SRC_URI<span class="hl sym">[</span>md5sum<span class="hl sym">] =</span> <span class="hl str" style="color: rgb(255, 0, 0);">"6a8ec45d83c8cfb1584c5a5345cb51ae"</span>
SRC_URI<span class="hl sym">[</span>sha256sum<span class="hl sym">] =</span> <span class="hl str" style="color: rgb(255, 0, 0);">"a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"</span>

BBCLASSEXTEND <span class="hl sym">+=</span> <span class="hl str" style="color: rgb(255, 0, 0);">"native"</span></code></pre></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_195321_816461113.1380514071853--
