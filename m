Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73187E00D51; Wed, 16 Aug 2017 21:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14364E00A39
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 21:38:59 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id n83so6692725ywn.2
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 21:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JT/h22N+oGgLMWxm1wHSOaubtbBTMEIZoPseAQ5t4bI=;
	b=FFCkrSk4YhkA2Q7N8AcS9GQBydp1Yym6a2zkDt/jdpPozBd6kB0hUKqKdWZDF2dk9l
	4IH8hLD43TyAsOgf6aftBoLbwk/Zt7fx8wd3AsvAvdzPJ4Iw0k23lERalM13xAb8waQ/
	MnoKCTu1XMlqvMpqnXzDioFPm1jtK7uCfphvxVf9nrikxHXA3IS7Vj9H5JQRSF+0d+/i
	L6+4FZyhNkovxsjEzQPm8QzNr5EJxMhChM2QBuq2Yf4UKQFG6pwpd5bQelUQ46rBBy01
	ytTygTAf1yYHEpFzaSbVaEKHAgaYsfARsR4GqzT8NO2zxKhNO9pmqZz2zjb5MCurhjIO
	dPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JT/h22N+oGgLMWxm1wHSOaubtbBTMEIZoPseAQ5t4bI=;
	b=sALEiFFmfLadXe64BFv34wTLLObFAfK1GVgvot3tfpqMtVS7Tk5eGQwfiHFsSEarv6
	209mV9T6tDpc64SEdK8sKI8zMDsmMsZLGvknnuxB1/2BNTc9zjd96Wc6l+UkKBY9pR8w
	/ULF2UW69XDDmAGSNxYdO0B++sj2tg0uPJH8N1Pwe3+2PBRP+aZETVImGCf1SptFPgMg
	0t1yoCKvKJaa13Bv2NNKUBbO3JojNWvsP/lAgpsSevPxp0u2E+2ayV/x+5K0vYnec/GH
	0Iw4bYOoIdYDZePuyzSCHKDQlWazAvFgrm049mVsINH/w9xjvVDCnCaE1D73fuelGqVf
	ixyg==
X-Gm-Message-State: AHYfb5huZrE44VsdPvL5iOmoGwCFEQ8Qljb5wUsqmtn2keErRB5qAsti
	EmdZAU1Ta750BkAAteQGpX1tz0Xe8g==
X-Received: by 10.37.194.132 with SMTP id s126mr3216348ybf.210.1502944738759; 
	Wed, 16 Aug 2017 21:38:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.51.80 with HTTP; Wed, 16 Aug 2017 21:38:58 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Thu, 17 Aug 2017 10:08:58 +0530
Message-ID: <CAGsrAHepRQAMeLW4vxMPVMDg5P2C9=YgUQ0ztUdU44LW7dfrzQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Apt-get is not working...
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
X-List-Received-Date: Thu, 17 Aug 2017 04:39:00 -0000
Content-Type: text/plain; charset="UTF-8"

hello everyone,
i was trying to build image for rpi 3 using yocto...
after few attempts i have build the image...but it not had apt-get so
i added IMAGE_INSTALL_append +=" apt"
above line local.conf.
now i apt-get is working but whenever i try to add any package it will
give package not found error,
so after digging a bit i found i need source.list and status file in
/var/dpkg/ which were absent.
i'm working on picamera using python for which i need to add picamera
library in order to import its functions so i need apt-get to install
that,so is there any way i can use that library without apt-get?
so how to make apt-get to  work?
is there any repository of yocto which i can use in source.list?

thanks in advance...

