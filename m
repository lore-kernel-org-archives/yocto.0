Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD0DE009B6; Thu, 30 Apr 2015 11:27:13 -0700 (PDT)
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
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Apr 2015 11:27:09 PDT
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8498E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 11:27:09 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1YnswN-0002r9-Gk
	for yocto@yoctoproject.org; Thu, 30 Apr 2015 20:12:03 +0200
Received: from ppp-2-86-133-224.home.otenet.gr ([2.86.133.224])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 20:12:03 +0200
Received: from gmane by ppp-2-86-133-224.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 20:12:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 30 Apr 2015 21:11:54 +0300
Message-ID: <5542706A.4070807@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-133-224.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 18:27:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I have a simple recipe like this:

---

DESCRIPTION = "Simple helloworld application + git"
SECTION = "examples"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRCREV = "ecf1f0bc87960ef6b6d97c0385b44ce6ea5b2211"
SRC_URI =
"git:///home/genius/yocto-repos/simple-hello-world-git.git;protocol=file;branch=master"

S = "${WORKDIR}/git"

do_compile() {
        ${CC} simple-hello-world-git.c -o simple-hello-world-git
}

do_install() {
        install -d ${D}${bindir}
        install -m 0755 simple-hello-world-git ${D}${bindir}
}

---

If I bake the .ipk, copy it over to the target and try to install it
there it complains:

opkg install /tmp/simple-hello-world-git_1.0.1-r0_armv7a-vfp-neon.ipk
Installing simple-hello-world-git (1.0.1-r0) on root.
Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies
for simple-hello-world-git:
 *      libc6 (>= 2.21) *
 * opkg_install_cmd: Cannot install package simple-hello-world-git.

---

If I include the package into my image it works, also if I just copy
over the executable (which is included in the package) it works.

scp
/home/genius/test/yocto-autobuilder/yocto-worker/custom-fido-vexpressa9-qemu-core-image-minimal/build/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/simple-hello-world-git/1.0.1-r0/git/simple-hello-world-git
root@192.168.7.2:/tmp

/tmp/simple-hello-world-git
Simple Hello world git!

Am I missing something?

I think this worked with dizzy.

Regards,

Robert..."In Pascal, when you foll with a pointer of a handle, you know
you're fooling with a pointer of a handle. In C, you could be fooling
around with anything. C is the ultimate language for computational
promiscuity." -- Owen Hartnett

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



