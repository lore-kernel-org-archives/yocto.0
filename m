Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2442FE0085A; Mon, 11 Jan 2016 16:28:15 -0800 (PST)
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
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7BBAE0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 16:28:09 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id n128so52713529pfn.3
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 16:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=uKMGNKlUq8MPAX/RsLbKvkD/xEuxzaNapJ9vc7qrN0k=;
	b=mGi2AYL9N684Qg9CYsXoMd4URf1B5q2gyS/u8lI6rVg2NVXTyvtkVYeZI013Y+MdKB
	mXmAY2FNQr5rwbyDDX57JQbh9vyrLT6OrPTp26PYMKJL7id2hWsm2H7perTzoRzS4w8Q
	j1pNJ8Hb/zlTyzafNkbdfwwltcOhbgwudQ4QXjnTLRIsdJaltwtut5yAaHwv/Rd0VxLU
	/6qNJI9W5HK8IldxsbyWl9SvfJfotJ2uQPb/9dNSU8bIsPx31F0GnBT8kWjBCsk+/KJ2
	+O5OLSDZ8W2LUeNKTYTthIZS3DAYzG5EuLA/EGhMwjcRwLyOywBS2/IoquLjCrfMf9Qv
	Z+0Q==
X-Received: by 10.98.7.156 with SMTP id 28mr30387656pfh.49.1452558489145;
	Mon, 11 Jan 2016 16:28:09 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:409b:83af:918e:bae1?
	([2601:646:8802:5d5c:409b:83af:918e:bae1])
	by smtp.gmail.com with ESMTPSA id 78sm4094543pfl.36.2016.01.11.16.28.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Jan 2016 16:28:08 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <28FBBE02F609FB4B8B4F047102C7B7360144C5A322@Corp-EX10.forceamerica.com>
Date: Mon, 11 Jan 2016 16:28:02 -0800
Message-Id: <E6CF59BA-F237-4FFE-A51B-61A1FCB8417E@gmail.com>
References: <28FBBE02F609FB4B8B4F047102C7B7360144C5A27D@Corp-EX10.forceamerica.com>
	<28FBBE02F609FB4B8B4F047102C7B7360144C5A322@Corp-EX10.forceamerica.com>
To: John Schluechtermann <JSchluechtermann@FORCEAmerica.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_rootfs error due to package installation
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
X-List-Received-Date: Tue, 12 Jan 2016 00:28:15 -0000
X-Groupsio-MsgNum: 27928
Content-Type: multipart/signed;
	boundary="Apple-Mail=_878F3EDF-5DB5-4695-BAE1-4F5EE19F03DA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_878F3EDF-5DB5-4695-BAE1-4F5EE19F03DA
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EBEE5D68-9D09-436B-A722-8103A8B8020D"

--Apple-Mail=_EBEE5D68-9D09-436B-A722-8103A8B8020D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

These two seems unrelated. look under deploy/ipk folder and see if you =
have an ipk sounding with same name as missing package
it might be that its empty and deleted but the dependency remains

> On Jan 7, 2016, at 1:29 PM, John Schluechtermann =
<JSchluechtermann@FORCEAmerica.com> wrote:
>=20
> Some additional information in regards to this.  In the =
troubleshooting of it I turned on the build history by adding the =
following to my local.conf,
>           INHERIT +=3D =E2=80=9Cbuildhistory=E2=80=9D
>           BUILDHISTORY_COMMIT =3D =E2=80=9C1=E2=80=9D
>=20
> With that added to the local.conf the image creation would complete =
successfully, it was also repeatable if I removed it I would then get =
the error message about the unmet dependencies, replacing it allowed the =
build to complete.  What do I not have setup correctly?
>=20
> -          John
>=20
>=20
> I have a custom image that I am trying to pick up and get working that =
was setup and used by an individual no longer with the company.
>=20
> The image creation is failing in the do_rootfs portion and appears to =
be due to a package not being installed in the image.  I have verified =
that the package is being created which it is.  I am not sure if I need =
to modify an IMAGE_INSTALL commend in a recipe or not since I do not =
understand how the first package (packagegroup-base-extended) is being =
included.
>=20
> The error message that occurs is:
>=20
> The following packages have unmet dependencies:
> packagegroup-base-extended : Depends: packagegroup-base-nfc but it is =
not going to be installed
> E: Unable to correct problems, you have held broken packages.
>=20
> So if I understanding this correctly it is placing the =
packagegroup-base-extended package in the image but it for some reason =
cannot do that with the packagegroup-base-nfc.  Is this an order issue =
or something else.  I do not know where to look at the moment so any =
guidance on that would be greatly appreciated.
>=20
> Thanks,
> -          John
> The information contained in this message and any attachment may be =
proprietary, confidential, and privileged or subject to the work product =
doctrine and thus protected from disclosure. If the reader of this =
message is not the intended recipient, or an employee or agent =
responsible for delivering this message to the intended recipient, you =
are hereby notified that any dissemination, distribution or copying of =
this communication is strictly prohibited. If you have received this =
communication in error, please notify me immediately by replying to this =
message and deleting it and all copies and backups thereof. Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_EBEE5D68-9D09-436B-A722-8103A8B8020D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">These two seems unrelated. look under deploy/ipk folder and =
see if you have an ipk sounding with same name as missing package<div =
class=3D"">it might be that its empty and deleted but the dependency =
remains</div><div class=3D""><br class=3D""><div =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jan 7, 2016, at 1:29 PM, John Schluechtermann &lt;<a =
href=3D"mailto:JSchluechtermann@forceamerica.com" =
class=3D"">JSchluechtermann@FORCEAmerica.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">Some =
additional information in regards to this.&nbsp; In the troubleshooting =
of it I turned on the build history by adding the following to my =
local.conf,</span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INH=
ERIT +=3D =E2=80=9Cbuildhistory=E2=80=9D</span></div><div style=3D"margin:=
 0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;BUILDHISTORY_COMMIT =3D =E2=80=9C1=E2=80=9D</span></div><p =
