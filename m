Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53143E00655; Wed, 29 Mar 2017 01:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F1B8E004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:19:49 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id r142so6510889qke.2
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L3oMzxlfXimk9aCpJ6NYWwMnWt34IqYOr+ScSXojUlU=;
	b=qKPAYiGpyx/J8JkVKHlgABHZHRsMLuZLVLdNEyPHftNTNWva8rNiWOkEeYnoi2VDeB
	tjWy5m7bG0veqQEYUZy64HW2sv1Ar4v6MWZtCBtzp7rsc92nsSGubAwxwnXioIerUj9H
	2mIGUww+lHr82rEFObpk8VAHmDkCeQMgXjzgoRLfbO1+nIYF+pdSqrWHhd9Qg8/R7Igo
	OZxdUEeLDHETD1yOHaoa/HfhVZaiUdy1v9toDrYZJyXPvGzVF6LQ4bCGtsvAEa4alCkY
	qWKwpT+nv5uH4x37bkDnW22zCQMvj82Y5CnUwv4WejkNY/acWksefgiWTfp4Keg6DqVZ
	K5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L3oMzxlfXimk9aCpJ6NYWwMnWt34IqYOr+ScSXojUlU=;
	b=Gc3UKrcYInVLzTjoPF7vYy7oPcXJbEGyQosj71+PIvyqKl05+A8zB79Sjw1uBEoiSe
	ErQPwX9DSNwIiPEuvN0Hpk2MjLLwkyx1pQDPtfrsn5sTz++pErghTbfrpiLP2pbo5bz8
	NGmRBFm/MoYd9mTcria13e4q2AE0ESh/7Xz262w6xHlyMd/TDxh6N22L/f1CNbJ3XtUA
	FS/HDbXclbnKgtVEUAOTXE7HRA4GtuTE8LnIyALhkw/nFNF4D2KVCox73XKj5dui53eu
	E+YZajlvesBn6q1OkqXp55Dj9JOE768fQAZfu9LcU9+/1alIukKsIYL4GOdIPclum4m/
	5j2g==
X-Gm-Message-State: AFeK/H01JRHtLlmpxNe3atR7ehNyndxT3JrUBWe/5MSei0JlEtsXvUjYEbI/4H8k9tJY8+lZ6XQrixfbOjnPRQ==
X-Received: by 10.55.147.129 with SMTP id v123mr28500055qkd.230.1490775589169; 
	Wed, 29 Mar 2017 01:19:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Wed, 29 Mar 2017 01:19:48 -0700 (PDT)
In-Reply-To: <CAJTo0LZC6cpkKuZwD6VK6yrk3Ki_tXAG_647XrHJ=QxdrqGjLw@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
	<CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
	<CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
	<CAOsmwBS46rZ4qKLJuBHbY5jWpLiA-+SF=vE74wED-WgGykq4yQ@mail.gmail.com>
	<CAJTo0LZC6cpkKuZwD6VK6yrk3Ki_tXAG_647XrHJ=QxdrqGjLw@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 10:19:48 +0200
Message-ID: <CAOsmwBS288wYPvM2Aq45hH28TNdDtq+XWUNqNxWP2bwJcxKoAg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Wed, 29 Mar 2017 08:19:52 -0000
Content-Type: multipart/alternative; boundary=94eb2c08bb626ed9f1054bda3d13

--94eb2c08bb626ed9f1054bda3d13
Content-Type: text/plain; charset=UTF-8

I have checked the rootfs and the nouveau files are there:
/usr/lib/libdrm_nouveau.so.2
/usr/lib/libdrm_nouveau.so.2.0.0
/usr/lib/xorg/modules/drivers/nouveau_drv.so
/usr/lib/dri/nouveau_vieux_dri.so

Xorg seems to load it
(II) LoadModule: "nouveau"

It seems that the recipe is working fine, will try xorg configuration.

--94eb2c08bb626ed9f1054bda3d13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I have checked the rootfs and the nouv=
eau files are there:<br></div>/usr/lib/libdrm_nouveau.so.2<br>/usr/lib/libd=
rm_nouveau.so.2.0.0<br>/usr/lib/xorg/modules/drivers/nouveau_drv.so<br></di=
v>/usr/lib/dri/nouveau_vieux_dri.so<br><br></div>Xorg seems to load it<br><=
/div>(II) LoadModule: &quot;nouveau&quot;<div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">It seems that the recipe is working fine, wil=
l try xorg configuration.<br></div></div>

--94eb2c08bb626ed9f1054bda3d13--
