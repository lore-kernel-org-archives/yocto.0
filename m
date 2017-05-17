Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3544BE00B58; Wed, 17 May 2017 11:03:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F1AE00AF8
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 11:02:54 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f102so14267135ioi.2
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 11:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7Mrc7NN/bxHPHKSupgo8Nh60g60gz8NTYPQWlHgK4Tw=;
	b=ySrUxyHdQVqjiP4Zi2oGX6Qs+zTMywvbV+KTB0HlHJ4veU1feXHUIU9U6jJhifvnAY
	c5RAzWf4UwDP6lxWNZoj9+5J/H+F3+DyYGaDWLGASQddOvsLhefx+6ibcqqGrP5hEg35
	6r+MQH5c14Dh4Gs19vCvyQZedZnr1Vjbh+PyEAhaWZSsoaZCbqt6gqYTN8oce+Or6X5P
	mDEL0+1cZQjkm5hHgAisnhS6HfyV5ZYIURnu3b0awVmOHjr/1tUFesSelDSi+ds/cHS2
	reZfW5adSNBhr/+PhAKVb5VVDP7tRD7KmdKePp7dZON/ALvG/w55edw+WWa7pYw/AhK0
	9zBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7Mrc7NN/bxHPHKSupgo8Nh60g60gz8NTYPQWlHgK4Tw=;
	b=ODG/1RX067hY/BqBhFQf+vdRkDk6pAsWv9NtwELRlrR/2xcYk+BH2osOUKs1JUBTq4
	DM6b5voku5CUUJEctU4TQi9GTUkS1GI4N7A2efzmgAM3Y8oPTMQsfL6N8dFLpR2tqLQ7
	OynFuPS25PvuLUG1+QEOB+hy0h/GvR/yo410srp5NQKH+ICmDmr01ZuD40KMWyW/OmiQ
	oCNdMxTtnHW/yIBxbT16EkJ6b4i5EeR0HN8/fjLm9hpWKmPPHbvq4H5OisDPlsQMhhmP
	PwdhoV2T3Ytq7ijRi2keky773ddGGvrw+nzbkBnIDJ/M0LPpmt+MWTbFzfz4Bb27fDtD
	kxeQ==
X-Gm-Message-State: AODbwcDCR1y329CywOviK5DZssYehCuhg2Y+MPrEQBL1VI734XzJUwS0
	Xc1yj8sIs+hiwNslF1ull3QKgNtQTXStPyaa6w==
X-Received: by 10.107.134.211 with SMTP id q80mr26412ioi.127.1495044173814;
	Wed, 17 May 2017 11:02:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 17 May 2017 11:02:13 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <a301bd6c5c6857696e7e39836de3966c@jgueytat.fr>
References: <a301bd6c5c6857696e7e39836de3966c@jgueytat.fr>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 17 May 2017 19:02:13 +0100
Message-ID: <CAK18fxF+g13DH1X8UJpFv-Zyx=EsZ+=9-W_uKtOiguxWwK9K+g@mail.gmail.com>
To: Julien Gueytat <contact@jgueytat.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Pi 0 minimal consumption reached with Yocto?
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
X-List-Received-Date: Wed, 17 May 2017 18:03:01 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, May 17, 2017 at 10:36 AM, Julien Gueytat <contact@jgueytat.fr> wrote:
> Hi everyone,
>
> I'd like to try out the Pi 0 for a Time-lapse photography project.
> I want to power it up with a solar rechargeable battery. Those kind of
> battery that can be found on Amazon does bring at most 1.5W.
> So... Let's say 100mA during the daylight.
>
> The question is :
> Do you know what is the minimal consumption of a Pi0?
> And if we can setup some idle mode during night?
>
> Best!!

I don't think anybody did any power consumption investigations and
provided results here but if you do, please do share with us. It would
be nice to have it documented.

--
Andrei Gherzan

