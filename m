Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.964.1615909849100493084
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:50:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=kzw8vb/o;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd04132.aruba.it (smtpcmd04132.aruba.it [62.149.158.132])
	by mail.yoctoproject.org (Postfix) with ESMTP id 5E8B538C083D
	for <yocto@yoctoproject.org>; Tue, 16 Mar 2021 15:50:48 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id MBy1ltqn1Jy7DMBy1l0YfJ; Tue, 16 Mar 2021 16:50:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1615909846; bh=1g4wMrrOZEaH4IfjQucKGSoEi3MzT5saSd6OY4XBWts=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=kzw8vb/oA1vIh6r8IoDzwVAiIGxcMxsfbrWwtbMIO+T2E/qI0LY3iQ7M26OQwJ5xs
	 sPR8FG/PYRwE8LB39WZ7kCEVI0GbmLSSnAAaMgDSH08V9F4A1iq1ayfROJelx3GYZ2
	 9lTAd3PppfGgF7gw4TdAYCLCOpXw5/l2OprzC2/NHZg0chk0TIcudTnQC7JfUml3fZ
	 ewqlBNDjtNtvT92VLBkj3n/SOO8ATx4t+vqvKG2THjHZDSnuFl77RoD6cxz905Cp2G
	 6CMa06caQI1B6Q/ZRl5F/0Xx9HUBdKPxXECh7cagI6Pv8Lu6JWh/UI75fTUSp5xE4o
	 uAXvp25BRGLYA==
Date: Tue, 16 Mar 2021 16:50:44 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <60D63209-17B3-49B8-9FE0-1BFFC4F0BC39@getmailspring.com>
Subject: Which recipes put qtwebkit in my image?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfHgo2jZ5kZynFVLO2HPzAebwhjBpGcmdfePCB+2a7Rh0GqP+YJU+lNDFmLPvA8p2qfJb1v2iXf1uGCO1ZXUeDgVIn6g4fvrxrZODXLleeRv1bolN2mjy
 gOLpdOGZZ8FhtjNxkeOmt//KONlZImcfQFVbMjoU8+X/QRiRl6hYLmzA
Content-Type: multipart/alternative; boundary="6050d3d4_42eaf200_1211"

--6050d3d4_42eaf200_1211
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.I need to find which recipe installs qtwebkit in my final image.

I look in on every recipes I make but I don't find who put qtwebkit in my image.
I have the same matter with *-dev packages

I use bitbake -g but I don't find the "source" of qtwebkit.

Thanks all
Mz
Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--6050d3d4_42eaf200_1211
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.I need to find which recipe installs qtwebkit in my final ima=
ge.</div><br><div>I look in on every recipes I make but&nbsp; I don't fin=
d who put qtwebkit in my image.</div><div>I have the same matter with *-d=
ev packages</div><br><div>I use bitbake -g but I don't find the =22source=
=22 of qtwebkit.</div><br><br><div>Thanks all</div><br><div>Mz</div><br><=
div><signature id=3D=22initial=22><div><div>Sent from <a href=3D=22https:=
//getmailspring.com/=22>Mailspring</a>, the best free email app for work<=
/div></div></signature></div>

--6050d3d4_42eaf200_1211--
