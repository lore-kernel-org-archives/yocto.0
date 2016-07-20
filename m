Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FD45E009C3; Wed, 20 Jul 2016 10:30:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_NUMERIC_HELO, SPF_HELO_PASS, TO_NO_BRKTS_PCNT,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.5 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B625DE0086E
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 10:30:28 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bPvKE-0007Kv-34
	for yocto@yoctoproject.org; Wed, 20 Jul 2016 19:30:26 +0200
Received: from 62.74.16.245 ([62.74.16.245])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 19:30:26 +0200
Received: from gmane by 62.74.16.245 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 19:30:26 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 20 Jul 2016 20:30:06 +0300
Message-ID: <nmocev$1gg$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 62.74.16.245
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: custom internal toolchain/glibc
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
X-List-Received-Date: Wed, 20 Jul 2016 17:30:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I was wondering what's the process if someone wanted to use, say Jethro
or Krogoth, but with different/custom versions of gcc, binutils, glibc
e.g. to cook some syscalls and to compile ancient Linux kernels.

I came across tcmode-default.inc[1] where such things are defined:

GCCVERSION ?= "6.1%"
SDKGCCVERSION ?= "${GCCVERSION}"
BINUVERSION ?= "2.26%"
GDBVERSION ?= "7.11%"
GLIBCVERSION ?= "2.24"
UCLIBCVERSION ?= "1.0%"
LINUXLIBCVERSION ?= "4.4"

Would hacking/duplicating and hacking this be a good starting point?

With TCMODE I could get poky to pick up some external toolchain, but I
would like it to build a custom one instead.

Please advise.

Thanks,

Robert

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/distro/include/tcmode-default.inc..."My
employer doesn't even agree with me about C indentation style." - Used
as a disclaimer

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



