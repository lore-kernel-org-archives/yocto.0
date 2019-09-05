Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 499FBE00D9F; Wed,  4 Sep 2019 21:24:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC41E00C25
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 21:24:04 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id f10so857015qkg.7
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 21:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NBIUMKRbfCRSRg+KQckxR70tM2xgEaxKW2aK9ojeNZU=;
	b=McNCuIstFgrpJQp1GblpGQWxRP4WjjMiu4vwf0u57eRkkBCtuA6RIVc/C5fjsoV4YN
	uF36rJXlWYdNOdIoI7iTU9a8tSHFYeIcC7pIZHPtCbxWzZzVMuvDRQOQNudc0ZMPOAas
	LwwEKR0fVzBSOljUzZqjXRtTmY0PlOgTOf29El1t2gBUIGpUJpqGHJYSNNpGLXk1CIHO
	q4nC2pxJiFTVKGKb4taFV5diE1KnG18H1jTnzA2VvqFjgCQRVJh2be1vDgFZ29tB7uy/
	UUVG0lZkvgiY0ycwi+i0lTvGVxDgv8SUFql+wYYr6ht0VEkybQvAhhPmhcvwE0ZlaLck
	Jjlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NBIUMKRbfCRSRg+KQckxR70tM2xgEaxKW2aK9ojeNZU=;
	b=pV2JpBrB3TzRXiz1A2E4uv0zgbt6qLcFyuWlBAvL7lJCNyUFjnP/BhuP3Vv74cBt84
	aSjGFul32rbTJSSPq5mVBpwXZoDClozZUC702Q7Ve+cCmZaCBrE2hFwOdtdn2I+V1QC2
	f4gyIscpX/JyULoENweCt8jACBsfHLslNgtMAf0Bw7PfOYGi18iVd5R0JgVEtfPTbW4a
	oU0U5ID7XPSokpZXVfpIm1XnaCXHKutiNyc/sTE359e5skEuhw6QfhUV4ZsKsXMfyVvT
	BsyCikNZQR3LuSTvsgJgrWYtRTrQxuVwdNIWL3Btg+pvxMyeyGnFXp6nf0ROq/L6iEAr
	WSiA==
X-Gm-Message-State: APjAAAVz92irfcK+GzkY9S187Xy2jWp4dbJcrAV0T3cZdPMY8pRbLLw8
	0h3HFfLQNyUi0xqg0g5rATsnGZc/k3qjzKVErQs=
X-Google-Smtp-Source: APXvYqww2TEr3I3mgTm+zmrg7soCUrO3GET9/rMQV4O+PZbiHV7TGEi9ZOxiTo6AUajPm/7a3BxkJFqtNdDs5ynn/+4=
X-Received: by 2002:a37:a44f:: with SMTP id n76mr984785qke.414.1567657443905; 
	Wed, 04 Sep 2019 21:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
	<CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
	<d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
	<CAGAf8Lyh-pqhaifi3n-i7RXdks_3RgSioDy9eV41mc=KtCDZcA@mail.gmail.com>
	<1667c72fdc9c4e57a454858b65b332c8@sakuraus.com>
In-Reply-To: <1667c72fdc9c4e57a454858b65b332c8@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 5 Sep 2019 06:23:52 +0200
Message-ID: <CAGAf8LwbP5WHkP9CYkXWeL_dqX-CJXOLB-PgoYquL3YVGs9pTQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Thu, 05 Sep 2019 04:24:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

@Off Topic, regarding managing U-Boot out of YOCTO tree

Just to clear some things here... At least from my side.

Anyway, whatever you, guys, do with YOCTO (and YOCTO indeed gives and
delivers the complete BSP + rootfs), I usually use ONLY one YOCTO
component: rootfs. All other components I manage out of YOCTO tree. In
other words, I do my own u-boot and my own kernel as separate
components. Easier for me. All three components will go to different
separate SDcard or mmc partitions.

If it comes to manage .config, it is somehow supported. But when it
comes to do separate set of drivers, people use overlays (new layers
over old ones). Imagine someone needs to change DTS topology?!

I guess, I used to this philosophy. Buildroot is another alternative
(much easier manageable for rootfs-es in terms of adding separate
components), but I like YOCTO integrated rootfs vision, and user space
layering. ;-)

My two cent worth thinking (at least from R&D perspective),
Zoran
_______


On Wed, Sep 4, 2019 at 11:25 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> > -----Original Message-----
> > From: Zoran Stojsavljevic [mailto:zoran.stojsavljevic@gmail.com]
> > Sent: Wednesday, September 04, 2019 12:44 PM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Belisko Marek <marek.belisko@gmail.com>; Yocto list discussion
> > <yocto@yoctoproject.org>
> > Subject: Re: [yocto] [meta-raspberrypi] Confusion about U-Boot setup
> >
> > > There should be some way to change the u-boot delay that waits for
> > > user input, among other things, I just haven't been able to find it
> > > yet and was wondering if someone could point me to where it can be
> > > found.
> >
> > Jesus Christ's, Greg?!
> >
> > This is what you should look for (exact string):
> > #define CONFIG_BOOTDELAY               (whatever {0,1,2,3...})
> >
> > In your $(UBOOT_ROOT)/include/configs/<config_file.h>
>
> I wasn't originally looking for the boot delay, that is what marek mentio=
ned. I was looking for general configuration info and where the uEnv.txt go=
t setup. I thought somehow I had missed some docs on u-boot configuration a=
s there are so many configuration options that can be set by yocto variable=
s. I guess they don't exist for u-boot and I will look in the u-boot config=
_file.h
> Thanks,
> Greg
>
> >
> > Zoran
> > _______
> >
> >
> > On Wed, Sep 4, 2019 at 6:57 PM Greg Wilson-Lindberg
> > <GWilson@sakuraus.com> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > > > Sent: Wednesday, September 04, 2019 12:26 AM
> > > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > > Subject: Re: [yocto] [meta-raspberrypi] Confusion about U-Boot setu=
p
> > > >
> > > > Hi,
> > > >
> > > > On Tue, Sep 3, 2019 at 8:58 PM Greg Wilson-Lindberg
> > > > <GWilson@sakuraus.com>
> > > > wrote:
> > > > >
> > > > > I've configured a sumo build, by way of QT's boot2qt to use u-boo=
t
> > > > > and I am
> > > > seeing a u-boot prompt for keypress to drop out of automatic bootin=
g
> > > > on startup, but I don't see any configuration scripts for u-boot
> > > > (uEnv.txt or a script) on the image or in the build tmp/ dir.
> > > > >
> > > > > For the raspberry pi, how is u-boot configured on startup?
> > > > there is u-boot variable called bootdelay which can be set to e.g. =
2
> > > > to wait until autoboot for 2 secs. I think this is the case. Thanks=
.
> > >
> > > There is a variable "BOOT_DELAY", that is used to tell the Raspberry =
Pi boot
> > loader to delay after setting up the graphics and before loading the ke=
rnel. This has
> > nothing to do with u-boot.  There should be some way to change the u-bo=
ot delay
> > that waits for user input, among other things, I just haven't been able=
 to find it yet
> > and was wondering if someone could point me to where it can be found.
> > >
> > > BR,
> > > Greg
> > >
> > > > >
> > > > > Regards,
> > > > > Greg Wilson-Lindberg
> > > > >
> > > > > --
> > > > > _______________________________________________
> > > > > yocto mailing list
> > > > > yocto@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> > > > BR,
> > > >
> > > > marek
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

