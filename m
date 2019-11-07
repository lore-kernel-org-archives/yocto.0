Return-Path: <norbert.kaminski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F36F2E00B65; Thu,  7 Nov 2019 09:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.49.171 listed in list.dnswl.org]
X-Greylist: delayed 7799 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Nov 2019 09:41:32 PST
Received: from 4.mo178.mail-out.ovh.net (4.mo178.mail-out.ovh.net
	[46.105.49.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C21E008D9
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 09:41:32 -0800 (PST)
Received: from player759.ha.ovh.net (unknown [10.108.42.119])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id 272CC80F52
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 16:14:55 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: norbert.kaminski@3mdeb.com)
	by player759.ha.ovh.net (Postfix) with ESMTPSA id 32025BE650DB;
	Thu,  7 Nov 2019 15:14:52 +0000 (UTC)
To: yocto@yoctoproject.org
From: Norbert Kaminski <norbert.kaminski@3mdeb.com>
Message-ID: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>
Date: Thu, 7 Nov 2019 16:14:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3813985935168936238
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudduledgjeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefvhffukffffgggtgfgsehtkeertddtfeejnecuhfhrohhmpefpohhrsggvrhhtucfmrghmihhnshhkihcuoehnohhrsggvrhhtrdhkrghmihhnshhkihesfehmuggvsgdrtghomheqnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehnohhrsggvrhhtrdhkrghmihhnshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedt
Cc: piotr.krol@3mdeb.com
Subject: [meta-security][PATCH] meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb: add new udev dir to FILES and append EXTRA_OECONF
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
X-List-Received-Date: Thu, 07 Nov 2019 17:41:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

The tpm2 tool freezes in a XEN distro. It stores the udev rules in 
/lib/udev directory,
thus these changes append the FILES and EXTRA_OECONF to make tpm2 work 
properly.

Signed-off-by: Norbert Kaminski <norbert.kaminski@3mdeb.com>
---
  meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb | 4 +++-
  1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb 
b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
index 3e77f71..10450e3 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
@@ -74,6 +74,8 @@ FILES_libtss2-dev = " \
      ${libdir}/libtss2*so"
  FILES_libtss2-staticdev = "${libdir}/libtss*a"

-FILES_${PN} = "${libdir}/udev"
+FILES_${PN} = "${libdir}/udev ${base_prefix}/lib/udev"
+
+EXTRA_OECONF += "--with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"

  RDEPENDS_libtss2 = "libgcrypt"
-- 
2.17.1


