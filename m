Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52872E0074B; Tue, 29 Nov 2016 17:56:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80792E00519
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 17:56:55 -0800 (PST)
Received: by mail-pf0-f179.google.com with SMTP id 189so35462746pfz.3
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 17:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=BORuIPClOOycolk4Fc/UOQ5rEn031Q1FfGXqKoT50QQ=;
	b=FbKikIhJd5CQaMT/F8g4ysDyZ3XbTpikBkxwVykLdFG9XsZitVjfFKVTYG0bR+HnPw
	DtlnMqtshf/yFowaIA3HBoeVPRcZt1a7z5jM2aFRHrxUCawy77WyBEX5B4XAh7gT9lik
	U3Dll4GEzVvh0+EKi30wt1c/hgcT00f6RKvj8mnilXGus+ixOgr6Ypw7/h++Aq0sRknX
	xW8rK4H39f4gzOfMpy6/moHEptXM0IRogv1VSCefw9jUDVZqjV+us2HWxe1rlcYAogxo
	zBXahgDiaIr4cnGf6yQq4/+92dYOtSRNldk9qZvguQu9Cdoes0gGnT1L5grn6YhnD926
	s4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=BORuIPClOOycolk4Fc/UOQ5rEn031Q1FfGXqKoT50QQ=;
	b=jWftcnOLuqxudl92/tKAUZ6xmnYEY6mU662TuW7wzBXJJH8fqV22s1c0/GVr7zI3pw
	c0naARO7kbmBkt1yTRPfBCkmnEMIQ0xilJlI6I5WLIXEvLuEEvfKSXiKpB72PyFiwdsp
	bCiJwIIPMbpITEDurzUlYl5gpnC3K+y7U831TV9h96MqcX958DM+/1Cn8RYygvtkR1HR
	4SbtoruwNbCOnO2J7I1rlPpU7h2JQlsdaNFGWciXaiENbmrM6zIY0nWcPezzYcr0Lyor
	cSwPJRa+NvIRMfgqLyN2Jv80+6+BVLDCkZ5SH+oRnf1Ie2ZcW7sEv9KHqCYTxGxiOOJ6
	CU4Q==
X-Gm-Message-State: AKaTC03q1lIlTP84LwCIn0zEXoUD21Qu34V9z8Gth3H5PDfrKHOWb/ey0uFM6SW0pwcmiw==
X-Received: by 10.99.140.77 with SMTP id q13mr55089362pgn.109.1480471014726;
	Tue, 29 Nov 2016 17:56:54 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:90b8:e559:981b:73bb?
	([2601:646:8882:b8c:90b8:e559:981b:73bb])
	by smtp.gmail.com with ESMTPSA id
	p67sm83600591pfb.2.2016.11.29.17.56.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Nov 2016 17:56:54 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <D2DE8EBD-E45A-4EBC-8B3F-235C8D2E1D50@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Tue, 29 Nov 2016 17:56:52 -0800
In-Reply-To: <DB6PR0701MB18797532F7B8802879D25D7AD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>
References: <DB6PR0701MB18797532F7B8802879D25D7AD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
X-Mailer: Apple Mail (2.3251)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Seeing "dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg': Permission denied" Errors After Update
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
X-List-Received-Date: Wed, 30 Nov 2016 01:56:56 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6322CB61-2440-4012-8D9B-DEC7039FCD07"

--Apple-Mail=_6322CB61-2440-4012-8D9B-DEC7039FCD07
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 29, 2016, at 5:55 AM, Thomas Thorne =
<Thomas.Thorne@net2edge.com> wrote:
>=20
> I updated my Krogoth work area today with `git pull` and I now seeing =
error messages about being unable to open a root filesystem image for a =
raspberrypi3.  I have tried in my build area that tries to make an SD =
card image and the default one which does whatever the basic setup is.=20=

