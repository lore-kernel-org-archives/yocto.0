Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0AA4E00CC2; Tue, 31 Oct 2017 00:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-132.dsl.connexus.net.au
	[203.122.143.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 617C9E00C77
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 00:04:50 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Tue, 31 Oct 2017 18:04:47 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 31 Oct 2017 18:04:00 +1100
Thread-Topic: linux-firmware: build failure
Thread-Index: AdNSFdhQHur9NlqHT+m6g7/YMxnkFA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23428.004
x-tm-as-result: No--6.396100-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: linux-firmware: build failure
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
X-List-Received-Date: Tue, 31 Oct 2017 07:04:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying upgrading to rocko (from morty).

I'm getting a build failure for linux-firmware:


DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are ['virtual:native:/home/craigm/yocto/poky/buil=
d/../meta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot', '/h=
ome/craigm/yocto/poky/build/../meta/recipes-devtools/quilt/quilt-native_0.6=
5.bb:do_populate_sysroot']
NOTE: Installed into sysroot: ['pseudo-native']
NOTE: Skipping as already exists in sysroot: ['quilt-native']
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing shell function do_install
rm: cannot remove '/home/craigm/yocto/poky/build/tmp/work/all-poky-linux/li=
nux-firmware/1_0.0+gitAUTOINC+80d463be82-r0/image/lib/firmware/check_whence=
.py': No such file or directory
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_install (log file is located at /home/craigm/yoc=
to/poky/build/tmp/work/all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+80d46=
3be82-r0/temp/log.do_install.120558)


It seems that the latest git doesn't contain check_whence.py... or somethin=
g like that. But I'm puzzled as to why the previous committer (17a772775c25=
59897e49236ae352444065e1b1ff perhaps) would not have encountered this.

Would the following be a suitable fix? --


diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/met=
a/recipes-kernel/linux-firmware/linux-firmware_git.bb
index 0338ba8ac2..b8f2865e3b 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
@@ -215,7 +215,7 @@ do_install() {
        rm ${D}${nonarch_base_libdir}/firmware/configure
=20
        # Remove python script used to check the WHENCE file
-       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py
+       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py -rf
=20
        # Libertas sd8686
        ln -sf libertas/sd8686_v9.bin ${D}${nonarch_base_libdir}/firmware/s=
d8686.bin


--=20
Craig McQueen


