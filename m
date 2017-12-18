Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08DFAE00CFF; Mon, 18 Dec 2017 14:18:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37FC4E00A9C
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:18:02 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id d66so20307256qkg.1
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0yoO8AhOCmm9hJ1eHxCk+gFlAyAetgHBzqzvU1sKc9U=;
	b=vX5dbAbicpGcp0wwm9P8I/p6Xe7RtJD2U89rUEimhavvGCc/CDaxMJpDDFcjGckALC
	TxydWtEOIbHyB1zyFvqP6aoa8sISjYXmefTv6/ETsEa5MrDgJJkVW1HmzOBZvWXAQHQW
	jGqxh6oE/h5OKdQj7ShYQ54toFFIawj9+h/ktv4FQgEcu85Fd2OtprUt2HfEtb1g6Pgq
	eMIXyZ+KYjYiKZOoa12XhIo1XpCO5IYqOmw16s+U1K+iZ0e0ObwiqJRSKQ9ipToCjeqs
	XCGQmpcPZ75eJ6GvjQIFCa469VYEz6p/HhXoATWiuiVEL6ycIkbnmoaBV5OEqC3agS9o
	ri5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0yoO8AhOCmm9hJ1eHxCk+gFlAyAetgHBzqzvU1sKc9U=;
	b=SWXSljjjn50G8YlbXDnoUiHZGZlcCynLnR0WNBLWnxKUUt9MsjYsLtYG7f7vCL6g/H
	GqE/4DBwVBdINX4rOpMjWVihxiSRoVR4CNbC/2Y0lE5ketNso+xr/k+PytwNKBGOx2ZX
	ywcMdiAR/lqNj8BiBePyegwckqCTsxgECCWenAEEn2K54wOzt6yLQVgUiIE2jfOjOiuF
	uIwgWos+ZC4xfd4/N5FYcuJkSbIWx7bQ5m8NretftmwMMkJlAzXhHUb8BbBTgG9Ly481
	Axnfhz3x8z5MmX2xTlfAVgSFMH48DZnK+UlNmRBOmE7L1h8E0j/VWDUNykmPSvNspQpb
	v4Ng==
X-Gm-Message-State: AKGB3mKOA6u/9StJ6E3KU3/keTgFJkJIsARjjiLRnfZgsixMu4McYP3L
	S4hqVRuz5bUypQikm3dTjFf+i2ZoPtzR3PRqYIg=
X-Google-Smtp-Source: ACJfBovQ2KDZEjREqygK0gCxPn/DBer0pFmyjSCb6dSJAYlRMcwTw/3Bs1OEpqQ8BIUIa22HxrafAb8+vRlhMooitHI=
X-Received: by 10.233.235.133 with SMTP id b127mr1992936qkg.137.1513635482219; 
	Mon, 18 Dec 2017 14:18:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Mon, 18 Dec 2017 14:18:01 -0800 (PST)
In-Reply-To: <F1033569E865F34DB22FEDAEDE3F7246C14A6E@elys7052.corp.knorr-bremse.com>
References: <F1033569E865F34DB22FEDAEDE3F7246C14A6E@elys7052.corp.knorr-bremse.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 18 Dec 2017 23:18:01 +0100
Message-ID: <CALw8SCXH7K_Ac-MJf2vL-7ewqEykVa9KMB3hHR_Fa94CJq=2yA@mail.gmail.com>
To: "Greer, Charles (ext)" <Charles.Greer@bendix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable a linux virtual terminal...
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
X-List-Received-Date: Mon, 18 Dec 2017 22:18:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2017-12-14 22:51 GMT+01:00 Greer, Charles (ext) <Charles.Greer@bendix.com>:
> Hi all,
>
>
>
> Would anyone know how to disable the virtual terminals in linux?  I am us=
ing
> Yocto, Morty version on an i.MX6 processor.  Even though our base
> distribution is Yocto, unfortunately we have diverged from building it wi=
th
> recipes, so this is more of a straight linux question than Yocto=E2=80=A6
>
>
>
> To give some detail as to my problem:  It is for an embedded device that =
has
> an HDMI port - when I attach a terminal to the HDMI port it shows the Lin=
ux
> Penguin logo, a getty service and blanks out after 600 seconds.  I just w=
ant
> to use the hdmi port as an output with nothing displayed on the output an=
d I
> want it to stay on all the time.
>
>
>
> I have found that the hdmi port maps to /dev/tty1 =E2=80=93 when I type: =
 echo
> =E2=80=9Casdfasdf=E2=80=9D > /dev/tty1 I see the characters output to the=
 monitor.
>
>
>
> Here are a few things I have tried to no avail =E2=80=93 a lot of these a=
re not
> needed if I can figure out how to disable it as a virtual terminal=E2=80=
=A6
>
>
>
> =C2=B7         I figured out how to disable the getty service but a curso=
r still
> blinks.   I don=E2=80=99t even want a cursor to show

Normally you disable the cursor with a kernel argument:

    vt.global_cursor_default=3D0

You probably also need to remove "console=3Dtty1" from kernel arguments
to avoid to getting "boot prints"

< snip >

> Disabling the logo or console blanking would not be necessary if I could
> just figure out how to disable that port as a terminal=E2=80=A6
>
>
>
> So does anyone have pointers or things I could try?  I am relatively new
> (returning after 10 years - I worked with DNX 10 years ago v2.6 and it se=
ems
> everything I knew about init is fairly obsolete lol) to linux so I am sur=
e I
> am missing a lot=E2=80=A6

Well it sounds to me that you would like to disable the framebuffer
console completely.

Removing (=3Dn) the

    CONFIG_FRAMEBUFFER_CONSOLE

config should definitely get rid of most of the things that you
mentioned. But normally you would not disable it completely if you
would like to display a "boot screen" / splashscreen but if you do not
want it you can safely remove that option.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

