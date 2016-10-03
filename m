Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D752CE00C17; Mon,  3 Oct 2016 05:35:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1362 seconds by postgrey-1.32 at yocto-www;
	Mon, 03 Oct 2016 05:35:24 PDT
Received: from smtp.laposte.net (smtpoutz27.laposte.net [194.117.213.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C8B8E00BE1
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 05:35:24 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 7DA941C8A9D
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1475496760; bh=jOFvxFMkeYfgB6gncOaxuDbnggIrWJ6Q6x2tBzXGL0k=;
	h=Date:To:Subject:From;
	b=DP9Xc/U+PJ8Rxli42s4T9WHdZwlLkSvRnebFzLQnADZpMXjmgPSD+59BsnzO4yGgu
	JWnY4dAGWpnFxvCJCZ5G7FgT5qmrmnj7/ar+auT7n+lJPwDGLzdSB4tDaKtcfEWSi7
	K5PF73QWZ71S6+32WT9goXP360gWN6ZvHQPuUUMH7LcoDrtNUvd9/vLLeZ03c0r/+A
	rZ4jeJYAZHlpfOD+tw3sTWbZpIMuAy59tF/rLKtaWgwEjmTqA3Nu6FgeMj4glHFj8Z
	3fSYHGP0+fyDYUYWB8XYGos14Hnzz65jruUVOSuL8IN63R5Vfo1IkHpAlypn1zPIjW
	6LHaabZZs5+dw==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 6DF961C8BEA
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:12:40 +0200 (CEST)
Received: from lpn-prd-vrin002 (lpn-prd-vrin002.prosodie [10.128.63.3])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 695F61C8BE8
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:12:40 +0200 (CEST)
Received: from lpn-prd-vrin002 (localhost [127.0.0.1])
	by lpn-prd-vrin002 (Postfix) with ESMTP id 56D875BF18D
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:12:40 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin002 (Postfix) with ESMTPA id 2A4F15BF17E
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:12:40 +0200 (CEST)
Date: Mon, 03 Oct 2016 14:12:39 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yoravds8mnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrvdehgdehtdcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgffvffuggfg
X-VR-Cause-3: hffkfgesthejredttderleenucfhrhhomhepihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghp
X-VR-Cause-4: ohhsthgvrdhnvghtqeenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppedvuddvrddvfeeg
X-VR-Cause-5: rdefiedrudefheenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdr
X-VR-Cause-6: vggtrghfrghrohhsrdhlohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhf
X-VR-Cause-7: rhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshiho
X-VR-Cause-8: tghtohhprhhojhgvtghtrdhorhhg
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: fix-parallel-build.patch error Krogoth branch
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
X-List-Received-Date: Mon, 03 Oct 2016 12:35:28 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi, i have a problem with the patch give in  
sources/poky/meta/recipes-support/db/db/fix-parallel-build.patch. I have  
this error during the build :

NOTE: Applying patch 'fix-parallel-build.patch'  
(../sources/poky/meta/recipes-support/db/db/fix-parallel-build.patch)
ERROR: Command Error: 'quilt --quiltrc  
/home/xxx/udoo-community-bsp/SA62/tmp/sysroots/x86_64-linux/etc/quiltrc  
push' exited with 1  Output:
Applying patch fix-parallel-build.patch
patching file Makefile.in
Hunk #1 FAILED at 1034.
1 out of 1 hunk FAILED -- rejects in file Makefile.in
Patch fix-parallel-build.patch can be reverse-applied
DEBUG: Python function patch_do_patch finished
DEBUG: Python function do_patch finished
ERROR: Function failed: patch_do_patch

I use this layer https://github.com/graugans/meta-udoo for my card.

Can you help about this issue please ?



