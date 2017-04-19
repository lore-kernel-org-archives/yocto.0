Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6BC7E00AC8; Wed, 19 Apr 2017 09:55:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BEAE00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:55:00 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id p68so4148424qke.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=omNptFEpQx/11gbNuXPz15s9DG+1PtAY1qRelO5767A=;
	b=RBnrDaMeRYtkseltuEyWKFuAYldhQrXqOScsKJNjnts3ei0ufnVVunmf5XiEO7meUv
	GVuZ7KeuYdq0KjLRzjdYjiIdGnF37wSZjkRN3xLXXZDjeFUkZMW7Qrbu2Ycv/BD8J2Np
	QjSMkcyTGaAa30b8UEbj57xBSjf1pyTCVQ2OdkHCKu479peFWbEFG6CJJPzR+fPuirQ8
	MFDVzCaCn4zZtyWJgpTQ6HiK5LGbW4SUq+SpAfMGpAmw1cJ/YnG3hPwLLPeqz8zmNY6+
	cjcVB4U64CprKG44M8bx5tiBbuc4aKHU0cebbwNHz7p4ctQq2VmlH346U/7d0luOHmpX
	dzBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=omNptFEpQx/11gbNuXPz15s9DG+1PtAY1qRelO5767A=;
	b=NtI6RQgOs4FpUG6ylfopzSNNIVg/8q+f38gud1mmCEo1u1wRBjefEbChANtqDlG6fy
	gSicx6355xNOEYt6VsMCwiytYJgEPzmB1MaQNkBP0Ym3n2y9NxB2zQOIXCi7HXWGp+Gt
	UQB6F081sIHe7jkD77ofNVdzaF/zXSDHVKF2+KlceyUk4oQTcEzjnzTzVXfjrONqib7p
	Wu14h6GktYHt4lEBq+4bIQFkDdM7E80ipZsTRO296y/V0YFGNr/3KgrXN0Q70NCVYa7b
	05n0BDKZGAqZv1/Z403UKItjMJURhbRYz270nE4l4cXxOZUobrVEJhLgOMkMgbB+yDlY
	hvcw==
X-Gm-Message-State: AN3rC/5e8wsLvHSl6Bxup65TxV3gtGiXKAq01vLU6gMRkxStMRarMJkO
	gTsRPxrxHxTFqEX/MJcwWE7drMZFrw==
X-Received: by 10.55.197.92 with SMTP id p89mr3249443qki.34.1492620898803;
	Wed, 19 Apr 2017 09:54:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Wed, 19 Apr 2017 09:54:58 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <20170419165321.GD19325@carbonA>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
	<20170419165321.GD19325@carbonA>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 19 Apr 2017 17:54:58 +0100
Message-ID: <CAPyrkgw=jAv6g8p+787EbwoRAN6u5q7J_gXifNZOgoUuL8apsQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/8] Stable branch backports
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
X-List-Received-Date: Wed, 19 Apr 2017 16:55:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 19, 2017 at 5:53 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Apr 18, 2017 at 09:51:00PM +0100, Paul Barker wrote:
>> * Upgrade linux-raspberrypi 4.9 recipe
>>
>> * Add support for raspberrypi3-64 MACHINE
>>
>> Boot tested on raspberrypi, raspberrypi3 and raspberrypi3-64 using the 4=
.9
>> series kernel.
>>
>> These patches were tested on top of Andrei's latest series of backports.=
 The
>> exact series tested can be found at:
>>     https://gitlab.com/oryx/meta-raspberrypi/commits/pbarker/morty-next-=
2017-04-18
>>
>> Andrei Gherzan (1):
>>   linux-raspberrypi_4.9: Bump to 4.9.21
>>
>> Herve Jourdain (1):
>>   Add raspberrypi3-64.conf
>>
>> Khem Raj (5):
>>   linux-raspberrypi: Add defconfig for raspberrypi3-64
>>   raspberrypi3-64.conf: Use 4.9 as default kernel
>>   raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
>>   sdcard: Use kernel8.img for 64bit kernel image name
>>   rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
>>
>> Paul Barker (1):
>>   raspberrypi3-64: Override rpi-default-versions.inc
>>
>>  classes/sdcard_image-rpi.bbclass              |  1 +
>>  conf/machine/raspberrypi3-64.conf             | 41 ++++++++++++++++++++=
+++++++
>>  recipes-bsp/bootfiles/rpi-config_git.bb       |  6 ++++
>>  recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb |  4 +--
>>  5 files changed, 51 insertions(+), 2 deletions(-)
>>  create mode 100644 conf/machine/raspberrypi3-64.conf
>>
>> --
>> 2.11.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Paul, how is testing looking with these patches?
>

All boot tested, ran a few commands by hand at the console and
everything looks good. I don't have a very complex software stack on
morty at the minute though.

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

