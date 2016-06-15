Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71419E00D2F; Wed, 15 Jun 2016 12:23:33 -0700 (PDT)
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
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4066FE00D3C
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:23:26 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id hf6so2062024pac.2
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Dvxc/3KtdkTeynquEdhf7bitlUFVdXKZg0CsW67SlhM=;
	b=yVt4BkjoE0Fiws2vuuVCPgZ+rzYdQ9v8vUHkxFdEucTqfwlZ7+GuItrxKOieCSCncI
	opb0WIF7bjCtxyxYGzs7ZFMQg1SxOByh4pIpyz6QOjJ+MSb9POIUpOzp/yZdt/0VY8Ll
	6s88VIzuP9edkoNK5kGWEqd9+//RRY+wUsRT9Y6oGL9tYbtSzEkrWBtMld+wcgYlKUoN
	S/X1l8D7HbOOVDu2rwZCuGNxS7196MxgKRLoGbQUy38p2jfU5Eh17HH4xNmnd7c9OOfX
	hlnO+gHk1MR4xNMP+pn5e1ALiURoUtv0ycOYcneVElxLpm/Eyloq57G4OvtCCJ6nPOM1
	OFsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Dvxc/3KtdkTeynquEdhf7bitlUFVdXKZg0CsW67SlhM=;
	b=TdMwcGbbD1CyJATgJQSogUOhhNXORu/7KwJW61pDqTWFlYhaNgY465WPEU7G8IjzAa
	UwbElFwx2qm6KSX08921aoUEk27iUT6WufVoM2KP1avo1nruoK01urdXHnR0X4U1maLg
	3YAO9PPibbl+zHBSLHzNBI/fjEelgjGth2N4/r4tk3FtcchBIdKdOWDjX80VIZdOqZAP
	zVtzLbDAr/NsvWLMxVR/OxZRgVsDR2DtLYc4AolhDxauld2qvD7e4xRIh3HHPvzj382L
	/tBhCELPTkz6QfPcYs0nB/CTNJYr0TZKuZ9dlsRlnJrXLMdwzzn2ruRvV7jL6Fsp+emn
	mwZw==
X-Gm-Message-State: ALyK8tIRejdPsvbpm+omeGaI+uI39ehBrO6bK+JXZ4hkqQXxct4K7AUPLUQa8JWbmOXw4g==
X-Received: by 10.67.15.72 with SMTP id fm8mr397500pad.50.1466018606400;
	Wed, 15 Jun 2016 12:23:26 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:115c:1c9f:7ed3:245b:56cd?
	([2601:647:4c00:115c:1c9f:7ed3:245b:56cd])
	by smtp.gmail.com with ESMTPSA id
	o193sm35038880pfo.12.2016.06.15.12.23.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 12:23:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
Date: Wed, 15 Jun 2016 12:23:25 -0700
Message-Id: <FD507427-AD98-47F5-9695-150B5A8CEAEF@gmail.com>
References: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
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
X-List-Received-Date: Wed, 15 Jun 2016 19:23:33 -0000
X-Groupsio-MsgNum: 30556
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E2A92232-421A-4B7D-A6B8-6E5D0AA5E91E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E2A92232-421A-4B7D-A6B8-6E5D0AA5E91E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1C6FC871-FE08-4F33-848E-E2E210735DF1"

