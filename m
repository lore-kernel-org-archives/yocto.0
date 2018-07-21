Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82213E01113; Sat, 21 Jul 2018 05:44:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd0643.aruba.it (smtpcmd0643.aruba.it [62.149.156.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E283EE0086B
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 05:44:19 -0700 (PDT)
Received: from [192.168.24.172] ([87.26.78.158])
	by smtpcmd06.ad.aruba.it with bizsmtp
	id DQkH1y00G3QvvBK01QkH57; Sat, 21 Jul 2018 14:44:18 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <b3f32948-7bc8-97b1-24fd-5a59e68e3ade@faresoftware.it>
Date: Sat, 21 Jul 2018 14:44:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1532177058; bh=975k9IHFXIrsRynTpJ76/LDfD7Bt9LihnU6Q/D2wxXw=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=QW/ScFCR4MuZrz7Rnky5oVr56zrwlEFzgLxxjRpa5OnE4b77C8m8v4ZOiGbMUlpuw
	8n6Rxh/geFFgIOLuiwz9MIO/rF1ztHasoxR7ccKAVXBE6sbZcMNLhEjZOjXDwKC0VH
	IbZ2IwByMIuDfvzCebQnTK+rUDi+DTwCPSPL/KkfrqvGAe7VnSnuyGrtIWGwB5GtAl
	8pa/RhevD7fL1JHvGokpJ6+2SFEXJK/8mWK+UENq3RD2g0ca4Upmu3DtUp4OYB2tab
	pdFn9ZfUWYR689M/jKFq9fWzz/2xJCflLW73bmQ6mCfSiLpbYcIGZUcetvDSCY8+v+
	BXxDWtRkC149g==
Subject: python-cython_0.25.2 Krogoth: EXCLUDE_FROM_WORLD
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
X-List-Received-Date: Sat, 21 Jul 2018 12:44:21 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I'd like to add cython 0.25.2 to Krogoth.

I need it to try kivy in Krogoth on IMX6


In my layer under recipes-devtools/python folder I added the recipe

python-cython_0.25.2.bb with this inside


inherit setuptools
require recipes-devtools/python/python-cython.inc


RDEPENDS_${PN} += " \
     python-distribute \
"

If I run

bitbake -s -vD | grep cython


this is the behaviour

mauro@z600:~/Sources/bsp/clini5-build$ bitbake -s  | grep cython
python-cython :0.24-r0
python-cython-native :0.24-r0
python3-cython :0.24-r0
python3-cython-native :0.24-r0

Why the 0.25.2 version is ignored?



