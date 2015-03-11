Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0082AE00779; Wed, 11 Mar 2015 02:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12050E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 02:39:03 -0700 (PDT)
Received: by padet14 with SMTP id et14so10113326pad.0
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 02:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=KzEWDFwjP/uGvBCjyDrdHusm/yLOQBLltLbpzr7rxAc=;
	b=r6ipcbkmrmTsBtIX/1SJkxYTF1q47odgFc6Q308IwnO9RIUC6wVbd9/oNYidL1OKyT
	I/kVy29dX0NsVk9k7dEGaPoJmKVQ3q1Yms/QruFpjJTAn/j3Eym4x8VQg+Z1Sh2mQ9wX
	0MiQy7o1fsW2AvTeHHdoHzAsYF23Ls33RwODy650D6/UYXYkUsoa1+KDBUeHXJs6x5xE
	DLhymZ59RxJKpH8WlXNYFoXNV/NUpIi5ezJjeElYJFPk9Gu5Z+ktorLZ7zL0UsH4RCh9
	O3fkIuVrYztGDxU4zaixFC9e+OFm0rKqoqQhBNniE79TwVCuYhr7PX9CcjApTnadbKWH
	GeEg==
MIME-Version: 1.0
X-Received: by 10.66.182.166 with SMTP id ef6mr75463480pac.77.1426066742612;
	Wed, 11 Mar 2015 02:39:02 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Wed, 11 Mar 2015 02:39:02 -0700 (PDT)
In-Reply-To: <630ff0d7c9593b5d339fd652eeb887ab@technux.se>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
	<54FE098E.5020701@mlbassoc.com>
	<CALbNGRQ32k1jxRuNNOYUP+Aj-syQHyYoO81hMaL7dHzE1MgcfQ@mail.gmail.com>
	<54FE0E5A.9040400@mlbassoc.com>
	<CALbNGRRjEJ+ini-vNningcS1BAXKVvmWKKhwSbWRyUC2_zbj=A@mail.gmail.com>
	<630ff0d7c9593b5d339fd652eeb887ab@technux.se>
Date: Wed, 11 Mar 2015 10:39:02 +0100
Message-ID: <CALbNGRQ8c0z1yjNtLoULj0fH=cDKZHEQHQkDVbjGzrJ4gW5B4Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: petter@technux.se
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Wed, 11 Mar 2015 09:39:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2015 at 7:53 AM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:
> I have created a new ticket for the raspberrypi2 problem:
> http://redmine.gherzan.com/issues/52
>
> For the raspberrypi problem I cannot reproduce this problem. For me it lo=
oks
> good using below revisions for poky and meta-raspberrypi:
>
> meta-raspberrypi: 57c8e6b rpi-base.inc: Include the RPI2 DTB
>
> poky: 0aff275 layer.conf: bump version as error-report interface changed
>
>
>
> Andreas: Can you please specify revisions you are using for poky and
> meta-raspberrypi? Would be great if you also can mail me log.do_fetch and
> log.do_patch (if such exists I understand it as it bails at do_fetch form
> your mail..) found in:
Don't have logs here but 10-evdev.conf was not found. I checked: By
increasing layer priority the fitting path to meta-raspberrypi was
missing.

I am using angstrom/oe-core/meta-oe++/meta-qt5 and several bsp layers
(e.g meta-ti/meta-gumstix-community/meta-fsl-arm/meta-raspberrypi/meta-beag=
leboard-common..)
- can give further details later (have them at home).

What I don't understand so far: Why is this patch necessary and what
was intended to fix?

Andreas

