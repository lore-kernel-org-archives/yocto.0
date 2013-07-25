Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F2F5E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 23:11:33 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id 3so251523pdj.5
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 23:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=mfmHnSiZjKdYFnkIPR6W41ZD05Yi6MC2EH/Kl05fAGo=;
	b=nx3zLlU1kS6H9b940SonLJjK0dRuq2V/dqHd04kC8mjRUqQcP91JLGJA3UeXAuft5n
	d9FBQF6gDfnvgl0ouFah/A1DKUeocsyn8/irWJAdojKsNIt1Kw1Rg45y7zUOMIudA/RW
	v66IYGu0ddceooTBaOycogQX/lE5sDOTFt1IzRDWHqAOO1ZE7Dp7Hrs3SRDSPNgxqdDF
	appEqCwNUkxr4CvMGTX5ryD50gOikK77MThnNV9En6NgMqcEx/gt7xyX6A//BTRRnHpF
	rRG3AvJgS0PkrOMAm9WY0qIerpXUD4du6lmUNziZQ30r4NI/LF27zRItyJNROVg0H3RK
	bnJQ==
X-Received: by 10.66.229.106 with SMTP id sp10mr47776613pac.117.1374732693157; 
	Wed, 24 Jul 2013 23:11:33 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ib9sm51900005pbc.43.2013.07.24.23.11.29 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 23:11:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAOMwXhNLwA5Rod1uz6KTu4Em55ekvORK4_OfE-LYZRvCeFitTg@mail.gmail.com>
Date: Wed, 24 Jul 2013 23:11:29 -0700
Message-Id: <87A93D93-46EB-49B9-B924-FFE60C6348CB@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<B848B5A5-9108-4509-81BA-5FE014BB413C@gmail.com>
	<CAOMwXhP8p2=qK2jC+cATw5LuMjydL2YT3PGk=qQUNgJuLOR52w@mail.gmail.com>
	<CAOMwXhNLwA5Rod1uz6KTu4Em55ekvORK4_OfE-LYZRvCeFitTg@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
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
X-List-Received-Date: Thu, 25 Jul 2013 06:11:34 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8276600B-48D8-4637-A5AD-7CE4732452BD"

--Apple-Mail=_8276600B-48D8-4637-A5AD-7CE4732452BD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jul 24, 2013, at 11:02 PM, Laszlo Papp <lpapp@kde.org> wrote:

> I also filed a bugreport with regards to this: =
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4901

OK thanks.

>=20
>=20
> On Thu, Jul 25, 2013 at 6:57 AM, Laszlo Papp <lpapp@kde.org> wrote:
> You seem to have missed this email: =
https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html


yes I was reading the digest serially

>=20
>=20
> On Thu, Jul 25, 2013 at 6:47 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" =
<scott.m.rifenbark@intel.com> wrote:
>=20
>> I am facing this issue, any clue?
>> =20
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of =
'/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
>> =20
>> This is what I have in my build/conf/local.conf:
>> =20
>> ...
>> TCMODE =3D "external-sourcery"
>> EXTERNAL_TOOLCHAIN =3D "/usr"
>> TARGET_PREFIX =3D "arm-none-linux-gnueabi-"
>> ...
>>=20
>=20
> what machine are you building for? it seems you are building for a x86 =
target and expect arm cross toolchain to build it aint gonna work.
> chose a proper arm'ish machine and it should work.
>=20
>=20


--Apple-Mail=_8276600B-48D8-4637-A5AD-7CE4732452BD
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Jul 24, 2013, at 11:02 PM, Laszlo Papp &lt;<a href="mailto:lpapp@kde.org">lpapp@kde.org</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">I also filed a bugreport with regards to this:&nbsp;<a href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4901">https://bugzilla.yoctoproject.org/show_bug.cgi?id=4901</a></div></blockquote><div><br></div><div>OK thanks.</div><br><blockquote type="cite"><div class="gmail_extra"><br><br>
<div class="gmail_quote">On Thu, Jul 25, 2013 at 6:57 AM, Laszlo Papp <span dir="ltr">&lt;<a href="mailto:lpapp@kde.org" target="_blank">lpapp@kde.org</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">
<div dir="ltr">You seem to have missed this email:&nbsp;<a href="https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html" target="_blank">https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html</a></div></blockquote></div></div></blockquote><div><br></div><div><br></div><div>yes I was reading the digest serially</div><br><blockquote type="cite"><div class="gmail_extra"><div class="gmail_quote"><blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">
<div class="HOEnZb"><div class="h5"><div class="gmail_extra">
<br><br><div class="gmail_quote">On Thu, Jul 25, 2013 at 6:47 AM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div style="word-wrap:break-word"><div><br><div><div>On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" &lt;<a href="mailto:scott.m.rifenbark@intel.com" target="_blank">scott.m.rifenbark@intel.com</a>&gt; wrote:</div>

<br><blockquote type="cite"><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">I am facing this issue, any clue?<u></u><u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif"><u></u>&nbsp;<u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div><div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found<u></u><u></u></div>

</div><div><div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found<u></u><u></u></div>

</div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif"><u></u>&nbsp;<u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">This is what I have in my build/conf/local.conf:<u></u><u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif"><u></u>&nbsp;<u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">...<u></u><u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div><div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">TCMODE = "external-sourcery"<u></u><u></u></div></div><div><div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">

EXTERNAL_TOOLCHAIN = "/usr"<u></u><u></u></div></div><div><div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">TARGET_PREFIX = "arm-none-linux-gnueabi-"<u></u><u></u></div>

</div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style="margin:0in 0in 0.0001pt;font-size:12pt;font-family:'Times New Roman',serif">...<u></u><u></u></div></div><div style="font-family:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<br></div></blockquote></div><br></div><div>what machine are you building for? it seems you are building for a x86 target and expect arm cross toolchain to build it aint gonna work.</div><div>chose a proper arm'ish machine and it should work.</div>

</div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</blockquote></div><br></body></html>

--Apple-Mail=_8276600B-48D8-4637-A5AD-7CE4732452BD--
