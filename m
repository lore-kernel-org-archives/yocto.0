Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15DF6E00948; Wed, 15 Aug 2018 13:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8938AE006D8
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:25:31 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id y5-v6so2659068qti.12
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=zHZOs0dNngFnGn0ojiT2wBCqg6jWhU2ubBGu95ZZMp4=;
	b=wv/44j3C0388420EIUSV0WHETOJgVLZR8hJhhlwrBkT2rwwDtbT8Kbg5tRoPvEkOex
	yvplTMq3ibr7Ls/0AFyRR3IRWg22QSmK9J2EJ8T7l+JDuHrmPkvevvn9uac6MNmVi54P
	gJ2xqeH/7zpJ+nRBpN6XT9gjZgsiowIjG0V76YZf9pgRfgNybRsTui/yfTY7iX/hIWZU
	LimWuYhG/bodEnOCdHGJOSHpVR0/9y1dD99zKtU9kySMAEgKhZPvK3DUCkZ+O6e1Md6+
	tNBZIvS2wJCWgAwtXpzsHd+PCtoZsNuekBZTstxIGY/6svsJJG/VWKENhas5rVzSa4g/
	BBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zHZOs0dNngFnGn0ojiT2wBCqg6jWhU2ubBGu95ZZMp4=;
	b=dHqImiztxTl8hsC6PXGKhKkxoX9G0RxZTwTPAGhw7BTc521XFRcv9GdQ7yRdp8nBpp
	MeNq2e6bIO+3ABPaMP3VUKE1NLmOb9k+T3u6gSToSbSqJCpA2iU74SwAN9zSPWV+CA41
	csWM/A9oIIZxo4kI7tK/GDAibGh82wfYB5DiT80DRMgZVuOK3TzO+CuTbUGpuZSzW5K5
	HKvcjxyZtCiVp38j/E6yghwcXV8MJvKzN5ggbNJurD4oWnz02MBJ4RhRGMGv48dbwpay
	W8+3IVdkf3uxK+Y1xbgZhqkC0EC2tI+Qg8UK/dkSI2M3rI4o3JeWDQAJGgUPtcxIHSsF
	ZTMg==
X-Gm-Message-State: AOUpUlEwrVgNoayl4ctMgD3OZ3WcIhIfwDEzS3m2szm1mQMWN+EIIpBi
	3Gthjl1AvwcW9fULI8dhm8L4jA==
X-Google-Smtp-Source: AA+uWPwWAnAydKabATOXgdo44Rikd9S3WDU3kYGQfeAMuHq3TvGr4FypaEQ93GRrB734RhbD0uKqZQ==
X-Received: by 2002:ac8:427:: with SMTP id
	v39-v6mr26899970qtg.120.1534364730888; 
	Wed, 15 Aug 2018 13:25:30 -0700 (PDT)
Received: from steves-mbp-2.lan (68-191-253-254.static.oxfr.ma.charter.com.
	[68.191.253.254]) by smtp.gmail.com with ESMTPSA id
	d137-v6sm14888912qkg.91.2018.08.15.13.25.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Aug 2018 13:25:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
Date: Wed, 15 Aug 2018 16:25:28 -0400
Message-Id: <96C9E43C-BDF8-4095-BDC8-09B4F59F6AF4@korgrd.com>
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
	<CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 20:25:32 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_88A5E254-E333-4C50-8D17-B570CD9D3727"

--Apple-Mail=_88A5E254-E333-4C50-8D17-B570CD9D3727
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

> On Aug 15, 2018, at 11:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Tue, Aug 14, 2018 at 11:48 PM Steve Pavao <stevep@korgrd.com =
<mailto:stevep@korgrd.com>> wrote:
>>=20
>> There seems to be a problem with the core-image-minimal bitbake for =
raspberrypi3-64 target at head of sumo in all repos.  I wonder if it=E2=80=
=99s also a problem for the raspberrypi3 target.
>>=20
>> No kernel modules appear in the .manifest, and no kernel modules are =
put into the sdimg.  It=E2=80=99s hard to believe it=E2=80=99s true, but =
that=E2=80=99s what I'm seeing.
>=20
> please build core-image-base and see if that helps

Khem - that does help.  It also provides some other packages that =
aren=E2=80=99t in the deprecated rpi-hwup-image, but that doesn=E2=80=99t =
seem to hurt.

Max - thanks for the explanation about adding that package to the image =
as a possible solution.  In this case, I=E2=80=99m trying to avoid =
multiple manual steps and just use a single bitbake target to acheive =
the build I need, though.

Andre - I have since read about core-image-minimal since receiving the =
warning message that "rpi-hwup-image is deprecated - use =
core-image-minimal instead=E2=80=9D and having problems due to the =
missing modules.  You are technically correct.   I would like to state =
my opinion though that to unconditionally warn the user to use =
core-image-minimal instead of rpi-hwup-image  (which definitely packages =
kernel modules if they are there) is not often the best advice to give.

Thanks to you all for the useful replies.

Steve Pavao
Korg R&D




--Apple-Mail=_88A5E254-E333-4C50-8D17-B570CD9D3727
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Aug 15, 2018, at 11:54 AM, =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">On Tue, Aug 14, 2018 at 11:48 PM =
Steve Pavao &lt;</span><a href=3D"mailto:stevep@korgrd.com" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">stevep@korgrd.com</a><span style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">&gt; wrote:</span><br style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><blockquote=
 type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D""><br class=3D"">There seems =
to be a problem with the core-image-minimal bitbake for raspberrypi3-64 =
target at head of sumo in all repos. &nbsp;I wonder if it=E2=80=99s also =
a problem for the raspberrypi3 target.<br class=3D""><br class=3D"">No =
kernel modules appear in the .manifest, and no kernel modules are put =
into the sdimg. &nbsp;It=E2=80=99s hard to believe it=E2=80=99s true, =
but that=E2=80=99s what I'm seeing.<br class=3D""></blockquote><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">please build core-image-base and see if that =
helps</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""></div></blockquote><div><br =
class=3D""></div></div>Khem - that does help. &nbsp;It also provides =
some other packages that aren=E2=80=99t in the deprecated =
rpi-hwup-image, but that doesn=E2=80=99t seem to hurt.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Max - thanks for the =
explanation about adding that package to the image as a possible =
solution. &nbsp;In this case, I=E2=80=99m trying to avoid multiple =
manual steps and just use a single bitbake target to acheive the build I =
need, though.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Andre - I have since read about core-image-minimal since =
receiving the warning message that "rpi-hwup-image is deprecated - use =
core-image-minimal instead=E2=80=9D and having problems due to the =
missing modules. &nbsp;You are technically correct. &nbsp; I would like =
to state my opinion though that to unconditionally warn the user to use =
core-image-minimal instead of rpi-hwup-image &nbsp;(which definitely =
packages kernel modules if they are there) is not often the best advice =
to give.</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks =
to you all for the useful replies.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Steve Pavao</div><div class=3D"">Korg =
R&amp;D</div><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div></body></html>=

--Apple-Mail=_88A5E254-E333-4C50-8D17-B570CD9D3727--
