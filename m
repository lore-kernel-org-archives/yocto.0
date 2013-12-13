Return-Path: <juhl_iphone@yahoo.com>
Received: from nm32.bullet.mail.ne1.yahoo.com (nm32.bullet.mail.ne1.yahoo.com
	[98.138.229.25])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 10915E007B0
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 08:47:52 -0800 (PST)
Received: from [127.0.0.1] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	13 Dec 2013 16:47:51 -0000
Received: from [98.138.100.113] by nm32.bullet.mail.ne1.yahoo.com with NNFMP;
	13 Dec 2013 16:45:02 -0000
Received: from [98.138.89.169] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	13 Dec 2013 16:45:01 -0000
Received: from [127.0.0.1] by omp1025.mail.ne1.yahoo.com with NNFMP;
	13 Dec 2013 16:45:01 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 891667.24300.bm@omp1025.mail.ne1.yahoo.com
Received: (qmail 76745 invoked by uid 60001); 13 Dec 2013 16:45:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1386953101; bh=t3kHf9mG5useszD/y6hZKN+LBJx7Hp2GBkL8Z2OOZBk=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=a3cNt+Q1gu5xznhKCxk59ZuR7VjCDC8UcRCk2nPbx3Eb3bOiYsKy+oiTilaMHDVKasMn70uD24n5h1gy+BiDVni8eaNM9X0Wd/cfblLE8pHGi7nnbyaKDAkpEowlPbSt1n8YmbISC9FIWkgD2te78M9WpSqMGUlN+nVRHkQyEVY=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=pJKJUYoGFv9uWERihrF2gWcJI4DaZ0p1WEcrgdXpLnJ0s5dWFhscKxUq/JAU3fEx+GSDs2UOy2x8J48ht4qWwl9fadNruABmjO1gXxSx/6vgk/CH6hjEPWz9vLh9fIH4p68syzxnYTFZTZKQtqa/Huk9uyrcBfHMrdyVrHIElBw=;
X-YMail-OSG: TGW2TWMVM1kbpr50iW15KKvMMsLpu8wdfJgPs.7E4Prx.L9
	3tlaWOkmKm5_x1QkJSGh.9AKlavOP6KBoBCbhYl7xWoQXvCO0FdepFez2skM
	i62lH2bFEaGNbjhQNc.PkBV1QffPC1gVdf1lJM5EQJyPmDTRtkKDfY07ToTC
	eL9ezHXcbsvJL0.8sT4suOKIehgE1vAt9jl3FG2uSmgZnEvU95jrQdhzrJ46
	oBUbK3CCK44ipDC14zrtNr591ZOCambrQjSEJrC4Gm6mQDXUzk9dU3roq3Mg
	K59T3E63PscPvbn90nnY2Ys93vHnSRTKE9U05UDXf4Hud73XXf1udzfrWZOf
	Nd0wGKzUX_TpX621cMjHoXLk_YgFCldiPmymCty6VTT0jQknX_j6wsDpHlE5
	WU.IRxzBCiMR8yGZ8g66YeWglG79j9jYEnd.LOqBzlltbe5u94gwpt9f8fGk
	VlMYNEz1mkwp77x4gDQxTDSqe65RCPeT637Gxbg0YDUIU3H_wqwcFX.Noyi6
	01jy4kFIqsFXq8OCZ.17CLl1QG3bV8lTktXTgQ89s
