Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EDEFE00DA3; Wed,  4 Sep 2019 12:44:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A614E00D9D
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 12:44:16 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id q203so11584975qke.1
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 12:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bfpIJgm07WPkLwM4O0jIyJP1Bmt2z1Qrv5kbdNCPts4=;
	b=Bl4fXN4c3MEai5PLuyK47zObg+ivfsuvfg0gYz3F9Mr6Fq3o9DyXxAjs1cX3ykOm4W
	VJeQpzR6oSHY0qt1pPwpGgPyvlxVClqKu44s9rAVeDX9fhVF7Xd7phW1rFuPBUHlhnW0
	q0btAetEX7pLileddo1u8wNr6T6OXLGeswRl7h5hi10WrWO2u9f19GJw1c1AIsflL94M
	taPSYINMCNpK1T9q0fkyY5jcknRsAq8Z/FssYYp8MvJUHPlZ0OBHiBMkIQ43nmyFPrtq
	+Gd/jmm0tkw1llD8pqtAKLHpikjnSYoQren3UYPwMp3ofc0uhHuWsXUCfleaesnDHdKw
	Odtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bfpIJgm07WPkLwM4O0jIyJP1Bmt2z1Qrv5kbdNCPts4=;
	b=UMpIPeqy0DDxAIlIqzrT+T37Q559gcvYOxuEV+Mxr0E65ArmRdrbLALqVRS4BCUaSR
	WM4ATWYwlLQJovcJ3AJHN4Y7YAf3Vvvk2cv78+mip12U2JtjY2DZm8CLss7u4QlVo1W3
	GwkcwN4M3dpIiTX1fLQitVRLbc49V8lymxxLY2471bQHaTrksfZ2W3YaxmKTk1Z0/642
	Jp3zpgEmPy7QkVXWQ5F18JNADilmT4/RuPgx1g57+vf8I/LDNkzHPj0DA3y3KD1Bl9MS
	u2NVTAnV3ka0+uJr1RhpAl8RdUE1cTFpE/3k4O2uWDj/0+ej7NY5WzH8KNi4y64sRoOz
	hDOA==
X-Gm-Message-State: APjAAAVcodwTLX8seue1966rPjvdGo/ZtwM5+vM1+jhOb8ADwKWOSH4A
	CtEUw74juRs9hwPpP5uYBNXlCxekbKidaXpZPtY=
X-Google-Smtp-Source: APXvYqwxSxIkiA2hIDPUROf6As4iYg2NN3+rxTsyZskTT69zsy2sxcl+oI+dPO6qAEy0uAiqrNQ8qUUGyunGTOd0wc0=
X-Received: by 2002:a05:620a:15cc:: with SMTP id
	o12mr19364837qkm.140.1567626256398; 
	Wed, 04 Sep 2019 12:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
	<CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
	<d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
In-Reply-To: <d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 4 Sep 2019 21:44:05 +0200
Message-ID: <CAGAf8Lyh-pqhaifi3n-i7RXdks_3RgSioDy9eV41mc=KtCDZcA@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Sep 2019 19:44:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> There should be some way to change the u-boot delay that waits
> for user input, among other things, I just haven't been able to find
> it yet and was wondering if someone could point me to where it
> can be found.

Jesus Christ's, Greg?!

This is what you should look for (exact string):
#define CONFIG_BOOTDELAY               (whatever {0,1,2,3...})

In your $(UBOOT_ROOT)/include/configs/<config_file.h>

Zoran
_______


On Wed, Sep 4, 2019 at 6:57 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> > -----Original Message-----
> > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > Sent: Wednesday, September 04, 2019 12:26 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] [meta-raspberrypi] Confusion about U-Boot setup
> >
> > Hi,
> >
> > On Tue, Sep 3, 2019 at 8:58 PM Greg Wilson-Lindberg <GWilson@sakuraus.c=
om>
> > wrote:
> > >
> > > I've configured a sumo build, by way of QT's boot2qt to use u-boot an=
d I am
> > seeing a u-boot prompt for keypress to drop out of automatic booting on=
 startup, but
> > I don't see any configuration scripts for u-boot (uEnv.txt or a script)=
 on the image or
> > in the build tmp/ dir.
> > >
> > > For the raspberry pi, how is u-boot configured on startup?
> > there is u-boot variable called bootdelay which can be set to e.g. 2 to=
 wait until
> > autoboot for 2 secs. I think this is the case. Thanks.
>
> There is a variable "BOOT_DELAY", that is used to tell the Raspberry Pi b=
oot loader to delay after setting up the graphics and before loading the ke=
rnel. This has nothing to do with u-boot.  There should be some way to chan=
ge the u-boot delay that waits for user input, among other things, I just h=
aven't been able to find it yet and was wondering if someone could point me=
 to where it can be found.
>
> BR,
> Greg
>
> > >
> > > Regards,
> > > Greg Wilson-Lindberg
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > BR,
> >
> > marek
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

