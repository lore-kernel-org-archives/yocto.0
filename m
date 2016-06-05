Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19654E00D2A; Sun,  5 Jun 2016 05:14:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C023EE00D16
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 05:14:42 -0700 (PDT)
Received: from nbhjo (111-250-215-118.dynamic.hinet.net [111.250.215.118])
	by msfrf2617.sfr.fr (SMTP Server) with ESMTP id D4F151C00740F;
	Sun,  5 Jun 2016 14:14:38 +0200 (CEST)
Received: from nbhjo (111-250-215-118.dynamic.hinet.net
	[111.250.215.118])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2617.sfr.fr (SMTP Server) with ESMTPSA;
	Sun,  5 Jun 2016 14:14:36 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Paul Barker' <paul@paulbarker.me.uk>, 'Jonathan Liu'
	<net147@gmail.com>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
In-Reply-To: <20160605122132.2a8c70a1@nuc.betafive.co.uk>
Date: Sun, 5 Jun 2016 14:14:29 +0200
Message-ID: <013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIUeOAz+mr7ahbGdG58qpYOhyMJlwGHp9QIAbATLHGfO5ZDwA==
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 12:14:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi,

I'm using kernel 4.4, and it does build properly with gcc 6.1.
But the build does fail on other packages later on, so I ended up reverting
to 5.3 for now.
I also think we should make 4.4 the default kernel version for
meta-raspberrypi, to follow the raspberrypi repository. The fixes on 4.1 are
far from what can be seen on 4.4 now (on the part that I'm involved with,
vc4 on 4.1 is not functional, while it is on 4.4 and later). And it will
only grow worse.

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Paul Barker
Sent: dimanche 5 juin 2016 13:22
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] gcc-6.1 and raspi

On Sun, 5 Jun 2016 20:44:42 +1000
Jonathan Liu <net147@gmail.com> wrote:

> On 5 June 2016 at 09:00, Trevor Woerner <twoerner@gmail.com> wrote:
> > Has anyone tried building a raspi image lately from master?
> >
> >         ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0
> > do_compile: Function failed: do_compile
> >
> >         | In file included
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/linux/compiler.h:54:0,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/uapi/linux/stddef.h:1,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/linux/stddef.h:4,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/uapi/linux/posix_types.h:4,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/uapi/linux/types.h:13,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/linux/types.h:5,
> > |
> > from 
> > /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-sour
> > ce/include/linux/mod_devicetable.h:11,
> > |
> > from
/z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/scrip
ts/mod/devicetable-offsets.c:2:
> > |
/z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/inclu
de/linux/compiler-gcc.h:121:30:
> > fatal error: linux/compiler-gcc6.h: No such file or directory
> 
> I can confirm this issue.
> 
> Regards,
> Jonathan

I can get a successful build with my kernel branch where I've merged the
latest 4.1.y upstream stable release into the Raspberry Pi 4.1.y branch
(https://gitlab.com/oryx/linux-oryx-rpi). I don't have the time to bisect
this right now but one commit stands out as an obvious candidate for being
the fix:

compiler-gcc: integrate the various compiler-gcc[345].h files
https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit/
?h=linux-4.1.y&id=f320793e52aee78f0fbb8bcaf10e6614d2e67bfc

I can also get a successful build using the recipe for the 4.4.y branch in
meta-raspberrypi. The Raspberry Pi repository has moved over to the 4.4.y
branch as the default, we should probably do the same in meta-raspberrypi.

Thanks,
Paul Barker
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


