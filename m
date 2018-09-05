Return-Path: <mauro.salvini@smigroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88151E00A64; Wed,  5 Sep 2018 00:22:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [82.188.252.231 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 625 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Sep 2018 00:21:59 PDT
Received: from mail.smigroup.it (MAIL.SMIGROUP.IT [82.188.252.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AF97E009B2
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 00:21:59 -0700 (PDT)
Received: from mail.smigroup.it (unknown [192.168.50.4]) by
	srv-gwmail.smigroup.it with smtp
	id 769f_102b_9b3f1ffc_710f_46b5_991b_db944e432d93;
	Wed, 05 Sep 2018 09:11:33 +0200
Received: from localhost (localhost [127.0.0.1])
	by mail.smigroup.it (Postfix) with ESMTP id B9F13CA39AE
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 09:11:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at smigroup.it
Received: from mail.smigroup.it ([127.0.0.1])
	by localhost (mail.smigroup.it [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VN7zW52AgMC4 for <yocto@yoctoproject.org>;
	Wed,  5 Sep 2018 09:11:33 +0200 (CEST)
Received: from port-msalvini.smigroup.local (unknown [10.0.43.12])
	by mail.smigroup.it (Postfix) with ESMTPSA id A1439C07A44
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 09:11:33 +0200 (CEST)
Message-ID: <1536131486.2652.8.camel@smigroup.net>
From: Mauro Salvini <mauro.salvini@smigroup.net>
To: yocto@yoctoproject.org
Date: Wed, 05 Sep 2018 09:11:26 +0200
Organization: SmiTec s.p.a.
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: edit system-wise configuration files only on some images
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
X-List-Received-Date: Wed, 05 Sep 2018 07:22:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I'm writing to this mailing list to try to collect some advice about a
situation that I'm involved and that could be quite common.

I have a physical machine, and I have my own meta-layers to support it:
a BSP layer containing a machine configuration and some customizations
on kernel and u-boot, and a distro layer containing one distro
configuration and two .bb image recipes, plus some .bbappends.

In detail, I have one test image (used to do some hardware test) and
one production image. Both images are based on core-image, and differs
only for some packages. Moreover, test image needs two more things: a
DEFAULT_TIMEZONE customization and a modified inittab.

For inittab I followed this approach: it is a file installed by another
package, so I created a .bbappend file to sysvinit-inittab recipe that
simply contains FILESEXTRAPATHS_prepend to use my edited inittab
instead of default one (seems to be the recommended method). But doing
this, edited inittab get installed for both my images. I thought to
overrides, but I have same machine and distro for both images, and
there is no way to distinct what image I'm baking.

I evaluate the idea to create one new distro configuration (that
contains also DEFAULT_TIMEZONE configuration, the other thing that I
need to handle but not sure how), but this distro would be useful only
for test image (test-image needs to be built only with test-distro
configuration, and test-distro should be used only for test-image) and
seems to me that would not be how distros and images are intended to
co-operate (that is there aren't limitation on mixing images and
distros).

I read on this mailing list about ROOTFS_POSTPROCESS_COMMAND or a more
complex solution like this [1], but I wonder if there are other
approaches and if possible what is the best among them.

Thanks in advance, regards.

Mauro

[1] https://lists.yoctoproject.org/pipermail/yocto/2018-June/041378.htm
l