Received: from [208.99.241.169] by web121102.mail.ne1.yahoo.com via HTTP;
	Fri, 13 Dec 2013 08:45:01 PST
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8sCsKgCkhvdyBkbyBJIGdldCBta2ZzLmV4dDMgYmluYXJ5IG92ZXIgdG8gbXkgcm9vdGZzIGltYWdlLsKgIEkgYWRkZWQgCsKgCklNQUdFX0lOU1RBTEwgKz0g4oCcdXRpbC1saW51eCBlMmZzcHJvZ3PigJ0KwqAKVG8gY29yZS1pbWFnZS1taW5pbWFsIGJ1dCBJIHNlZW0gdG8gYmUgbWlzc2luZyBzb21ldGhpbmcuwqAgTWtmcyBkb2VzIHdvcmsgYnV0IG5vIG1rZnMuZXh0My4KwqAKVGhhbmtzIQoBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.169.609
Message-ID: <1386953101.37035.YahooMailNeo@web121102.mail.ne1.yahoo.com>
Date: Fri, 13 Dec 2013 08:45:01 -0800 (PST)
From: J Uhl <juhl_iphone@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 13 Dec 2013 09:07:28 -0800
Subject: e2fsprogs with core-image-minimal
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: J Uhl <juhl_iphone@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Dec 2013 16:47:53 -0000
Content-Type: multipart/alternative;
	boundary="691502144-642550192-1386953101=:37035"

--691502144-642550192-1386953101=:37035
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=C2=A0=0AHow do I get mkfs.ext3 binary over to my rootfs image.=C2=
=A0 I added =0A=C2=A0=0AIMAGE_INSTALL +=3D =E2=80=9Cutil-linux e2fsprogs=E2=
=80=9D=0A=C2=A0=0ATo core-image-minimal but I seem to be missing something.=
=C2=A0 Mkfs does work but no mkfs.ext3.=0A=C2=A0=0AThanks!=0A

--691502144-642550192-1386953101=:37035
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div><font face=3D"Times New Roman">=0A=0A</font></div><div s=
tyle=3D"margin: 0in 0in 0pt;"><font face=3D"Calibri">Hello,</font></div><di=
v><font face=3D"Times New Roman">=0A=0A</font></div><div style=3D"margin: 0=
in 0in 0pt;"><font face=3D"Calibri">&nbsp;</font></div><div><font face=3D"T=
imes New Roman">=0A=0A</font></div><div style=3D"margin: 0in 0in 0pt;"><fon=
t face=3D"Calibri">How do I get mkfs.ext3 binary over to my rootfs image.<s=
pan style=3D"mso-spacerun: yes;">&nbsp; </span>I added </font></div><div><f=
ont face=3D"Times New Roman">=0A=0A</font></div><div style=3D"margin: 0in 0=
in 0pt;"><font face=3D"Calibri">&nbsp;</font></div><div><font face=3D"Times=
 New Roman">=0A=0A</font></div><div style=3D"margin: 0in 0in 0pt;"><font fa=
ce=3D"Calibri">IMAGE_INSTALL +=3D =E2=80=9Cutil-linux e2fsprogs=E2=80=9D</f=
ont></div><div><font face=3D"Times New Roman">=0A=0A</font></div><div style=
=3D"margin: 0in 0in 0pt;"><font face=3D"Calibri">&nbsp;</font></div><div><f=
ont face=3D"Times New Roman">=0A=0A</font></div><div style=3D"margin: 0in 0=
in 0pt;"><font face=3D"Calibri">To core-image-minimal but I seem to be miss=
ing something.&nbsp; Mkfs does work but no mkfs.ext3.</font></div><div><fon=
t face=3D"Times New Roman">=0A=0A</font></div><div style=3D"margin: 0in 0in=
 0pt;"><font face=3D"Calibri">&nbsp;</font></div><div><font face=3D"Times N=
ew Roman">=0A=0A</font></div><div style=3D"margin: 0in 0in 0pt;"><span styl=
e=3D'font-family: "Times New Roman","serif"; mso-fareast-font-family: "Time=
s New Roman"; mso-fareast-theme-font: minor-fareast; mso-no-proof: yes;'><f=
ont color=3D"#000000">Thanks!</font></span></div><div><font face=3D"Times N=
ew Roman">=0A=0A</font><br></div></div></body></html>

--691502144-642550192-1386953101=:37035--
