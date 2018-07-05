Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA36E00E23; Thu,  5 Jul 2018 08:03:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4923FE00A4C
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 08:03:22 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id s198-v6so17441367oih.11
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 08:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wosRzTKMAth1Ey1uU65Jz/6vn5ZfKey30uvxPu3q5ms=;
	b=FVzO9Dx2yOttDq5lT9Gu6gHuY1nANE2IWGreoh0o1VyWEOQSICAlAP5cbtN+i3h5Tl
	DwK/V/Z9+cRErOJ5374GY7bTWPOCbySCWVpiLxD8HCzcwO3VfnYtWHvWojcNqBBdVnyW
	Kwoj01CpaY7gJPdaegHm/etOK8fdWhyxOpqBSrnnfrRQrdiayJEmguOvukToWLVoM3NA
	+7tRRXc5rXF19UzmQxXWW0t/Bn4WlZf0+rlCXD/0VnXdXETYbr7WRjkXGPFfPh1If4jg
	aRn5OIchohf5jPxXGm021Y57AwPkjiKyGYRXL8khCHDhc7XEo/tqWX/PiOuBv4ELpawN
	Sl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wosRzTKMAth1Ey1uU65Jz/6vn5ZfKey30uvxPu3q5ms=;
	b=UKocafXp2oHH8kPNqD071XAku3LpGjCZoCIRSmF2SmCgxhqO7xJeDMfUC5CSlOwiTd
	ax5M0TbTpHeyPby/o1xJi9Y9gfYvXmZDAnFVln3TCIdEOWP8fSgehjh+3AmT6AowXLg8
	eOfB7dZ0kx8C2Izr3fpw9bgl5ULDOP+FbttSqesHvfbp6pjJryBALeHVC+BsNLwnIbDk
	Uh+0BWe6A4yN9HrdR3en2Qdb6Dtq+hDic6309MyTM36Ofra8n+JjQax2VNm8+vq3twuP
	wXJdgvDdoe+IXi6Sm87YdRO2l7dw3VGarcx4HUjXnYjtjrGPX0492E1lO64sWayz+Xuq
	EB+Q==
X-Gm-Message-State: APt69E1RHDrd+G2m+VkzDjQCw/RC8asoayfxiw36obTln6CivpiyQIg9
	sCHALErh7EOHurhsBSMTPGOLCB0B1RggsNSHdXdgJw==
X-Google-Smtp-Source: AAOMgpcbCx/V4/csVlw87XyG6+vly1HADBVPNq+R9sgVPZakfKWVLlauUPjhXucoM5tDEsY6sSzJNdxLu26yHtbnPCo=
X-Received: by 2002:aca:2808:: with SMTP id 8-v6mr7460669oix.235.1530803001765;
	Thu, 05 Jul 2018 08:03:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 08:03:01 -0700 (PDT)
In-Reply-To: <CANmTPBau+GOp=L6J0bwFKDxzOc6FELAm_jyuT=ui0DsFDg+2rg@mail.gmail.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
	<8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
	<CANmTPBYvf2etEnYgjUtZMUSvUy4uEU_oynRxQ2cHzT8eQVuQ3g@mail.gmail.com>
	<TY2PR01MB2025185F752EC4EB810AE88192760@TY2PR01MB2025.jpnprd01.prod.outlook.com>
	<CANmTPBau+GOp=L6J0bwFKDxzOc6FELAm_jyuT=ui0DsFDg+2rg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Jul 2018 16:03:01 +0100
Message-ID: <CAJTo0LaO3eWbqYExiTvU6aqkG9CbfoMoK4o2mLea8ikd9LP5OQ@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 05 Jul 2018 15:03:23 -0000
Content-Type: text/plain; charset="UTF-8"

On 5 July 2018 at 15:49, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> After reading several documents, there seems to be several methods to
> add/remove packages from a build.
> I just want to make sure I am using the correct method that falls into YOCTO
> architecture.
>
> In local.conf file, I can use:
>
> IMAGE_INSTALL_remove = " dropbear"
> IMAGE_INSTALL_append = " openssh net-snmp "
>
> To remove dropbear and add openssh and net-snmp into image.
>
> Is this the right way of doing it?  Do I use 'DISTRO_FEATURES_remove'  or
> simply ' IMAGE_INSTALL_remove' ?

IMAGE_INSTALL specifies what packages go into the image.
DISTRO_FEATURES is unrelated and are course-grained features that
control how software is built.

Note that to change SSH server there is an IMAGE_FEATURE you can
fiddle instead: remove ssh-server-dropbear and add ssh-server-openssh.

> Does Yocto fetch *.bb files and source files just by adding these commands
> in local.conf or I need more steps to do?

Those commands will impact all images so when you build an image it
will make the changes.  Note that for the "all images" reason it is
recommended that you write  your own image recipe instead of using
core-image-minimal or similar and lots of local.conf tweaks.

Ross

