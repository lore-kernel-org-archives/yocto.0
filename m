Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61E72E00CB9; Tue,  6 Aug 2019 11:40:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ED6EE00A75
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 11:39:59 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id x19so77288263eda.12
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 11:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=T6Bp59AwTYEU0QYS0wHyFXtzwXE/mKIX7uXMnrp1pis=;
	b=PvQ7qyKoBI2QSUdShtPZTXm+ZOuicXrydiughxuSQ1rHz2N8+3Tde+rBpFmLSvimZn
	/VyKLG4+QnELZzwC12iSNL0zy8XM/qXPZTPNiZf1R+NuOlr2Zx6gMzYz0T7Wabaq5JO1
	IAi8/wkknjWg9mK7rpzSdDqr9oQaN46+RbFgxRtYoz7R7mOpE47mILIAuZTuh125isY7
	mS7qfACXhJsH5oJrfbbSBfjVp3jGztylOIh2NOsKl4UMzoX+AehiRwV6f23h1Sm/XNx8
	V+gMKHBFn0hkvKZSzukClYnEQRiIx8RPt7hdWeR1rqbx58Tvb4Hj/+H+kg+X/jdTHfA9
	XUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T6Bp59AwTYEU0QYS0wHyFXtzwXE/mKIX7uXMnrp1pis=;
	b=KixyCoX8WdC7d2G8j/EF27qJmjVxvzvD4dC6kLMHLN0n22feF/WHhAecTp040pup7n
	Bngd8ir/j0xcVeG6Gwt5sFcInLGhMK4eLQiPqJ7wbUbUyCcJTaP29p6PwzhlxRCY/UKI
	ZOn1RMRKGDz2KkC/ESzGUP3TTM90rOcjE6HhmQFYBdC0LGXwf05/lhp5Eb+BWBxB44PP
	YursYrsEV/uCR8GZ49L1puDXA2Q8JyL5K90cbuHZ2h9vyjmRU0lW4mMlwwW8gxCoCKyt
	aG28CFAup6q3ULMBXDNI0ip+11FBDHnf3z+3/wGdmnu963DvJ58d0MHnBfUBMxE/3vdF
	lbUg==
X-Gm-Message-State: APjAAAUrUHOj95g2tfhFsj2ey0gDjm/USZUE7jbQqCKLK1y+XtLW0LUW
	i+tBgnU2YtfS8BhwTZhRt5PG9yNbkoQxD0NtZu5xvQ==
X-Google-Smtp-Source: APXvYqw0leicS2H5PjsilRd4jwmihKSjTMei2JzWHx718VK0NHpPPMfKjWhswq9g+/DQeyzeGIqzb75w22qHdSsmqGg=
X-Received: by 2002:a17:906:43c9:: with SMTP id
	j9mr4601334ejn.248.1565116798555; 
	Tue, 06 Aug 2019 11:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
	<CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
	<667c8e38a3664b2c964e978b07cb6963@sakuraus.com>
In-Reply-To: <667c8e38a3664b2c964e978b07cb6963@sakuraus.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 6 Aug 2019 20:39:47 +0200
Message-ID: <CAAfyv34nX0fE5Th7_cMPVTmM863wOu-okW8eFRCRNxdPX0YYWQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 18:40:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

On Tue, Aug 6, 2019 at 8:29 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> Hi Marek,
>
> Thanks for the suggestion, that seems to be the case. What image are you building so I can try that to see what I get?
Please don't top post ;). I'm building basic image. I worked few
months ago with bootqt and sometimes it was bit tricky ;). Are you
sure you have this variable set in local.conf?
>
> BR,
> Greg
>
> > -----Original Message-----
> > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > Sent: Tuesday, August 06, 2019 11:12 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] U-boot enable not working for Raspberry Pi3
> >
> > Hi Greg,
> >
> > On Tue, Aug 6, 2019 at 7:12 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > wrote:
> > >
> > > I'm working with a Yocto Sumo build provided with Qt's boot2qt system. I'm trying
> > to enable using Das U-boot to load Linux as a first step in trying to enable OSTree
> > updates.
> > >
> > > In the meta-raspberrypi documentation is says to set:
> > >
> > > RPI_USE_U_BOOT = "1"
> > Could be tha tboot2qt somehow drop your config. Please try tin run bitbake -e
> > <IMAGE_NAME> | grep ^RPI_USE_U_BOOT to be sure that variable exists. I
> > used it many times and it works perfectly fine.
> > >
> > > to enable u-boot for the raspberrypi. I have set that variable in the top level
> > local.conf file but I don't seem to be getting any changes in the build. Nothing in the
> > cooker log shows building u-boot, and the start up screen doesn't show any u-boot
> > messages.
> > >
> > > It appears that I'm missing necessary to turn u-boot on, can anybody shed some
> > light on what is going on?
> > >
> > > Regards,
> > >
> > > Greg Wilson-Lindberg
> > > www.sakuraus.com
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com

BR,

marek

