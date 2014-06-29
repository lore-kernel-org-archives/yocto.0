Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB3AAE00510; Sat, 28 Jun 2014 17:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D015E003D6
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 17:20:10 -0700 (PDT)
Received: from [192.168.178.41] (ip-88-153-108-136.unitymediagroup.de
	[88.153.108.136])
	by server.galauner.de (Postfix) with ESMTPSA id ACAA840406
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 02:20:08 +0200 (CEST)
Message-ID: <53AF5BB8.80904@galauner.de>
Date: Sun, 29 Jun 2014 02:20:08 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Building kernel modules as dependencies
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
X-List-Received-Date: Sun, 29 Jun 2014 00:20:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

I created recipes for two out-of-tree kernel modules written by myself
in Yocto. I added these two modules in the machine config to
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS or even
MACHINE_ESSENTIAL_EXTRA_RDEPENDS.

The modules build fine if I build them as targets with bitbake. The
right packages are generated and if I build the image after that, they
are included into the rootfs.
But if the modules are not build by hand before building the image, they
aren't built as dependencies and RRECOMMENDS just doesn't include them
into the image as it is supposed to do and RDEPENDS fails of course with
"Nothing PROVIDES kernel-module-my-module-name".

How can I build the kernel modules as image dependencies?
I can't seem to get it done with the countless approaches I already
tried. For example just adding the modules to CORE_IMAGE_EXTRA_INSTALL
didn't work either.

Thanks,
-Andy

