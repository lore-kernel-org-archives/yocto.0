Return-Path: <kman.devnull@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24082E00C10; Mon, 17 Dec 2018 10:40:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kman.devnull[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EA5E00B58
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 10:40:33 -0800 (PST)
Received: by mail-it1-f176.google.com with SMTP id w18so75392ite.1
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 10:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ZNrls+IcTqOsP+gHoJYT3fXEwDCqCLSPa/XtfB/fjTw=;
	b=vEnIdR3lL4c9rmwKg0i5r/oJZkRP42uuL+xzdKRz7dFVn+A/mtvk3HhQCSqI7YlUcD
	Z/MnhR1XcBMa8Ift20ShkjHpkC8CsvwRHShTQpxR8+c2w/tOS1+zUHMsoHUGxa2JHdet
	YKi89peMuG/fu2QBmUvbkghpNZSsgWfrdI10DOBSzyhp/3k3q7Zw4DxRwo5WSpx48Ekd
	qEXed8p2b25bqeFQ5yMVJkUulBQMvMScYe9b52EOOLQwK9Y6I+PNA0qHsJF0ZIe4RI6i
	V5qzzR7rgyV2WU9MpfK8rjhvOe/Sv+2mldRIrXA+gTiBZ2+OdyaeGC5VFL0YWIxKKDqD
	Pihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ZNrls+IcTqOsP+gHoJYT3fXEwDCqCLSPa/XtfB/fjTw=;
	b=WCG63KXRCZu+W76DTtdcwg6/OA/pVoKkItUFEc8Keo7Dp0zXDrTEG4KLnOK8YEaHRa
	mKqPydt70Bg7hftRAjoyZ5kXtTuamljFq4bdsmLdoHd1y0q0Nqv5r/aBxOptLwbV7jbg
	QC7FDSWt0bGUd1HRlIDPxk9SEB+4GsCfdP4/72eQZSaCvhjyJZq4zJVf8y17QDxee5Kd
	rxOiJn5ZiVC95dHcd16VIMrKB5SFjawQ8zW7MZb/pW0Bnp59tRtEZwD8ji0BnvQI3try
	wAYh8LpSst8FROUornMzKBeycssLk5yojf4uok5i1w3DEgrtmEUYzIbUh/Ma6vM866vS
	aepg==
X-Gm-Message-State: AA+aEWblDd2+KNED4aqem1s/71ky5KhTihccz0Q3GL0U2CLYWlce05rO
	R3NDYKS9EreeZJ8Pt8zwTuk5GavPgnfC+4RltVd8LQ==
X-Google-Smtp-Source: AFSGD/VCxnk2dwv9gp5FrCTFX6Jn0A9i8fv+qjZ4rIDL+tZD/wY63p6hjlsZ899Qgsse1B5n6IG1/7BLJEZHjEGiYuc=
X-Received: by 2002:a24:ba0b:: with SMTP id p11mr224228itf.113.1545072033036; 
	Mon, 17 Dec 2018 10:40:33 -0800 (PST)
MIME-Version: 1.0
References: <CAAgpgm5i8HiLi_mT2aOXUk=1KtscFrHxkYeyaB-4=Hwseaewtg@mail.gmail.com>
In-Reply-To: <CAAgpgm5i8HiLi_mT2aOXUk=1KtscFrHxkYeyaB-4=Hwseaewtg@mail.gmail.com>
From: Kman Devnull <kman.devnull@gmail.com>
Date: Mon, 17 Dec 2018 18:40:00 +0000
Message-ID: <CAAgpgm5XqosXGQ_r1x6cr-_SU7jFDRgTuQeMoE19grfrxMjvqQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: RaspberryPi 3: u-boot --- hangs on boot?
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
X-List-Received-Date: Mon, 17 Dec 2018 18:40:34 -0000
Content-Type: multipart/alternative; boundary="000000000000ae81e8057d3c1db5"

--000000000000ae81e8057d3c1db5
Content-Type: text/plain; charset="UTF-8"

> Hi,
> How do you get the u-boot built with yocto for Raspberry Pi 3?
>
> - I used this link
> <https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html> to get
> the base build working for q5-image on Raspberry Pi 3.
> - I have used the yocto 'thud' release.
> - Now in order to get u-boot build I added the below line for local.conf
> file.
>   RPI_USE_U_BOOT = "1"
> - When I boot it just hangs on a rainbow colour screen.
>
> Please find bblayers.conf and local.conf attached.
>
> Kindly advice.
>
>

--000000000000ae81e8057d3c1db5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">Hi,<div>How do you get the u-boot built with yocto for Raspberry Pi 3?=
</div><div><br></div><div>- I used this <a href=3D"https://jumpnowtek.com/r=
pi/Raspberry-Pi-Systems-with-Yocto.html" target=3D"_blank">link</a>=C2=A0to=
 get the base build working for q5-image on Raspberry Pi 3.</div><div>- I h=
ave used the yocto &#39;thud&#39; release.</div><div>- Now in order to get =
u-boot build I added the below line for local.conf file.</div><div>=C2=A0=
=C2=A0RPI_USE_U_BOOT =3D &quot;1&quot;</div><div>- When I boot it just hang=
s on a rainbow colour screen.</div><div><br><div>Please find bblayers.conf =
and local.conf attached.</div></div><div><br></div><div>Kindly advice.</div=
><div><br></div></div></div>
</blockquote></div></div>

--000000000000ae81e8057d3c1db5--
