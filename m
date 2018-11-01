Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF575E00BC6; Thu,  1 Nov 2018 04:51:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9FD2E00B23
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 04:51:24 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id r63-v6so1133116wma.4
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 04:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=XAjC4Ut5DmYDfKzRO77Cv6ZxlnlNFunSkgYYbbWuRR0=;
	b=r9rYO7jij3Sm9jydRZKeZ0+GEsRj6K0Psoi7XoVu+5J1dNLvrv5/p2QgwDpa4G60wx
	KktFWYSasH0s39NKidAKOeXxhsbs7ACi/6zvTH+69Fpw5jbgPxIci+AAfDaSPe2NwzpN
	hERzt9XzPtjejILF73C75OM8hKI2yfhyjskekEQjUY2TcGjWxxFkcorVGN/0+RJR8Lec
	ASW2Nz5SX5xgmSoenBWpA1cguOjRIhyvDx+9H2vxpaWv78ERpUbgSt+PCmBv2jApaInZ
	2hjqAfT2Q3cAAC+F1gMaKYyweYy1Tvgh2nq5lEtt7oWMTOS3doZROoWKX3VvDqk0gODA
	lEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=XAjC4Ut5DmYDfKzRO77Cv6ZxlnlNFunSkgYYbbWuRR0=;
	b=moFIm3U1laPBR5pb4ZXAJAlxMBH044bsZnq6x8W6SCC9Q8F6LY9HaOrXSfct8xDC0F
	gnHP5Oq6oQ9x5tI5r3UFwfzHFdZ2mU1+7NGr9aJF+XUXuXiby4Zq+oVPDkO02XJVV7tb
	jILqr9CUMG4t6IPTBc7e2BbpgF5EMY0QqOLVnkxFiIau1HAif7HP2gZdv/UgnUR4yaEK
	LuBZFrdE6ONrvC+QVzAcPfMUl4Zb8f0OFJZZZTql74ANRyvarQkY4IMupMWqhbVZ/frD
	niqVNUF1xpIvFgLBwL5vhk/6h/hmwdr1IyJq1RqFnPRME4f/Ny/PmVanNuaeIjZAq/a4
	7uhg==
X-Gm-Message-State: AGRZ1gKf8n89MYTp0NjRFLkehHcoypxkgk1Jr7m2ZW43fdIL7bwpj+Yy
	0s4TmslFK8qeu0F2eAyTGmo6XzHQ7igNqcUyRMs=
X-Google-Smtp-Source: AJdET5cso8SLCpzCW95OeZvJvOHb1B6yc9MkeDv0dnIp2AwMepoAkASkrWKXA9PXjWLeVA5q9cC5juY2zCjygVLPVws=
X-Received: by 2002:a1c:545e:: with SMTP id
	p30-v6mr5198518wmi.69.1541073083356; 
	Thu, 01 Nov 2018 04:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <E4920534-5A63-4F4D-A2AD-FD31D32139CC@outlook.com>
In-Reply-To: <E4920534-5A63-4F4D-A2AD-FD31D32139CC@outlook.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Thu, 1 Nov 2018 18:50:46 +0700
Message-ID: <CAKYr3zyeFWNEKCZXVDGo7LKn6OjcuXO1BMPF=ksEOMU6LDZCZw@mail.gmail.com>
To: erik.hoogeveen@outlook.com
Cc: yocto@yoctoproject.org
Subject: Re: Where to look when literally nothing happens?
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
X-List-Received-Date: Thu, 01 Nov 2018 11:51:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 1, 2018 at 6:33 PM Erik Hoogeveen
<erik.hoogeveen@outlook.com> wrote:
>
> Hello,
>
> I=E2=80=99m rather new to embedded software and Yocto. I hope this is the=
 right place to ask. If not I=E2=80=99d appreciate it if someone could poin=
t me the right way to do so.
>
> I=E2=80=99m trying to make a Yocto build for a raspberry pi 3. I=E2=80=99=
ve got it booting and doing things on a regular plain vanilla Raspberry pi =
3 board. It boots and over serial console I can log in and do things.
> But the ultimate target is to run this image on my own board which is bui=
lt around a Raspberry Pi Compute Module 3 Lite. Since regular Raspbian (wha=
t=E2=80=99 I=E2=80=99ve used so far) works fine on both boards without modi=
fication I assumed that this would be the case as well with this image I ma=
de myself. But it turns out I was wrong.
>
> When I take the image from the build and stick it in my compute module bo=
ard, literally nothing happens. The boot sequence doesn=E2=80=99t seem to e=
ven begin, I get nothing on the serial console, and none of the peripherals=
 like the ethernet ever come to life either.
>
> And since nothing happens I really have no idea where to look for a solut=
ion. I=E2=80=99m guessing this is a bit of a noob issue? It would be great =
if someone could point me in a direction to look at.

you probably built for a raspberrypi3 or raspberrypi3-64 ffor the 64bit

i believe the compute module 3 target is raspberrypi-cm3

you could pretty muuchh do a diff uunder the meta-raspberryypi ffor
the differences in whats built

>
> Kind regards,
> Erik Hoogeveen.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

