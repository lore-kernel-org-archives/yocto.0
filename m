Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAA45E00BA2; Mon, 19 Jun 2017 04:22:45 -0700 (PDT)
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
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B06B0E00B27
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 04:22:42 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id f192so26968684yba.2
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 04:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=30V6PZzT1N8Rb0mFdamsLb5ogPfHTs6mZSHTnQ5bWkw=;
	b=S16jlfzodeJgzOWUgKL9KNXxQKPobqvs/II5TLITq0qUBwRnPRZCQjOzLqbwf5PWRw
	nH0Nsez+zqw2bQxNDpE2gTEqKj6WECNwrIARAEXn9hGglBoqQyHzKyI/VKW/9qlZX06B
	5+klCzmzPLjMbfCSkWqjpKEnMmehRRaVDAJJ3UjKx3jrwMTgvNK0AqTKRDwuOlxZpXl9
	BYoPJ2alFhck16Ijp1R65IPAlVWbOkU8fLmIwXWpSXV0DjyoiA1Er34RYjlf0VHtr2MU
	YWPow1SMfTKluydGzjkerQuIa29IMTDqjQOiWGqkqKoyEeYw7akj18J1vv6F8SA3/1r7
	P6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=30V6PZzT1N8Rb0mFdamsLb5ogPfHTs6mZSHTnQ5bWkw=;
	b=L9/UPA8A/l/hOuoaiAzde2aR1q4/TjYQOsNSIjbiz7fbts0azXk+3dkFcvE0Tz9Kxr
	lOnxf/VH8KEakiJl1n04x+Aj9Q5pq4cpxkRbVqscqPL+Wry/aEb/3Ftak5XloZ86CZ7z
	H65rFkTz11RXj/KTSZHn64UyG9Jbw48oGbdO92eQuEBH52ti3CgzW9hPsIi0IvPIX3Sr
	wZEGq3cui44rmkGsYNYOTmjylVPWSDDdAmwEXZcB2VlYQbWJV5+c1MjZ6KU1FZtFQfaw
	jeEi2chNnPMfQVSL6WQGVzXJJTAeVXkpPZO+oZVEdb/nYSVJwxOX3Bs7lihu+pomSTfm
	ovnw==
X-Gm-Message-State: AKS2vOz2iFrCPzrDO+57zayXStJUGb0RD8S3piLzSzXMn4Prvc3I3yVb
	OTdNWSAu3EL+IQ4G
X-Received: by 10.37.198.193 with SMTP id k184mr18950808ybf.186.1497871361492; 
	Mon, 19 Jun 2017 04:22:41 -0700 (PDT)
Received: from [192.168.1.33] (65-35-172-144.res.bhn.net. [65.35.172.144])
	by smtp.gmail.com with ESMTPSA id k2sm4186028ywe.18.2017.06.19.04.22.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 04:22:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Drew Moseley <drew.moseley@mender.io>
In-Reply-To: <20170619054832.GA7840@linux-uys3>
Date: Mon, 19 Jun 2017 07:22:40 -0400
Message-Id: <826973B0-DCFF-435C-87F0-44FD8B82817C@mender.io>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
	<20170619054832.GA7840@linux-uys3>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Mon, 19 Jun 2017 11:22:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Jun 19, 2017, at 1:48 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
>> If you have a serial console connected to
>> +your board, you will see the progress and a message on the console =
will indicate when
>> +the flashing is completed.
>=20
> hmmm, never saw this. I have a console connected, the moment the =
script
> started, on the console I got:
>=20
> 	U-Boot SPL 2016.01 (Jun 19 2017 - 00:32:19)
> 	DRAM: 512 MiB
> 	CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2
> 	Trying to boot from
>=20
> which looks right, the date+time are good.

Did you see the proper serial output after using a smaller image?

Drew=

