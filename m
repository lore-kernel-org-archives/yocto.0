Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067C5E0093E; Sat,  2 Apr 2016 08:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (toolmmy[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CBE6E00527
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 08:10:11 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1amNBd-0000Vk-Ta
	for yocto@yoctoproject.org; Sat, 02 Apr 2016 17:10:06 +0200
Received: from HSI-KBW-095-208-027-092.hsi5.kabel-badenwuerttemberg.de
	([95.208.27.92]) by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 17:10:05 +0200
Received: from toolmmy by
	HSI-KBW-095-208-027-092.hsi5.kabel-badenwuerttemberg.de with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 17:10:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Tom Doehring <toolmmy@gmail.com>
Date: Sat, 2 Apr 2016 14:49:44 +0000 (UTC)
Message-ID: <loom.20160402T164713-575@post.gmane.org>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
	<20160401191729.GA25051@linux-yxv0>
	<20160401224604.GA30256@linux-yxv0>
	<46A38E77-8BDD-4272-9619-2583EC019F1E@gmail.com>
	<20160402040301.GA20785@linux-mkz6>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 95.208.27.92 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:45.0) Gecko/20100101 Firefox/45.0)
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Sat, 02 Apr 2016 15:10:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Trevor Woerner <twoerner@...> writes:

> 
> On Fri 2016-04-01  <at>  03:55:31 PM, Khem Raj wrote:
> > 
> > > On Apr 1, 2016, at 3:46 PM, Trevor Woerner <twoerner@...> wrote:
> > > 
> > > On Fri 2016-04-01  <at>  03:17:29 PM, Trevor Woerner wrote:
> > >> As far as I can tell there are two raspberry pi OE layers which
include this
> > >> commit:
> > >> 
> > >> 1. git://git.yoctoproject.org/meta-raspberrypi::master
> > >> 2. https://github.com/kraj/meta-raspberrypi.git::kraj/master
> > > [...]
> > >> - Using 1 (the official layer from Andrei) I get an image that boots
but the
> > >>   console remains messed up (as before).
> > >> 
> > >> - Using 2 (the layer from Khem) I get an image that flashes the rainbow
> > >>   pattern on the HDMI monitor, shows the 4 berries, then stops.
Nothing else
> > >>   happens, no messages on the console.
> > > 
> > > I get the same results with no local.conf tweaks and building the
> > > rpi-basic-image.
> > > 
> > > Does anyone have a run-tested, OE-built, raspi3 image with working
console?
> > > 
> > 
> > can you select 4.1 for kernel and try with master, Andre has merged all
my changes
> > today
> 
> Yes, that's one of the options I have already tried; it boots but the console
> is still garbled.
> 
> The 4.1 kernel is the default in Andrei's layer. Using the 4.4 kernel from
> your layer I can't get past the 4 raspberries.

Hi everyone,

this is nothing that depends on the kernel itself. There was a major change
in the /dev/ttyAMA0 in order to make use of the bluetooth module. There is
an overlay that allows using the console and the bluetooth module on
parallel (pi3-miniuart-bt) with a lower baudrate while useing hciattach. If
you don't want to use the bluetooth module you can switch back to the
console by using the pi3-disalble-bt overlay.

See also: https://www.raspberrypi.org/forums/viewtopic.php?t=138120&p=926637



