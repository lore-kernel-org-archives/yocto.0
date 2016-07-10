Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96216E00D50; Sun, 10 Jul 2016 16:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.61.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 7.mo177.mail-out.ovh.net (7.mo177.mail-out.ovh.net
	[46.105.61.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4430CE00D4C
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:46:15 -0700 (PDT)
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id 27447FFCA94
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 01:27:13 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player716.ha.ovh.net (Postfix) with ESMTPSA id 4E1EF56006A;
	Mon, 11 Jul 2016 01:27:12 +0200 (CEST)
Date: Mon, 11 Jul 2016 00:27:11 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Hammad Ahmed <hammadahmed85@gmail.com>
Message-ID: <20160711002711.07076803@nuc.betafive.co.uk>
In-Reply-To: <20160709103558.140ffe32@nuc.betafive.co.uk>
References: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
	<20160709103558.140ffe32@nuc.betafive.co.uk>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15695326179611478283
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeltddrfeeggddukeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] u-boot doesnt boot kernel
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
X-List-Received-Date: Sun, 10 Jul 2016 23:46:19 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 9 Jul 2016 10:35:58 +0100
Paul Barker <paul@paulbarker.me.uk> wrote:

> On Fri, 8 Jul 2016 21:04:24 -0400
> Hammad Ahmed <hammadahmed85@gmail.com> wrote:
> 
> > Hi,
> > I wanted to boot with u-boot so I added:
> > 
> > KERNEL_IMAGETYPE = "uImage"
> > 
> > u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt
> > start the kernel.
> > 
>

I've just sent a patch series which should allow u-boot to start the
kernel without needing to type in a bunch of manual commands.

You can get the patches from the mailing list or use the
'pbarker/u-boot' branch of https://gitlab.com/oryx/meta-raspberrypi.

Let me know if this works for you.

