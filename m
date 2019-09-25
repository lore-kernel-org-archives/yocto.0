Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0828CE00DE6; Wed, 25 Sep 2019 00:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58253E00DA5
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:24:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8P7OH25016369
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:24:32 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:24:15 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:23:57 +0800
Message-ID: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: Review request V2 0/16: [meta-openssl102-fips] Enable FIPS mode in Kernel and OpenSSH
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
X-List-Received-Date: Wed, 25 Sep 2019 07:25:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Changed in V1:
- Follow Mark H's suggestions

Hi Mark,

Once openssh enables FIPS mode, openssh ptest will fail (mess of failure).
It seems the test case of upstream openssh does not consider FIPS mode support.
I search fedora, there is nothing about openssh `regress'(test suits) in
FIPS mode support

So I do not add additional cavs test to the ptest, just add a note
to README.enable_fips

//Hongxu

====== Comments (indicate scope for each "y" above) ======
* Git logs
[meta-openssl102-fips]
commit 38849c1c52ae04eb2a3931624cd2d1446ab389d6
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Wed Sep 25 15:03:24 2019 +0800

    README.enable_fips: openssh ptest failed in fips mode
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit f5b8a66c226541e73cc509a73452bbafc59f2555
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 22:40:56 2019 +0800

    README.openssh_cavstest: add CAVS tests for FIPS validation
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit bd5de039c60fd2ab89f7925d3801520d742ba09a
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 21:54:41 2019 +0800

    openssh: add CAVS tests for FIPS validation
    
    Refer the latest Fedora to add cavs test binary for the aes-ctr [1]
    and SSH KDF CAVS test driver [2]
    
    [1] http://pkgs.fedoraproject.org/cgit/rpms/openssh.git/plain/openssh-6.6p1-ctr-cavstest.patch
    [2] http://pkgs.fedoraproject.org/cgit/rpms/openssh.git/plain/openssh-6.7p1-kdf-cavs.patch
    (as of commit 0ca1614ae221578b6b57c61d18fda6cc970a19ce)
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit b40cef8f89461342da5c6a621d95cdb19a4d8cff
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 20:55:30 2019 +0800

    README.enable_fips: add steps to turn system (kernel and user space) into FIPS mode
    
    Refer RedHat/Fedora/SUSE/Oracle/IBM ways
    
    1. Add `fips=1' to kernel option to enable FIPS mode in kernel
    
    2. File /etc/system-fips to determine if a FIPS mode is enabled in user space,
    currently openssh only
    
    Refer:
    https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security_guide/sect-security_guide-federal_standards_and_regulations-federal_information_processing_standard
    https://access.redhat.com/discussions/3293631
    https://lists.fedoraproject.org/pipermail/scm-commits/Week-of-Mon-20131007/1124363.html
    https://www.ibm.com/support/knowledgecenter/en/linuxonibm/com.ibm.linux.z.lgdd/lgdd_r_fipsparm.html
    https://support.oracle.com/knowledge/Oracle%20Linux%20and%20Virtualization/2323738_1.html
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit a4e3e55688b7a3666bcec95c342dab7984e7e0a3
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 19:27:45 2019 +0800

    rng-tools: fix rngd failed in fips mode
    
    The FIPS test is something done on government or more secure organizations
    for extra security check.
    ...
    root@qemux86-64:~# systemctl status rngd
    Unit rngd-tools.service could not be found.
    root@qemux86-64:~# systemctl status rngd
    rngd.service - Hardware RNG Entropy Gatherer Daemon
       Loaded: loaded (/lib/systemd/system/rngd.service; enabled; vendor preset: enabled)
       Active: inactive (dead) since Sun 2019-09-22 11:10:41 UTC; 18min ago
      Process: 317 ExecStart=/usr/sbin/rngd -f $EXTRA_ARGS (code=exited, status=0/SUCCESS)
     Main PID: 317 (code=exited, status=0/SUCCESS)
    
    Sep 22 11:10:37 qemux86-64 rngd[317]: RNDADDENTROPY failed: Operation not permitted
    Sep 22 11:10:37 qemux86-64 rngd[317]: RNDADDENTROPY failed: Operation not permitted
    Sep 22 11:10:37 qemux86-64 rngd[317]: too many FIPS failures, disabling entropy source
    ...
    
    From rngd manual, add `-i' to default
    ...
    -i, --ignorefail
      Ignore repeated fips failures
    ...
    
    After applying the fix
    ...
    rngd.service - Hardware RNG Entropy Gatherer Daemon
       Loaded: loaded (/lib/systemd/system/rngd.service; enabled; vendor preset: enabled)
       Active: active (running) since Sun 2019-09-22 12:18:31 UTC; 4min 35s ago
     Main PID: 121 (rngd)
        Tasks: 2
       Memory: 1.8M
       CGroup: /system.slice/rngd.service
               /usr/sbin/rngd -f -r /dev/hwrng -i
    
    Sep 22 12:23:06 qemux86-64 rngd[121]: RNDADDENTROPY failed: Operation not permitted
    ...
    
    Refer:
    https://www.unix.com/unix-for-advanced-and-expert-users/265510-rngd-failed-fips-test.html
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit c3224883bec9155fb51686a908c59da31d9918f5
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 19:27:01 2019 +0800

    rng-tools bbappend: port a copy of default from oe-core
    
    Port it at the following commit in oe-core
    http://cgit.openembedded.org/openembedded-core/commit/?id=16ced1a253c74c01ca414db2f1a010c083213b91
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit aecc01c2e49825dcb2a78875e0562028b2636fab
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 18:48:08 2019 +0800

    openssh/sshd_check_keys: don't generate ED25519 host keys in FIPS mode
    
    Run sshd_check_keys failed:
    ...
    2019-09-22T09:59:10.878738+00:00 qemux86-64 sshd_check_keys[419]:   generating ssh ED25519 host key...
    2019-09-22T09:59:10.897617+00:00 qemux86-64 sshd_check_keys[419]: ED25519 keys are not allowed in FIPS mode
    ...
    
    If fips mode enabled (existence of "/etc/system-fips"), don't generate ED25519 host
    keys in FIPS mode
    
    Refers Fedora:
    https://src.fedoraproject.org/rpms/openssh/c/00c7b7543973f237b79ee87ca697c08b71954d35
    https://src.fedoraproject.org/rpms/openssh/c/3b7c8620a1df976c1c09553c1c7b99ce492d290b
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit 67f47b09f427d9bb8e5db7a587ccc48a66351d13
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 18:43:03 2019 +0800

    openssh: port a copy of sshd_check_keys from oe-core
    
    Port it at the following commit in oe-core
    http://cgit.openembedded.org/openembedded-core/commit/?id=2303d795ae96f1a60caf145a0ddf100e89c4b5b0
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit ef9cbad4917c9327705a671a812da70659641b34
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 14:36:41 2019 +0800

    openssh: conditional enable fips mode
    
    Enable fips mode according to the existence of "/etc/system-fips"
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit f9a362a102afab48a58e35ca482395cb11ce2679
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sun Sep 22 12:18:02 2019 +0800

    kernel: workaround alg self-tests failure in fips mode
    
    While kernel enable fips mode, it start alg self-test, and there is
    a kernel panic at ecdh-generic
    ...
    [    0.311313] alg: ecdh: test failed on vector 2, err=-14
    [    0.311898] Kernel panic - not syncing: alg: self-tests for ecdh-generic (ecdh) failed in fips mode!
    ...
    
    Continue without Jitter RNG for fips to workaround alg self-tests failure,
    after applying the fix:
    ...
    [    0.306633] DRBG: Continuing without Jitter RNG
    [    0.310550] alg: self-tests for ecdh-generic (ecdh) passed
    ...
    
    Refer: https://lore.kernel.org/patchwork/patch/568693/
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit ba498f76d6067ce5cf57be037deecde9bb7cf664
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sat Sep 21 14:43:28 2019 +0800

    add kernel fips mode support
    
    A kernel compiled with CONFIG_CRYPTO_FIPS=y can be booted in fips mode
    by specifying fips=1 as kernel parameter. [1][2]
    
    /proc/sys/crypto/fips_enabled, that is presumably used by the Red Hat
    modified version of OpenSSL.[3]
    
    [1] https://www.linux.org/docs/man8/fipscheck.html
    [2] https://cateee.net/lkddb/web-lkddb/CRYPTO_FIPS.html
    [3] https://mta.openssl.org/pipermail/openssl-users/2017-May/005840.html
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit 6ead6e738a7da55b123f6c55058259f3df214509
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sat Sep 21 14:24:51 2019 +0800

    openssh: add generation of HMAC checksums in pkg_postinst
    
    Refer https://src.fedoraproject.org/rpms/openssh/c/13fa787ecc35d6c9eea9e64c1f42f49e2ee978ce
    (See __spec_install_post in openssh.spec for detail)
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit d9906e35fcdf60e773d2272117383e3ec7ca9bc0
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sat Sep 21 12:49:53 2019 +0800

    classes/image-enable-fips.bbclass: enable user space fips mode in image
    
    Refer Fedora/RedHat's way
    https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/6.5_technical_notes/dracut
    
    To enable user space fips mode in the image recipe as part of an
    'IMAGE_CLASSES'. Basically if FIPS-140-2 is enabled, then we can
    touch the file as a post image generation activity.
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit 2d4d0ad9655b5349815af9f8e6a19830fcf40f02
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Sat Sep 21 12:25:17 2019 +0800

    fipscheck: add generation of the checksums in pkg_postinst
    
    Refer https://pagure.io/fipscheck/c/489bc3ab3f73707e12b6c2644d80af5ff6fbbf70
    (* fipscheck.spec.in: Add generation of the checksums in　__spec_install_post.)
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit d915bb67402e504ee8aa47ce988afcb07eb829a4
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Fri Sep 20 22:06:17 2019 +0800

    openssh_8.%.bbappend: support fips 140-2
    
    Port openssh-7.7p1-fips.patch from Fedora
    https://src.fedoraproject.org/rpms/openssh.git
    (as of commit 0ca1614ae221578b6b57c61d18fda6cc970a19ce)
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

commit 0516bd7ba43434d8fafb92f5eb3801c726ce1d46
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Fri Sep 20 15:43:44 2019 +0800

    fipscheck: add 1.5.0
    
    Port it from fedora:
    https://src.fedoraproject.org/rpms/fipscheck
    (as of commit 7e44bec705fb2b3263734f30a05c2245738cf01a)
    
    It is required by openssh fips.
    
    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>



====== Testing ======
* Commands
See README.build  README.enable_fips  README.openssh_cavstest

* Expected Results
See README.build  README.enable_fips  README.openssh_cavstest

* Applicable to
qemux86-64

