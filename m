Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A598E00E3D; Mon, 26 Mar 2018 01:09:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
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
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EFACE00E36
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 01:09:00 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id v13so22129385iob.6
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 01:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o3JNLK0SesvmiucsFWmo7/0TJu5CrbW0p9h/A8C1bbw=;
	b=qm5Bq7nR6zY71pI7Vyd4rq+SJmqhjFrCYVigOSyohXkY3lB6Pj5z5MEvDg7xLT0lKC
	C98G1O/BZQ2ZyRuiQWbrHxpXTvhlt3r2rYa15FCnsiHLKQw0Fm8c3DXUwiGRigRsHZ8b
	O1Ga+tnF7Ky9ujm3NY1Kbab+upby7UrTtE7CEbZ6j8o38Ff/td0fghm1ie+OEWtMCwbb
	urT1rvjiV4A471chnB98h2j9lAJLpCsEsgi6DfAIM3Lv9L59gvkkCm8eg8hbh/dqe9NS
	QktxD6xXaFKChuSe+7g2Iam6qAyLoy++v6gSzuUnhUSu3U4/zhSUKmuwT2+8kEC2FlkG
	xONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o3JNLK0SesvmiucsFWmo7/0TJu5CrbW0p9h/A8C1bbw=;
	b=Ehxos4yvtP/dC56ZCCDSAFfHZ+BBezZ4/fweDcqdy/ZqfKbHwDDBMBl+ZfcOSDhC3i
	36HQthyAaiIvGX7ryG8OHAdxJGZIRvlK2lHEjrQm+S9ca0jhqFEB32ZXR3YG/WAw2rsI
	MJiQDpy4lrqh0I9kTycCXMGbST6peS/FFr8yyCQGLhfZH61FfzQKplFUauez5vaKe8pN
	xs9+U7YP7Uf8Vb17ZG9iwxz/3ZMWo7190+ALwqcF1vAZ8fTJruXbAfQB0h+IzHRpPaU0
	TsLaqdDfVNZGfzIvhqQo7RLMvYkFyYD43ABfA92DwIVoDt6tHlcC97i+3xv09Fnn9dYx
	/eaQ==
X-Gm-Message-State: AElRT7H2879vJd2Niis7eEnpX1u2QtS9vSlInMWLbStJ5SGVKsqxWGhi
	qb2KeUjGfl7QDDLOCA5xvKqqOQJHl+1CAOnJC2+sYuKf
X-Google-Smtp-Source: AG47ELtO4c6Wp/jSUy/vGOYLA44whLeOLNGQlVZXwLroV1Ul8mSM2rSFAAGY3NiRUvQY9qMap5GL5rWe4BfS8HNhw0o=
X-Received: by 10.107.199.195 with SMTP id x186mr39573775iof.176.1522051739635;
	Mon, 26 Mar 2018 01:08:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.176.144 with HTTP; Mon, 26 Mar 2018 01:08:39 -0700 (PDT)
In-Reply-To: <CAALXFYzFPJE9PAgNsGU+tOeGrPHB-ZxM4sobbTS1fsD6==e8CA@mail.gmail.com>
References: <CAALXFYzFPJE9PAgNsGU+tOeGrPHB-ZxM4sobbTS1fsD6==e8CA@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Mon, 26 Mar 2018 10:08:39 +0200
Message-ID: <CAB2nKc-C89ztFiKymJo=8n4AxY6fN4b_zXwxeQJCKb1nkZy4uQ@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to check list of installed packages to stop the build process conditionally
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
X-List-Received-Date: Mon, 26 Mar 2018 08:09:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c11be4e45613a05684c4945"

--94eb2c11be4e45613a05684c4945
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Maybe you can say A conflicts B and B conflicts A with following variable :
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-=
RCONFLICTS

Best regards,
Vincent

2018-03-26 9:54 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> Hello forum.
>
> My layer provides two custom recipes A and B with exactly the same
> functionality. To get a working image, one of these two recipes must be
> included on the generated image (A_installed XOR B_installed).
>
> So I need the build process being able to check the list of installed
> packages, stopping the build process in case any of these two packages is
> included.
>
> Does yocto provides some mechanism to manage this issue?
>
> Thank you in advance!
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c11be4e45613a05684c4945
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Maybe you can say A conflicts=
 B and B conflicts A with following variable :</div><div><a href=3D"https:/=
/www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-RCONFLI=
CTS">https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html=
#var-RCONFLICTS</a><br></div><div><br></div><div>Best regards,</div><div>Vi=
ncent</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2018-03-26 9:54 GMT+02:00 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=
=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell@nayarsyste=
ms.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">H=
ello forum.<div><br></div><div>My layer provides two custom recipes A and B=
 with exactly the same functionality. To get a working image, one of these =
two recipes must be included on the generated image=C2=A0<span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">(A_installed XOR B_installed).</span></div><div><br></div><div>So I=
 need the build process being able to check the list of installed packages,=
 stopping the build process in case any of these two packages is included.<=
/div><div><br></div><div>Does yocto provides some mechanism to manage this =
issue?</div><div><br></div><div>Thank you in advance!=C2=A0</div><div><br><=
/div><div><div><br></div>
</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c11be4e45613a05684c4945--
