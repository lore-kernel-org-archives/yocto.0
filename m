Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BE24E00CBB; Wed, 15 Jun 2016 07:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.47.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 12808 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jun 2016 07:41:58 PDT
Received: from 20.mo3.mail-out.ovh.net (20.mo3.mail-out.ovh.net [178.33.47.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FD42E00CAC
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 07:41:58 -0700 (PDT)
Received: from player772.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo3.mail-out.ovh.net (Postfix) with ESMTP id DDE471000F09
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:03:59 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player772.ha.ovh.net (Postfix) with ESMTPSA id 014574C0081;
	Wed, 15 Jun 2016 13:03:57 +0200 (CEST)
Date: Wed, 15 Jun 2016 12:05:53 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20160615120553.14ef7b67@nuc.betafive.co.uk>
In-Reply-To: <20160614183025.GB12722@resin.lan>
References: <1465390949-26330-1-git-send-email-paul@paulbarker.me.uk>
	<20160614183025.GB12722@resin.lan>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3899835804829714833
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekledrkeeigdefvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi: Prevent taskhash mismatch
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
X-List-Received-Date: Wed, 15 Jun 2016 14:42:00 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 14 Jun 2016 19:30:25 +0100
Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hi Paul,
> 
> On Wed, Jun 08, 2016 at 02:02:29PM +0100, Paul Barker wrote:
> > As recently discussed on the mailing list, bitbake now issues an
> > error when the task hash computed by the bitbake master differs
> > from the task hash computed by the bitbake worker. This usually
> > happens when the task hash depends on the date and time for some
> > reason.
> >
> > This affects IMAGE_CMD_rpi-sdimg and is fixed by excluding the
> > dependency on the current date and time from the command.
> >
> > Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> > ---
> >  classes/sdcard_image-rpi.bbclass | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/classes/sdcard_image-rpi.bbclass
> > b/classes/sdcard_image-rpi.bbclass index 3b4f13f..a8d83a3 100644
> > --- a/classes/sdcard_image-rpi.bbclass
> > +++ b/classes/sdcard_image-rpi.bbclass
> > @@ -72,7 +72,7 @@ SDIMG =
> > "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg" FATPAYLOAD ?=
> > ""
> >
> >  IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> > -IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
> > +IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
> >
> >  IMAGE_CMD_rpi-sdimg () {
> 
> I can't seem to replicate this issue with currrent poky master. Any
> idea why? Maybe this got fixed in poky?
> 

I must admit it's an issue I don't 100% understand. I'll try again
without this patch and see what happens.

Thanks,
Paul Barker

