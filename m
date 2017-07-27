Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C5A3E00A39; Thu, 27 Jul 2017 09:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.130 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF7CE00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:48:49 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0Mhh2N-1dEYFo39U3-00Mu2Q
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 18:48:48 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 27 Jul 2017 17:48:46 +0100
Organization: LN Systems Limited
Message-ID: <106c01d306f8$37982410$a6c86c30$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMG94kjB3U9W0J2RUGtA/pBKlD4TA==
X-Provags-ID: V03:K0:HRGerorEC3MoqPRCcOi2HLDIpF1Z16X7mDPf9dJ+UtMV8SX/Ayl
	irQTKfpBUrMPd7yGoGMLgvJUmyZ5puYYgzaHENIEaGjR9ape2OdzVmuihB+cVzt74XBWI8U
	t0jnXIXehMrrCaMgnjWYHi8chG6ALYlENTV0U6qXiUekj1EWucuRNzlwqy1g4UX0Je/473s
	z1eq8SI0+ORJbjLmWpyRw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Pcymgvf1dqs=:xGsyH91h4oM3wHVikfTv2z
	h/b2VpbbF22kPfvt9yE5vrG3T55bXSL6rHEEA1eIM8hKW3YTFXLbc/zFTf1WBukTCMs5dQ5hq
	nZiiEEce6G41IPFkFfkj25ZfAvHcA++/3/e5cFQqDroQKw8z5AqvCWnyvEAO36Mnbn9KJBif4
	rsrON8lwrVr7CXBSPIW4VzgjLvgT5Fb0tczLQOaA7ci9gZi7yYBmEGqgDxegj6xZAMk6zWogw
	/kkrJz2jGq6/ocQfBanVi+H6neM8ZB7dgi6JPQ1esQi4bo8EotwQjMLGnqydTjm55DUQvd27F
	CYuuJdnIOGSNPUs32hXfM/L3V28ZFRVM7t0z+/XojsaRpU/VVPOBjB0oVGCRKjS/aWe4HDWLo
	9jqwbQxx3/twxR0agBX0bMoNslBjbOzHAVmbQ9g1Mdq8TqbEzH0/j2kB/f2eVmJbN9tUehDeo
	60bUSwOHAq8eUvnYMBk4wqWpS17fIIYj+XX0XYnMTm7liGgdBjFka5V0I8wG9HUJ5S6kfZweM
	ocSSzpEU2F7DO+MU4pm48W19+0M+JkZgqbTZlalGOU37oKYB+E5EE8+CUmputG8GFSTw5S+Sz
	2aJKupRsGrs+IonVjIa1vzEsH4BPWI78UldIUlFHgHqHf3jrYBoMe4U1w+yRT4PqAQVWW1gWY
	jxbSBHCM4jUgm/niv5447Sov6HZDUcTaK7FKQBY54mHyEBoOUS3d8OZy3uwGDyAFscfrSJQ7H
	WToZtt0w4Jbxg+iLDHOxPYTPZ/Hq7HxdVPuqwBgWgD/Go1YL5PXw6CuxxXA=
Subject: Understanding dtb generation wrt uboot (with signing)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Jul 2017 16:48:50 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I'm working on 2.2/Morty, with a custom board.
Ultimate goal is to create a FIT image with a signed configuration. But I'm
trying to just work through step by step and understand the relationships
between u-boot, kernel, dtb, and the fit image - would appreciate any
guidance!
So far, I've built and booted a fitImage. 

It seems, however, that I need to program my modified dtb into the Flash
(i.MX6 cpu) - if I program in the manufacturer's default then the kernel
doesn't get my modified one. May be a problem for another time - I can
program mine into Flash if need be.

First thing I'm puzzled by is that the dtb *is* in
tmp/deploy/images/mymachine/ , but is called
"zImage--4.4-r0-mymachine-20170727160613.dtb". Also with a symlink
"zImage-mymachine.dtb".  (If I'm understanding things right, this is because
the fitImage contains a compressed kernel...?)

Then I set UBOOT_SIGN_ENABLE = "1", and re-bitbake the u-boot target. It
only gets as far as re-building the kernel, which fails on the
do_assemble_fitimage  stage because uboot-mkimage  is being told to use
"u-boot.dtb"

So I'm unsure what setting(s) I need to tweak to pull things into line. Why
'zImage... .dtb' being built yet 'u-boot.dtb' being looked for?




