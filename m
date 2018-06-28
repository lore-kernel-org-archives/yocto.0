Return-Path: <abhishekr@eximiusdesign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29858E00C88; Wed, 27 Jun 2018 22:59:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED, DKIM_VALID, HTML_IMAGE_ONLY_24, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9BFE007CE
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 22:59:46 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id n96-v6so3275864lfi.1
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 22:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eximiusdesign-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=G4BQhCoAEE7ZmaGJO52JOJ9VLS7S7bjMYgJJQpQR9os=;
	b=lL2oPpC1Pe3gt+b1Uz3hRcUGGDr7utZ+o2IUBVnUKE9AlLKVTt3h2h9t1Cp4bu6Swo
	hiOPMVqdtcZmvLImpZTXhntv0mCuQOswwOAZ3d76O/UV9qu90/FRu9/ovW84gRIJb7nm
	uw5ZBhwVYlms+SQpXy2g8nTzO/h0Jg50Cm9mS5Gx4AobwqqFianN/RFmkOotZ+NDdS9D
	jiVBimr3bUTkZ0oXQViVGWyw8bXK6Y19ahg4TaGeejvcxCwHZ9T6OSB2wJePJrDeIYCw
	B41LOIZZVX+NfVG8tmDy7kDAjiwNfSazhQu/qaPsrHai395t2ZWbaihGLl3oDLRXjPno
	HLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G4BQhCoAEE7ZmaGJO52JOJ9VLS7S7bjMYgJJQpQR9os=;
	b=Z3U0vCQGZpJLSsP+MN8fKTo3EIDQ6JWvGsbGtkyhToCSSH7N43S+10qx+umJMhXTRH
	pnFw73GFm8PzSDvbfKDH0Y6be1gvXa8dVra40lqOoEn7ZfGUF9rZeb6mBgUhVad1EK1d
	pi/JsKO5UgD5yc1DpeNCA+sr8CevE3aQ0lh2NfnIJfIkXlO18DqU2k3vGbKRAjcltDa9
	QY5hBadHB7mYXejAL66ye2j4gn0LhkPmNKD0FM4cqh+xgvRVS8ShvBfhDX/B9y2AWRds
	zojQF2GOaKSb6EGvBQoyDE1ey6V0pEbQON82R4lNq9al883pEd7uO7ql918Hw9nYRDp7
	sRSA==
X-Gm-Message-State: APt69E1w4/EvqFXMldX6Guw16O4PQqMz51ZFF1dftGhXHJBOjfy4v8Ai
	6DBslKWNGygXEAO2E0JjjTyim2phS8EomthcwmUfsz2OZwYZHj6vs0CqCArpOnunobIMkioMvYx
	iZOwi1zX7Qt7RzTvZriGAwUtdFt3Z+sU=
X-Google-Smtp-Source: AAOMgpeolmmrszr7k0WwUf+YkUGrRmCqs8FfRNLqomM5hyGYypr2i9bnKWWSgSS/cCzQS/Kp+owkTpNyOAYpkopq9w4=
X-Received: by 2002:a19:f104:: with SMTP id
	p4-v6mr2998526lfh.137.1530165585571; 
	Wed, 27 Jun 2018 22:59:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7412:0:0:0:0:0 with HTTP; Wed, 27 Jun 2018 22:59:44
	-0700 (PDT)
From: Abhishek Kumar Rai <abhishekr@eximiusdesign.com>
Date: Thu, 28 Jun 2018 11:29:44 +0530
Message-ID: <CALYWmf9Yd9iVHLmijQzYK-FmPYqt+x1pwG7=NE6JtDBN_fYJ2Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Regarding Use the Latest LTP on Latest YOCTO build
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
X-List-Received-Date: Thu, 28 Jun 2018 05:59:48 -0000
Content-Type: multipart/alternative; boundary="0000000000002d089f056fad7028"

--0000000000002d089f056fad7028
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am planning to use the LTP latest version on YOCTO latest vesion.
It seems that the earlier YOCTO versions are released with LTP and
latest version are not.
Found the below difficulties so far:
1. Latest LTP version(20180118) suitable for old gcc version(4.8).
2. But at the same time, latest version of YOCTO build(2.3) supporting
latest
gcc version(6.3) only.

so we want to use a latest LTP version(20180118) with latest YOCTO
build(2.3) which has latest gcc version(6.3) .

Please share your valuable inputs with me to achieve the same.

Thanks & Regards,
Abhishek Rai

--=20














The information contained in this e-mail message (including=20
any=C2=A0


attachments) may be confidential, proprietary, privileged, or=20
otherwise


exempt from disclosure under applicable laws. It is intended to=20
be=C2=A0


conveyed only to the designated recipient(s). Any use, dissemination,=C2=A0



distribution, printing, retaining or copying of this e-mail (including=20
its=C2=A0


attachments) by unintended recipient(s) is strictly prohibited and=20
may=C2=A0


be unlawful. If you are not an intended recipient of this e-mail, or=20
believe=C2=A0


that you have received this e-mail in error, please notify the=20
sender=C2=A0


immediately (by replying to this e-mail), delete any and all=20
copies of=C2=A0


this e-mail (including any attachments) from your system, and=20
do not


disclose the content of this e-mail to any other person. Thank you=20
for your cooperation.






--=20
_This e-mail message (including any=C2=A0attachments) may be confidential,=
=20
proprietary, privileged, or otherwise=C2=A0exempt from disclosure under=20
applicable laws. If you are not an intended recipient, please delete this=
=20
message. Thank you.
_

--0000000000002d089f056fad7028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi =
Team,<br><br></div>I am planning to use the LTP latest version on YOCTO lat=
est vesion.<br></div>It seems that the earlier YOCTO versions are released =
with LTP and <br></div>latest version are not.<br></div>Found the below dif=
ficulties so far:<br></div>1. Latest LTP version(20180118) suitable for old=
 gcc version(4.8).<br></div>2. But at the same time, latest version of YOCT=
O build(2.3) supporting latest<br></div>gcc version(6.3) only.<br>=C2=A0 <b=
r></div>so we want to use a latest LTP version(20180118) with latest YOCTO =
build(2.3) which has latest gcc version(6.3) .<br><br></div>Please share yo=
ur valuable inputs with me to achieve the same.<br><br></div>Thanks &amp; R=
egards,<br></div>Abhishek Rai</div>

<br>








<table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><br style=3D"font-family:Calibri;font-siz=
e:14px">

--0000000000002d089f056fad7028--
