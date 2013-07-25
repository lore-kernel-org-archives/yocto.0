Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF7BE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 22:48:00 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id 3so232492pdj.19
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 22:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=Ci6HbOUEAEA4lYnFEifB1KXlrolaHxWsRsLTteWOpcc=;
	b=VncN7f75D6Wto7hkEHBMhXqvB3p+kQSga4//9CP5TVVjlAZ1zvqeWV1y9aZnHrIjw+
	PXyBbcIE23GuLXee7Dru+MC6oNBcH/jsEmLtwHjwAXAPLin7HbEQfhWykUDW8j3tn1Ja
	NN7YTVEkbn0kzu6Cbl8nnR47Lm98Au11fdkYBcMryiP7rqOH0Z8D9QQNpVWkMZ/5gVNe
	mHmoQL4dwJt5DZuTWnYAWCg6cVbdpeOQ/hXnvYZX5Twpn+rlJaDqYf9OZjtEWPANU5+9
	rznUwRJMDZcCQ0TofIyBymdz5xZGdgHQ1sMi5qt5pyfZmai4DHjrf97eZaDnkSrz8sek
	mnwg==
X-Received: by 10.68.189.228 with SMTP id gl4mr46369794pbc.57.1374731279712;
	Wed, 24 Jul 2013 22:47:59 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ot4sm55466795pac.17.2013.07.24.22.47.58 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 22:47:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
Date: Wed, 24 Jul 2013 22:47:56 -0700
Message-Id: <B848B5A5-9108-4509-81BA-5FE014BB413C@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Thu, 25 Jul 2013 05:48:01 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_737D8A80-DB1E-43C7-9100-80B00EEF27B8"

--Apple-Mail=_737D8A80-DB1E-43C7-9100-80B00EEF27B8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" =
<scott.m.rifenbark@intel.com> wrote:

> I am facing this issue, any clue?
> =20
> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
> =20
> This is what I have in my build/conf/local.conf:
> =20
> ...
> TCMODE =3D "external-sourcery"
> EXTERNAL_TOOLCHAIN =3D "/usr"
> TARGET_PREFIX =3D "arm-none-linux-gnueabi-"
> ...
>=20

what machine are you building for? it seems you are building for a x86 =
target and expect arm cross toolchain to build it aint gonna work.
chose a proper arm'ish machine and it should work.=

--Apple-Mail=_737D8A80-DB1E-43C7-9100-80B00EEF27B8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" =
&lt;<a =
href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; ">I am =
facing this issue, any clue?<o:p></o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; "><o:p>&nbsp;</o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif; ">ERROR: Failed to obtain =
CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not =
found<o:p></o:p></div></div><div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif; ">ERROR: Failed =
to obtain CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not =
found<o:p></o:p></div></div></div><div style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><o:p>&nbsp;</o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; ">This is what I have in my =
build/conf/local.conf:<o:p></o:p></div></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><o:p>&nbsp;</o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; ">...<o:p></o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif; ">TCMODE =3D =
"external-sourcery"<o:p></o:p></div></div><div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; =
">EXTERNAL_TOOLCHAIN =3D "/usr"<o:p></o:p></div></div><div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; ">TARGET_PREFIX =3D =
"arm-none-linux-gnueabi-"<o:p></o:p></div></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; ">...<o:p></o:p></div></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><br =
class=3D"Apple-interchange-newline"></div></blockquote></div><br><div>what=
 machine are you building for? it seems you are building for a x86 =
target and expect arm cross toolchain to build it aint gonna =
work.</div><div>chose a proper arm'ish machine and it should =
work.</div></body></html>=

--Apple-Mail=_737D8A80-DB1E-43C7-9100-80B00EEF27B8--
