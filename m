Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE377E00C1B; Wed,  5 Dec 2018 15:10:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CA9E00AC5
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 15:10:53 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id f10so12331814iop.10
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 15:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w2ECbkeeG48OpV1Vz8B3Uozo7QAsNz+XxFeiWsuUP0c=;
	b=hxu5qnBirNUA93KqxvomPiqWYlyfmDMUxkEzzxSTSpq0CwTz2AnE7q1B7z8bmNjyHF
	WDQqlCR5XSeCkXOYBmK0gLd5pH2f7sjdVJWYniv/Y1A7806YfimuRQ7LbDfT+f/5BnIO
	thJJRRF3Qg4tgL40ojfxhE2e6jIzwUgNQIlEY8ohPjqjYb2sxUGvm0bXPwtgjoyn/51a
	2pTCWQzDddHHS7yczTxBejVZQgMWTRiAX/gzJw9xyCJ4JllC96Y40F0lw8ANNKNO/WXs
	sghvlpLd42QR6MzPHtbZBiXCKuSxZ2kLhNBjq5Tusn3GohdykPykpzldP9H6ojkTzxsK
	PuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w2ECbkeeG48OpV1Vz8B3Uozo7QAsNz+XxFeiWsuUP0c=;
	b=Edl66JveDENufVhye9kgF8ZqF7sZjmXcpcNf1vwvPH88XOqisCHNMbG+z7lwNY5dMo
	fvyJ79v+5iX/733J3GdAXe9Gg42JMt0J15GPRhSbVjYd6lq2+Q9jZD5egkBkXjFLBQTw
	RBO6l+IlaRaNGkCqYAmle/8pwI8BCvyC/ejaZAX5LZe4jYhUX8qfw2Nbf6uenNrYNpFj
	OJ571O1lSQKrAaIETgzLcnVXcjIyWh+HoXjh8x3ZibxSyTq/KeSBPCgbPlq62u5LKfcQ
	h+eONCWb2eSIFB+d4czRWGsdFD//7Y2TCP8tqe1dYlEWGpLqi0WECDDopj2a3q1P0/5R
	Nmew==
X-Gm-Message-State: AA+aEWa7H4gr9HcfEfQ7dQ+m4AR/c6qDSuSDIPfc/Y+xZcKvszdRgjvi
	csojXEVe2UykRcoTwzmaItmuEI8+gBykJSOn3zbTnC6dYcM=
X-Google-Smtp-Source: AFSGD/UfyPUpV3I7WwvTJwtB2iSVwJG5RqmXkKtVkD5gOuOwfh9w0rpk7XJ6Rpe8i2bF1EEbOd9b1tFslmRNs+nLi70=
X-Received: by 2002:a5d:87cd:: with SMTP id q13mr21584811ios.92.1544051452688; 
	Wed, 05 Dec 2018 15:10:52 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 6 Dec 2018 00:10:41 +0100
Message-ID: <CAFq4t4iqk7hNd8FVDZdiN7LRynCWDtmpP=BaJ4mM8RARX+StaQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto Cmake Build (Toolchain)
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
X-List-Received-Date: Wed, 05 Dec 2018 23:10:54 -0000
Content-Type: multipart/alternative; boundary="0000000000005a61d0057c4e7eaf"

--0000000000005a61d0057c4e7eaf
Content-Type: text/plain; charset="UTF-8"

I am starting to use Eclipse ADT for app development using Yocto Cmake
Build (Toolchain). I am trying to create simple "hello-world" example out
of "Yocto Project SDK Cmake Project" but by building the project I am
getting this

Buildfile generation error occurred..
Build of project failed with the following error:
CMake Error: Could not find CMAKE_ROOT !!!
CMake has most likely not been installed correctly.
Modules directory not found in
/opt/fsl-imx-xwayland/4.9.51-mx8-beta/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.5
CMake Error: Error executing cmake::LoadCache(). Aborting.
Build stopped..

Do you encounter such a problem? I have a camke part of the Yocto SDK.

BTW I am able to build, debug "hello-world" out of "Yocto Project SDK
Autotools Project".

Thank you for your advice.

--0000000000005a61d0057c4e7eaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I am starting to use Ecl=
ipse ADT for app development using=C2=A0Yocto Cmake Build (Toolchain). I am=
 trying to create simple &quot;hello-world&quot; example out of &quot;Yocto=
 Project SDK Cmake Project&quot; but by building the project I am getting t=
his</div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">Build=
file generation error occurred..</div><div dir=3D"ltr">Build of project fai=
led with the following error:</div><div dir=3D"ltr">CMake Error: Could not =
find CMAKE_ROOT !!!</div><div dir=3D"ltr">CMake has most likely not been in=
stalled correctly.</div><div dir=3D"ltr">Modules directory not found in</di=
v><div dir=3D"ltr">/opt/fsl-imx-xwayland/4.9.51-mx8-beta/sysroots/x86_64-po=
kysdk-linux/usr/share/cmake-3.5</div><div dir=3D"ltr">CMake Error: Error ex=
ecuting cmake::LoadCache(). Aborting.</div><div dir=3D"ltr">Build stopped..=
</div><div dir=3D"ltr"><br></div><div>Do you encounter such a problem? I ha=
ve a camke part of the Yocto SDK.</div><div><br></div><div>BTW I am able to=
 build, debug &quot;hello-world&quot; out of &quot;Yocto Project SDK Autoto=
ols Project&quot;.</div><div><br></div><div>Thank you for your advice.=C2=
=A0</div></div></div></div>

--0000000000005a61d0057c4e7eaf--
