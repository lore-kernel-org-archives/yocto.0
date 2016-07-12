Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15BC0E00F23; Tue, 12 Jul 2016 06:28:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7334E00CA7
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 06:28:29 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id h190so15357636ith.1
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 06:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JuR1oZ7YOxf6GoZisy4vWJjxWVO3yzhFaTIOEATt28g=;
	b=rxNzH0u3QKwwCvRPmOHLgcs0fABmgm8vYfuTVxrRVg3dv22tBXXRxWVDk11MhvwOkX
	sHSC5VJI2uHk735a/Jmph6hflTUJGi93IM9P+ZAVgzLF6lXvRhFvZkS/8SAU90j9hpQT
	CMJ0tw6sERkfeBeAPOljA2wJqvoFpsceFGCIOUNeU9daPAX0LBrNXjNjRjcgNqe3ld1c
	KrLpmDPxtEdTmbJCqWPmmK/ZSeJxlMgl6SLHMLA26M4hmO/nDY4R/ASbu4E0JCU2byQx
	mkfcYDochU42zn4C25iRhRODPrN+iJ9R5z/hv6vC+i6lKIatgjvrtftkYgJIk+N51SHi
	G0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JuR1oZ7YOxf6GoZisy4vWJjxWVO3yzhFaTIOEATt28g=;
	b=Ir6ZCHKaaA2p0tD5za8jvyYxqXNIs7hqBFSKytV4AFmpzKkrvkZgQ7MWu3nJ/y4uGT
	3LJQAU/Z+7ylDXVA7v1oKUGq3g4Y0rPOFP/n5nHGGvoH8IxxTOo7m9nDK0K8/gEooYpH
	3CnSzXaZeJd6cABnEMwfYDiA3qTqPWfxLu6PPUHjxV2pPrYiXCCbPnk7L+MC/kamMWdf
	qc99buN3hHk49uz7cY8Qkym+qXmkVWRDjTXzxca2JEPswCY12TxaZ7rV9S2k7b/XUyk3
	MiYfYXPveskbXR3wYIPVK5HCuUiOGVAtcuA0qirL9zrYO6vVkqz3AoJ2gCfaG5F+HOUc
	QRfA==
X-Gm-Message-State: ALyK8tL7gnbT7drXxTdCVcmoK5TgRrnE7eui4xPskSXD4sNDvQQSxrDjyZ25yvFmpbdj+Ojfa/mYzIHjHzlo5gQg
X-Received: by 10.36.147.198 with SMTP id y189mr2762548itd.83.1468330108437;
	Tue, 12 Jul 2016 06:28:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 12 Jul 2016 06:28:08 -0700 (PDT)
In-Reply-To: <5784DE88.3060605@gmx.de>
References: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
	<CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
	<5784DE88.3060605@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Jul 2016 14:28:08 +0100
Message-ID: <CAJTo0LamvEGbojK5YQjxQYrZuor5XdiCji1T3QRq1uBvcKhE0g@mail.gmail.com>
To: =?UTF-8?Q?Dominic_Sacr=C3=A9?= <dominic.sacre@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 13:28:31 -0000
Content-Type: multipart/alternative; boundary=94eb2c089e1486da960537703ec7

--94eb2c089e1486da960537703ec7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12 July 2016 at 13:11, Dominic Sacr=C3=A9 <dominic.sacre@gmx.de> wrote:

> The patch works fine with krogoth, and I originally sent it with both
> master and krogoth in the subject line:
>
> https://patchwork.openembedded.org/patch/123485/
>
> Should I resend the patch for krogoth?
>

Okay, my mistake.  Just ping the original mail and CC Armin Kuster <
akuster808@gmail.com> who is the Krogoth maintainer.

Ross

--94eb2c089e1486da960537703ec7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 July 2016 at 13:11, Dominic Sacr=C3=A9 <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dominic.sacre@gmx.de" target=3D"_blank">dominic.sacre@gmx.de</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex"><div id=3D":3km" class=3D"">The patc=
h works fine with krogoth, and I originally sent it with both<br>
master and krogoth in the subject line:<br>
<br>
<a href=3D"https://patchwork.openembedded.org/patch/123485/" rel=3D"norefer=
rer" target=3D"_blank">https://patchwork.openembedded.org/patch/123485/</a>=
<br>
<br>
Should I resend the patch for krogoth?<br></div></blockquote><div><br></div=
><div>Okay, my mistake.=C2=A0 Just ping the original mail and CC Armin Kust=
er &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt;=
 who is the Krogoth maintainer.</div><div><br></div><div>Ross</div></div></=
div></div>

--94eb2c089e1486da960537703ec7--
