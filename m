Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B70E00CD0; Tue, 19 Sep 2017 23:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 169 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Sep 2017 23:46:48 PDT
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25021E00A39
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 23:46:48 -0700 (PDT)
Received: from [2a01:79d:7376:8270:c064:8ee8:cd43:324d] (port=51430)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>) id 1duYjm-0001II-M5
	for yocto@yoctoproject.org; Wed, 20 Sep 2017 08:43:58 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <cfa95210-8fc5-492a-7c8c-3f9b6c561cda@seldal.com>
Date: Wed, 20 Sep 2017 08:43:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Sysroot bug in bitbake or wrong configuration?
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
X-List-Received-Date: Wed, 20 Sep 2017 06:46:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


I have the spu-image.bb recipe below, and running on Pyro, the recipe 
behaves differently if the recipe is run on a fresh system with no 
sstate elements, compared to a system that has a sstate cache present.

The failure is that the spu-image required the host tool "uuidgen", and 
thus has DEPENDS on "util-linux-native". When the -c cleanall spu-image 
is run prior to building spu-image, the recipe sysroot is properly 
initialized with util-linux-native and uuidgen is available in the task 
functions.

If -c clean is run prior to build, or simply by deleting tmp, the 
sysroot will not be properly initialized and uuidgen is not available 
and the recipe fails

Is this a bug in bitbake or am I missing something in my recipe?


Best regards,
Svein Seldal


# spu-image.bb
DESCRIPTION = "Upgrade Image"

LICENSE = "MIT"
LIC_FILES_CHKSUM = 
"file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"

DEPENDS = "util-linux-native"
INHIBIT_DEFAULT_DEPS = "1"

fakeroot do_spu_rootfs() {
	uuidgen
}
addtask do_spu_rootfs before do_build

fakeroot do_spu_image () {
	uuidgen
}
addtask do_spu_image after do_spu_rootfs before do_build

# It does not matter if these are noexec-ed or not
#do_fetch[noexec] = "1"
#do_unpack[noexec] = "1"
#do_patch[noexec] = "1"
#do_configure[noexec] = "1"
#do_compile[noexec] = "1"
#do_install[noexec] = "1"
#do_package[noexec] = "1"
#do_package_qa[noexec] = "1"
#do_packagedata[noexec] = "1"
#do_package_write_ipk[noexec] = "1"
#do_package_write_deb[noexec] = "1"
#do_package_write_rpm[noexec] = "1"


# 1) Running works fine
#   		bitbake -v spu-image |tee log1.txt
#   		cat log1.txt | grep -2 uuidgen
#
# 2) Cleaning
#   		bitbake -c clean spu-image
#
# 3) Rebuilding -- now fails
#   		bitbake -v spu-image |tee log2.txt
#   		cat log2.txt | grep -2 uuidgen
#
# 4) Sstate cleaning
#   		bitbake -c cleanall spu-image
#
# 5) Works again:
#   		bitbake -v spu-image |tee log3.txt
#   		cat log3.txt | grep -2 uuidgen


