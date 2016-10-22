Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 159E7E00C9A; Sat, 22 Oct 2016 07:57:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB08E0049B
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 07:57:16 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id CAC0E205AF;
	Sat, 22 Oct 2016 10:57:15 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
	by compute1.internal (MEProxy); Sat, 22 Oct 2016 10:57:15 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=gk69cmGVLlUHw4p
	0P2jaSq6bHlQ=; b=JBHDlui7KqgkMoVzrotOHwYQZmQppvdBeTXPT1uAmB14mjV
	V7e7QRYUL0uWxEaSuz5o6Cr1WzQsCXj2vw1unCN5Ur6N6Wnclu6wQBBLNj2eCFd6
	ZHPfgb+nVzT/qefCHBN04L6ZAw3VxAnMvrvsHTTTurtLrHRd5gC+XrvrbCAU=
X-Sasl-enc: GbAXte115V+UZtuuS91CA4lnGVc6hPMgV97NsN5Sa8NO 1477148235
Received: from laptop (a88-113-211-72.elisa-laajakaista.fi [88.113.211.72])
	by mail.messagingengine.com (Postfix) with ESMTPA id 348D5CC07E;
	Sat, 22 Oct 2016 10:57:15 -0400 (EDT)
Message-ID: <1477148233.2350.1.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Piotr Lewicki <piotr.lewicki@elfin.de>, yocto@yoctoproject.org
Date: Sat, 22 Oct 2016 17:57:13 +0300
In-Reply-To: <507bf35d-b637-e6f1-ca8e-dca0f1a65162@elfin.de>
References: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
	<1477049218.1960.1.camel@iki.fi>
	<507bf35d-b637-e6f1-ca8e-dca0f1a65162@elfin.de>
X-Mailer: Evolution 3.22.0-2 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi][question] how to setup alsa on rpi3?
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
X-List-Received-Date: Sat, 22 Oct 2016 14:57:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-10-21 at 13:45 +0200, Piotr Lewicki wrote:
> On 21.10.2016 13:26, Tanu Kaskinen wrote:
> > It looks like the default alsa device is configured to use card 0, but
> > card 0 doesn't exist. What do "cat /proc/asound/cards" and "ls -l
> > /dev/snd" print?
> 
> root@raspberrypi3:~# cat /proc/asound/cards
> --- no soundcards ---
> root@raspberrypi3:~# ls -al /dev/snd/
> drwxr-xr-x    2 root     root            60 Oct 21 09:53 .
> drwxr-xr-x   11 root     root         13200 Oct 21 09:53 ..
> crw-rw----    1 root     audio     116,  33 Oct 21 09:53 timer

Weird, is snd-bcm2835 actually loaded?

I don't have oe on rpi myself, so if there's some extra step required
to make alsa work, I don't know about it.

I have raspbian on rpi2, and /boot/config.txt contains this, which
seems relevant, so you could check if you have it:

# Enable audio (loads snd_bcm2835)
dtparam=audio=on

But if you have snd-bcm2835 already loaded, then I don't think this can
be the issue.

> I wonder what is used by omxplayer that it works, but alsa does not.

Yes, it seems to be some kind of witchcraft.

-- 
Tanu

