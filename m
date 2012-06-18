Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE9FDE0141D
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:01:21 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so4778319ggn.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=FcEZ7x3VC34STy1QFeke+ChQ8r+BEj9QRNvavFqXyTQ=;
	b=A/HjFpLqqQxTqtSAQDvjgQYNSm1w1DYYkUpcXMOcPaNGmDkvSGHuJ4iGuby0PfECgh
	vcZR52LlzWEtliMWAbWDJnikwE5aDERi6U5nifKyHHOTz+cTYN0GCalw9O4ZLvUohrtP
	3nOoJRogPRcrDtRlMihDxLCRZ10h13btATBGGfeJudOIy6LkBu2pBQeaareWka8saLZD
	5iwmazrBDBseP9o1OXL/zGJ7Xc9D2PgyfO5d45QqkAMqyJI/Tfzfgg1pKEm4d8VAWQLQ
	eMCRJQi1VPhsB8WIWBFIizTukVH/SPnBR0zcQI3NStLbmZnmybOGQE3x6EydXJ62jKaV
	cXJA==
Received: by 10.101.143.14 with SMTP id v14mr6077158ann.55.1340053281084;
	Mon, 18 Jun 2012 14:01:21 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	a34sm69190353yhh.0.2012.06.18.14.01.20 (version=SSLv3 cipher=OTHER);
	Mon, 18 Jun 2012 14:01:20 -0700 (PDT)
Message-ID: <4FDF9720.7080204@gmail.com>
Date: Mon, 18 Jun 2012 17:01:20 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: basic recipe building - iperf
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
X-List-Received-Date: Mon, 18 Jun 2012 21:01:22 -0000
Content-Type: multipart/alternative;
	boundary="------------050207040603060203050500"

--------------050207040603060203050500
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I needed to do some network performance testing on a Crownbay board and 
needed iperf in that environment.  Since I had the core-image-sato-sdk 
image created, I just booted that and took the tarball from Sourceforge 
and built it  per the readme file instructions:

./configure
make
make install

After I completed my test, I thought about why not put that in my list 
of personal recipes.  I found the previous version of iperf in the 
openembedded collection of benchmark recipes and just copied it over.  
It built and worked fine.  There were a lot of items in the .bb that I 
didn't understand, so I thought for fun I'd just try to build a recipe 
for iperf 2.0.5 and see what happened.  My recipe is simple, mostly 
taken from the openembedded 2.0.4 version had stripped down:
-----------------------------
DESCRIPTION = "Iperf is a tool to measure maximum TCP bandwidth, 
allowing the tuning of various parameters and UDP characteristics"
HOMEPAGE = "http://dast.nlanr.net/Projects/Iperf/"
SECTION = "console/network"
LICENSE = "NewBSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=e8478eae9f479e39bc34975193360298"

SRC_URI = " \
     ${SOURCEFORGE_MIRROR}/iperf/iperf-${PV}.tar.gz \
            "
SRC_URI[md5sum] = "44b5536b67719f4250faed632a3cd016"
SRC_URI[sha256sum] = 
"636b4eff0431cea80667ea85a67ce4c68698760a9837e1e9d13096d20362265b"

inherit autotools*
*
-----------------------
A lot of it worked, but I seem to have an install error on the man 
files.  Can anyone see what is wrong based on the log below:

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 
'common-linux', 'common-glibc', 'i586-linux', 'common']
ERROR: Function failed: do_install (see 
/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/temp/log.do_install.12443 
for further information)
NOTE: make -j 8 
DESTDIR=/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image 
install
Making install in compat
make[1]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'
make[2]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
make[2]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'
make[1]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'
Making install in doc
make[1]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'
make[2]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
make[2]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'
make[1]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'
Making install in include
make[1]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'
make[2]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'
make[2]: Nothing to be done for `install-exec-am'.
make[2]: Nothing to be done for `install-data-am'.
make[2]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'
make[1]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'
Making install in src
make[1]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'
make[2]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'
test -z "/usr/bin" || /bin/mkdir -p 
"/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/bin"
make[2]: Nothing to be done for `install-data-am'.
   /usr/bin/install -c iperf 
'/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/bin'
make[2]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'
make[1]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'
Making install in man
make[1]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'
make[2]: Entering directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'
make[2]: Nothing to be done for `install-exec-am'.
test -z "/usr/share/man/man1" || /bin/mkdir -p 
"/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1"
  /usr/bin/install -c -m 644 iperf.1 iperf.1 
