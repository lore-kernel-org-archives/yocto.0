Return-Path: <dbensoussan@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A623E00A93; Fri, 21 Apr 2017 04:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f179.google.com (mail-yb0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6A4E0095F
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 04:37:55 -0700 (PDT)
Received: by mail-yb0-f179.google.com with SMTP id 11so37930862ybw.1
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 04:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=synapticon-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=HDkfTBR0/VLsYoY2nJmHJaNOyw7SQCTwW4j8FbvHvQU=;
	b=fYorVB0LKxS4ZHJGIW6EA1TwcNKJNzU0SxjrYCwu9fQGtAM1F5c3rWKaN2nFthTSkq
	6jok3OGQL6cAEx+xTbjW+DkVz/o/pYBDkRGnj3wtLNkW3Qu2fYwOM3oItP+1ykfEkzyP
	eocdym6QDLUe8gXm3/uD2OnrB6XMGKfLwE5A0xHOMaJO9Q5l5WQZ/ysbe3e8Jd7yRNBl
	KMyamgCts3OgJGtVfBilyE3zmAMldmWDbrjYnInU06CZxGSSAI2DPPenuHQhtI0TGbwB
	7tO/emKDZ4ThlLP2y6zLkKujyRDI/ybyGAb5ow7rPrMiSMo/ALue4aS0g96O9H5aK+o1
	XSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HDkfTBR0/VLsYoY2nJmHJaNOyw7SQCTwW4j8FbvHvQU=;
	b=d+nW56fenm7Il1CY9q1stmNv3uA7MS07p/aTehS7i8qEHvNch9pvCwQzM+sMqzdwcX
	0h6QHZQt7gn9b6Uo7Hmn4Rpy7948lnfxIqJzp/jJEp6W7RegbOgcjpJGZT/w3+77EH01
	A+ODKGmAwIpdHBD0T6VKxAI8XWxenzW7vJEI6qTh9NS8+qCluRpeVgYjd3je3YFiEFbn
	CJz0tUCkG1JZNjBk8vOvchlGZAgKpIXpySbn8GWBUzG2MlH4U8/CCJE2Q1xmQJWDJ6Pf
	twkDM7vzwCh6r2ZjTKNBRPLLL0m+FM5vpBVrZBwdnbdhg9hiUjSFHvdTi+ywIzix4UKo
	N8Ww==
X-Gm-Message-State: AN3rC/5bAJzOVmtpR4pHzk3p/YmByPfwba2RdIGKYhN/8aHGpgGoclxi
	q3MtFWKsu0jYrD0cjY9hmTmYjyVGV1IK
X-Received: by 10.37.215.15 with SMTP id o15mr8856513ybg.119.1492774674539;
	Fri, 21 Apr 2017 04:37:54 -0700 (PDT)
MIME-Version: 1.0
From: David Bensoussan <dbensoussan@synapticon.com>
Date: Fri, 21 Apr 2017 11:37:44 +0000
Message-ID: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 21 Apr 2017 08:52:36 -0700
Subject: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Fri, 21 Apr 2017 11:37:58 -0000
Content-Type: multipart/alternative; boundary=94eb2c09dc3634bb16054dabb0d4

--94eb2c09dc3634bb16054dabb0d4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I tried to solve the issue by myself, read on the documentation and check
the mailing list, but I couldn't find the information I was looking for.
The documentation was of a great help as a guideline but I now don't know
how to proceed.

I wanted to generate an sdk and met these errors while executing:
$ bitbake core-image-base -c do_populate_sdk

Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 packagegroup-core-standalone-sdk-target : Depends: glibc-gconv-cp1252 but
it is not installable
                                           Depends: glibc-gconv-ibm850 but
it is not installable
                                           Depends: glibc-gconv-iso8859-1
but it is not installable
                                           Depends: glibc-gconv-iso8859-15
but it is not installable
                                           Depends: glibc-localedata-i18n
but it is not installable
E: Unable to correct problems, you have held broken packages.

A long time ago, I generated one was using the adt-installer but it has
changed since.
I also tried to add in local.conf:
EXTRA_IMAGE_FEATURES =3D "tools-sdk"
DISTRO_FEATURES_LIBC =3D "libc-locales libc-locale-code"

But nothing worked. I am working with RPI3 machine under Jethro branch. My
first test was to try the same setup with qemuarm64 machine, it failed
exactly the same way. It seems there are conflicts in packages, but I don't
understand how to track the error at this point.

It raised multiple questions:
Am I doing it wrong? Did I miss a flag? What does this error exactly mean?

Thank you for your time

Regards,
--=20

*David bensoussan*
Roboticist / Embedded Software Engineer
------------------------------

*Synapticon* | Robotic Control Systems
Mobile: 015779804515
Fax: +49 7031 / 30 478 -99

*synapticon.com* <https://www.synapticon.com/> | Twitter
<https://twitter.com/#!/synapticon_co> | Facebook
<https://fb.com/Synapticon>

Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended solely for the use of the individual or entity to whom they are
addressed. Please notify the sender immediately if you have received this
e-mail by mistake and delete it from your system.

--94eb2c09dc3634bb16054dabb0d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br>I tried to solve the issue by myself, r=
ead on the documentation and check the mailing list, but I couldn&#39;t fin=
d the information I was looking for. The documentation was of a great help =
as a guideline but I now don&#39;t know how to proceed.<br><br>I wanted to =
generate an sdk and met these errors while executing:<br>$ bitbake core-ima=
ge-base -c do_populate_sdk<br><br>Building dependency tree...</div><div>Rea=
ding state information...</div><div>Some packages could not be installed. T=
his may mean that you have</div><div>requested an impossible situation or i=
f you are using the unstable</div><div>distribution that some required pack=
ages have not yet been created</div><div>or been moved out of Incoming.</di=
v><div>The following information may help to resolve the situation:</div><d=
iv><br></div><div>The following packages have unmet dependencies:</div><div=
>=C2=A0packagegroup-core-standalone-sdk-target : Depends: glibc-gconv-cp125=
2 but it is not installable</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Depends: glibc-gconv-ibm850 bu=
t it is not installable</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Depends: glibc-gconv-iso8859-1 but it=
 is not installable</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Depends: glibc-gconv-iso8859-15 but it is=
 not installable</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Depends: glibc-localedata-i18n but it is not=
 installable</div><div>E: Unable to correct problems, you have held broken =
packages.</div><div><br>A long time ago, I generated one was using the adt-=
installer but it has changed since.<br>I also tried to add in local.conf:</=
div><div>EXTRA_IMAGE_FEATURES =3D &quot;tools-sdk&quot;<br>DISTRO_FEATURES_=
LIBC =3D &quot;libc-locales libc-locale-code&quot;<br><br>But nothing worke=
d. I am working with RPI3 machine under Jethro branch. My first test was to=
 try the same setup with qemuarm64 machine, it failed exactly the same way.=
 It seems there are conflicts in packages, but I don&#39;t understand how t=
o track the error at this point.<br><br>It raised multiple questions:<br>Am=
 I doing it wrong? Did I miss a flag? What does this error exactly mean?<br=
><br>Thank you for your time<br><br>Regards,<br></div></div><div dir=3D"ltr=
">-- <br></div><div data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p =
id=3D"inbox-inbox-person-name" style=3D"box-sizing:border-box;font-family:a=
rial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0,0,0);padding:0px;=
margin:1em 0px"><strong style=3D"box-sizing:border-box">David bensoussan</s=
trong><br style=3D"box-sizing:border-box">Roboticist / Embedded Software En=
gineer</p><hr style=3D"box-sizing:border-box;margin:0px;padding:0px;height:=
1px;background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;background-color:rgb(229,27,65);border:none;color:rgb(17,17,17);font=
-family:arial,helvetica,sans-serif;font-size:13.3333px"><p id=3D"inbox-inbo=
x-tag-line" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0);padding:0px;margin:1em 0px"><strong =
style=3D"box-sizing:border-box">Synapticon</strong><span class=3D"inbox-inb=
ox-Apple-converted-space">=C2=A0</span>| Robotic Control Systems</p><table =
cellpadding=3D"0" cellspacing=3D"0" style=3D"box-sizing:border-box;font-fam=
ily:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(17,17,17);padd=
ing:0px"><tbody style=3D"box-sizing:border-box"><tr style=3D"box-sizing:bor=
der-box"><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15=
px 3px 0px">Mobile:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0)=
;padding:0px 15px 3px 0px">015779804515</td></tr><tr style=3D"box-sizing:bo=
rder-box"><td style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 1=
5px 3px 0px">Fax:</td><td style=3D"box-sizing:border-box;color:rgb(0,0,0);p=
adding:0px 15px 3px 0px">+49 7031 / 30 478 -99</td></tr></tbody></table><p =
style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;font-=
size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><a href=3D"http=
s://www.synapticon.com/" style=3D"box-sizing:border-box;color:rgb(1,81,154)=
"><strong style=3D"box-sizing:border-box">synapticon.com</strong></a><span =
class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span>|<span class=3D"in=
box-inbox-Apple-converted-space">=C2=A0</span><a href=3D"https://twitter.co=
m/#!/synapticon_co" style=3D"box-sizing:border-box;color:rgb(1,81,154)">Twi=
tter</a><span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span>|<sp=
an class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><a href=3D"http=
s://fb.com/Synapticon" style=3D"box-sizing:border-box;color:rgb(1,81,154)">=
Facebook</a></p><p id=3D"inbox-inbox-address" style=3D"box-sizing:border-bo=
x;font-family:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(153,=
153,153);padding:0px;margin:1em 0px">Synapticon GmbH | Daimlerstra=C3=9Fe 2=
6 | 71101 Sch=C3=B6naich, Germany<span class=3D"inbox-inbox-Apple-converted=
-space">=C2=A0</span><br style=3D"box-sizing:border-box">Secretary +49 7031=
 / 30 478 -0 | Managing Director: Nikolai Ensslen<span class=3D"inbox-inbox=
-Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:border-box">Am=
tsgericht Stuttgart HRB 756076 | USt-ID DE271647127<span class=3D"inbox-inb=
ox-Apple-converted-space">=C2=A0</span><br style=3D"box-sizing:border-box">=
</p><p style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-seri=
f;font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"></p><p i=
d=3D"inbox-inbox-confidentiality" style=3D"box-sizing:border-box;font-famil=
y:arial,helvetica,sans-serif;font-size:7.5pt;color:rgb(153,153,153);padding=
:0px;margin:1em 0px;width:450px">This message and any files transmitted wit=
h it are confidential and intended solely for the use of the individual or =
entity to whom they are addressed. Please notify the sender immediately if =
you have received this e-mail by mistake and delete it from your system.</p=
></div></div>

--94eb2c09dc3634bb16054dabb0d4--
