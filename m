Return-Path: <muellcontainer@6th-dimension.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFBCE00EAC; Wed, 17 Aug 2016 07:00:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [88.198.40.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from tux111.hoststar.ch (tux111.hoststar.ch [88.198.40.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A589E00EA5
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 07:00:28 -0700 (PDT)
Received: from webmail.hoststar.ch (webmail.hoststar.ch [78.46.40.20])
	(authenticated bits=0)
	by tux111.hoststar.ch (8.14.9/8.12.11) with ESMTP id u7HE0RT7012963
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 16:00:27 +0200
MIME-Version: 1.0
Date: Wed, 17 Aug 2016 16:00:26 +0200
From: muellcontainer@6th-dimension.com
To: Yocto <yocto@yoctoproject.org>
Message-ID: <af62219d292861333e96c13fc82de172@6th-dimension.com>
X-Sender: muellcontainer@6th-dimension.com
User-Agent: Hoststar Webmail/0.9.2
X-HS-BS-Header: lnvp0KjWGt4Qae/IiYBO2Q
X-Scanned-By: mimedefang-scanned
Subject: Installing a rootfs inside a rootfs
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
X-List-Received-Date: Wed, 17 Aug 2016 14:00:31 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

thanks for accepting me to the yocto mailing list.

Here is my first question :)

For container testing purposes, I would like to write a recipe which 
downloads the latest arch linux arm image and installs its contents into 
"/container" on the rootfs. However, during do_rootfs, my recipe fails - 
it seems because of automatically generated dependencies. You will 
notice, that I have already tried several options to come closer to a 
solution, without success. Please help:

My recipe:

DESCRIPTION = "Test root fs Arch Linux ARM"
SECTION = "container test"
LICENSE = "GPLv1"
LIC_FILES_CHKSUM = 
"file://${COMMON_LICENSE_DIR}/GPL-1.0;md5=e9e36a9de734199567a4d769498f743d"
ALLOW_EMPTY_${PN} = "1"

RPM_LDD_IGNORE_CHECK = "*"
INSANE_SKIP_${PN} += "dev-so file-rdeps"

FILES_${PN} = "\
      /container"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI = 
"http://os.archlinuxarm.org/os/ArchLinuxARM-am33x-latest.tar.gz;unpack=0"
BB_STRICT_CHECKSUM = "0"

INHIBIT_PACKAGE_STRIP = "1"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_DEFAULT_DEPS = "1"

S = "${WORKDIR}"

do_install() {
     install -d "${D}/container"
     tar xzf "${S}/ArchLinuxARM-am33x-latest.tar.gz" -C "${D}/container"
}

do_package_qa[noexec] = "1"


And I get the following error:

ERROR: Unable to install packages. Command 
'/usr/local/buildspace/build-xxx/tmp/sysroots/x86_64-linux/usr/bin/smart 
--log-level=warning 
--data-dir=/usr/local/buildspace/build-xxx/tmp/work/bbb-poky-linux-gnueabi/ses-image-release/1.0-r0/rootfs/var/lib/smart install -y run-postinsts@all alarm@cortexa8hf_vfp_neon kernel-modules@bbb lxc@cortexa8hf_vfp_neon ebs-config-ovl@cortexa8hf_vfp_neon packagegroup-base-extended@bbb packagegroup-core-boot@bbb locale-base-en-us@cortexa8hf_vfp_neon locale-base-en-gb@cortexa8hf_vfp_neon' returned 1:
Loading cache...
Updating cache...               ######################################## 
[100%]

Computing transaction...error: Can't install 
alarm-1.0-r0@cortexa8hf_vfp_neon: no package provides libgc.so.1


Thanks for any help!!
AJR



