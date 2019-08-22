Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A998BE00DFF; Thu, 22 Aug 2019 07:21:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 525 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Aug 2019 07:21:33 PDT
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B0AE00BF8
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 07:21:33 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Received: from brads-mbp.dyn.fuzziesquirrel.com
	(Brads-MBP.dyn.fuzziesquirrel.com [192.168.253.30])
	by bajor.fuzziesquirrel.com (Postfix) with ESMTPSA id 6F3C94EB0E;
	Thu, 22 Aug 2019 10:12:46 -0400 (EDT)
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <38CEEC26-E746-42DE-B4AD-24BCB29ED326@fuzziesquirrel.com>
Date: Thu, 22 Aug 2019 10:12:46 -0400
To: OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.11)
Cc: Adriana Kobylak <anoo@us.ibm.com>
Subject: assembling lvm disk images
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
X-List-Received-Date: Thu, 22 Aug 2019 14:21:34 -0000
Content-Type: text/plain;
	charset=utf-8;
	delsp=yes;
	format=flowed
Content-Transfer-Encoding: quoted-printable

Does anyone have any experience with assembling an lvm disk image from a =
=20
bitbake task?  My naiive approach to this would be to invent and implemen=
t =20
an IMAGE_FSTYPE that builds up the image in a do_image_foo task.

But the LVM userspace tools don=E2=80=99t do offline mode so this seems t=
o require =20
the use of things like loopback devices and sudo.  Is that a can of worms=
?  =20
Does anyone have any advice on how to do something like this?  Pointers t=
o =20
something similar?

thx!

brad

