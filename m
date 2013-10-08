Return-Path: <jawad@emblemtechnologies.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0D2FE0169B
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 06:43:19 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id if17so3789248vcb.32
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2013 06:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=QAorz1hAiLW3ba8AHDCimTw78lh1aZD3GWpEL9sZe6g=;
	b=CHMWsDeQqL/uHJj8JtFeHv2uvNus6v4MIvWHNAplatszlwOd0KXKGAejQzkq63Bf1y
	LgfwDt7CC8m0nsED+kxdy1bBgSaDvyBy8ZJeRhPTL1V2tsyisyth6YVd0YNxP0JziZgK
	Vor7Ukgo00wSc6CmB0rP15gA+lV6Gk9PhwUvMM6s/zwLa2BYCUywwx0K+FhoXXgC/jWd
	eCM9Q9/aW8MwSx1n4HgXIEjk2ly2OfV9ZvIe89w1fUuTV1C7KmdJkFNH32GOuhNLWhAW
	b1SvnSj0U1DtemaRfAUojV8wsJzqSJlK52Et6OjsZaRG+7VuG3/Q9B9dUKj3WAPCzAZ+
	rbyA==
X-Gm-Message-State: ALoCoQkqU1W4t4Wah+8Rg3HyFTkzXVwT3QZcs5XeWdaq9ZZIjYd8L2Jqk0OR+S88a4avj6I70E0z
MIME-Version: 1.0
X-Received: by 10.52.230.102 with SMTP id sx6mr925482vdc.15.1381239798352;
	Tue, 08 Oct 2013 06:43:18 -0700 (PDT)
Received: by 10.52.191.33 with HTTP; Tue, 8 Oct 2013 06:43:18 -0700 (PDT)
X-Originating-IP: [122.129.85.50]
Date: Tue, 8 Oct 2013 06:43:18 -0700
Message-ID: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
From: Jawad Hassan <jawad@emblemtechnologies.com>
To: yocto@yoctoproject.org
Subject: TtyUsb Yocto Issue
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
X-List-Received-Date: Tue, 08 Oct 2013 13:43:22 -0000
Content-Type: multipart/alternative; boundary=089e0111ae3487dbf204e83af350

--089e0111ae3487dbf204e83af350
Content-Type: text/plain; charset=ISO-8859-1

Hi,

We're trying to access the USB serial port using rxtx on a java application
on Yocto. The problem is that we're unable to list out any ports on the
Nitrogen Lite board, we think this could be a permissions issue, if anyone
has been able to do this or any resources that can help us in getting this
done.

-- 
*Jawad Hassan*
Software Engineer
*Emblem Technologies (Pvt) Ltd*
*Uzair Pte Ltd, Singapore*
Skype: jawad@emblemtechnologies.com

LinkedIn <http://www.linkedin.com/company/897097?trk=tyah> |
Twitter<https://twitter.com/emblemtech>
 | Facebook <https://www.facebook.com/emblem.technologies>

*This message contains confidential information and is intended only for
the individual named. If you are not the named addressee, you should not
disseminate, distribute or copy this email. Please notify the sender
immediately by email if you have received this email by mistake and delete
this email from your system. Email transmission cannot be guaranteed to be
secure or error-free, as information could be intercepted, corrupted, lost,
destroyed, arrive late, incomplete, or contain viruses. The sender,
therefore, does not accept liability for any errors or omissions in the
contents of this message which may arise as a result of email transmission.
If verification is required, please request a hard-copy version.*

--089e0111ae3487dbf204e83af350
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><div>We&#39;re trying to access the=
 USB serial port using rxtx on a java application on Yocto. The problem is =
that we&#39;re unable to list out any ports on the Nitrogen Lite board, we =
think this could be a permissions issue, if anyone has been able to do this=
 or any resources that can help us in getting this done.<br>
</div><div><br></div>-- <br><div dir=3D"ltr"><div><div style=3D"font-size:s=
mall"><b style=3D"font-size:13px">Jawad Hassan</b><br></div></div>Software =
Engineer<br><b>Emblem Technologies (Pvt) Ltd</b><div><b>Uzair Pte Ltd, Sing=
apore</b></div>
<div>Skype: <a href=3D"mailto:jawad@emblemtechnologies.com" target=3D"_blan=
k">jawad@emblemtechnologies.com</a></div><div><br></div><div><a href=3D"htt=
p://www.linkedin.com/company/897097?trk=3Dtyah" style=3D"color:rgb(17,85,20=
4);font-size:small" target=3D"_blank">LinkedIn</a><span style=3D"font-size:=
small">=A0|=A0</span><a href=3D"https://twitter.com/emblemtech" style=3D"co=
lor:rgb(17,85,204);font-size:small" target=3D"_blank">Twitter</a><span styl=
e=3D"font-size:small">=A0|=A0</span><a href=3D"https://www.facebook.com/emb=
lem.technologies" style=3D"color:rgb(17,85,204);font-size:small" target=3D"=
_blank">Facebook</a><br>
=A0<br><span style=3D"text-indent:0px;letter-spacing:normal;font-variant:no=
rmal;text-align:-webkit-auto;font-style:normal;font-weight:normal;line-heig=
ht:normal;border-collapse:separate;text-transform:none;font-size:medium;whi=
te-space:normal;font-family:Helvetica;word-spacing:0px"><span style=3D"text=
-indent:0px;letter-spacing:normal;font-variant:normal;text-align:-webkit-au=
to;font-style:normal;line-height:normal;border-collapse:separate;text-trans=
form:none;font-size:medium;white-space:normal;font-family:Helvetica;word-sp=
acing:0px"><span style=3D"border-collapse:collapse;color:rgb(95,95,95);font=
-family:arial,sans-serif;font-size:11px"><b><span style=3D"color:rgb(64,64,=
64)"><font face=3D"Arial"><span style=3D"font-weight:normal"><i>This
 message contains confidential information and is intended only for the=20
individual named. If you are not the named addressee, you should not=20
disseminate, distribute or copy this email. Please notify the sender=20
immediately by email if you have received this email by mistake and=20
delete this email from your system. Email transmission cannot be=20
guaranteed to be secure or error-free, as information could be=20
intercepted, corrupted, lost, destroyed, arrive late, incomplete, or=20
contain viruses. The sender, therefore, does not accept liability for=20
any errors or omissions in the contents of this message which may arise=20
as a result of email transmission. If verification is required, please=20
request a hard-copy version.</i></span></font></span></b></span></span></sp=
an><br></div></div>
</div></div>

--089e0111ae3487dbf204e83af350--