class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;"><span style=3D"color: rgb(31, 73, =
125);" class=3D"">&nbsp;</span></p><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">With that =
added to the local.conf the image creation would complete successfully, =
it was also repeatable if I removed it I would then get the error =
message about the unmet dependencies, replacing it allowed the build to =
complete.&nbsp; What do I not have setup correctly?</span></div><p =
class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;"><span style=3D"color: rgb(31, 73, =
125);" class=3D"">&nbsp;</span></p><div style=3D"margin: 0in 0in =
0.0001pt 0.5in; font-size: 11pt; font-family: Calibri, sans-serif; =
text-indent: -0.25in;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D""><span class=3D"">-<span style=3D"font-style: normal; =
font-variant: normal; font-weight: normal; font-size: 7pt; line-height: =
normal; font-family: 'Times New Roman';" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span></span></span><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">John</span></div><p =
class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;"><span style=3D"color: rgb(31, 73, =
125);" class=3D"">&nbsp;</span></p><div class=3D""><div =
style=3D"border-style: solid none none; border-top-color: rgb(181, 196, =
223); border-top-width: 1pt; padding: 3pt 0in 0in;" class=3D""><p =
class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;"><span style=3D"font-size: 10pt; =
font-family: Tahoma, sans-serif;" =
class=3D"">&nbsp;</span></p></div></div><div class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">I have a custom image that I am trying =
to pick up and get working that was setup and used by an individual no =
longer with the company.</div><p class=3D"MsoNormal" style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;</p><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">The image =
creation is failing in the do_rootfs portion and appears to be due to a =
package not being installed in the image.&nbsp; I have verified that the =
package is being created which it is.&nbsp; I am not sure if I need to =
modify an IMAGE_INSTALL commend in a recipe or not since I do not =
understand how the first package (packagegroup-base-extended) is being =
included.</div><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;">&nbsp;</p><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">The error message that occurs =
is:</div><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;">&nbsp;</p><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">The following packages have unmet =
dependencies:</div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif;" =
class=3D"">packagegroup-base-extended : Depends: packagegroup-base-nfc =
but it is not going to be installed</div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">E: Unable to correct problems, you have held broken =
packages.</div><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;">&nbsp;</p><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">So if I understanding this correctly it =
is placing the packagegroup-base-extended package in the image but it =
for some reason cannot do that with the packagegroup-base-nfc.&nbsp; Is =
this an order issue or something else.&nbsp; I do not know where to look =
at the moment so any guidance on that would be greatly =
appreciated.</div><p class=3D"MsoNormal" style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif;">&nbsp;</p><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks,</div><div style=3D"margin: 0in 0in 0.0001pt 0.5in; =
font-size: 11pt; font-family: Calibri, sans-serif; text-indent: =
-0.25in;" class=3D"">-<span style=3D"font-size: 7pt; font-family: 'Times =
New Roman', serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span>John</div></div></div>=
<div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: =
rgb(0, 0, 255);" class=3D""><span class=3D"auto-style1"><em class=3D"">The=
 information contained in this message and any attachment may be =
proprietary, confidential, and privileged or subject to the work product =
doctrine and thus protected from disclosure. If the reader of this =
message is not the intended recipient, or an employee or agent =
responsible for delivering this message to the intended recipient, you =
are hereby notified that any dissemination, distribution or copying of =
this communication is strictly prohibited. If you have received this =
communication in error, please notify me immediately by replying to this =
message and deleting it and all copies and backups thereof. Thank =
you.</em></span></div><span style=3D"font-family: ArialMT; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: ArialMT; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
ArialMT; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: ArialMT; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: ArialMT; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: ArialMT; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></div></body></html>=

--Apple-Mail=_EBEE5D68-9D09-436B-A722-8103A8B8020D--

--Apple-Mail=_878F3EDF-5DB5-4695-BAE1-4F5EE19F03DA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaUSJcACgkQuwUzVZGdMxRsnwCgg7++/phAdUqt2O/HWke7z277
ltsAn3BCPG8aRE/ydxO4C9LQV3VPcESg
=ERTs
-----END PGP SIGNATURE-----

--Apple-Mail=_878F3EDF-5DB5-4695-BAE1-4F5EE19F03DA--
