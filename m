Return-Path: <l.joli@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7140E00A85; Wed, 29 Jul 2015 06:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f197.google.com (mail-yk0-f197.google.com
	[209.85.160.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A11E00A80
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:14:30 -0700 (PDT)
Received: by ykax123 with SMTP id x123so9589567yka.0
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=eQo5o5LIusahJUMJHr3sAO2KXOdAMMdoIpv+0oK9S+0=;
	b=EuTeJyaPj0c4B6FjQHDAzXHBZ0Dy6PZG82lJ/FI3ugrmHVTF4Y+sNrIsX8N7yoEPeU
	vI1zxGM0L42Zquejg8l22KBe92fCOHvIUZNyYo9bhusB88eI3ekLegn9wtb4djK8dMhR
	tvUwCbCoqLPEqu1Fw5o8RkMJftoGJ8l4+Q/OozKS1/aXo+9QNdNr4rs+XwAYj1E84TZV
	wJmOb03I+VeNovoBYsV9gmGoOtWXmx5FmzAsKL4cXmSm4g+14OFNPQgFbLht7T+qHlH5
	8/YdaXFdaaSm+aJM35y1b/sWsppwDucXdj6JDh/z6iQaFPAC2u2ajiqgBjIrDQvKxgyn
	BT8A==
X-Gm-Message-State: ALoCoQkfbG727szkiJS772c4q3hJlBTI4uWZ4PfFrlIoiFjOYMOpuoCDjXcoQSH0m8Qo319vZ3Nv
X-Received: by 10.52.72.100 with SMTP id c4mr51908224vdv.74.1438175669945;
	Wed, 29 Jul 2015 06:14:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.79.6 with HTTP; Wed, 29 Jul 2015 06:14:10 -0700 (PDT)
From: Laurent Joli <l.joli@expemb.com>
Date: Wed, 29 Jul 2015 15:14:10 +0200
Message-ID: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [Asterisk] recipe 13.1.1
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
X-List-Received-Date: Wed, 29 Jul 2015 13:14:33 -0000
Content-Type: multipart/alternative; boundary=20cf307f3134ee9cce051c035db7

--20cf307f3134ee9cce051c035db7
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I am try to build an recipe for asterisk 13.1.1 but I have some errors.

I will show you my recipe :

/**********************/
DESCRIPTION = "asterisk PBX"
DEPENDS = "openssl ncurses sqlite3 libxml2 jansson curl libxslt "
HOMEPAGE = "http://www.asterisk.org"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=3c6764ffcbe996d1d8f919b393ccdd67"


PR = "0"

SRC_URI = "
http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${PV}.tar.gz
\
           file://asterisk.init"

SRC_URI[md5sum] = "a2781693a67e008d2a3c60b756d4d4ab"
SRC_URI[sha256sum] =
"070b68238734117c0b9c1018ba192ff29964a115a71620e648d4286c92f2f02b"


EXTRA_OECONF = " \
        --without-curses \
        --without-gtk2 \
        --without-isdnnet \
        --without-misdn \
        --without-nbs \
        --with-ncurses \
        --without-netsnmp \
        --without-newt \
        --without-ogg \
        --without-osptk \
        --without-popt \
        --without-pri \
        --without-radius \
        --without-sdl \
        --without-spandsp \
        --without-suppserv \
        --without-tds \
        --without-termcap \
        --without-tinfo \
        --without-vorbis \
        --without-vpb \
        --without-postgres \
        --without-lua \
        --disable-xmldoc \
"

inherit update-rc.d

FILES_${PN}-dbg += "${libdir}/asterisk/modules/.debug"


INITSCRIPT_PACKAGES = "${PN}"
INITSCRIPT_NAME_${PN} = "asterisk"
INITSCRIPT_PARAMS_${PN} = "defaults 29 29"

PACKAGES =+ "${PN}-moh"

DESCRIPTION_${PN}-moh = "Asterisk MusicOnHold sound"
FILES_${PN}-moh = "${localstatedir}/lib/${PN}/moh"


do_configure() {
    echo "begin configure asterisk"
    ./configure --host=${TARGET_SYS} --build=${BUILD_SYS}  ${EXTRA_OECONF}
}

# Install init script
do_install_append() {
    install -d ${D}${sysconfdir}/init.d
    install -m 0775 ${WORKDIR}/asterisk.init
${D}${sysconfdir}/init.d/asterisk

    # Remove EN sound files from this package as they are installed by
"asterisk-sounds-en"
    rm -rf ${D}/var/lib/asterisk/sounds/en
}

FILES_${PN} += "${sysconfdir}/init.d/asterisk \
                /run/asterisk "
/************************************/

When I build my recipe , I have  this log :

//....//
checking for utime.h... yes
| checking arpa/nameser.h usability... yes
| checking arpa/nameser.h presence... yes
| checking for arpa/nameser.h... yes
| checking sys/io.h usability... yes
| checking sys/io.h presence... yes
| checking for sys/io.h... yes
| checking for initscr in -lncurses... yes
| checking curses.h usability... yes
| checking curses.h presence... yes
| checking for curses.h... yes
| checking for uuid_generate_random in -luuid... yes
| checking uuid/uuid.h usability... yes
| checking uuid/uuid.h presence... yes
| checking for uuid/uuid.h... yes
| checking for uuid_generate_random in -le2fs-uuid... no
| checking for uuid_generate_random... no
| checking for json_dumps in -ljansson... yes
| checking jansson.h usability... yes
| checking jansson.h presence... yes
| checking for jansson.h... yes
| checking for arm-poky-linux-gnueabi-xml2-config... no
| checking for xml2-config...
/media/ljoli/disk_one/compile_fido/build/tmp/sysroots/cgtqmx6/usr/bin/crossscripts/xml2-config
| configure: *** The Asterisk menuselect tool requires the 'libxml2'
development package.
| configure: *** Please install the 'libxml2' development package.
| + bb_exit_handler
| + ret=1
| + echo WARNING: exit code 1 from a shell command.
| WARNING: exit code 1 from a shell command.
| + exit 1

How to add "libxml2-dev" in my recipe ?

Regards,
LJO

--20cf307f3134ee9cce051c035db7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfc2lnbmF0dXJlIj48ZGl2IGRpcj0ibHRy
Ij48YnI+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PkhpIGV2ZXJ5Ym9k
eSw8YnI+PGJyPjwvZGl2PkkgYW0gdHJ5IHRvIGJ1aWxkIGFuIHJlY2lwZSBmb3IgYXN0ZXJpc2sg
MTMuMS4xIGJ1dCBJIGhhdmUgc29tZSBlcnJvcnMuPGJyPjxicj48L2Rpdj5JIHdpbGwgc2hvdyB5
b3UgbXkgcmVjaXBlIDogPGJyPjxicj4vKioqKioqKioqKioqKioqKioqKioqKi88YnI+REVTQ1JJ
UFRJT04gPSAmcXVvdDthc3RlcmlzayBQQlgmcXVvdDvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDxicj5ERVBFTkRTID0gJnF1b3Q7b3BlbnNzbCBuY3Vyc2VzIHNxbGl0ZTMgbGli
eG1sMiBqYW5zc29uIGN1cmwgbGlieHNsdCAmcXVvdDs8YnI+SE9NRVBBR0UgPSAmcXVvdDs8YSBo
cmVmPSJodHRwOi8vd3d3LmFzdGVyaXNrLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmh0dHA6Ly93d3cu
YXN0ZXJpc2sub3JnPC9hPiZxdW90O8KgwqDCoMKgwqDCoMKgwqAgPGJyPkxJQ0VOU0UgPSAmcXVv
dDtHUEx2MiZxdW90O8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8YnI+TElDX0ZJTEVTX0NIS1NVTSA9ICZxdW90O2ZpbGU6Ly9DT1BZSU5HO21k
NT0zYzY3NjRmZmNiZTk5NmQxZDhmOTE5YjM5M2NjZGQ2NyZxdW90Ozxicj7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPlBSID0gJnF1b3Q7MCZxdW90O8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+U1JD
X1VSSSA9ICZxdW90OzxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMuYXN0ZXJpc2sub3JnL3B1Yi90
ZWxlcGhvbnkvYXN0ZXJpc2svcmVsZWFzZXMvYXN0ZXJpc2stJCU3QlBWJTdELnRhci5neiIgdGFy
Z2V0PSJfYmxhbmsiPmh0dHA6Ly9kb3dubG9hZHMuYXN0ZXJpc2sub3JnL3B1Yi90ZWxlcGhvbnkv
YXN0ZXJpc2svcmVsZWFzZXMvYXN0ZXJpc2stJHtQVn0udGFyLmd6PC9hPiBcPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgIGZpbGU6Ly9hc3Rlcmlzay5pbml0JnF1b3Q7wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5TUkNfVVJJW21k
NXN1bV0gPSAmcXVvdDthMjc4MTY5M2E2N2UwMDhkMmEzYzYwYjc1NmQ0ZDRhYiZxdW90Ozxicj5T
UkNfVVJJW3NoYTI1NnN1bV0gPSAmcXVvdDswNzBiNjgyMzg3MzQxMTdjMGI5YzEwMThiYTE5MmZm
Mjk5NjRhMTE1YTcxNjIwZTY0OGQ0Mjg2YzkyZjJmMDJiJnF1b3Q7PGJyPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5FWFRSQV9PRUNPTkYgPSAmcXVvdDsgXMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDC
oMKgwqDCoMKgIC0td2l0aG91dC1jdXJzZXMgXMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKgwqAgLS13aXRob3V0LWd0azIgXMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC1p
c2RubmV0IFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKg
wqDCoCAtLXdpdGhvdXQtbWlzZG4gXMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDxicj7CoMKgwqDCoMKgwqDCoCAtLXdpdGhvdXQtbmJzIFzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aC1uY3Vyc2Vz
IFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKg
wqDCoCAtLXdpdGhvdXQtbmV0c25tcCBcwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8YnI+wqDCoMKgwqDCoMKgwqAgLS13aXRob3V0LW5ld3QgXMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC1vZ2cgXMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKg
wqAgLS13aXRob3V0LW9zcHRrIFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8YnI+wqDCoMKgwqDCoMKgwqAgLS13aXRob3V0LXBvcHQgXMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC1wcmkgXMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKg
wqAgLS13aXRob3V0LXJhZGl1cyBcwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDxicj7CoMKgwqDCoMKgwqDCoCAtLXdpdGhvdXQtc2RsIFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC1zcGFuZHNw
IFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoCAt
LXdpdGhvdXQtc3VwcHNlcnYgXMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7C
oMKgwqDCoMKgwqDCoCAtLXdpdGhvdXQtdGRzIFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC10ZXJtY2FwIFzCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoCAtLXdpdGhv
dXQtdGluZm8gXMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj7CoMKg
wqDCoMKgwqDCoCAtLXdpdGhvdXQtdm9yYmlzIFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgIC0td2l0aG91dC12cGIgXMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDCoMKgwqAgLS13aXRob3V0
LXBvc3RncmVzIFzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKgwqDC
oMKgwqAgLS13aXRob3V0LWx1YSBcwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoCAtLWRpc2FibGUteG1sZG9jIFzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPiZxdW90O8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPGJyPmluaGVyaXQgdXBkYXRlLXJjLmTCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPGJyPjxicj5GSUxFU18ke1BOfS1kYmcgKz0gJnF1b3Q7JHtsaWJkaXJ9
L2FzdGVyaXNrL21vZHVsZXMvLmRlYnVnJnF1b3Q7PGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgIDxi
cj7CoMKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+SU5JVFNDUklQVF9QQUNLQUdFUyA9ICZxdW90OyR7
UE59JnF1b3Q7PGJyPklOSVRTQ1JJUFRfTkFNRV8ke1BOfSA9ICZxdW90O2FzdGVyaXNrJnF1b3Q7
PGJyPklOSVRTQ1JJUFRfUEFSQU1TXyR7UE59ID0gJnF1b3Q7ZGVmYXVsdHMgMjkgMjkmcXVvdDs8
YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqAgPGJyPlBBQ0tBR0VTID0rICZxdW90OyR7UE59LW1vaCZx
dW90Ozxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5ERVNDUklQVElPTl8ke1BOfS1tb2gg
PSAmcXVvdDtBc3RlcmlzayBNdXNpY09uSG9sZCBzb3VuZCZxdW90Ozxicj5GSUxFU18ke1BOfS1t
b2ggPSAmcXVvdDske2xvY2Fsc3RhdGVkaXJ9L2xpYi8ke1BOfS9tb2gmcXVvdDs8YnI+wqDCoMKg
wqDCoMKgwqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5kb19jb25maWd1cmUo
KSB7PGJyPsKgwqDCoCBlY2hvICZxdW90O2JlZ2luIGNvbmZpZ3VyZSBhc3RlcmlzayZxdW90Ozxi
cj7CoMKgwqAgLi9jb25maWd1cmUgLS1ob3N0PSR7VEFSR0VUX1NZU30gLS1idWlsZD0ke0JVSUxE
X1NZU33CoCAke0VYVFJBX09FQ09ORn08YnI+fcKgwqDCoMKgwqDCoMKgwqDCoCA8YnI+wqDCoMKg
wqDCoMKgwqDCoMKgwqAgPGJyPiMgSW5zdGFsbCBpbml0IHNjcmlwdDxicj5kb19pbnN0YWxsX2Fw
cGVuZCgpIHs8YnI+wqDCoMKgIGluc3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn0vaW5pdC5kPGJy
PsKgwqDCoCBpbnN0YWxsIC1tIDA3NzUgJHtXT1JLRElSfS9hc3Rlcmlzay5pbml0wqDCoCAke0R9
JHtzeXNjb25mZGlyfS9pbml0LmQvYXN0ZXJpc2s8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
YnI+wqDCoMKgICMgUmVtb3ZlIEVOIHNvdW5kIGZpbGVzIGZyb20gdGhpcyBwYWNrYWdlIGFzIHRo
ZXkgYXJlIGluc3RhbGxlZCBieSAmcXVvdDthc3Rlcmlzay1zb3VuZHMtZW4mcXVvdDs8YnI+wqDC
oMKgIHJtIC1yZiAke0R9L3Zhci9saWIvYXN0ZXJpc2svc291bmRzL2VuPGJyPn3CoMKgwqDCoMKg
wqDCoMKgwqAgPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgIDxicj5GSUxFU18ke1BOfSArPSAmcXVv
dDske3N5c2NvbmZkaXJ9L2luaXQuZC9hc3RlcmlzayBcPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAvcnVuL2FzdGVyaXNrICZxdW90OyA8YnI+LyoqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKi88YnI+PGJyPjwvZGl2PldoZW4gSSBidWlsZCBteSByZWNpcGUgLCBJ
IGhhdmXCoCB0aGlzIGxvZyA6IDxicj48YnI+Ly8uLi4uLy88YnI+Y2hlY2tpbmcgZm9yIHV0aW1l
LmguLi4geWVzPGJyPnwgY2hlY2tpbmcgYXJwYS9uYW1lc2VyLmggdXNhYmlsaXR5Li4uIHllczxi
cj58IGNoZWNraW5nIGFycGEvbmFtZXNlci5oIHByZXNlbmNlLi4uIHllczxicj58IGNoZWNraW5n
IGZvciBhcnBhL25hbWVzZXIuaC4uLiB5ZXM8YnI+fCBjaGVja2luZyBzeXMvaW8uaCB1c2FiaWxp
dHkuLi4geWVzPGJyPnwgY2hlY2tpbmcgc3lzL2lvLmggcHJlc2VuY2UuLi4geWVzPGJyPnwgY2hl
Y2tpbmcgZm9yIHN5cy9pby5oLi4uIHllczxicj58IGNoZWNraW5nIGZvciBpbml0c2NyIGluIC1s
bmN1cnNlcy4uLiB5ZXM8YnI+fCBjaGVja2luZyBjdXJzZXMuaCB1c2FiaWxpdHkuLi4geWVzPGJy
PnwgY2hlY2tpbmcgY3Vyc2VzLmggcHJlc2VuY2UuLi4geWVzPGJyPnwgY2hlY2tpbmcgZm9yIGN1
cnNlcy5oLi4uIHllczxicj58IGNoZWNraW5nIGZvciB1dWlkX2dlbmVyYXRlX3JhbmRvbSBpbiAt
bHV1aWQuLi4geWVzPGJyPnwgY2hlY2tpbmcgdXVpZC91dWlkLmggdXNhYmlsaXR5Li4uIHllczxi
cj58IGNoZWNraW5nIHV1aWQvdXVpZC5oIHByZXNlbmNlLi4uIHllczxicj58IGNoZWNraW5nIGZv
ciB1dWlkL3V1aWQuaC4uLiB5ZXM8YnI+fCBjaGVja2luZyBmb3IgdXVpZF9nZW5lcmF0ZV9yYW5k
b20gaW4gLWxlMmZzLXV1aWQuLi4gbm88YnI+fCBjaGVja2luZyBmb3IgdXVpZF9nZW5lcmF0ZV9y
YW5kb20uLi4gbm88YnI+fCBjaGVja2luZyBmb3IganNvbl9kdW1wcyBpbiAtbGphbnNzb24uLi4g
eWVzPGJyPnwgY2hlY2tpbmcgamFuc3Nvbi5oIHVzYWJpbGl0eS4uLiB5ZXM8YnI+fCBjaGVja2lu
ZyBqYW5zc29uLmggcHJlc2VuY2UuLi4geWVzPGJyPnwgY2hlY2tpbmcgZm9yIGphbnNzb24uaC4u
LiB5ZXM8YnI+fCBjaGVja2luZyBmb3IgYXJtLXBva3ktbGludXgtZ251ZWFiaS14bWwyLWNvbmZp
Zy4uLiBubzxicj58IGNoZWNraW5nIGZvciB4bWwyLWNvbmZpZy4uLiAvbWVkaWEvbGpvbGkvZGlz
a19vbmUvY29tcGlsZV9maWRvL2J1aWxkL3RtcC9zeXNyb290cy9jZ3RxbXg2L3Vzci9iaW4vY3Jv
c3NzY3JpcHRzL3htbDItY29uZmlnPGJyPnwgY29uZmlndXJlOiAqKiogVGhlIEFzdGVyaXNrIG1l
bnVzZWxlY3QgdG9vbCByZXF1aXJlcyB0aGUgJiMzOTtsaWJ4bWwyJiMzOTsgZGV2ZWxvcG1lbnQg
cGFja2FnZS48YnI+fCBjb25maWd1cmU6ICoqKiBQbGVhc2UgaW5zdGFsbCB0aGUgJiMzOTtsaWJ4
bWwyJiMzOTsgZGV2ZWxvcG1lbnQgcGFja2FnZS48YnI+fCArIGJiX2V4aXRfaGFuZGxlcjxicj58
ICsgcmV0PTE8YnI+fCArIGVjaG8gV0FSTklORzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNv
bW1hbmQuPGJyPnwgV0FSTklORzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNvbW1hbmQuPGJy
PnwgKyBleGl0IDE8YnI+PGJyPjwvZGl2PkhvdyB0byBhZGQgJnF1b3Q7bGlieG1sMi1kZXYmcXVv
dDsgaW4gbXkgcmVjaXBlID8gPGJyPjwvZGl2Pjxicj48L2Rpdj5SZWdhcmRzLDxicj48L2Rpdj5M
Sk88L2Rpdj48L2Rpdj48L2Rpdj4NCjwvZGl2Pg0K

--20cf307f3134ee9cce051c035db7--
