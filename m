Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id AA7D3E006C3
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 19:34:02 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id 12so4189532wgh.5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 19:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=KHxe7WNs1qguj7nOcy13whrL0A5CukPOFiNKNR/ICuI=;
	b=aEy92Hh1q5RZm5sAX3cUvm5tOCcsAbD9q2uqyfYxtZgOw8ILiq+hPIwGqqDQUMTsFM
	EjMe4jhKJzlpAyQ5E/oB3J0Yiguz9Oi08MBno5jm/wJIu2smgbpzJXgtxUrYYhWTyjIr
	YtnM81Gbu2fkMOxo+cntCTyMXVsdMZ3vnRzF1ifM0qao0qRJjMtyTQRFOq500WhOmMZF
	4FxpTd0e5VfdmIwsrVj883954y8RZv27+Tlrl1CWUhmYJ8hXGHnYJC2XPrAtdfWHZGaf
	v2LNiLp15rA8r0F0FMaXq2dLHg3DBaMIly5oZH77PrQsLaNoYZhn+QBqVoHRkQ6OCEnM
	7FfQ==
MIME-Version: 1.0
X-Received: by 10.180.75.177 with SMTP id d17mr29783958wiw.16.1361331240480;
	Tue, 19 Feb 2013 19:34:00 -0800 (PST)
Received: by 10.194.32.70 with HTTP; Tue, 19 Feb 2013 19:34:00 -0800 (PST)
In-Reply-To: <1361295925.1868.5.camel@empanada>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
	<1361251862.1868.3.camel@empanada>
	<CAHUNapT3DsWwPDJC9mthNRjA0idDLHBUJxM6AGV41QaNVOodHw@mail.gmail.com>
	<1361295925.1868.5.camel@empanada>
Date: Tue, 19 Feb 2013 22:34:00 -0500
Message-ID: <CAHUNapRg64VDHP-7ncGLCHA1zB=tRgvduX2e=8HLUe6P67Hx7w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Feb 2013 03:34:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Following up on a hunch, after reading Pierre Ficheux's email from
earlier today, I realized that by default I always switch my build's
PACKAGE_CLASSES to ipk simply because this packaging takes the least
amount of build time. Sure enough, when working on lab3 I had switched
to ipk and it didn't work. Switching PACKAGE_CLASSES to rpm and doing
nothing else but rebuilding, everything worked. I tried twice more
switching between ipk and rpm and anytime ipk is used the module is
not automatically installed, but with rpm it is.

