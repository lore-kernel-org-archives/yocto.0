Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B3CDE00D21; Sun,  5 Jun 2016 04:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.54.143 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 18.mo4.mail-out.ovh.net (18.mo4.mail-out.ovh.net
	[188.165.54.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8D3E00C62
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 04:59:24 -0700 (PDT)
Received: from player773.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id BD113FFA8F0
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 13:19:49 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id B0FD4600078;
	Sun,  5 Jun 2016 13:19:46 +0200 (CEST)
Date: Sun, 5 Jun 2016 12:21:32 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160605122132.2a8c70a1@nuc.betafive.co.uk>
In-Reply-To: <CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 780530111765514618
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrieejgdeflecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 05 Jun 2016 11:59:28 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 5 Jun 2016 20:44:42 +1000
Jonathan Liu <net147@gmail.com> wrote:

> On 5 June 2016 at 09:00, Trevor Woerner <twoerner@gmail.com> wrote:
> > Has anyone tried building a raspi image lately from master?
> >
> >         ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0
> > do_compile: Function failed: do_compile
> >
> >         | In file included
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler.h:54:0,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/stddef.h:1,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/stddef.h:4,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/posix_types.h:4,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/types.h:13,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/types.h:5,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/mod_devicetable.h:11,
> > |
> > from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/scripts/mod/devicetable-offsets.c:2:
> > | /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler-gcc.h:121:30:
> > fatal error: linux/compiler-gcc6.h: No such file or directory
> 
> I can confirm this issue.
> 
> Regards,
> Jonathan

I can get a successful build with my kernel branch where I've merged
the latest 4.1.y upstream stable release into the Raspberry Pi 4.1.y
branch (https://gitlab.com/oryx/linux-oryx-rpi). I don't have the time
to bisect this right now but one commit stands out as an obvious
candidate for being the fix:

compiler-gcc: integrate the various compiler-gcc[345].h files
https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit/?h=linux-4.1.y&id=f320793e52aee78f0fbb8bcaf10e6614d2e67bfc

I can also get a successful build using the recipe for the 4.4.y branch
in meta-raspberrypi. The Raspberry Pi repository has moved over to the
4.4.y branch as the default, we should probably do the same in
meta-raspberrypi.

Thanks,
Paul Barker

