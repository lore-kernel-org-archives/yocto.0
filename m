Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70E43E00BB0; Wed,  2 Nov 2016 22:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F8CE00A08
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 22:41:47 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id 189so25299816pfz.3
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 22:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=BcP5IecJdLU4lL5pir+wy6FY5JgYYwYPZrBMcOBxx7U=;
	b=wAUFinGH7WqG6q9BZ9OtqAougbtcY2WNy4qButcGOj2EXVqcmfYHcc0Kn04y9x+PIF
	8+RQ7oXV+oFNL3twCsGP5wVmjFWp6FaiV+qisDOk4f/MQGZDp6QkaIwviTZp4te+0u9i
	Hp4DOf+W6rnJE3tSCEEjJPJJobxJMSMEKZLv/SMEN9M4qaOWMMeUZzxWQnMlOh2lqmbm
	PXHErmBgqaBCoDbTfJkkZTvn4kwZKTAOMAXAUWtypqm82BHge7z+5OC6A79k5EwmSBJ2
	i41Ppuq4zgoojD+wGWUv7MNutECu9Sv3UMmtBa+9Cwq8ve7oxXm4daiqW0tutdCworOz
	MMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BcP5IecJdLU4lL5pir+wy6FY5JgYYwYPZrBMcOBxx7U=;
	b=Xl43rWJNjIrTENhFioD0Sk8HIOO9qh+SB1AX0aZUOnLf0JFeFK0Vlk8DN6mTFv5joS
	liG1rs8vDcdzRQ3mKCTHjSvAkUj44LDz+e986wEEmPLsf74x3DAgUQZSg6195s7FPRXI
	cH0j6qAKfMF2x0p95BFP65j5vVIfPQ19SJekM5V7lJN7pgiQw6oKfSWC52x8VGnSr+lW
	3E7SK9zFhgkDpA8c0pUtbFxEutawCl3zzyXMn2XvFokJ9eOnV+eNVHS7pXp1VrYZ/MHk
	quFY7hBY8DejbauCDNJWMRNsfd/iY2AIMswZQzz9UzYA37oWcfar0KEs0k56pxE8ub/E
	bg8g==
X-Gm-Message-State: ABUngvd9pPFxDjcfvuac3nMIFlZgLo4w7k6qbopLMhPbE3gye/rYmlG98TkYKpQoNa6FQA==
X-Received: by 10.98.82.65 with SMTP id g62mr13752262pfb.119.1478151706693;
	Wed, 02 Nov 2016 22:41:46 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:99b5:6af1:c0c3:9e76?
	([2601:646:8882:b8c:99b5:6af1:c0c3:9e76])
	by smtp.gmail.com with ESMTPSA id
	qy2sm8906819pab.27.2016.11.02.22.41.45
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 22:41:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
Date: Wed, 2 Nov 2016 22:41:40 -0700
Message-Id: <7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
References: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
To: Thomas.Thorne@Net2Edge.com
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
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
X-List-Received-Date: Thu, 03 Nov 2016 05:41:49 -0000
X-Groupsio-MsgNum: 32793
Content-Type: multipart/signed;
	boundary="Apple-Mail=_55ABFF6D-19E5-49B6-9C1E-082C48443D4C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_55ABFF6D-19E5-49B6-9C1E-082C48443D4C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_90C89B70-FFD0-4B31-8258-A761DCE205AD"

--Apple-Mail=_90C89B70-FFD0-4B31-8258-A761DCE205AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Do you see an image with .rpi-sdimg in deploy/images/raspberrypi3

 % ls *.rpi-sdimg
rpi-hwup-image-raspberrypi3-20161103050832.rootfs.rpi-sdimg
rpi-hwup-image-raspberrypi3.rpi-sdimg@

Thats the one you should be able to dd

