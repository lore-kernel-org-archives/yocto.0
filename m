Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A8CE00D0E; Thu, 24 Jan 2019 04:18:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE60E00D08
	for <yocto@lists.yoctoproject.org>;
	Thu, 24 Jan 2019 04:18:54 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id i20so5062758otl.0
	for <yocto@lists.yoctoproject.org>;
	Thu, 24 Jan 2019 04:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CbxWbYAp9pYhltYJezBKCf4toIgVOpRdEXxLf7JF91w=;
	b=Ts2wAXHw35DtqrmDeDKL9pqWCAz5YJ6zRU8SBR8mX4KGWjseKEmtAKKR9JZW47Nh62
	ZY591bo0mp3OAA68A73CWcN/qpg1SckEI/nSuKN3kKMDlgsTFc/Q4AKosE2R81Ejw6X9
	h0/LyU0cRrKkcJA/7rH8aXT4tQ/TNRWQIIu56Wrke/HpG/bBHALjHNwEi0MIEkyNPnL9
	H2OQ12vji462FpbTqLq2CCmVbrB0D4Km9Rm+cE02aBsGjLtTBUsblHurwS2E5xeLjXwb
	P3/WE4ahJNXg6hkz1D8d3jm1nXIvo5/T+mAj0hxUPTS0SZ1n5T/9R7VS1kIFuQS2+qpn
	fXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CbxWbYAp9pYhltYJezBKCf4toIgVOpRdEXxLf7JF91w=;
	b=YuHiT8P0rj+jOhqYyJzMrvb1ZsSJIGv8in34GAffBGtWbBP/Mx3gwZCe/6a1QZO2LI
	2EmkfS0WrgYtsOG5IAw1pC7/esZ9zdr5wC5oNQNTf2DEI6W/+M32mjxJjgxtjF3rPXYU
	2gTywVD/8THcrz6dc2+Lh8Usgc+NrZHefw5vovYWw/nld+ZOvTTuXyhQeRHFCsWNVFQ1
	1E7wI+CpYNAtiDkKOk99XrUrDifsGs4kPVgOf0OSSVVd1MIQb0ZlHS2zmkWl/rCx2/JZ
	+8Vth7cAOWze4ECTAfGpwD8Q5t18hTXBuq6f3elAhvHp3713ULjZekNBW0rDKl+rH1KX
	/hfA==
X-Gm-Message-State: AJcUukfXD8F1+4jypgP/nzlU2RXusTudzAIggxtyngXW4aFdU3a7SkP7
	pcgFxFnCBIR0m2MyySeUAJspbicdFULlp08n7MBrM6QI+kg=
X-Google-Smtp-Source: ALg8bN68FVt3jOd5WZBVr8fjgfU3t2l1QIlDG5wPipILUZi3lVpOUP1QuTALZ+QC1KbbJ/uIIOEAH2unuExcdwiVjO8=
X-Received: by 2002:a9d:6009:: with SMTP id h9mr4414741otj.349.1548332333835; 
	Thu, 24 Jan 2019 04:18:53 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 24 Jan 2019 13:18:42 +0100
Message-ID: <CAFsTbWdRDWvWQ259q5BNW-yjq+aPzgyavusFNjqvbPq=msyZbA@mail.gmail.com>
To: yocto@lists.yoctoproject.org, 
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>
X-Mailman-Approved-At: Fri, 25 Jan 2019 02:58:16 -0800
Subject: Error in populating sdk using custom distro
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
X-List-Received-Date: Thu, 24 Jan 2019 12:18:56 -0000
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Experts,

I am seeing the below error, while building the sdk for my custom
distro, with some the freescale layers (meta-freescale,
meta-freescale-3rdparty.meta-freescale-distro, meta-fsl-bsp-release)
integrated into my custom distro, could anyone please help me with the
pointers that why am i seeing the below issue?

bitbake -c populate_sdk custom-debug-distro


Logs:
=====

ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Command
Error: 'quilt --quiltrc
/home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-linux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch
patching file tests/auto/client/client/tst_client.cpp
Hunk #1 succeeded at 107 (offset -7 lines).
Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).
Hunk #3 FAILED at 172.
Hunk #4 succeeded at 560 (offset 125 lines).
Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).
1 out of 5 hunks FAILED -- rejects in file
tests/auto/client/client/tst_client.cpp
Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply
(enforce with -f)
ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Function
failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-linux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82399
ERROR: Task (/home/user/custombuild_test12/customos/sources/meta-qt5/recipes-qt/qt5/qtwayland_git.bb:do_patch)
failed with exit code '1'
ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:
Command Error: 'quilt --quiltrc
/home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwayland-native/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch
patching file tests/auto/client/client/tst_client.cpp
Hunk #1 succeeded at 107 (offset -7 lines).
Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).
Hunk #3 FAILED at 172.
Hunk #4 succeeded at 560 (offset 125 lines).
Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).
1 out of 5 hunks FAILED -- rejects in file
tests/auto/client/client/tst_client.cpp
Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply
(enforce with -f)
ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:
Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwayland-native/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82410
ERROR: Task (virtual:native:/home/user/custombuild_test12/customos/sources/meta-qt5/recipes-qt/qt5/qtwayland_git.bb:do_patch)
failed with exit code '1'

Thanks in advance

