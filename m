Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E3EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 10:13:09 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.18616.1688638381079620894
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 03:13:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=E2XHWrdO;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:
	Content-Type:Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VIsfTgtw/L0Q1rxIhdV7GCINvIzvzcLrYq1jpaNHyHM=; b=E2XHWrdOMoX0LsI/nEerV00UMg
	oLLFs2XI+amUVSgCe9MKXZDHCPafuV4bPHuiaTNO/IfeXLKhRDl/vQaZHvHtrukGL2pHCUjNLWX4B
	Xdtm1dMG3+FOpB1wBtmyC8yNlyKxlJc4H/pm0FTUv6hDUapRV9zU/LUyvBvOUAuXk15ji3S2i5s5O
	qwYN42CdZuEbzmSdClGYCwxHbKUoq7UEJ2QDiq4Y9h1Opp1uNav0io2Dy28hPv3w5XqQsqIjxe3L4
	Xrg/jjSUp6t7Vp8ZvmqCnj/b65fB2B0KbQlEYpAEFk4y4tp/QjhRJDBKt2580IOtlQ0P22Cy2mao7
	camTL05g==;
Received: from 84-253-254-23.bb.dnainternet.fi ([84.253.254.23] helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1qHLyr-008CVV-PG; Thu, 06 Jul 2023 13:12:57 +0300
From: Anders Montonen <Anders.Montonen@iki.fi>
Message-Id: <B120A605-E6D6-44EF-AC6F-FEB9174570B2@iki.fi>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8F6C8E88-DF25-47C0-B0FD-43880C80319B"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] do_configure error while adding networkmanager to image
Date: Thu, 6 Jul 2023 13:12:56 +0300
In-Reply-To: <17151.1688637320466205781@lists.yoctoproject.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
References: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
 <17151.1688637320466205781@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 84.253.254.23
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 10:13:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60527


--Apple-Mail=_8F6C8E88-DF25-47C0-B0FD-43880C80319B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 6 Jul 2023, at 12:55, MOHAMMED HASSAN <hassanchattarki@gmail.com> =
wrote:
>=20
> On Thu, Jul 6, 2023 at 02:29 AM, Adrian Freihofer wrote:
> Hi Hassan
>=20
> It's a bit hard to guess what you are really doing. The bb is a fork
> from a quite old version when it was still using the autotools. Now we
> use meson.
>=20
> The check for rl_echo_signal_char came into NetworkManager 8 years ago
> =
https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit/b691=
43b5085c58e51ab8077ee5cbe6fafe73e041 =
<https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit/b69=
143b5085c58e51ab8077ee5cbe6fafe73e041>.
> It's probably not a change on NetworkManager side which came in
> recently with your update to 1.22.16.
>=20
> Compiling nmcli with readline works with the bb from meta-openembedded
> and the poky version with a similar age. That's the default.
>=20
> Some ideas:
> - Try if the original recipe throws the same error
> - Pass the readline parameter to autotools (what we do with newer
> versions of the recipe and meson)
> - Compile without nmcli and remove the readline dependency. Look at =
the
> commit history of the networkmanager.bb. There was an autotools based
> recipe which supported compiling without nmcli at some point in time.
> Actually I want nmcli recipe in my yocto image file. I am still a =
beginner with this so i am facing these issues. Alternatively, I was =
looking at adding wireless-tools to my image file but i dont have its =
related recipe in my SDK. Do let me know if you have any suggestions.

Are you using meta-gplv2? Its version of readline is too old for =
NetworkManager.

-a=

--Apple-Mail=_8F6C8E88-DF25-47C0-B0FD-43880C80319B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 6 Jul 2023, at 12:55, MOHAMMED HASSAN &lt;<a =
href=3D"mailto:hassanchattarki@gmail.com" =
class=3D"">hassanchattarki@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On Thu, Jul 6, 2023 at 02:29 AM, =
Adrian Freihofer wrote:</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">Hi Hassan<br class=3D""><br =
class=3D"">It's a bit hard to guess what you are really doing. The bb is =
a fork<br class=3D"">from a quite old version when it was still using =
the autotools. Now we<br class=3D"">use meson.<br class=3D""><br =
class=3D"">The check for rl_echo_signal_char came into NetworkManager 8 =
years ago<br class=3D""><a =
href=3D"https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/com=
mit/b69143b5085c58e51ab8077ee5cbe6fafe73e041" target=3D"_blank" =
rel=3D"noopener" =
class=3D"">https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/=
commit/b69143b5085c58e51ab8077ee5cbe6fafe73e041</a>.<br class=3D"">It's =
probably not a change on NetworkManager side which came in<br =
class=3D"">recently with your update to 1.22.16.<br class=3D""><br =
class=3D"">Compiling nmcli with readline works with the bb from =
meta-openembedded<br class=3D"">and the poky version with a similar age. =
That's the default.<br class=3D""><br class=3D"">Some ideas:<br =
class=3D"">- Try if the original recipe throws the same error<br =
class=3D"">- Pass the readline parameter to autotools (what we do with =
newer<br class=3D"">versions of the recipe and meson)<br class=3D"">- =
Compile without nmcli and remove the readline dependency. Look at the<br =
class=3D"">commit history of the networkmanager.bb. There was an =
autotools based<br class=3D"">recipe which supported compiling without =
nmcli at some point in time.</blockquote><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Actually I want nmcli recipe in my yocto image file. I am =
still a beginner with this so i am facing these issues. Alternatively, I =
was looking at adding wireless-tools to my image file but i dont have =
its related recipe in my SDK. Do let me know if you have any =
suggestions.</span></div></blockquote><br class=3D""></div><div>Are you =
using meta-gplv2? Its version of readline is too old for =
NetworkManager.</div><div><br class=3D""></div><div>-a</div></body></html>=

--Apple-Mail=_8F6C8E88-DF25-47C0-B0FD-43880C80319B--