--Apple-Mail=_1C6FC871-FE08-4F33-848E-E2E210735DF1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Jun 15, 2016, at 1:27 AM, Anicic Damir (PSI) <damir.anicic@psi.ch> =
wrote:
>=20
> Hi !
>=20
> I am trying to build Yocto 2.1 for PowerPC64, e6500 CPU.
>=20
> I managed to build, with warnings that some steps will be postponed to =
first boot,
> but if I add "read-only-rootfs" then warnings change to errors.
>=20
> The problem seems to be missing qemu-ppc64, see down "exit code: 127".
> qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are =
built, but qemu-ppc64 is missing.
>=20
> If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin =
which is in PATH),
> then I get "Invalid instruction" from my qemu-ppc64.
>=20
>=20
> My build (core-image-psi-gfa-cmd is basically core-image-full-cmdline =
):
>=20
>   Build Configuration:
>   BB_VERSION        =3D "1.30.0"
>   BUILD_SYS         =3D "x86_64-linux"
>   NATIVELSBSTRING   =3D "ScientificLinux-6.4"
>   TARGET_SYS        =3D "powerpc64-poky-linux"
>   MACHINE           =3D "powerpc64-ppc64e6500"
>   DISTRO            =3D "gfa-ppc64e6500"
>   DISTRO_VERSION    =3D "2.1"
>   TUNE_FEATURES     =3D "m64 fpu-hard e6500 altivec"
>   TARGET_FPU        =3D ""
>   meta
>   meta-poky
>   meta-yocto-bsp
>   meta-gfa          =3D =
"krogoth-gfa-v2:898a78357e72fb80f1f8e26ba90bad5b7b054a4f"
>=20
>   NOTE: Preparing RunQueue
>   NOTE: Executing SetScene Tasks
>   NOTE: Executing RunQueue Tasks
>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstall =
intercept hook 'update_gio_module_cache' failed (exit code: 127)! See =
log for details!
>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstalls =
for the following packages will be postponed for first boot: =
libglib-2.0-0
>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] =
core-image-psi-gfa-cmd: found a warning message in the logfile (keyword =
'WARNING:'):
>   [log_check] WARNING: The postinstall intercept hook =
'update_gio_module_cache' failed (exit code: 127)! See log for details!
>=20
>   WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] =
core-image-psi-gfa-cmd: found a warning message in the logfile (keyword =
'WARNING:'):
>   [log_check] WARNING: The postinstalls for the following packages =
will be postponed for first boot: libglib-2
>=20
>=20
> If I build core-image-psi-gfa-cmd ( which is basicaly =
core-image-lsb-sdk ),
> then there are few more postinstall problems, too:
>   The postinstalls for the following packages will be postponed for =
first boot:
>                  libgdk-pixbuf-2.0-loader-ico =
libgdk-pixbuf-2.0-loader-bmp libgdk-pixbuf-2.0-loader-jpeg
>                  libgdk-pixbuf-2.0-loader-png   =
libgdk-pixbuf-2.0-loader-gif libgdk-pixbuf-2.0-loader-xpm =
libgdk-pixbuf-2.0-loader-ani
>=20
> all with the same qemu-ppc64 problem.


we do not have qemuppc64 working correctly in all cases. We now depend =
on Qemu to do some compile tasks which are not easily cross compilable. =
Those will fail.