> =20
> Output from bitbake core-image-minimal attempt. I think this target =
was working before I did the pull.  rpi-basic-image, rpi-test-image =
rpi-hwup-image were also working yesterday but=20
> =20
> $ bitbake core-image-minimal
> WARNING: Host distribution "Ubuntu-16.04" has not been validated with =
this version of the build system; you may possibly experience unexpected =
failures. It is recommended that you use a tested distribution.
> Parsing recipes: 100% =
|######################################################################| =
Time: 00:00:33
> Parsing of 1922 .bb files complete (0 cached, 1922 parsed). 2475 =
targets, 146 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> =20
> Build Configuration:
> BB_VERSION        =3D "1.30.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "raspberrypi3"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.1.2"
> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 =
callconvention-hard cortexa7"
> TARGET_FPU        =3D "hard"
> meta            =20
> meta-poky       =20
> meta-yocto-bsp    =3D =
"krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
> meta-oe         =20
> meta-multimedia =20
> meta-networking =20
> meta-python       =3D =
"krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
> meta-qt5          =3D "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"
> meta-raspberrypi  =3D =
"heads/origin/krogoth:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9=E2=80=9D

This branch is not pointing to krogoth instead you have created a local =
branch called heads/origin/krogoth which is tracking master branch from =
remote.
which obviously is not going to work with krogoth so please checkout =
correct branch in meta-raspberrypi


--Apple-Mail=_6322CB61-2440-4012-8D9B-DEC7039FCD07
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 29, 2016, at 5:55 AM, Thomas Thorne &lt;<a =
href=3D"mailto:Thomas.Thorne@net2edge.com" =
class=3D"">Thomas.Thorne@net2edge.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span style=3D"font-family: =
Arial, sans-serif; color: rgb(67, 66, 68);" class=3D"">I updated my =
Krogoth work area today with `git pull` and I now seeing error messages =
about being unable to open a root filesystem image for a =
raspberrypi3.&nbsp; I have tried in my build area that tries to make an =
SD card image and the default one which does whatever the basic setup =
is.&nbsp;<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-family: Arial, =
sans-serif; color: rgb(67, 66, 68);" class=3D"">Output from bitbake =
core-image-minimal attempt. I think this target was working before I did =
the pull.&nbsp; rpi-basic-image, rpi-test-image rpi-hwup-image were also =
working yesterday but<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">$ bitbake core-image-minimal<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">WARNING: Host distribution "Ubuntu-16.04" has not been =
validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you use a tested =
distribution.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">Parsing recipes: 100% =
|######################################################################| =
Time: 00:00:33<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">Parsing of 1922 .bb files complete (0 cached, 1922 =
parsed). 2475 targets, 146 skipped, 0 masked, 0 errors.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">NOTE: Resolving any missing task queue dependencies<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">Build Configuration:<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"1.30.0"<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" =
class=3D"">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"x86_64-linux"<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">NATIVELSBSTRING&nbsp;&nbsp; =3D "universal"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"arm-poky-linux-gnueabi"<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-family: Arial, =
sans-serif; color: rgb(67, 66, 68);" =
class=3D"">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D "raspberrypi3"<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-family: Arial, =
sans-serif; color: rgb(67, 66, 68);" =
class=3D"">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; =3D "poky"<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-family: Arial, =
sans-serif; color: rgb(67, 66, 68);" =
class=3D"">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "2.1.2"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm armv7ve vfp =
thumb neon vfpv4 callconvention-hard cortexa7"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"hard"<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" =
class=3D"">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-family: Arial, =
sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D =
"krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"font-family: Arial, sans-serif; color: rgb(67, =
66, 68);" class=3D"">meta-multimedia&nbsp;&nbsp;<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-networking&nbsp;&nbsp;<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-qt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-family: Arial, sans-serif; color: rgb(67, 66, 68);" =
class=3D"">meta-raspberrypi&nbsp; =3D =
"heads/origin/krogoth:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9=E2=80=9D</s=
pan></div></div></div></blockquote><div><br class=3D""></div><div>This =
branch is not pointing to krogoth instead you have created a local =
branch called heads/origin/krogoth which is tracking master branch from =
remote.</div><div>which obviously is not going to work with krogoth so =
please checkout correct branch in meta-raspberrypi</div></div><br =
class=3D""></body></html>=

--Apple-Mail=_6322CB61-2440-4012-8D9B-DEC7039FCD07--
