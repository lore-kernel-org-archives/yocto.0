Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41425E00BF6; Thu,  8 Jun 2017 10:59:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA2DE00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 10:59:49 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id d64so15314849wmf.1
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=v+MCn9rg3kmg6Hh4tWS/XwQmWYg0ba2iJH46toKSYwg=;
	b=suTp/gj0gl/GsWIO0OnO/m8EomH63QAea3YPq7WCEYPowdqNF4WRMPeTJXC3NVRbUl
	kQoHDzv/WYTeunpBVNdSi3SokUPxA9d/yXKsuLh3ximiSizx7OttJ67plvM0JZilx5Fz
	DNjwoV/AyFU+8n2EtGbEHsEKKQ/H8NCyTNrQ62DHM8b7H1oUr1Hu96MGjEWQa89aTXWM
	/4Wl9axncFZ5feG9V6v6M31utfy0R19y/Q71JdvGMi+3Ilu9h0nh24F8AKhJObuoZIyX
	D7ZRDgS8RfJJOPHJPDgn56y/7QEnXQAWeUYhNm+TFl4FtPSFmcdUbsRA5qYlHdQkKKYH
	hd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=v+MCn9rg3kmg6Hh4tWS/XwQmWYg0ba2iJH46toKSYwg=;
	b=sUQlpBh1uQLbbB7/VygPWZVuk4so6/1zVEG81SAF9s+hcMzxJAycnl2wSX4vruRKyX
	2ChxVyoHjUN5Qv/Cg/kYBrfZ/4uZwUhH9FN96PvjLI+PJj6C1D2miizzVnB0BHuOKOWD
	qpItUpqhVX6alWy9OCG4QyCZuD5d1Y0h3jEwCwUFHamtMZU0t/8aOolddeMdcdzYNRJI
	DJm/LsGYV9Sg5272LHnaWdqhnw3FQ2ctCWm4Yb3tNmVdh3JuiZ+7ty3Pef2efN/6OPdu
	C7TxK56/DG+DdJK21E59i03Od/O/vJzcVUm39wktzUC6iHiKuCr22zXTZeUnlUwM/etp
	A34w==
X-Gm-Message-State: AODbwcBpc2QZ0+xM5mkis2N+R+EAay8xEiaxvbcImGXTPt/c2HPpztrC
	O0da2SyjxZCkRHrZoiAYYv4b77CXsA==
X-Received: by 10.80.143.227 with SMTP id y90mr30517551edy.131.1496944788127; 
	Thu, 08 Jun 2017 10:59:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Thu, 8 Jun 2017 10:59:17 -0700 (PDT)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 8 Jun 2017 10:59:17 -0700
Message-ID: <CAMKF1so5x15BOtVDiMaQw0muDPBMVs_FM--iQmHzbuRU5Y6cXA@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 08 Jun 2017 17:59:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 7, 2017 at 11:41 PM, Craig McQueen
<craig.mcqueen@innerrange.com> wrote:
> I have a Mono app that uses DllImport to load some functions from librari=
es. The app can't find the libraries unless I create a Mono config file con=
taining dllmap lines to map the library's plain "DLL" name (e.g. "foo") to =
the real name of the .so file (e.g. "libfoo.so.4").
>
> * What would be a good way in the .bb recipe to automatically create the =
required Mono config file? It would need to find the "real" names of the li=
brary files from the library(s) build output. So it would DEPENDS on the li=
brary(s).
>

mono.bbclass.

> * Is it better to create a local config file, or write it into /etc/mono/=
config? (My Mono app has the DllImports in a compiled DLL, and so far I've =
found that I need to create a local MyDll.dll.config file; making a MyApp.e=
xe.config file doesn't work.)

as long as it stays unique in rootfs you should be fine.

>
> * Alternatively, the Mono app can find the libraries if plain libfoo.so s=
ymbolic link to libfoo.so.4 exists in the rootfs. But this symbolic link no=
rmally is only in the libfoo-dev package, not the libfoo package. Is there =
some reasonable way to create and install the libfoo.so symbolic links on t=
he rootfs?
>

.so are considered used for development so its usually a symlink to real
versioned .so or its a linker script in some projects. The default packagin=
g
rules therefore considers it so as well. This is as I said most common case
but then there are packages where they use .so ( unversioned name) usually
dlopen/ cases ( e.g. gstreamer plugins )

> --
> Craig McQueen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

