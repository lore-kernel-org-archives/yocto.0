Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98719E00B28; Wed, 25 Apr 2018 05:11:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E020E00A4F
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:11:29 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id u62-v6so19026674ita.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=MY10kbmv84KPtwTbeZumXEzW00QAbvOP5sNgfqaxugA=;
	b=0tsG0q5d9ijxmMdba1k+qUWJKKf8yr6TvHzGWEPrVBLfU1JCHKrpW/wRbhpgl6nmzV
	1EKAT8HDsLRAU3oHVd0XUC0t/uzePYppKIIeScF8L8C97ezP9yFjDqmsyEOX+1QRd5jL
	nu/QdiZ1mj4h7lN8Luoilr7hF+7sATNaq3YelP9Ua9RA6rS9vTieArzfMIORYXe1Qj5e
	Nl1suL1Je5dC87bml2x2kIFiMC2P8GpOsVUUEIQkUTJPESG0D3u0TQfJlbH997M6YkuP
	KsGRmIOZTf3bpZf88GY+NA8joOhoH0CieqNGrn44MAAk98bjKxQx2zxLQnu6NNriqVk2
	PSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MY10kbmv84KPtwTbeZumXEzW00QAbvOP5sNgfqaxugA=;
	b=E+fP5T+RW3ie9Z1x6RTVG+Cgeq2xRMpIXTT3FkXge1ktPgX7KE19yksbSXJgL3r/g5
	eBoNZOGZo8j60CA0hq3+SB19AbkUNMUvbYtS8JpvjLjprSC6xUS3+MwaLVbPKwNd7SSH
	tcojgmvxHbtKDSlcU5RozJ+wF1IVw7zfx7crcEWO16om/IzKZParoqYyvQRGnBUgQ9Ph
	K8KQh4FrvP4b1a6gAxAsvwrfLBwKppQDi62fqGUVqEVYIwtyVDaU3JjDSBgEBgLJes13
	anYn475ccMEG2Q0EYWrAka8uZaLcmIkMcolevFp7QjlgI6g8eWuBY1a1iOfQ5XVzlrnq
	rUVA==
X-Gm-Message-State: ALQs6tAvE93VZAEjbbggmBA4WpvBNODNNjWQ21U3HYmq6qsLmT6OauRK
	hIlwbI+nSSQPiSLZ56MmCmxQVGsFqp4sEeXiaiu0iA==
X-Google-Smtp-Source: AB8JxZpiH5kIbHsWiz3Lulfui14VNzmP/m8wR3eZsaUanA4QERAJMYPPVskKaG7jNKj4M4k8au4NuPNrex7Q4i6hBmk=
X-Received: by 2002:a24:9493:: with SMTP id
	j141-v6mr5377778ite.60.1524658288755; 
	Wed, 25 Apr 2018 05:11:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 05:11:08 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 13:11:08 +0100
Message-ID: <CAJTo0LbOsiLq=0Zz=4fPE-A7Q7Ez_XVgqm8CBkSeAu6Bz=myLg@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: GCC 8 hosts
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
X-List-Received-Date: Wed, 25 Apr 2018 12:11:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Just thought I'd say that GCC 8 is going to start appearing in the
wild, I believe the first distro to ship with it will be Fedora 28.
As usual there are changes in behaviour so there are several problems.
So far I've identified the following issues:

* Python 2 crashes on startup
* Kernel tools fail to build
* grub fails to build
* ovmf fails to build

I've patches locally for all but the ovmf failure (which is a pain
because the source uses CRLF) so if anyone switches to a GCC 8 host
before they're merged and wants to help, you know where to find me.

Ross