> On Nov 2, 2016, at 6:10 AM, Thomas A. F. Thorne MEng AUS MIET =
<Thomas.Thorne@Net2Edge.com> wrote:
>=20
> I was starting to look at using Yocto <https://www.yoctoproject.org/> =
as a system for building software images for the Raspberry Pi 3 Model B =
that I have. I wanted to try using Yocto as there are some projects at =
my office that may begin using it in the future. One of the nice points =
is that all the setup of cross compilers for your target system is =
handled by a Yocto layer. There is already a Yocto layer for the =
Raspberry Pi =
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/>(meta-raspber=
rypi <http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/>) and =
a custom meta-rpi <https://github.com/jumpnow/meta-rpi> layer someone =
has put together with a few more example images.
>=20
> I need to either cross-compile kernel modules or use Yocto as I have =
special drivers I wish to add to the Pi. These are already compiled and =
working on my Ubuntu PC and I hoped using Yocto might make it easy to =
cross compile these and any other updates in the future.
>=20
> My difficulty is that the SD Card image talked about in the =
meta-raspberrypi documentation =
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/about/> and =
several tutorials, never gets generated, even on successful builds.
>=20
> Tutorials Mentioning The Use Of dd & An .sdimg File
>=20
> Build a Raspberry Pi 2 Minimal Image with The Yocto Project =
<http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi-2-board=
-minimal-image/>
> Building Raspberry Pi Systems with Yocto =
<http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html>
> 12MB Minimal Image for Raspberry Pi using the Yocto Project =
<http://www.cnx-software.com/2013/07/05/12mb-minimal-image-for-raspberry-p=
i-using-the-yocto-project/>
> Poky Raspberry Pi SD Card Image =
<http://www.crashcourse.ca/wiki/index.php/Poky_Raspberry_Pi_SD_Card_Image>=

> Commonly Seen Error
>=20
> None of the builds I have made so far generate .sdimg files. When I =
try to add the sdcard or sdcard_image-rpi image types to IMAGE_FSTYPES I =
get messages such as:
>=20
> ERROR: =
/home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/images/rpi=
-test-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry =
'sdcard_image-rpi' - possibly invalid type name or missing support class
> Main Questions
>=20
> How do I generate the SD card image for my Pi from Yocto?
>=20
> Do I need to format the SD card manually and copy over the contents =
bit by bit?
>=20
> Why do all these tutorials suggest it would be as simple as a single =
dd command? I guess something changed in the last couple of years and =
they are all out of date.
>=20
>=20
> This was also posted at =
http://raspberrypi.stackexchange.com/questions/57155/how-do-i-used-yocto-t=
o-build-an-sdcard-image-for-my-raspberry-pi-3-model-b =
<http://raspberrypi.stackexchange.com/questions/57155/how-do-i-used-yocto-=
to-build-an-sdcard-image-for-my-raspberry-pi-3-model-b>before I realised =
it is probably more of a Yocto question than a Raspberry Pi one.
> I will be very grateful of any help or advice you can offer.  Even an =
explanation of when the generation of SD card images was dropped from =
the Yocto Project would be very helpful.
> Regards,
> --
> Thomas A. F. Thorne MEng. AUS MIET
> Software Engineer
>=20
> NET2EDGE
>=20
> Tel: +44 3450 130 030 <tel:+443450130030>
> Email: Thomas.Thorne@Net2Edge.com <mailto:Thomas.Thorne@Net2Edge.com>
> Web: http://www.Net2Edge.com/ <http://www.net2edge.com/>
>=20
> Net2Edge Limited is a company registered in England & Wales (Company =
No. 2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, =
GU30 7RL. This email transmission is confidential and intended solely =
for the person or organisation to whom it is addressed. If you are not =
the intended recipient, you must not copy, distribute or disseminate the =
information, or take any action in reliance of it. Any views expressed =
in this message are those of the individual sender, except where the =
sender specifically states them to be the views of any organisation or =
employer. If you have received this message in error, do not open any =
attachment but please notify the sender (above) and delete this message =
from your system. Please rely on your own virus check. Although all =
outbound mail is checked for viruses, no responsibility is taken by the =
sender for any damage rising out of any bug or virus infection.
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_90C89B70-FFD0-4B31-8258-A761DCE205AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Do you see an image with .rpi-sdimg =
in&nbsp;deploy/images/raspberrypi3<div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">&nbsp;% ls =
*.rpi-sdimg</div><div =
class=3D"">rpi-hwup-image-raspberrypi3-20161103050832.rootfs.rpi-sdimg</di=
v><div class=3D"">rpi-hwup-image-raspberrypi3.rpi-sdimg@</div></div><div =
class=3D""><br class=3D""></div><div class=3D"">Thats the one you should =
be able to dd&nbsp;</div><div class=3D""><br class=3D""><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Nov 2, 2016, at 6:10 AM, =
Thomas A. F. Thorne MEng AUS MIET &lt;<a =
href=3D"mailto:Thomas.Thorne@net2edge.com" =
class=3D"">Thomas.Thorne@Net2Edge.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20

    <meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8" class=3D"">
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p class=3D"">
      <meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8" class=3D"">
    </p><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">I was starting to look at using<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://www.yoctoproject.org/" rel=3D"nofollow noreferrer" =
style=3D"margin: 0px; padding: 0px; border: 0px; font-size: 15px;
        color: rgb(111, 171, 169); text-decoration: none; cursor:
        pointer;" class=3D"">Yocto</a><span =
class=3D"Apple-converted-space">&nbsp;</span>as
      a system for building software images for the Raspberry Pi 3 Model
      B that I have. I wanted to try using Yocto as there are some
      projects at my office that may begin using it in the future. One
      of the nice points is that all the setup of cross compilers for
      your target system is handled by a Yocto layer. There is already =
a<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/" =
rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;" class=3D"">Yocto layer =
for the
        Raspberry Pi</a>(<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/" =
rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;" =
class=3D"">meta-raspberrypi</a>)
      and a custom<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://github.com/jumpnow/meta-rpi" rel=3D"nofollow
        noreferrer" style=3D"margin: 0px; padding: 0px; border: 0px;
        font-size: 15px; color: rgb(111, 171, 169); text-decoration:
        none; cursor: pointer;" class=3D"">meta-rpi</a><span =
class=3D"Apple-converted-space">&nbsp;</span>layer someone has put
      together with a few more example images.</p><p style=3D"margin: =
0px 0px 1em; padding: 0px; border: 0px; font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">I need to either cross-compile kernel modules or =
use Yocto
      as I have special drivers I wish to add to the Pi. These are
      already compiled and working on my Ubuntu PC and I hoped using
      Yocto might make it easy to cross compile these and any other
      updates in the future.</p><p style=3D"margin: 0px 0px 1em; =
padding: 0px; border: 0px; font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">My difficulty is that the SD Card image talked =
about in the<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/about/"=
 rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;" =
class=3D"">meta-raspberrypi
        documentation</a><span =
class=3D"Apple-converted-space">&nbsp;</span>and
      several tutorials, never gets generated, even on successful
      builds.</p>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);" class=3D"">Tutorials =
