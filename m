Return-Path: <matt.j.keeter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD09BE00B95; Fri,  6 Jun 2014 11:28:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matt.j.keeter[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54FB5E009E7
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 11:28:39 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id w8so4375587qac.19
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 11:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=MMNaLxBEzWppWlByjOSRvjq9XCy2mKGkptgxNG+U6is=;
	b=ZdASflmyIatgeJwG87AGzwbKTxfshfiSSZD7HptkicIPCYV2qJc9Y/zyaKDb/aHOBt
	PCdmUa0T7nSWQP1HHZWvRfvrAwqcsMoIFU+5Jt2E3Em9LVCqXcUfioY8nM/iZ7bu7ZGM
	HDxEGXYwA5oblOOo/+U5k4I0cD0U8bvfCrD2amPYJQV4gp1SkpTaih0nuAOiNNMud28r
	e8gmMPGTp0PhPuDKAtCGIQEz82MmYcgLfU34GNltMrNaEP4k8KfshUkkO2ohIj6+rkY/
	gZ15LRD8BqJJQylDnCYTKzQbSjiRmbiExyjtD5FZwQFt4FLmDtXuy5pCCQwjHMzxQOUs
	5nyQ==
X-Received: by 10.140.85.166 with SMTP id n35mr10566540qgd.67.1402079319075;
	Fri, 06 Jun 2014 11:28:39 -0700 (PDT)
Received: from [10.0.0.64] ([50.245.9.77]) by mx.google.com with ESMTPSA id
	r12sm15964650qax.33.2014.06.06.11.28.38 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 06 Jun 2014 11:28:38 -0700 (PDT)
From: Matthew Keeter <matt.j.keeter@gmail.com>
Message-Id: <AC4CBFE4-ECFA-4D03-A414-CA8749943F5E@gmail.com>
Date: Fri, 6 Jun 2014 14:28:07 -0400
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
X-Mailer: Apple Mail (2.1878.2)
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Subject: yocto-bsp treats beaglebone as omap3 device
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
X-List-Received-Date: Fri, 06 Jun 2014 18:28:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I=92ve got a quick question about using the yocto-bsp tool (release =
1.6):

Using it to create an ARM BSP from the beaglebone machine branch results =
in a BSP
that targets the OMAP3 processor (which is on the beagleboard, not the =
beaglebone).

I say this because the default value for UBOOT_MACHINE is =
=93omap3_beagle_config=94 and
the kernel device tree in conf/machine/my-bbb.conf points to an omap3 =
device tree.

This appears to be incorrect behavior and disagrees with the default =
beaglebone machine
configuration in meta-yocto-bsp/conf/machine/beaglebone.conf

Am I missing something, or is the tool doing the wrong thing?
Any suggested work-arounds?

Regards,
Matt Keeter=

