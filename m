Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28B68E00CAC; Mon, 30 May 2016 03:14:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.104.253 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 6603 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 May 2016 03:14:13 PDT
Received: from 12.mo4.mail-out.ovh.net (12.mo4.mail-out.ovh.net
	[178.33.104.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D69E00C2A
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 03:14:13 -0700 (PDT)
Received: from player773.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 589D6FFADAE
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 09:46:27 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player773.ha.ovh.net (Postfix) with ESMTPSA id B7169600071;
	Mon, 30 May 2016 09:46:24 +0200 (CEST)
Date: Mon, 30 May 2016 08:47:57 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160530084757.3571ab12@nuc.betafive.co.uk>
In-Reply-To: <CAMKF1sq1qEzVQMMYuc36t6DYvi3VNyH=z5WSs6vJX3TDJ4diQg@mail.gmail.com>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-6-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sq1qEzVQMMYuc36t6DYvi3VNyH=z5WSs6vJX3TDJ4diQg@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 17280874721168034279
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrhedvgddufedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/6] linux-raspberrypi: Drop version 3.18
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
X-List-Received-Date: Mon, 30 May 2016 10:14:17 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 May 2016 21:17:29 +0300
Khem Raj <raj.khem@gmail.com> wrote:

> I think we should remove it. But lets give a chance for folks to
> respond if any one is using 3.18 still
> On May 29, 2016 9:07 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
> 
> > The linux-raspberrypi v3.18 recipe does not build after commit
> > 519c387e3b97ecc21ac1d7b4fc9197298f289a71 as it lacks the necessary
> > dtb files.
> >
> > Signed-off-by: Paul Barker <paul@paulbarker.me.uk>

I'll drop this from the patch series for now so that we can get the
other changes in.

Thanks,
Paul Barker

