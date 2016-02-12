Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F66E00C58; Thu, 11 Feb 2016 21:47:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11464E00C4F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 21:47:30 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id yy13so41172677pab.3
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 21:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=1FGdtorqksZ/YaIc45PYvjz/8NDuDOFvN4DZqkK14MA=;
	b=mSqYy6/it4GPG3+FYFQj+SxLywfmptWXhYV1upqZA5EG3zf2ai43ymQbvE8tzZB2sA
	gYWlp7ng02LkeYmiAEG12DLq6igq511tGvovmZ/rI4gJBDx3Q2sSeYhtSfxO5DXbrcJ4
	+MzbxIsBxRuE+Pxq+XFf/TlVWvdzS2xwh/AgWLe7q6BdJfrEFOEonrzdBpPzneyFNOh4
	XGw6CE7KVXxH401vVaDznXfogNypitwdQOvsb5dNAIeKqisOAsIj+UIan7eDnMsroOB6
	rFrY4bB4HHbid2i8IvmeJBFl3/lkwhnYl4QSzn5fRKHGDixP+ofo8ZaC8NVUCFeRGx7a
	kRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=1FGdtorqksZ/YaIc45PYvjz/8NDuDOFvN4DZqkK14MA=;
	b=QKK4JduRnc8yKsbEVnyNOTPnfRw7YXObdqDPyn0R+zXv7dBMxE8Eu9J56uLlHwuQuT
	HI4htTnoLVO9GVRx8k94dm4y1xSu8yVCopLBYJ/rbOrNuTo5OFjCzP4UikS2AMHUMAwz
	MIRTFAv5eJ1G+rkHKOHx7WaSu8vo9PXvQ5ku5yR/gcCDU31bilFuGANsr9gpMcxCXzq8
	LVG5TkUL3tQSpTtkGXJ+S7DqwJySg8keOnj0vIXX44rEEWo81uDrCA7bmLN/9VaetIZ1
	N+ANR7Wk/kRT0Aom2nljrAl6faaMh7+fvxat/pZbIMbavfltf5MUqqIRL05sx9HZeQVH
	cpSg==
X-Gm-Message-State: AG10YOTWC7W7+J5rN4I6vkUSvuypEnkyhfPmA6hTJZcQV7Zw/FMkPrlYYoqj2+kQQoCBaQ==
X-Received: by 10.67.2.10 with SMTP id bk10mr70934181pad.26.1455256049992;
	Thu, 11 Feb 2016 21:47:29 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:20d3:911e:9c91:8595?
	([2601:646:8802:5d5c:20d3:911e:9c91:8595])
	by smtp.gmail.com with ESMTPSA id
	d8sm16171299pas.14.2016.02.11.21.47.28
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 11 Feb 2016 21:47:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <7eb23ce64ad7493485184af5224b8646@NASANEXM02C.na.qualcomm.com>
Date: Thu, 11 Feb 2016 21:47:24 -0800
Message-Id: <B8247686-0F74-4B5C-8F31-8D9E010B696A@gmail.com>
References: <7eb23ce64ad7493485184af5224b8646@NASANEXM02C.na.qualcomm.com>
To: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Selecting a specific tuning in an application recipe?
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
X-List-Received-Date: Fri, 12 Feb 2016 05:47:33 -0000
X-Groupsio-MsgNum: 28444
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A77CED41-1D77-48A8-8ACA-F9F6D37225CD";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A77CED41-1D77-48A8-8ACA-F9F6D37225CD
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3A7792DE-D745-4055-B6A4-E3324AC73A1E"

--Apple-Mail=_3A7792DE-D745-4055-B6A4-E3324AC73A1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 11, 2016, at 11:25 AM, Stroz, Glenn <gstroz@qti.qualcomm.com> =
wrote:
>=20
> Hi,
>=20
> We=E2=80=99re trying to build a 64 bit arm project. However, one of =
our applications needs to be built in 32 bit mode as it isn=E2=80=99t =
supported in 64 bit yet. I=E2=80=99ve looked around and it looks like I =
need to adjust the tuning to be for armv7 instead of the default. =
However, when I set DEFAULTTUNE in the application recipe it does not =
compile the 32 bit cross compiler and bails out with a dependency error. =
Is there a system in place where we can adjust the tuning for a specific =
recipe?
>=20
> Multilib doesn=E2=80=99t appear to be the solution since it=E2=80=99s =
tailored towards libraries and not applications. Not sure if there=E2=80=99=
s anything else that would work.

infact multilib is the solution, its not limited to libraries. If =
multilib worked for your arch you would

bitbake lib32-<yourapp>
and it will bring in all needed dependencies + compile your app in 32bit =
mode or whatever the multilib warrants.

Question however is if combination that you are expecting is supported =
or not.

>=20
> Thanks,
> Glenn
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_3A7792DE-D745-4055-B6A4-E3324AC73A1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 11, 2016, at 11:25 AM, Stroz, Glenn &lt;<a =
href=3D"mailto:gstroz@qti.qualcomm.com" =
class=3D"">gstroz@qti.qualcomm.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Hi,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">We=E2=80=99re trying to build a 64 bit =
arm project. However, one of our applications needs to be built in 32 =
bit mode as it isn=E2=80=99t supported in 64 bit yet. I=E2=80=99ve =
looked around and it looks like I need to adjust the tuning to be for =
armv7 instead of the default. However, when I set DEFAULTTUNE in the =
application recipe it does not compile the 32 bit cross compiler and =
bails out with a dependency error. Is there a system in place where we =
can adjust the tuning for a specific recipe?<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Multilib =
doesn=E2=80=99t appear to be the solution since it=E2=80=99s tailored =
towards libraries and not applications. Not sure if there=E2=80=99s =
anything else that would work.</div></div></div></blockquote><div><br =
class=3D""></div><div>infact multilib is the solution, its not limited =
to libraries. If multilib worked for your arch you would</div><div><br =
class=3D""></div><div>bitbake lib32-&lt;yourapp&gt;</div><div>and it =
will bring in all needed dependencies + compile your app in 32bit mode =
or whatever the multilib warrants.</div><div><br =
class=3D""></div><div>Question however is if combination that you are =
expecting is supported or not.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks,<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Glenn<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><span =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
rgb(149, 79, 114); text-decoration: underline; font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_3A7792DE-D745-4055-B6A4-E3324AC73A1E--

--Apple-Mail=_A77CED41-1D77-48A8-8ACA-F9F6D37225CD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAla9ce8ACgkQuwUzVZGdMxSoYwCeOS+szEkHcR1h0ojMtr6c4jUV
P9QAniZa0WaY5hy5XS1f6Lw8clIene9V
=G4cr
-----END PGP SIGNATURE-----

--Apple-Mail=_A77CED41-1D77-48A8-8ACA-F9F6D37225CD--
