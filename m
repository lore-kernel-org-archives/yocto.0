Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9983DE00E84; Thu, 19 May 2016 09:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34325E00E6C
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:02:34 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id l68so7943367qkf.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Mhywi6Rfth6Hz+xaGxgTZo8HZoqCl9k071KAHq6hEfU=;
	b=P2gROmnmwJCjGBIPeXF5DAy7+9IEFqqb0V7ABH3xibmU+JVTzsF6Vvevx4aGkjkbbF
	+HetMnhvH6XQK7cvM1VbDrreDL1vFydAxyvW3T8p+BF+VsIkGuMEtVHtKXEGsbaolhQ6
	NrzcuJMkcynTGDYpalfsGLN2WjW1WDV2IjfxUGi+lZ+AVkTCIxvXRi92yq7BJ/C4PVkU
	nVHqJy2LyHyxQhQWNNiCUIiaZn/M6lIKhYKP5UDTPWksE/F01HghK8SAZxUkSbmLtLgC
	vE/FiDU0po9mWnDg5biECe1b2cMvGR+TESDKL68+l6tKCupiX+bkmhIztO7w2UFqh6uy
	jloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Mhywi6Rfth6Hz+xaGxgTZo8HZoqCl9k071KAHq6hEfU=;
	b=LJ2w7cgwZWaPrZZFp8YZ1EL6mP+CxkA0QyC8Nw1vXyQDhwmR2pu6blBJGTJ0yhRK7f
	6qacb/2ejDjJQZFnJFr1UjTFLZBu5uKiQpwAP3Ec2aoiGc9b5dmL/oKRoKmMNif5KtP1
	6gIZBZohfZG22XLXmcvylOz30SeKaePKfcnrm9sHeZK7L6DPUbGAPQPDY6jeP3zbIk2E
	DxURf8RZaSqNrx7vunhD7MpAs4FPwlLwis5DVcz4RAgfI/GP5uYJyDGD5rwybL0r9dsh
	PH6B3e0OlcsQbuf8Rn3YDKYDpunNdKBnHrkMQBXnAtT2b9fGkkRhcbk5Z42IyFQ8KcSx
	GUtA==
X-Gm-Message-State: AOPr4FXheOU+a6fe0v1EnAu6zu0/fPI/2ImjlRET1Of7A9m+yFgEcwPwv/JwVAAxyIS+kO1TY3+YwINITbknfQ==
X-Received: by 10.55.207.214 with SMTP id v83mr15707994qkl.152.1463673754390; 
	Thu, 19 May 2016 09:02:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 19 May 2016 09:02:04 -0700 (PDT)
In-Reply-To: <20160519151111.GB9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<20160519151111.GB9848@resin.home>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 May 2016 09:02:04 -0700
Message-ID: <CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Thu, 19 May 2016 16:02:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M=C3=BCller wrote:
>> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.fr>=
 wrote:
>> > One thing I didn't make configurable, but that maybe could be, is the =
parameter passed to the overlay.
>> > I selected cma-256, based on experience from other people, and because=
 my configuration is RPI2/3 with 1G of memory.
>> > I realize it might not work well with RPI0/1, which have less memory a=
vailable...
>> > So even if I believe cma-256 is a good default value, it might be made=
 selectable by the user, if we want to consider vc4 on RPI0/1.
>> I played around with vc4 to but did not manage to get it work for an
>> elder version 4.1 of kernel.
>>
>> I did in rpi-config:
>>
>> CMA_SIZE =3D "cma-256"
>> CMA_SIZE_raspberrypi =3D "cma-64"


>
> I sent reply about this too. This is definitely one solution would I
> would rather have a CMA_SIZE default value and a python function to
> check its match with board variant. Cause in this way a user might be
> able to use cma-96 on rapsberrypi.
>
>> CMA_SIZE_raspberrypi0 =3D "cma-128"


setting CMA_SIZE should be moved into machine.conf file IMO


>> ...
>> echo "dtoverlay=3Dvc4-kms-v3d-overlay,${CMA_SIZE}"
>> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>
>> This is nothing but an untested suggestion.
>>
>> Without testing your series I would be very happy to see this or very
>> similar applied in master: Since vc4 works, RaspberryPi turned into my
>> reference test board - e.g. have not seen kde5 running that nice on
>> another board..
>>
>> Andreas
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

