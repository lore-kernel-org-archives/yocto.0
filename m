Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D432E00C1C; Tue, 26 Jan 2016 11:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BE62E00B9C
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 11:07:10 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 77so196061879ioc.2
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 11:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=20G1Zf17HGiO0UBIJ7h9cjRA7rHPcf7PiYusoNGPGzU=;
	b=ozev3baMSlb1/z0N+BeWPVCw6vbI+NOSMWBAVoGcOYzdlUI/th6r/SPOQtL/vOtoot
	Xe5uBbhqCwkdHUaIO1QjejLTTaqoG/wd4Scljj3gZZOvLBPsZKb7Eu/Q7vyw5m7ioj8J
	7OtOaUFDffU+e4JwKwPMdt/qRKy35JELYJT0Et81kqvfT/xcCHdr9AtPPwalBg4V9nNM
	GmmpS+VLBgNf7pZVl7HSIFJ0bq+oyQnhpxLf5+gAtWGD21X4kdNg6belT5B/rIbcuQWX
	khbiGzPqNTE/TXoBApeQGEv5U6THkHYrba2zc+iSnrWmJTG7K0y1ar8+K80Zwl2MZrFq
	MgIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=20G1Zf17HGiO0UBIJ7h9cjRA7rHPcf7PiYusoNGPGzU=;
	b=LUs7KBWz4s36gdzBp+1QfT3tDyKc0wT8T4Chixa/nE2UftKx6KlYim2b9Jlii1N4dx
	RcHLUdjLtMtJWXnkueZu/dYNUnFXBEmTRTx/Ppvtn+eUrWGwSLkePIfMjBmHDsTufIwr
	cIXa8R2YY7zDKEysuI4ZNA9+hNfSs+0h3phMkDC3XyZrCNbJTdioi0+fuWBqA3zndyZ8
	w2f9GXSnrK+y/1hYi6ni1ClRcco24REzHK9AgUMP8270GKvQr8lwE2y7UwZUxtCZfqJ3
	luzEUy5rCoPDwHC8Jp7qDUwUk+JT7NH9IfNvHIxigov/9EQ+JJJ8DgrlONkkMvxT0qBE
	7Hhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc:content-type;
	bh=20G1Zf17HGiO0UBIJ7h9cjRA7rHPcf7PiYusoNGPGzU=;
	b=cxuv0tUTBjdI3Uu3AgI80pjVaXP+rRCVeTXUU/cFHeSYvGIj2Ypl+CvgANMqJh9oNa
	CDwEUUgQOGniK3vwBzaTtjCdGRHjn/5/hyGVdU+TPSewx+CwrJedWZ+eJg4v6uXt3AVv
	jgGVay1HuOZXTer+BsQ+gJVa6RgGw60y/uiztv5Fg719zNYRV2IynRYATx4DdjxtVW2S
	kxTvIQS+D27sLX9b6b1UAgqL2POsRDJ96GJMdMKjtnDHR0NwZm97DaZoaHMhwFZD/ZDq
	udw7KiMqMx+JrWItRxdkzNUJBbrq594l5Qfd5NYkvU1mipDzWvqIFKt8+tV1ehng5McL
	Rwkg==
X-Gm-Message-State: AG10YORMo/Tq26V6WLgX2SP5bUIu0z7PYFoBLBM+l6FkJ3aDa7QS5qBTT0RNcLYRFO/WhKGIQPRwFtUVDYfO/w==
X-Received: by 10.107.34.133 with SMTP id i127mr25208113ioi.150.1453835230166; 
	Tue, 26 Jan 2016 11:07:10 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.91.133 with HTTP; Tue, 26 Jan 2016 11:06:50 -0800 (PST)
In-Reply-To: <DB59870584238C45879465F0A2E5C3F12E7006BC@IRVEXCHMB15.corp.ad.broadcom.com>
References: <DB59870584238C45879465F0A2E5C3F12E7006BC@IRVEXCHMB15.corp.ad.broadcom.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 26 Jan 2016 12:06:50 -0700
X-Google-Sender-Auth: oKedaVtehxyRqh0mXq92WlNqv0g
Message-ID: <CABcZAN=A=VT+7mu8hs+HECScE2LuSb265uSsLsePYpypBFk7Hg@mail.gmail.com>
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autorev and shared-state issues
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
X-List-Received-Date: Tue, 26 Jan 2016 19:07:24 -0000
Content-Type: multipart/alternative; boundary=001a1140ef8474c5cc052a41644c

--001a1140ef8474c5cc052a41644c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 26, 2016 at 12:03 PM, Luke (Lucas) Starrett <
lstarret@broadcom.com> wrote:

> I=E2=80=99m struggling with a behavior where even though we have a SRC_UR=
I set to
> ${AUTOREV}, changes to the underlying git repository are not being seen o=
n
> subsequent builds.  I have reproduced this behavior across both a kernel
> and u-boot recipe, so it seems like a generic problem.
>
>
>
> In general, how does autorev behave when used in conjunction with shared
> state?  If the underlying git HEAD moves, shouldn=E2=80=99t this be seen =
and
> prevent re-use of prebuilt content in shared state?
>
>
>
> We are currently based on the Fido/1.8.1 tag for this exercise.
>

My guess is you didn't add SRCPV to your PV, so changes to SRCREV aren't
changing PV, and do_fetch's checksum isn't changing.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1140ef8474c5cc052a41644c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 26, 2016 at 12:03 PM, Luke (Lucas) Starrett <span dir=3D"ltr">&=
lt;<a href=3D"mailto:lstarret@broadcom.com" target=3D"_blank">lstarret@broa=
dcom.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=
=3D"MsoNormal">I=E2=80=99m struggling with a behavior where even though we =
have a SRC_URI set to ${AUTOREV}, changes to the underlying git repository =
are not being seen on subsequent builds.=C2=A0 I have reproduced this behav=
ior across both a kernel and u-boot recipe,
 so it seems like a generic problem.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In general, how does autorev behave when used in con=
junction with shared state?=C2=A0 If the underlying git HEAD moves, shouldn=
=E2=80=99t this be seen and prevent re-use of prebuilt content in shared st=
ate?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">We are currently based on the Fido/1.8.1 tag for thi=
s exercise.</p></blockquote></div><br></div><div class=3D"gmail_extra">My g=
uess is you didn&#39;t add SRCPV to your PV, so changes to SRCREV aren&#39;=
t changing PV, and do_fetch&#39;s checksum isn&#39;t changing.<br>-- <br><d=
iv class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot c=
om<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>=
Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a1140ef8474c5cc052a41644c--
