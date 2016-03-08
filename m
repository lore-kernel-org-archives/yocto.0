Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76060E0071E; Tue,  8 Mar 2016 00:42:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD1DE006AE
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 00:42:22 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id vs8so43377019igb.1
	for <yocto@yoctoproject.org>; Tue, 08 Mar 2016 00:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SKuQmEKJeYOG+WtBDh30YwWAQEsmlOItuCdPIyzTK5Y=;
	b=dBxjRMC4BiW3+ux/MN9HmeiKr9eZ7JfPj88JEIEtwVFi6/6slyqwUBMkTofh0II/Ur
	Tn5MYPpkBZxtcK64LvLEXDn4SOCvPWU0XPTqx3cGdpkseT1mKx7y+LyZN8uqM1OWY0iQ
	O+w6fon9wafErk+ZE+Yge1/gqu5Q1SmKL+K4+2r+vND7f32s0kDDawuKUPa2diFC4odG
	DJ6C7OzWVDgDLV0tVTmgAvTzGPgE2l8w89l8THcgwyEw8k86j2ayrj8XGWanE7Zs/9Mw
	bRrAx7vpYMo76Zn4AgzuxHLKDBuaywpP4ChJY70/bP5MaFxUPjB99IThr7brzgsZFAXk
	AAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SKuQmEKJeYOG+WtBDh30YwWAQEsmlOItuCdPIyzTK5Y=;
	b=e6E8JwzYN2n96eisrH7r6kJFI5aKeApOFHwmnpEANVxyKigolJrP77G3n41wFUlAfw
	UF3jF0bkjyTPTXiZ7QAkwcoFWmIU9eD4T9z60oQC53SHMB/8OpPTKbLHr7h6I86/IBew
	jqY15Q/S305nzdrYbygrIxV9mdXmQQ7Czrq0QJJiF/9IggPH4b8/VsF8VS64Qkza6UuW
	lLuQ7VVpWAeNv6rHG7ldHKj5Syszn6/f5Eu96RsejAf167K+p1vTC/NbBb0CbIFSZfJy
	2T+hH6D01vs6rLohvyCoLx2kOgv65A1Uh+kuuEnJgwN6va62HlGSt6EruhTTG9GNfYP6
	3CIg==
X-Gm-Message-State: AD7BkJK9pO/uFIxgWiXR2Uz55LsjxXW5GZo9LesTqrbJ7Vd/lol0FoPnX3IQJAc0RELSLWlk/KUhx85WTpAmMyzA
X-Received: by 10.50.112.101 with SMTP id ip5mr16152258igb.52.1457426541886;
	Tue, 08 Mar 2016 00:42:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 8 Mar 2016 00:42:02 -0800 (PST)
In-Reply-To: <BAY181-W46AB9F6D700F243ED2D796AEB20@phx.gbl>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
	<CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>
	<BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>
	<CAJTo0LYmefS-OzRCFvPDFiiEDK0x14AfxjWRgq=rp+ZnwJvHbg@mail.gmail.com>
	<BAY181-W46AB9F6D700F243ED2D796AEB20@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Mar 2016 08:42:02 +0000
Message-ID: <CAJTo0LZ513XdLUWA+JA7sD-CZUfOGOO_-eV+zeMZq+UuqTmeCw@mail.gmail.com>
To: Mark Brown <mkbrown32@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Tue, 08 Mar 2016 08:42:25 -0000
Content-Type: multipart/alternative; boundary=047d7b3a845850d995052d858fe6

--047d7b3a845850d995052d858fe6
Content-Type: text/plain; charset=UTF-8

On 8 March 2016 at 00:20, Mark Brown <mkbrown32@hotmail.com> wrote:

> fatal: unable to access 'https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/':
> server certificate verification failed. CAfile:
> /etc/ssl/certs/ca-certificates.crt CRLfile: none
>

Your local certs are either missing or incomplete.  You'll have to either
install ca-certificates, or investigate how to tell git when doing http
fetches not to bother checking certificates.

Ross

--047d7b3a845850d995052d858fe6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 March 2016 at 00:20, Mark Brown <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mkbrown32@hotmail.com" target=3D"_blank">mkbrown32@hotmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div>fatal: unable to access =
&#39;<a href=3D"https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/" target=3D=
"_blank">https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/</a>&#39;: server =
certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt=
 CRLfile: none</div><div></div></blockquote></div><br>Your local certs are =
either missing or incomplete.=C2=A0 You&#39;ll have to either install ca-ce=
rtificates, or investigate how to tell git when doing http fetches not to b=
other checking certificates.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--047d7b3a845850d995052d858fe6--
