Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 532DCE00BC6; Thu,  1 Nov 2018 04:54:23 -0700 (PDT)
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
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF25E00B23
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 04:54:22 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id w7-v6so1141937wmc.1
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 04:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ckjxBfdIQ8EY0QsxI141OE8aGkjQ9g9eGdWnXPLpPL4=;
	b=bZT8D9flAv5YSKsavPoDdMlA1tJpT/oPTiTaQdVjq7YFWmNPw+Ia8NftGx1hQofsjz
	eEvD1PAOzSa4egJxRxp2e2MCMS6OkniurDJWNpSuiX8QMtQY3BTe5YCS2zgHfQKpMC5m
	GBpHOikwBWsJIWjEGRLbBWmpcyl2YXBjQuNZCFnDWYvAVPfudoSjxG1o1VCASLMv3Q9G
	DZHvDWGls2kavwEha1dHrmL7Ao9RkJXLqHPwJtcZ+2KuTQKDypkrNTxSSXXrf5NUXcMw
	eWkDtqZdeafJdZJY7AlUxgseyvpr9ereb+G7i5UjzlrqGODSXlzzy7i5hBPzRLkgnZ/8
	CgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ckjxBfdIQ8EY0QsxI141OE8aGkjQ9g9eGdWnXPLpPL4=;
	b=PYuZWYHx+tTARNRdsfnPxufCCdVI/843cDyHSwHYP//ExrVyp0h0Ggnu6Rbki0hv6I
	t1hIPOX8SMaOrvlA0AXmJJUidRml8LC1zjQhfzk+oZrhwGNxUJ03Us0r9rbKFmcjdXIl
	Wjh3hgJRmQ+qnFGUIeJmFE6AqA7SFRzECs4gqjDrci7xB5jgYpP5IMBVFYM2w+B4VBnP
	KfidHD2cMu+jT2uz32086TSy2tUQsAs7zwrjUqxGfMu6UMbu1SOebgKr+QS9Y8QXmQ1H
	7v8AHFo7jLqNeDoQK5h5tWEkaDSW9X2SF6oJl3GDfIl2K7JLveaFJhF+1jBZYN4mK7E4
	Np1g==
X-Gm-Message-State: AGRZ1gLfNXjcw4qOBlazO4jGfV6kS2LOqZMiUNEWorbbU1rGX01uymEX
	Mgw+QcFXoP3ST2C1ZW9WhqgxLmUH8koViU1h8nM=
X-Google-Smtp-Source: AJdET5e1EQE5gKY7FPowc3RkH5CG0n8ldm5paqxqJIIVb9v1yuQ0eeobKIxXChgoQI9oK+VCqh/Rl2rhpiHZqdsR7Fw=
X-Received: by 2002:a1c:3584:: with SMTP id
	c126-v6mr5570895wma.120.1541073261568; 
	Thu, 01 Nov 2018 04:54:21 -0700 (PDT)
MIME-Version: 1.0
References: <E4920534-5A63-4F4D-A2AD-FD31D32139CC@outlook.com>
	<CAKYr3zyeFWNEKCZXVDGo7LKn6OjcuXO1BMPF=ksEOMU6LDZCZw@mail.gmail.com>
In-Reply-To: <CAKYr3zyeFWNEKCZXVDGo7LKn6OjcuXO1BMPF=ksEOMU6LDZCZw@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Thu, 1 Nov 2018 18:53:43 +0700
Message-ID: <CAKYr3zyCaa8auq_GkMMZ1Yq6vG1uyAjccNjzcT_qe_RZ43VY2A@mail.gmail.com>
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
X-List-Received-Date: Thu, 01 Nov 2018 11:54:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 1, 2018 at 6:50 PM Outback Dingo <outbackdingo@gmail.com> wrote=
:
>
> On Thu, Nov 1, 2018 at 6:33 PM Erik Hoogeveen
> <erik.hoogeveen@outlook.com> wrote:
> >
> > Hello,
> >
> > I=E2=80=99m rather new to embedded software and Yocto. I hope this is t=
he right place to ask. If not I=E2=80=99d appreciate it if someone could po=
int me the right way to do so.
> >
> > I=E2=80=99m trying to make a Yocto build for a raspberry pi 3. I=E2=80=
=99ve got it booting and doing things on a regular plain vanilla Raspberry =
pi 3 board. It boots and over serial console I can log in and do things.
> > But the ultimate target is to run this image on my own board which is b=
uilt around a Raspberry Pi Compute Module 3 Lite. Since regular Raspbian (w=
hat=E2=80=99 I=E2=80=99ve used so far) works fine on both boards without mo=
dification I assumed that this would be the case as well with this image I =
made myself. But it turns out I was wrong.
> >
> > When I take the image from the build and stick it in my compute module =
board, literally nothing happens. The boot sequence doesn=E2=80=99t seem to=
 even begin, I get nothing on the serial console, and none of the periphera=
ls like the ethernet ever come to life either.
> >
> > And since nothing happens I really have no idea where to look for a sol=
ution. I=E2=80=99m guessing this is a bit of a noob issue? It would be grea=
t if someone could point me in a direction to look at.
>
> you probably built for a raspberrypi3 or raspberrypi3-64 ffor the 64bit
>
> i believe the compute module 3 target is raspberrypi-cm3
>
> you could pretty muuchh do a diff uunder the meta-raspberryypi ffor
> the differences in whats built


Yupp see
The choices for MACHINE are

raspberrypi (BCM2835)
raspberrypi0 (BCM2835)
raspberrypi0-wifi (BCM2835)
raspberrypi2 (BCM2836 or BCM2837 v1.2+)
raspberrypi3 (BCM2837)
raspberrypi-cm (BCM2835)
raspberrypi-cm3 (BCM2837)


see.... https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

its a good read on PIs


>
> >
> > Kind regards,
> > Erik Hoogeveen.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

