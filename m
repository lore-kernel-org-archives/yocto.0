Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2478E00D89; Wed, 20 Dec 2017 02:30:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01573E00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:30:02 -0800 (PST)
Received: by mail-wr0-f193.google.com with SMTP id l19so9486519wrc.2
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i57FnHHAon46fx1wLyb80AH5kbbMOgKP5/YTltLaqu0=;
	b=hjTAU74gg1QFMksnO4pXOsF3QUezOgYWuOb6MZ8Kew6wBpoXNwQ7qh/NhXU2Ktduo+
	IfpHaWSa5VgWM2Jr73hiMQn9Fu4C8EMrhHGh4Bqy/rGJadUiG1R54UKbXKFtvGcyKrCf
	wY6N5vfzJXjudY/AHdMmHo2LJFXjqH9Z2XiSsbSmlrAhf6Yhbb1bhfH1MfmzY35LML6t
	zbLRW6vg5s3k8I/ULiY8uAQi2NV27D1jYuPn6U+wDjN+DUXnHe8TZk1Llv2VFMyWFU63
	gKwohWZK5WRo4A/t0zuTo5ZcUPiU5kcePddKpRZwHvWpRsaoe/Do7Qt+E0QF7abWA3pm
	E7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i57FnHHAon46fx1wLyb80AH5kbbMOgKP5/YTltLaqu0=;
	b=UOq3vMmPVcvJFEl/axPbSOhCsegUQXUp45TIL6rBzjJ9WcTSyFMYJbIldY/+tYIEST
	1YcvYXvNHe6UpdHI7zcWGM4doNNftPuqYf1cQ+ZTvvT4TpyRt7JMdrkrPlZ09AZstO8z
	xqBt8QVasNzXLx979U0X0DeSIypidUpSJMeDwk5gASMc8zdqqQj0TiBvifmd5SK56p1A
	FapQpUnMDiOlP8j6T+D+HV+DOv2ETQtNU+bGfvBv/k/Ey+sDMmnOdOqLxbuCegnKyHPV
	7PImbxdSzeqZaBdjz2tbkfXls/LZBFY2minx0ozZhlfUspV9wGQF7lT709ihVZFttzrT
	Hnog==
X-Gm-Message-State: AKGB3mKH4wv1BljC4/bO43eHuDAdHJSRWONj15ibxKeka9FoIRIDXpuv
	WammFpsdWGdpWMpvllWsBxpC/YAHbUl9rW+xGN4=
X-Google-Smtp-Source: ACJfBotHEFuo1XLOJG4WbZgz5waRawPP068k+xSMHxxBiCFEVsFXXyWBXo4489skc0Q0frhBCNN0vaf6pUjEN8Uytyc=
X-Received: by 10.223.184.18 with SMTP id h18mr7523802wrf.11.1513765801908;
	Wed, 20 Dec 2017 02:30:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 20 Dec 2017 02:30:01 -0800 (PST)
In-Reply-To: <CAJTo0Laszwz11hoTQ72MRyw=8ovHcbMqS=dcsuqX_3T3D41joQ@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
	<CAGAf8LwXHuc6NEm+w6J40AZnSpspce=cvzzxbs956FSpq_vHUw@mail.gmail.com>
	<CAJTo0Laszwz11hoTQ72MRyw=8ovHcbMqS=dcsuqX_3T3D41joQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Dec 2017 11:30:01 +0100
Message-ID: <CAGAf8LyMx37hYr4X7UuS04UeK4Z9d59-+EajMwh+96MEiSGkQg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 10:30:03 -0000
Content-Type: multipart/alternative; boundary="f403045fa578e560500560c3105b"

--f403045fa578e560500560c3105b
Content-Type: text/plain; charset="UTF-8"

> IMAGE_INSTALL_append = " bluez5"

I see.

This should be the another way, should'n it?

CORE_IMAGE_EXTRA_INSTALL += "bluez5"

Thank you,
Zoran

On Wed, Dec 20, 2017 at 11:21 AM, Burton, Ross <ross.burton@intel.com>
wrote:

> On 20 December 2017 at 10:18, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> > IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).
>>
>> My bad! :-(
>>
>> Should read: IMAGE_INSTALL_append += "Bluez5"
>>
>
> Typo in the package name, no need to use += with _append, and missing
> whitespace.  No, that won't work.
>
> IMAGE_INSTALL_append = " bluez5"
>
> Ross
>

--f403045fa578e560500560c3105b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:12.8px">&gt; IMAGE_INSTALL_a=
ppend =3D &quot; bluez5&quot;</span><br></div><div><br></div>I see.<div><br=
></div><div>This should be the another way, should&#39;n it?</div><div><br>=
</div><div>CORE_IMAGE_EXTRA_INSTALL +=3D &quot;bluez5&quot;<br></div><div><=
br></div><div>Thank you,</div><div>Zoran</div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On Wed, Dec 20, 2017 at 11:21 AM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 20 December 2017 at 10=
:18, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stoj=
savljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><wb=
r>&gt;</span> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<span style=3D"font-size:12.8px">&gt; IMAGE_INSTALL_append +=3D &quot;rfkil=
l&quot; (my best guess, easiest way).</span><br><div><span style=3D"font-si=
ze:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">My bad! :=
-(</span></div><div><span style=3D"font-size:12.8px"><br></span></div><div>=
<span style=3D"font-size:12.8px">Should read:=C2=A0</span><span style=3D"fo=
nt-size:12.8px">IMAGE_INSTALL_append +=3D &quot;Bluez5&quot;</span></div></=
div></blockquote><div><br></div></span><div>Typo in the package name, no ne=
ed to use +=3D with _append, and missing whitespace.=C2=A0 No, that won&#39=
;t work.</div><div><br></div><div>IMAGE_INSTALL_append =3D &quot; bluez5&qu=
ot;</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div=
>Ross</div></font></span></div></div></div>
</blockquote></div><br></div>

--f403045fa578e560500560c3105b--
