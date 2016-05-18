Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADC92E00CF4; Wed, 18 May 2016 15:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74179E00CA4
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 15:59:11 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id v68so9408164vka.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 15:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=V2jUg/f5d5WnUxdClpmMXqSeRwDAUXJ+RSKwYhAX6AA=;
	b=btTjifeJV4vz3L1gZGoTvH3ckk1S20ETqr3Ir0I5IWA+oN9DXoFSUNDE+RNkZGvY6W
	Wpp7cQA7j16eVRZ6DatSkoVz6qynqmrDqmr906rUdVzGZYqxik85gIj8xnuDjC8N7DIV
	vNMymOW44x8TRibKQEE4nv6LAN/sxx6Wx5yDeeqRJd8qP5ThVFm84cKOrqXDXXXCtNSO
	Q6zBBSG4Ruvs991dJV72WZftY1B7Ii6jrzRfy0m7KVwu2WSutTF6HngW4PFP9q5up0M6
	IIWe1iR9o7Wt7s8p8qZPw5aU3VaQe9WVrHepFCyQZJ9ZQFOcmV5wNsLN8HRY0LT9iOgt
	sPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=V2jUg/f5d5WnUxdClpmMXqSeRwDAUXJ+RSKwYhAX6AA=;
	b=AXkpB6qAjbm9AtdXcRFmvlNx6L9t/i00ShFMpq3HKwJGjbeE31lVAWp/RBTnp9ALWT
	1sNbNqv+2resNv1usGbDngRia/6KHb+4xQBblaJMzvZhW4qtr9llENXnENRz12+n8lwi
	DlhZSbbv2LTVl/FEP6rRg8D0XGiDihvsa7mBlKswrtIC0DcOQDXV/W4ui9nfFTWfWib1
	Nom4JtWsH+zUfgHo6IdYDRncq0dRZn3GCSY1P4n7yEs50Z7a6jhnGRBChEEk2Jw4I3Mb
	vSsKw7bTXer2pnxj3amOr9BPrqX/+aVj+igxTgeukltI1P3zeRWdLL2isD8cHM3jentu
	8evQ==
X-Gm-Message-State: AOPr4FU/Z3tyDyeNgnaHQnf0GzBAYCg1Rb1mZhIf6dso6na7Fe9MrkPdcD0TrvFFzOzCZ1c27cUMulKAHMo4tQ==
MIME-Version: 1.0
X-Received: by 10.31.205.70 with SMTP id d67mr5544836vkg.141.1463612350540;
	Wed, 18 May 2016 15:59:10 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Wed, 18 May 2016 15:59:10 -0700 (PDT)
In-Reply-To: <CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
Date: Thu, 19 May 2016 00:59:10 +0200
Message-ID: <CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 22:59:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 18, 2016 at 11:46 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>> One thing I didn't make configurable, but that maybe could be, is the pa=
rameter passed to the overlay.
>> I selected cma-256, based on experience from other people, and because m=
y configuration is RPI2/3 with 1G of memory.
>> I realize it might not work well with RPI0/1, which have less memory ava=
ilable...
>> So even if I believe cma-256 is a good default value, it might be made s=
electable by the user, if we want to consider vc4 on RPI0/1.
> I played around with vc4 to but did not manage to get it work for an
> elder version 4.1 of kernel.
what I meant: did only work for elder 4.1 - not current 4.1
>
> I did in rpi-config:
>
> CMA_SIZE =3D "cma-256"
> CMA_SIZE_raspberrypi =3D "cma-64"
> CMA_SIZE_raspberrypi0 =3D "cma-128"
> ...
> echo "dtoverlay=3Dvc4-kms-v3d-overlay,${CMA_SIZE}"
>>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>
> This is nothing but an untested suggestion.
>
> Without testing your series I would be very happy to see this or very
> similar applied in master: Since vc4 works, RaspberryPi turned into my
> reference test board - e.g. have not seen kde5 running that nice on
> another board..
>
> Andreas

