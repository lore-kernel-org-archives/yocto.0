Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EABCDE00874; Fri, 27 Jul 2018 10:19:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3407CE0049F
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 10:19:37 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id z143-v6so2125293ywa.7
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 10:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:message-id:mime-version:date:subject:in-reply-to:to:references; 
	bh=8yTiGKMd2a6I8yCKMsdkU9kQklPPApjD0baxdIHi4i4=;
	b=xYIblasRUuJvxSibljARTplqehyrVgokpse00Q2xf7lrYzFo/o2QMMAOkK+2970o67
	PDHUp3ab1Jtv0B93YRxcuFxw4NgCATK8vg2tzjMhQjCMk9a0izklg8fL3jmbR7hdYbpo
	SEfpggQGdZi8SA06FcHNcpw7kvnfeqp4OclDlTRvpS1ENcEXxg7fjjF1sA6MqiiH6We8
	xaTi0Cc6gd4AX+9AZbMKWFg8CYW050UbWu1ztTDx0lext7IMS7oZGFTbSQyiMjc0a5mv
	FSOW0CJLvdB4JVKHqSzaxqn69KZW3Sg6IrQ0deRTcELyPgOc8K7g8sHSAkS6iT7jIE5v
	pcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:date:subject
	:in-reply-to:to:references;
	bh=8yTiGKMd2a6I8yCKMsdkU9kQklPPApjD0baxdIHi4i4=;
	b=Y6mmz3cLDShTU7/tuXKBrLViflwWJfV6Tm2z1NTk1usbBC5pX6rnzXZ0OVQzJpWaTZ
	9uFi0Nu+8Fz5qPU5oLOnDAbTWYM54B+TfHkBX2RZg8eaS+tbHdBO4qjCNLAsFZXrx5ta
	Mk0xQEF0b4Bf2tFa0XNlRX8W+yZdwUQJbP8FcG9DjuCksaIx9Ywisrgo8I5bqN2zzGog
	5DlBp2stadD8eyhEvL7hhdfrm2CzbBm7NxGkGOVAn56eyTVi5Kg5cYGQ+NpbCrsjS83S
	rbpncq/iqDDEHyzMXbaaixpqwEYSL/eF6zonTpo+kMYND4XUZQ+Fa+Wd9bdcwC3Fhltd
	Oizg==
X-Gm-Message-State: AOUpUlGkPFyEAmqsTSNBLbkswS1J/eJUyXUcxYQBxcmAnXWVJoQxofLR
	E2C2Iqm7+RFMhjohFwhfI0manT9H6vY=
X-Google-Smtp-Source: AAOMgpfA97szaY2CtEDMybvG7N/TId/IOhiIXSDCM+i8bambQVRzZ29OpvW/IQtraMDNZ1pl2NKcoQ==
X-Received: by 2002:a0d:cbc7:: with SMTP id
	n190-v6mr3934245ywd.54.1532711976234; 
	Fri, 27 Jul 2018 10:19:36 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	f82-v6sm6437168ywf.58.2018.07.27.10.19.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 10:19:35 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Message-Id: <8C7D6A66-73BF-4F5D-8344-E242BAFAB02F@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 27 Jul 2018 13:19:34 -0400
In-Reply-To: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
To: yocto@yoctoproject.org
References: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: custom linux kernel recipe fails
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
X-List-Received-Date: Fri, 27 Jul 2018 17:19:38 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A5BBA316-2718-42F8-8402-6E220C1B6D5D"

--Apple-Mail=_A5BBA316-2718-42F8-8402-6E220C1B6D5D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On Jul 26, 2018, at 12:56 PM, Steve Pavao <stevep@korgrd.com> wrote:
>=20
> I=E2=80=99m trying to build using a custom 64-bit kernel at head of =
sumo, but I get an error.  It seems that SRCPV cannot be resolved.    =
Please send any ideas you may have about how I may adapt my recipe to =
get it to work.

[snip portion of recipe]

> SRC_URI =3D =
"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1 =
<http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3Dmaster=
;nocheckout=3D1>"
> SRCREV =3D "133bbf97672ff6e72fc21784b8ae44b194b76626"



I was able to avoid the error by using the following line for the =
SRC_URI instead:

SRC_URI =3D "git://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp =
<git://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp>=E2=80=9D

- Steve


--Apple-Mail=_A5BBA316-2718-42F8-8402-6E220C1B6D5D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">On Jul 26, 2018, at 12:56 PM, Steve Pavao &lt;<a =
href=3D"mailto:stevep@korgrd.com" class=3D"">stevep@korgrd.com</a>&gt; =
wrote:<br class=3D""><div><blockquote type=3D"cite" class=3D""><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">I=E2=80=99m trying to build =
using a custom 64-bit kernel at head of sumo, but I get an error. =
&nbsp;It seems that SRCPV cannot be resolved. &nbsp;&nbsp;&nbsp;Please =
send any ideas you may have about how I may adapt my recipe to get it to =
work.</span><br class=3D""></div></blockquote><br class=3D"">[snip =
portion of recipe]<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><span style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">SRC_URI =3D "</span><a =
href=3D"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branch=3D=
master;nocheckout=3D1" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp;branc=
h=3Dmaster;nocheckout=3D1</a><span style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">"</span><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">SRCREV =3D =
"133bbf97672ff6e72fc21784b8ae44b194b76626"</span></div></blockquote></div>=
<div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">I was able to avoid the error by using =
the following line for the SRC_URI instead:</div><div class=3D""><span =
class=3D"" style=3D"float: none; display: inline !important;"><br =
class=3D""></span></div><div class=3D""><span class=3D"" style=3D"float: =
none; display: inline !important;">SRC_URI =3D "</span><a =
href=3D"git://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp" =
class=3D"">git://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=3Dhttp</a><sp=
an class=3D"" style=3D"float: none; display: inline =
!important;">=E2=80=9D</span></div><div class=3D""><span class=3D"" =
style=3D"float: none; display: inline !important;"><br =
class=3D""></span></div><div class=3D""><span class=3D"" style=3D"float: =
none; display: inline !important;">- Steve</span></div><div =
class=3D""><span class=3D"" style=3D"float: none; display: inline =
!important;"><br class=3D""></span></div></body></html>=

--Apple-Mail=_A5BBA316-2718-42F8-8402-6E220C1B6D5D--
