Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83720E00D75; Mon, 15 Jan 2018 03:03:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_24,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB5ABE00B5F
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:03:35 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id k18so12656279ioc.11
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q4VK2bNQJ+oaG93DbJDCDUEkAfU2VmtbwqLPLkFnetI=;
	b=hSZqSny+Lw8HQ+a5/BlGMEFOH4gjGJat/GDUDZrAJkzBwsewD6bradT6j/yTo5HqYT
	X6gzTwS4SSV0SUtOYiMOoz4LbjlGYFt0FGZ0qKJUACw9EJ1q6FauOzFD5JX0xDDehMVO
	EDmLgvt80eN6eyiIV8pYIWAAbKNmafwsl/aeaQfXA+GjBbSWEU3F7jXOy36AyIzSsrTZ
	cPB9S28n7Rtag+llJgUGqU3dUx2yzEtPK+CrLzqVjtt33Kf5wkPgykNGvTvCEWLNKgeN
	EjIZZpuW9ksNaLkSJjlrBzJUsfR/j6WB7hooC1RGXmtDZ2aDZyQUW5parwO/EXc6utT7
	1XFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q4VK2bNQJ+oaG93DbJDCDUEkAfU2VmtbwqLPLkFnetI=;
	b=ZFpEIXrEXjhmrMSPQXVkFAdHXHBOx1n2cdfThSlMy5inM5pxmlutfaK0FqLObyvDYA
	hopDB1sKZ1o+o32v19lpi1l2LNRG3YV1QbTreO3Q5qxGpxSkAew78B5FiFC7B/bopxeX
	A7cBOV77+q5lfPHEQNir+EGimMsmAFhEpUa1AKLWWj4asTSCWeOXP9d/gBI6OYgHvDLz
	Xfo55m4PemuLcuUsdw0eMyl9kT4CdcHJ+qe32rikM6+W0goIQA2MrbcBZxJEzHYI50v1
	emoHChpxZPsAyNuDHfxC+hz7PVL22PUNADtE1r5IymkhuWLusGKJNEX2mHNUkX5niYPS
	9TMw==
X-Gm-Message-State: AKwxytfvdbJFO3LDwL+QRhX65MyikPo4vN1E0zEP5Cf11WmDUDDEeLCD
	V92h+00NPOIKfG9k2/9fPBlDi5rzSAfTBtZ3dI4=
X-Google-Smtp-Source: ACJfBotIY0x6H8805FJjsaS2dUVPmvq8Ej52KKH3vzMZebVRL4jju4nJWslMFOFEcrWRj4i8RjFG2Aibbhq+5jFwivE=
X-Received: by 10.107.187.197 with SMTP id l188mr11317046iof.301.1516014214924;
	Mon, 15 Jan 2018 03:03:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.118.75 with HTTP; Mon, 15 Jan 2018 03:03:14 -0800 (PST)
In-Reply-To: <CA+JFif1FFgmeqYtiw35ap1KksSE5imrxkdUJLhzrdVeGPAKPOg@mail.gmail.com>
References: <CA+JFif1FFgmeqYtiw35ap1KksSE5imrxkdUJLhzrdVeGPAKPOg@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Mon, 15 Jan 2018 12:03:14 +0100
Message-ID: <CAB2nKc9ko52qxVLbuk9nZWh1QsKZsO_=GuRfSe+1qGgV67GGOA@mail.gmail.com>
To: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: GPIO configuration in imx6ull
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
X-List-Received-Date: Mon, 15 Jan 2018 11:03:36 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d48cc14c360562ce9087"

--94eb2c05d48cc14c360562ce9087
Content-Type: text/plain; charset="UTF-8"

Hi,

Are you aware of pin-muxing subject?

You can change GPIO settings in U-boot with gpio_* functions.
You can change them in DTS with gpio-edm driver from Wandboard kernel (
https://github.com/wandboard-org/linux/blob/4.1-2.0.x-imx/drivers/input/keyboard/gpio_edm.c
)
You can also change them in running Linux environment, i found this
resource quite complete
http://www.variwiki.com/index.php?title=DART-6UL_GPIO

Best Regards,
Vincent

2018-01-13 5:55 GMT+01:00 Mathew K Tharakan <
mathewkunjumontharakan@gmail.com>:

> Hi,
>
> I'm using iMX6ULL evk. I would like to change direction and value of some
> gpios. How to do that?? Could you help me in this, since I'm completely new
> to BSP.
>
> Thanks and Regards
> Mathew. K. Tharakan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c05d48cc14c360562ce9087
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Are you aware of pin-muxing subject=
?</div><div><br></div><div>You can change GPIO settings in U-boot with gpio=
_* functions.</div><div>You can change them in DTS with gpio-edm driver fro=
m Wandboard kernel (<a href=3D"https://github.com/wandboard-org/linux/blob/=
4.1-2.0.x-imx/drivers/input/keyboard/gpio_edm.c">https://github.com/wandboa=
rd-org/linux/blob/4.1-2.0.x-imx/drivers/input/keyboard/gpio_edm.c</a>)</div=
><div>You can also change them in running Linux environment, i found this r=
esource quite complete=C2=A0<a href=3D"http://www.variwiki.com/index.php?ti=
tle=3DDART-6UL_GPIO">http://www.variwiki.com/index.php?title=3DDART-6UL_GPI=
O</a></div><div><br></div><div>Best Regards,</div><div>Vincent</div><div></=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-01=
-13 5:55 GMT+01:00 Mathew K Tharakan <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mathewkunjumontharakan@gmail.com" target=3D"_blank">mathewkunjumontharaka=
n@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div><div><div>Hi,<br><br></div>I&#39;m using iMX6ULL evk. I would like=
 to=20
change direction and value of some gpios. How to do that?? Could you=20
help me in this, since I&#39;m completely new to BSP.<br><br></div>Thanks a=
nd Regards<div class=3D"m_8318821900523574819gmail-yj6qo m_8318821900523574=
819gmail-ajU"><div id=3D"m_8318821900523574819gmail-:jz" class=3D"m_8318821=
900523574819gmail-ajR"><img class=3D"m_8318821900523574819gmail-ajT" src=3D=
"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div></div>=
<span class=3D"HOEnZb"><font color=3D"#888888"><span class=3D"m_83188219005=
23574819gmail-HOEnZb m_8318821900523574819gmail-adL"><font color=3D"#888888=
"><span style=3D"color:rgb(0,0,0)">Mathew. K. Tharakan</span><br></font></s=
pan></font></span></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c05d48cc14c360562ce9087--