Mentioning The
      Use Of<span class=3D"Apple-converted-space">&nbsp;</span><code =
style=3D"margin: 0px 0px 0.5em; padding: 1px 5px; border: 0px; =
font-size: 19px; font-family: Consolas, Menlo, Monaco, &quot;Lucida =
Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans =
Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier =
New&quot;, monospace, sans-serif; background-color: rgb(239, 240, 241); =
white-space: pre-wrap;" class=3D"">dd</code><span =
class=3D"Apple-converted-space">&nbsp;</span>&amp; An .sdimg File</h2>
    <ul style=3D"margin: 0px 0px 1em 30px; padding: 0px; border: 0px;
      font-size: 15px; list-style-type: disc; color: rgb(36, 39, 41);
      font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica,
      sans-serif; font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: normal; letter-spacing:
      normal; orphans: 2; text-align: left; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);" class=3D"">
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;" class=3D""><a =
href=3D"http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi-=
2-board-minimal-image/" rel=3D"nofollow noreferrer" style=3D"margin: =
0px; padding: 0px;
          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;" class=3D"">Build a =
Raspberry Pi
          2 Minimal Image with The Yocto Project</a></li>
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;" class=3D""><a =
href=3D"http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html=
" rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;" class=3D"">Building =
Raspberry Pi
          Systems with Yocto</a></li>
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;" class=3D""><a =
href=3D"http://www.cnx-software.com/2013/07/05/12mb-minimal-image-for-rasp=
berry-pi-using-the-yocto-project/" rel=3D"nofollow noreferrer" =
style=3D"margin: 0px; padding: 0px;
          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;" class=3D"">12MB =
Minimal Image
          for Raspberry Pi using the Yocto Project</a></li>
      <li style=3D"margin: 0px; padding: 0px; border: 0px; font-size:
        15px; word-wrap: break-word;" class=3D""><a =
href=3D"http://www.crashcourse.ca/wiki/index.php/Poky_Raspberry_Pi_SD_Card=
_Image" rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;" class=3D"">Poky =
Raspberry Pi SD
          Card Image</a></li>
    </ul>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);" class=3D"">Commonly Seen =
Error</h2><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">None of the builds I have made so far generate =
.sdimg
      files. When I try to add the<span =
class=3D"Apple-converted-space">&nbsp;</span><code style=3D"margin: 0px; =
padding: 1px 5px; border: 0px; font-size: 13px; font-family: Consolas, =
Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, =
&quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, =
&quot;Courier New&quot;, monospace, sans-serif; background-color: =
rgb(239, 240, 241); white-space: pre-wrap;" class=3D"">sdcard</code><span =
class=3D"Apple-converted-space">&nbsp;</span>or<span =
class=3D"Apple-converted-space">&nbsp;</span><code style=3D"margin: 0px; =
padding: 1px 5px; border: 0px; font-size: 13px; font-family: Consolas, =
Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, =
&quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, =
&quot;Courier New&quot;, monospace, sans-serif; background-color: =
rgb(239, 240, 241); white-space: pre-wrap;" =
class=3D"">sdcard_image-rpi</code><span =
class=3D"Apple-converted-space">&nbsp;</span>image types to
      IMAGE_FSTYPES I get messages such as:</p>
    <pre style=3D"margin: 0px 0px 1em; padding: 5px; border: 0px; =
