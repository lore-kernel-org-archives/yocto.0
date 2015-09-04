Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 425C9E00B63; Fri,  4 Sep 2015 15:17:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Sep 2015 15:17:03 PDT
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF69E00B11
	for <yocto@yoctoproject.org>; Fri,  4 Sep 2015 15:17:03 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZXyiQ-0000bw-Uo
	for yocto@yoctoproject.org; Fri, 04 Sep 2015 23:40:11 +0200
Received: from ppp-2-86-147-22.home.otenet.gr ([2.86.147.22])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 Sep 2015 23:40:10 +0200
Received: from gmane by ppp-2-86-147-22.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 04 Sep 2015 23:40:10 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 05 Sep 2015 00:39:53 +0300
Message-ID: <msd33a$81v$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-147-22.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: gdb/gdbserver vs. eclipse
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
X-List-Received-Date: Fri, 04 Sep 2015 22:17:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I managed to step form HelloWorld into the C library and friends with a
.gdbinit file like this:

# don't use default libs from x86/Ubuntu:
set sysroot /opt/adt-target-sysroot/beagle-bone-black-ml
set solib-absolute-prefix /opt/adt-target-sysroot/beagle-bone-black-ml
set solib-search-path  /opt/adt-target-sysroot/beagle-bone-black-ml
# point to the libraries with debug info:
set debug-file-directory
/opt/adt-target-sysroot/beagle-bone-black-ml/usr/lib/debug
# point to the source code:
set substitute-path /usr/src/debug
/opt/adt-target-sysroot/beagle-bone-black-ml/usr/src/debug
set substitute-path /
/opt/adt-target-sysroot/beagle-bone-black-ml/usr/src/debug
# connect to target:
target remote 192.168.42.11:5555
# set some breakpoints:
b main
b 32

When I try to do the same thing with Eclipse luna and the Eclipse plugin
it can not find the sources.

I am able to debug a hello world program with Eclipse, but when I step
into the C library I only see assembly code.

What magic is Eclipse doing?

Shouldn't .gdbinit work as well with Eclipse?

Regards,

Robert..."Software development is like making a baby... You can't make a
baby in one month by impregnating nine women."

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



