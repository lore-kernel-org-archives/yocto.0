Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81D87E00A6D; Sun,  9 Aug 2015 14:18:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B028E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:18:55 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so153201092ioe.3
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=+hk2mUZMGTTJRBir9zbyspokYRiSU9PWy2DH4Gf/BWs=;
	b=f/WrHiEINfBu2HN37OUDuItV2VjGPUmq0oZn4mZYv0j/FyORLyoA82DbEVgn0y1NnO
	Ht3h9jsVAnjCtpadRLkjEa8/Ije+LvnMt97bR3e1/lngVTAYhAk7N8ngBxjt4BIE1LbX
	2C/UWaNggLlEpta/O0aIINRY6azvoLWtd0lCo0sgnbjeEwM4iK9AThv1zoOgz4Ps0f5Z
	Kkh9y0gKQHuSw3ffb0cBPzBRnm3pX+mDOerYsi9bq5elfoSy/2DBwkgt7+O7+cUM3oVA
	egsckq0VyYEuVsv5k50A1yezwpD2s8UTBOJd05rxi4FW33pF2+Tnut4/vTVWMBND8Fz4
	dllQ==
MIME-Version: 1.0
X-Received: by 10.107.158.197 with SMTP id h188mr17080972ioe.99.1439155135663; 
	Sun, 09 Aug 2015 14:18:55 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Sun, 9 Aug 2015 14:18:55 -0700 (PDT)
In-Reply-To: <CALbNGRQv4xS3+Sfd4dcsSK_4wDvNEu4Xb2OJ6EDAe7AoTnQ0vg@mail.gmail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-4-git-send-email-javier@osg.samsung.com>
	<CALbNGRQv4xS3+Sfd4dcsSK_4wDvNEu4Xb2OJ6EDAe7AoTnQ0vg@mail.gmail.com>
Date: Sun, 9 Aug 2015 23:18:55 +0200
Message-ID: <CALbNGRRTa53+kyKwk2MgQGfNoW-7a=D4b70345sNc26MxQGMHw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 3/5] sdcard_image-rpi.bbclass: Allocate more space for boot partition
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
X-List-Received-Date: Sun, 09 Aug 2015 21:18:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Aaargh wrong patch - sorry

On Sun, Aug 9, 2015 at 11:17 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> I am not the author - but ping for this one
>
> Andreas