font-size: 13px; width: auto; max-height: 600px; overflow: auto; =
font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, =
&quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, =
&quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, =
monospace, sans-serif; background-color: rgb(239, 240, 241); word-wrap: =
normal; color: rgb(36, 39, 41); font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: 2; text-align: left; =
text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><code style=3D"margin: 0px; =
padding: 0px; border: 0px; font-size: 13px; font-family: Consolas, =
Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, =
&quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, =
&quot;Courier New&quot;, monospace, sans-serif; background-color: =
rgb(239, 240, 241); white-space: inherit;" class=3D"">ERROR: =
/home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/images/rpi=
-test-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry =
'sdcard_image-rpi' - possibly invalid type name or missing support class
</code></pre>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);" class=3D"">Main =
Questions</h2><p style=3D"margin: 0px 0px 1em; padding: 0px; border: =
0px; font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D""><em style=3D"margin: 0px; padding: 0px; border: =
0px;
        font-size: 15px; font-style: italic;" class=3D"">How do I =
generate the SD
        card image for my Pi from Yocto?</em></p><p style=3D"margin: 0px =
0px 1em; padding: 0px; border: 0px; font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">Do I need to format the SD card manually and =
copy over the
      contents bit by bit?</p><p style=3D"margin: 0px 0px 1em; padding: =
0px; border: 0px; font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">Why do all these tutorials suggest it would be =
as simple as
      a single<span class=3D"Apple-converted-space">&nbsp;</span><code =
style=3D"margin: 0px; padding: 1px 5px; border: 0px; font-size: 13px; =
font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, =
&quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, =
&quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, =
monospace, sans-serif; background-color: rgb(239, 240, 241); =
white-space: pre-wrap;" class=3D"">dd</code><span =
class=3D"Apple-converted-space">&nbsp;</span>command? I guess something
      changed in the last couple of years and they are all out of =
date.</p><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D""><br class=3D"">
    </p><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">This was also posted at
<a class=3D"moz-txt-link-freetext" =
href=3D"http://raspberrypi.stackexchange.com/questions/57155/how-do-i-used=
-yocto-to-build-an-sdcard-image-for-my-raspberry-pi-3-model-b">http://rasp=
berrypi.stackexchange.com/questions/57155/how-do-i-used-yocto-to-build-an-=
sdcard-image-for-my-raspberry-pi-3-model-b</a>
      before I realised it is probably more of a Yocto question than a
      Raspberry Pi one.&nbsp; <br class=3D"">
    </p><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">I will be very grateful of any help or advice =
you can
      offer.&nbsp; Even an explanation of when the generation of SD card
      images was dropped from the Yocto Project would be very =
helpful.&nbsp;
      <br class=3D"">
    </p><p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; =
font-size:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);" class=3D"">Regards, <br class=3D"">
    </p>
    <div class=3D"moz-signature">-- <br class=3D"">
      Thomas A. F. Thorne MEng. AUS MIET<br class=3D"">
      <b class=3D"">Software Engineer</b><br class=3D"">
      <br class=3D"">
      <b class=3D"">NET2EDGE</b><br class=3D"">
      <br class=3D"">
      Tel: <a href=3D"tel:+443450130030" class=3D"">+44 3450 130 =
030</a><br class=3D"">
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com" =
class=3D"">Thomas.Thorne@Net2Edge.com</a><br class=3D"">
      Web: <a href=3D"http://www.net2edge.com/" =
class=3D"">http://www.Net2Edge.com/</a><br class=3D"">
      <br class=3D""><p class=3D""><small class=3D"">Net2Edge Limited is =
a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </div>

-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_90C89B70-FFD0-4B31-8258-A761DCE205AD--

--Apple-Mail=_55ABFF6D-19E5-49B6-9C1E-082C48443D4C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgazhgACgkQuwUzVZGdMxT5wgCghNSb9rzVofbUPKCe9NcIV7jb
ZUoAn3+EJdZV1mWcv/HdFXRy9tVeyoCn
=edMD
-----END PGP SIGNATURE-----

--Apple-Mail=_55ABFF6D-19E5-49B6-9C1E-082C48443D4C--