>=20
>=20
> I have additionally eudev postinstall problem (generating hwdb.bin) =
-probably also qemu related
>=20
>=20
> Please help.
>=20
> Kind regards,
>=20
> Damir
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_1C6FC871-FE08-4F33-848E-E2E210735DF1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 15, 2016, at 1:27 AM, Anicic Damir (PSI) &lt;<a =
href=3D"mailto:damir.anicic@psi.ch" class=3D"">damir.anicic@psi.ch</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; direction: ltr; =
font-family: Tahoma; font-size: 10pt;" class=3D"">Hi !<br class=3D""><br =
class=3D"">I am trying to build Yocto 2.1 for PowerPC64, e6500 CPU.<br =
class=3D""><br class=3D"">I managed to build, with warnings that some =
steps will be postponed to first boot,<br class=3D"">but if I add =
"read-only-rootfs" then warnings change to errors.<br class=3D""><br =
class=3D"">The problem seems to be missing qemu-ppc64, see down "exit =
code: 127".<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* =
) are built, but qemu-ppc64 is missing.<br class=3D""><br class=3D"">If =
I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin which =
is in PATH),<br class=3D"">then I get "Invalid instruction" from my =
qemu-ppc64.<br class=3D""><br class=3D""><br class=3D"">My build =
(core-image-psi-gfa-cmd is basically core-image-full-cmdline ):<br =
class=3D""><br class=3D"">&nbsp; Build Configuration:<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&nbsp; =
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.30.0"<br =
class=3D"">&nbsp; =
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"x86_64-linux"<br class=3D"">&nbsp; NATIVELSBSTRING&nbsp;&nbsp; =3D =
"ScientificLinux-6.4"<br class=3D"">&nbsp; =
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"powerpc64-poky-linux"<br class=3D"">&nbsp; =
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"powerpc64-ppc64e6500"<br class=3D"">&nbsp; =
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "gfa-ppc64e6500"<br class=3D"">&nbsp; =
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "2.1"<br class=3D"">&nbsp; =
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "m64 fpu-hard e6500 =
altivec"<br class=3D"">&nbsp; =
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D ""<br =
class=3D"">&nbsp; =
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">&nbsp; =
meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&nbsp; =
meta-yocto-bsp&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">&nbsp; =
meta-gfa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"krogoth-gfa-v2:898a78357e72fb80f1f8e26ba90bad5b7b054a4f"<br =
class=3D""><br class=3D"">&nbsp; NOTE: Preparing RunQueue<br =
class=3D"">&nbsp; NOTE: Executing SetScene Tasks<br class=3D"">&nbsp; =
NOTE: Executing RunQueue Tasks<br class=3D"">&nbsp; WARNING: =
core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstall intercept hook =
'update_gio_module_cache' failed (exit code: 127)! See log for =
details!<br class=3D"">&nbsp; WARNING: core-image-psi-gfa-cmd-1.0-r0 =
do_rootfs: The postinstalls for the following packages will be postponed =
for first boot: libglib-2.0-0<br class=3D"">&nbsp; WARNING: =
core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] =
core-image-psi-gfa-cmd: found a warning message in the logfile (keyword =
'WARNING:'):<br class=3D"">&nbsp; [log_check] WARNING: The postinstall =
intercept hook 'update_gio_module_cache' failed (exit code: 127)! See =
log for details!<br class=3D""><br class=3D"">&nbsp; WARNING: =
core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] =
core-image-psi-gfa-cmd: found a warning message in the logfile (keyword =
'WARNING:'):<br class=3D"">&nbsp; [log_check] WARNING: The postinstalls =
for the following packages will be postponed for first boot: =
libglib-2<br class=3D""><br class=3D""><br class=3D"">If I build =
core-image-psi-gfa-cmd ( which is basicaly core-image-lsb-sdk ),<br =
class=3D"">then there are few more postinstall problems, too:<br =
class=3D"">&nbsp; The postinstalls for the following packages will be =
postponed for first boot:<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libgdk-pixbuf-2.0-loader-ico =
libgdk-pixbuf-2.0-loader-bmp libgdk-pixbuf-2.0-loader-jpeg<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
libgdk-pixbuf-2.0-loader-png&nbsp;&nbsp; libgdk-pixbuf-2.0-loader-gif =
libgdk-pixbuf-2.0-loader-xpm libgdk-pixbuf-2.0-loader-ani<br =
class=3D""><br class=3D"">all with the same qemu-ppc64 problem.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div><br =
class=3D""></div><div>we do not have qemuppc64 working correctly in all =
cases. We now depend on Qemu to do some compile tasks which are not =
easily cross compilable. Those will fail.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; direction: ltr; font-family: =
Tahoma; font-size: 10pt;" class=3D""><br class=3D""><br class=3D"">I =
have additionally eudev postinstall problem (generating hwdb.bin) =
-probably also qemu related<br class=3D""><br class=3D""><br =
class=3D"">Please help.<br class=3D""><br class=3D"">Kind regards,<br =
class=3D""><br class=3D"">Damir<br class=3D""><br class=3D""><br =
class=3D""></div><span style=3D"font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_1C6FC871-FE08-4F33-848E-E2E210735DF1--

--Apple-Mail=_E2A92232-421A-4B7D-A6B8-6E5D0AA5E91E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldhqy0ACgkQuwUzVZGdMxQzRwCgkZFU+PxzxnyZtHjfUx2AzMOg
voYAn1guyL4fKmtTt1Y2DgoVkLczyjtH
=Vn46
-----END PGP SIGNATURE-----

--Apple-Mail=_E2A92232-421A-4B7D-A6B8-6E5D0AA5E91E--
