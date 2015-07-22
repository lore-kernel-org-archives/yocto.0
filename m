Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CCA3E00861; Wed, 22 Jul 2015 15:17:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.158 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm3.bullet.mail.ne1.yahoo.com
	(nm28-vm3.bullet.mail.ne1.yahoo.com [98.138.91.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA02DE00474
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 15:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437603411; bh=EBqTepjGBOCZLB9QfH5wLxYhX7W3HNJ82Tr9VS3aXWA=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=oY0bpr5CPRfxpI+V2QX4PH+6Ml/JFedWCanmjftPqBStks3TANEI2/9ya76GaXU7sL2mGpQhv129DUHKLCJNuuEtpUzhIklTjoiPg6f3/zfkOv1w6377olHUkxCcqZHKvHXaNkbCpbY30hP1wH/+J82qRA5wnT/OW0reEraxGAccZtHQWsGImMaaNSUTw3LXfF935ITfu+VUdhvi3gLBQGmES3qhuDYfSN+V6QTreIF0i00xsH8quzp9pVuJlwUuw5zxOVmaevygnSOhvPLXe5YNaoyBmFy/4mUeIZM/dsaX9zB1eEGtdlu74AX15SFlLI5/Vm3HmA8OopIpiIWABw==
Received: from [98.138.101.128] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 22:16:51 -0000
Received: from [98.138.87.6] by tm16.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 22:16:51 -0000
Received: from [127.0.0.1] by omp1006.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 22:16:51 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 438847.58282.bm@omp1006.mail.ne1.yahoo.com
X-YMail-OSG: gOpWISAVM1knNsOjw9rHq5znFDo6g5yHLT.DX6MDGcVScSfU8eAU9qM5CDjSDIc
	qeAmN7NbcNxEJZPQivor10BkbCqWQzE8Bia3_qFT6MgU_CzlFkyMpYVeKaUTEYk88l7x9NZNPKJz
	9.ZZmMhhyS1jkHuVd0lszryzzsx1YjLStDs6Gdj6DNnBJSwuo5Es8fQPyNFZR9PO6Ky7Hln.zhZC
	mRTdfQjIzwQGOOBHfT0PjyalZb0xtqLK0htEi8Ii1kN4SwKbXI5TBNcGqxIgi_kOjx2ogPbu6hAY
	.mXFYKqePz5Wstfqqq00w4OpSrZ.5uSAgUeyzQweERUrYN2JevZYRDg7x.QBKEcZ_lXNXojBW_YL
	.p3J874Up1LiKO_tbbTuYIyK1zN.wlfGfqOgTUqxXX86LQMo0CJk7ORdv.zyh2xNTxndOPSR2hY4
	.J4M0exILGkQp1_ndJwdmusdylrAfsrfzQA.DbaQEnXBCSVahIQk_FeWxw8bqvJkf_HpsSfNizG9
	3OIrfLBNC8OfyOyRn_No4hx0_1Qt9vXk-
Received: by 98.138.105.240; Wed, 22 Jul 2015 22:16:50 +0000 
Date: Wed, 22 Jul 2015 22:16:50 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <858020079.672977.1437603410191.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: raspberry Pi core-image-sato
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Jul 2015 22:17:03 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_672976_1990408823.1437603410189"

------=_Part_672976_1990408823.1437603410189
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HiStill having errors with bitbake core-image-satoThis occurs at | checking=
 for X11... yes
| checking for EGL... no
| configure: error: Package requirements (egl) were not met:
ERROR: Task 4856 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-grap=
hics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'I tri=
ed adding /conf/machine/raspberrypi2.conf which I found on the internet.+PR=
EFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"This caused s=
everal more errors.Any and all help is appreciated. =C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_672976_1990408823.1437603410189
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px"><div id="yui_3_16_0_1_1437603095794_10870"></div><div class="" id="yiv0962762372yui_3_16_0_1_1437594813612_17000"><span class="">Hi</span></div><div class=""><span class="">Still having errors with bitbake core-image-sato</span></div><div class=""><span class="">This occurs at </span></div>| checking for X11... yes<br class="">| checking for EGL... no<br class="">| configure: error: Package requirements (egl) were not met:<br class=""><div class="" id="yiv0962762372yui_3_16_0_1_1437594813612_17053" dir="ltr">ERROR:
 Task 4856 
(/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb,
 do_configure) failed with exit code '1'</div><pre id="yiv0962762372yui_3_16_0_1_1437594813612_17127" class="">I tried adding /conf/machine/raspberrypi2.conf which I found on the internet.</pre><pre class="">+PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"</pre><div class="" dir="ltr">This caused several more errors.</div><div dir="ltr">Any and all help is appreciated. </div><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_672976_1990408823.1437603410189--
