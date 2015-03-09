Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7880DE00750; Mon,  9 Mar 2015 11:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (snoopp.5.20[at]hotmail.fr)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC57E003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 11:23:02 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1YV2KQ-0007cU-2v
	for yocto@yoctoproject.org; Mon, 09 Mar 2015 19:22:58 +0100
Received: from LCaen-656-1-152-146.w217-128.abo.wanadoo.fr ([217.128.82.146])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 19:22:58 +0100
Received: from snoopp.5.20 by LCaen-656-1-152-146.w217-128.abo.wanadoo.fr with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 19:22:58 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Kfrell <snoopp.5.20@hotmail.fr>
Date: Mon, 9 Mar 2015 18:22:46 +0000 (UTC)
Message-ID: <loom.20150309T192227-801@post.gmane.org>
References: <loom.20150309T171019-54@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 217.128.82.146 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:35.0) Gecko/20100101 Firefox/35.0)
Subject: Re: Adding new library to yocto project
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
X-List-Received-Date: Mon, 09 Mar 2015 18:23:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Kfrell <snoopp.5.20@...> writes:

> 
> I am using Yocto and I just would like to integrate a new library 
> in my project.
> 
> I create a new recipe named "libxerces" which contains a file
> "libxerces-3.1.1.bb". The bb file is quite simple and it is based 
> on autotools : 
> 
> DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
> HOMEPAGE = "http://xerces.apache.org/xerces-c/"
> PRIORITY = "optional"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> 
> PR = "r1"
> 
> SRC_URI =
>
"http://mirror.serversupportforum.de/apache/xerces/c/3/sources/xerces-c-${PV}.tar.gz"
> 
> SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] =
> "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
> 
> s="${WORKDIR}/xerces-c-${PV}"
> 
> inherit autotools pkgconfig
> 
> BBCLASSEXTEND += "native"
> 
> I added "libxerces" to my bb image by using IMAGE_INSTALL += " libxerces".
> Then, I try to build my image thru bitbake my-image-test and eveything is
> done correctly but libxerces returns some errors :
> 
> I just would like to create the .ipk package named libxerces in 
> which .so files should be available.
> 

I read almost all your example but nothing help me about my issues. 

The actuel returned errors are :

ERROR: This autoconf log indicates errors it looked at host include and/or
library paths while determining system capabilities. Rerun configure task
after fixing this.The path was
/build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/xerces-c-3.1.1
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/templog.do_configure.21943
ERROR: Task 541