'/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1'
*/usr/bin/install: will not overwrite just-created 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1/iperf.1' 
with `iperf.1'
make[2]: *** [install-man1] Error 1*
make[2]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'
make[1]: *** [install-am] Error 2
make[1]: Leaving directory 
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'
make: *** [install-recursive] Error 1
ERROR: oe_runmake failed

--------------050207040603060203050500
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    I needed to do some network performance testing on a Crownbay board
    and needed iperf in that environment.&nbsp; Since I had the
    core-image-sato-sdk image created, I just booted that and took the
    tarball from Sourceforge and built it&nbsp; per the readme file
    instructions:<br>
    <br>
    ./configure<br>
    make<br>
    make install<br>
    <br>
    After I completed my test, I thought about why not put that in my
    list of personal recipes.&nbsp; I found the previous version of iperf in
    the openembedded collection of benchmark recipes and just copied it
    over.&nbsp; It built and worked fine.&nbsp; There were a lot of items in the
    .bb that I didn't understand, so I thought for fun I'd just try to
    build a recipe for iperf 2.0.5 and see what happened.&nbsp; My recipe is
    simple, mostly taken from the openembedded 2.0.4 version had
    stripped down:<br>
    -----------------------------<br>
    DESCRIPTION = "Iperf is a tool to measure maximum TCP bandwidth,
    allowing the tuning of various parameters and UDP characteristics"<br>
    HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://dast.nlanr.net/Projects/Iperf/">"http://dast.nlanr.net/Projects/Iperf/"</a><br>
    SECTION = "console/network"<br>
    LICENSE = "NewBSD"<br>
    LIC_FILES_CHKSUM =
    <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=e8478eae9f479e39bc34975193360298">"file://COPYING;md5=e8478eae9f479e39bc34975193360298"</a><br>
    <br>
    SRC_URI = " \<br>
    &nbsp;&nbsp;&nbsp; ${SOURCEFORGE_MIRROR}/iperf/iperf-${PV}.tar.gz \<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; "<br>
    SRC_URI[md5sum] = "44b5536b67719f4250faed632a3cd016"<br>
    SRC_URI[sha256sum] =
    "636b4eff0431cea80667ea85a67ce4c68698760a9837e1e9d13096d20362265b"<br>
    <br>
    inherit autotools<b><br>
    </b><br>
    -----------------------<br>
    A lot of it worked, but I seem to have an install error on the man
    files.&nbsp; Can anyone see what is wrong based on the log below:<br>
    <br>
    DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
    'common-linux', 'common-glibc', 'i586-linux', 'common']<br>
    ERROR: Function failed: do_install (see
    /build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/temp/log.do_install.12443
    for further information)<br>
    NOTE: make -j 8
    DESTDIR=/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image
    install<br>
    Making install in compat<br>
    make[1]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'<br>
    make[2]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'<br>
    make[2]: Nothing to be done for `install-exec-am'.<br>
    make[2]: Nothing to be done for `install-data-am'.<br>
    make[2]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'<br>
    make[1]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/compat'<br>
    Making install in doc<br>
    make[1]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'<br>
    make[2]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'<br>
    make[2]: Nothing to be done for `install-exec-am'.<br>
    make[2]: Nothing to be done for `install-data-am'.<br>
    make[2]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'<br>
    make[1]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/doc'<br>
    Making install in include<br>
    make[1]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'<br>
    make[2]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'<br>
    make[2]: Nothing to be done for `install-exec-am'.<br>
    make[2]: Nothing to be done for `install-data-am'.<br>
    make[2]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'<br>
    make[1]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/include'<br>
    Making install in src<br>
    make[1]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'<br>
    make[2]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'<br>
    test -z "/usr/bin" || /bin/mkdir -p
"/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/bin"<br>
    make[2]: Nothing to be done for `install-data-am'.<br>
    &nbsp; /usr/bin/install -c iperf
'/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/bin'<br>
    make[2]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'<br>
    make[1]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/src'<br>
    Making install in man<br>
    make[1]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'<br>
    make[2]: Entering directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'<br>
    make[2]: Nothing to be done for `install-exec-am'.<br>
    test -z "/usr/share/man/man1" || /bin/mkdir -p
"/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1"<br>
    &nbsp;/usr/bin/install -c -m 644 iperf.1 iperf.1
'/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1'<br>
    <b>/usr/bin/install: will not overwrite just-created
      `/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/image/usr/share/man/man1/iperf.1'
      with `iperf.1'<br>
      make[2]: *** [install-man1] Error 1</b><br>
    make[2]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'<br>
    make[1]: *** [install-am] Error 2<br>
    make[1]: Leaving directory
`/build/crownbay-denzil/tmp/work/core2-poky-linux/iperf-2.0.5-r0/iperf-2.0.5/man'<br>
    make: *** [install-recursive] Error 1<br>
    ERROR: oe_runmake failed<br>
  </body>
</html>

--------------050207040603060203050500--
