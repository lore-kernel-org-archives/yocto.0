Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88594E00D90; Wed, 20 Dec 2017 04:13:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D6DE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:13:27 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id p139so6519828itb.1
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nlY1uo3Rct9P/P8RC8tkqKb/Gb0liRCgOcLwQZMzW1Y=;
	b=SWachJXWsNFPduGwURmyFbtlOBbDHPEKweNYVfdc/nvk7nO3NRRH4Hq2ssVpSA7EAY
	UBrknGp7sL5EfrkbU3lEXCP4nhYRqBsGYHA8FUtryk+cxIcS61OUlojRLpXO8S+FBSWs
	Z3OftPiXP5r4mxOAGWyJLi2Yam4G3X53byvpCZHsrbYXfLNo73UctQOBbFoFeZaZ0esT
	rRdDRCPirOHrtCtXKDNgWJ5Zbvzb/AunEGqdYHhxmqoNvPiXo08OcLL9tyWSJpLdTQxv
	mg8Q8rf1/iPQX4gl67hXerQ2UUXPLFAVCJppluACUAw7OFakaEsgBs1zUVhiIDNQZ+kC
	ntVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nlY1uo3Rct9P/P8RC8tkqKb/Gb0liRCgOcLwQZMzW1Y=;
	b=QCsORqQDP5E2sWZqq4wOSMBwn6v/zV9+xk/xuY7bfpzYxB+Dtqs16o8fUtaVOU9EUL
	0WGZb6Wv0hvE0oL+hPrcmRyV5Fx8GVVSadYQoWxPc65i4iIoxn8eNfGxA0JpLNqo8TBV
	SIEWiMadcIs7neyFNVbdDXQBNjj5flkdw9nf7sU/drbHjoMxiV6JuD7MQkb0Xs+mzsgE
	Cj3HzNd1ZPyskgcS5Rv9c8gmK+i3SGwh8coyquZpj7ZCWvuxfl81bXAtq+Rjiu8YW8za
	8sVF4aqqfd8EAgGRcQUgFKo56RoJz5spMGcEpxgXmLwXFek5e7sLZQKCPR7ookDnwWxv
	UbqQ==
X-Gm-Message-State: AKGB3mLUQF0x7QAEx9N+8vXZfunJAZiAXBTp5/Hs3E70k/MZFnuvuJrU
	b7p7/wIc89FTq15AGwrRZWeMFENlWGZKjH9siZDnEg==
X-Google-Smtp-Source: ACJfBotwlUaTSNbFOxy8p3KR51XRW6trr7sChpDADZz+xvnlSOOSuJSF0iRFzeOABmjmeQt+1EYHsjvMIVPZ7Dp78M8=
X-Received: by 10.36.120.11 with SMTP id p11mr7641319itc.10.1513772007042;
	Wed, 20 Dec 2017 04:13:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 04:13:06 -0800 (PST)
In-Reply-To: <CAPb0b+MNP=-Bki_Fa4Z6cW_hpM3Jd+pcLH8N2U1hn9+iLgCHwg@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
	<CAPb0b+MNP=-Bki_Fa4Z6cW_hpM3Jd+pcLH8N2U1hn9+iLgCHwg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 12:13:06 +0000
Message-ID: <CAJTo0LZCvdHMYWeMKBGM+D0HOyHucaO+rabiw8v+FZ2upYGBBw@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
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
X-List-Received-Date: Wed, 20 Dec 2017 12:13:28 -0000
Content-Type: multipart/alternative; boundary="001a114a9b5ec04ac20560c4825b"

--001a114a9b5ec04ac20560c4825b
Content-Type: text/plain; charset="UTF-8"

On 20 December 2017 at 12:09, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> this does not solve the issue so far.  It seems a package installed by
> rpi-basic-image does the trick.
>
> what is the difference between :
>
> core-image-minimal
> rpi-basic-image
>

I've never used meta-raspberrypi but you can just look at the image recipes
to find out.

The minimal bit of core-image-minimal isn't a joke, it boots but is missing
*lots* of functionality you might expect.

Ross

--001a114a9b5ec04ac20560c4825b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 December 2017 at 12:09, Sherif Omran <span dir=3D"lt=
r">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sheri=
fomran2000@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div>this does not solve the issue so far.=C2=A0 It seems a package=
 installed by rpi-basic-image does the trick.<br></div><br>what is the diff=
erence between :<br></div><br>core-image-minimal<br></div>rpi-basic-image</=
div></blockquote><div><br></div><div>I&#39;ve never used meta-raspberrypi b=
ut you can just look at the image recipes to find out.</div><div><br></div>=
<div>The minimal bit of core-image-minimal isn&#39;t a joke, it boots but i=
s missing *lots* of functionality you might expect.</div><div><br></div><di=
v>Ross</div></div></div></div>

--001a114a9b5ec04ac20560c4825b--
