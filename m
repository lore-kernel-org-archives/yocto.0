Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 282AA4C800AC
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 08:01:12 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q1ejP-0004d3-1w
	for yocto@yoctoproject.org; Mon, 21 Mar 2011 14:01:11 +0100
Received: from ppp079166100140.dsl.hol.gr ([79.166.100.140])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 14:01:11 +0100
Received: from gmane by ppp079166100140.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2011 14:01:11 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 21 Mar 2011 15:00:57 +0200
Organization: Reliable Embedded Systems
Message-ID: <im7i6a$aqu$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166100140.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: build failure - poky-image-lsb-sdk-beagleboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Mar 2011 13:01:12 -0000
X-Groupsio-MsgNum: 1161
Content-Type: multipart/mixed; boundary="------------010609040704060604060503"

--------------010609040704060604060503
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I don't know if I'm posting to the right mailing list, but just wanted
you to know that the latest and greatest from git fails when trying to
build poky-image-lsb-sdk for beaglebaord.

| make[3]: Leaving directory
`/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
| [ -d sgml ] || mkdir sgml
| cd sgml; sgml2txt .././sgml/libuser.sgml
| Processing file .././sgml/libuser.sgml
| troff: fatal error: can't find macro file s
|  fmt_txt::postASP: Empty output file, error when calling groff.
Aborting...
| make[2]: *** [sgml/libuser.txt] Error 1
| make[2]: Leaving directory
`/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/temp/log.do_compile.5485
for further information)
NOTE: package libuser-0.57.1-r1: task do_compile: Failed
ERROR: Task 1822
(/work/rber/poky/meta/recipes-extended/libuser/libuser_0.57.1.bb,
do_compile) failed with exit code '1'


Please advise

Regards,

Robert..."Giving up on assembly language was the apple in our Garden of
Eden: Languages whose use squanders machine cycles are sinful."(Epigrams
in Programming,  ACM SIGPLAN Sept. 1982)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1


--------------010609040704060604060503
Content-Type: text/plain;
 name="log.do_compile.5586"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_compile.5586"

NOTE: make
make  all-recursive
make[1]: Entering directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1'
Making all in po
make[2]: Entering directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/po'
make[2]: Leaving directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/po'
Making all in docs
make[2]: Entering directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
Making all in reference
make[3]: Entering directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs/reference'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs/reference'
make[3]: Entering directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
[ -d sgml ] || mkdir sgml
cd sgml; sgml2txt .././sgml/libuser.sgml
Processing file .././sgml/libuser.sgml
troff: fatal error: can't find macro file s
 fmt_txt::postASP: Empty output file, error when calling groff. Aborting...
make[2]: *** [sgml/libuser.txt] Error 1
make[2]: Leaving directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1/docs'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/libuser-0.57.1'
make: *** [all] Error 2
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /work/rber/poky-2011-03-20-snap-oe-build-bb/tmp/work/armv7a-poky-linux-gnueabi/libuser-0.57.1-r1/temp/log.do_compile.5586 for further information)

--------------010609040704060604060503--
