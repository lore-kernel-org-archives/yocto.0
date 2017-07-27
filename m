Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6594EE00A39; Thu, 27 Jul 2017 08:58:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C5EE00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 08:58:13 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id c184so109197747wmd.0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 08:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=8kTAAawMuqOVUDqeJSm0K+vz40cHVgxkIUTc1IuCUyM=;
	b=LG8bwYbjgU//K0C4quTlA//nTfPZy0+nP7doapT9X8RnOaSx4Q8j8Ai0iF0+i1SwGk
	dHRJJVr6N+79v0qnMGId2LocePbPR8S4rhHTZfAYDrmaT83mCyeyhAHivYuf/3aeLx64
	HVxST+B56vy/khEFbND19aHQXXp56TVDhcIsWGeRnnyPw1nXHQuCcN+MK8ERPd2hidlJ
	F3QSv2GaldRnsNd39Hu58fWEUae7SPzNQicxaB8UDqSZ7AtizUVU4t4dWgy1fsrdWaKS
	4MdSyG41e74/YM9qMspuHptdIazShJBpo5A7ogBKLydJ+TanheavdedGz5evFp0w9zcu
	LQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=8kTAAawMuqOVUDqeJSm0K+vz40cHVgxkIUTc1IuCUyM=;
	b=MY+uF4XjY4yf+ddccjnAJ6QI3k9t+hCDLmNJ+R1MpVkRu+fwkcZ0aEvbFnril/QFB8
	I3fLr/urQ+SeA5Xw7cQiJ6IMxZzwGyJSn8Ftj0QSZJlrcserDXkfmChIlyX1q5F4iMYP
	jHkriwbScVKr+fxFSlEUQQ45wQr8/d5olZ0A3wFkvyTzNK+bU8aVlW0+qKTJpvuoyQTV
	dbM6Q1SjkD14untEau35TWlAy8Bh1ALdUvYlr9YCNfRbtK/dsmWyB09xBrE4iUSF+yIV
	SvwmlUvjaR/KUjR1I4s6BCj6Aj51Ld/JCRJ49OJa7Q4XzStwsTz1uA8p3Vwi33QybJQi
	KwIg==
X-Gm-Message-State: AIVw111KW0b2tq8rf+jl+RiQMP7n61CXsN2EdAmsPnHCDlbiem1w3eZD
	zh9VjQ2xxJMeua3FtrrpMTj7nFsIM/qh
X-Received: by 10.80.147.197 with SMTP id o63mr4230261eda.194.1501171092208;
	Thu, 27 Jul 2017 08:58:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Thu, 27 Jul 2017 08:57:41 -0700 (PDT)
In-Reply-To: <2040571762.17271.1501166601217@ox1.tophost.ch>
References: <2040571762.17271.1501166601217@ox1.tophost.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Jul 2017 08:57:41 -0700
Message-ID: <CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
To: Manuel Geeler <geeler@identech.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompile packages (ipk) based on SDK
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
X-List-Received-Date: Thu, 27 Jul 2017 15:58:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 27, 2017 at 7:43 AM, Manuel Geeler <geeler@identech.ch> wrote:
> Hello community,
>
> I got an image and the corresponding SDK for a hardware based on an iMX6
> processor. With this setup I was able to crosscompile a simple "Hello Wor=
ld"
> program on the development machine (Ubuntu 16.04.2 LTS), install and run =
it
> on the target.
>
> I then started to look deeper into yocto and realized that there's the op=
kg
> package manager available in the image.
>
> Now comes my question, how can I build *.ipk packages on my development
> machine, which will then run on my target?

yes you can. you can setup a feedserver pointing to tmp/deploy/ipk in
your workspace

something as simple as cd tmp/deploy/ipk && python3 -m http.server 8000

will do it. Once you have it then setup the feed on your device to
point to this server
something like

https://github.com/cbrake/oe-build/blob/master/envsetup.sh#L480-L489

then you can do normal opkg operations

if you are able to rebuild the whole image then step to edit feed
confs is not needed
you can add

PACKAGE_FEED_URIS =3D "http://<ip>:<port>/" in local.conf

where ip is the local address of your build machine and port is the
port on which you
are starting the http server.

>
> The image is based on poky 2.1.
>
> My endgoal is to run node.js and node red on the target.
>
> Can someone please point me to the right direction?
>
> Thanks a lot in advance.
>
> regards
>
> Manuel
>
> Manuel Geeler
> Technischer Leiter
>
> Identech AG
> Lagerstrasse 14, CH-8600 D=C3=BCbendorf
> Tel.: +41 (0) 44 885 22 26
> Mobil: +41 (0) 76 323 65 44
> geeler@identech.ch
> www.identech.ch
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

