Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39050E00B53; Thu,  8 Jun 2017 07:08:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98ED0E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 07:08:49 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id m62so124844335itc.0
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 07:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=5G+xceYsmy97uH30n10g/oteOjW90treSvc9DUHrNsY=;
	b=OIKrCs3pAHSercgGqrhHN+J7UaWmj+8Qq/7q6kmibNROeguSgZpdyJQCW9tr12CSlU
	9WGXwn2z0DxFf5wrO2M5UYXphd5B6B17GyjrYHwTdER8HoyU6yQDpNagYhfUGoxMmMqv
	NCpmo14Qgw8sw110bem7xz/B+bXXEYWPu8RZ16T/0mA2eRLt91jUZuugIlmjSS7QZzCB
	/zeK6CFBEwtzEPPfnQ74atNh6iOiM7FukUHFxlUKL8hAq/SARXkSONCGuMFcPWmooQ/I
	nkQGYTzsuMrS8kppRt/FeNVKLeR9vzzpd0EGVW45oJm4f+PZkfRAeCT63qg55D3VcG3o
	+AbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=5G+xceYsmy97uH30n10g/oteOjW90treSvc9DUHrNsY=;
	b=eWmGW5jrGSJK30LVjSVe6hA0cd8ksLPyLK7WXM+Z/lgid/TsIRKfdEswClfUTgIVnA
	1pRgYC+erd+QhljSndzkRnGVVwqhVt7k84j0Ddm++6z3Tp/sY0U5uglUPD8uW9cP1jWR
	uPCw61RXHlrjwtnPNrzpMomMvovW3I+guQ7Xd8GRwogh9Y/RLrb+VvmD1qElfX5bLghe
	gbrdyRJ+hFhbh/g/7Gc2TZpkdVUhG4AJSMCSoW0Y6Dv6mUgHC5GYAwxofy08rnEW09QR
	qO95V5LVH2JFeVZDKLuv7xc7/rzl94ZFEZh3CNiWgolETsnZq8/iaTztC5jfkdixCW9k
	NUug==
X-Gm-Message-State: AODbwcAINKXtc6HPZjRDZtSpMg4MabnjJv74iTNVHtshOCWPV6fr+Knh
	9TQc25QuPCebmedNYhk=
X-Received: by 10.36.17.137 with SMTP id 131mr5823358itf.74.1496930928667;
	Thu, 08 Jun 2017 07:08:48 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	e12sm375610itd.0.2017.06.08.07.08.47
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 08 Jun 2017 07:08:47 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1496930927.8427.5.camel@gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 08 Jun 2017 09:08:47 -0500
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: dllmap config for a Mono app
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
X-List-Received-Date: Thu, 08 Jun 2017 14:08:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-06-08 at 16:41 +1000, Craig McQueen wrote:
> I have a Mono app that uses DllImport to load some functions from
> libraries. The app can't find the libraries unless I create a Mono
> config file containing dllmap lines to map the library's plain "DLL"
> name (e.g. "foo") to the real name of the .so file (e.g.
> "libfoo.so.4").

I'm not familiar with Mono, is libfoo a plain old library that anyone
can use, or it is some special "Mono Library"

> 
> * What would be a good way in the .bb recipe to automatically create
> the required Mono config file? It would need to find the "real" names
> of the library files from the library(s) build output. So it would
> DEPENDS on the library(s).
> 
> * Is it better to create a local config file, or write it into
> /etc/mono/config? (My Mono app has the DllImports in a compiled DLL,
> and so far I've found that I need to create a local MyDll.dll.config
> file; making a MyApp.exe.config file doesn't work.)

Packaging rules require that every file belong to one and only one
package. If your application writes /etc/mono/config, you wouldn't be
able to write that file from any other package, including some other
Mono application. The MyApp.exe.config file (unfortunately) sounds like
the ideal solution, because you know that no other package is going to
try and write that file. Writing MyDll.dll.config runs into the same
problem as /etc/mono/config (at least if you are trying to write it
from your MyApp recipe), as another app might want to write the same
file because it uses the same library but that isn't allowed by the
packaging rules. If you want to write MyDll.dll.config, it should be
done in the recipe that actually creates the dll.

> 



> -- 
> Craig McQueen


