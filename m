Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3887.1617108258312241872
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 05:44:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=EJq3cfro;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd0872.aruba.it (smtpcmd0872.aruba.it [62.149.156.72])
	by mail.yoctoproject.org (Postfix) with ESMTP id 23CB838C06D7
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 12:44:16 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id RDjDlUpepHTbyRDjDlE8va; Tue, 30 Mar 2021 14:44:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1617108255; bh=M8h/zLBdCR5NqOWjyyYuOhcgll3qjySWzFxWsOfLpd8=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=EJq3cfro7NiZzZrPiLxqwWneaHavUFgSF/I9rdI3IEvV/3WmDanI3UfVl7uaAfMZX
	 o8LuTtwX4lC6PXDj/fQRgMzKN4sILBYF/bxfdJXRKQJhN5djD6HDzobQ3SS4EZ6kuX
	 jpJSj96Bd0mTZu7sGYhu+ri8kMF06gsAHCflAEehIB+2GEq3a8xv/0vckCvUgyDofk
	 zHyRxo1kdZZG4hpA2c1l5Uq4KeMCHmRjQZXtTKOzBiP0GBeRuM1zJBm10BI810E82c
	 fVJD1RPTRZZsgjQPpGUdCjpRgP0qf6mNPsCu/gJVNPekSxyiORuT3Mrdp7eRZGSI/b
	 Esbf0mPcnd3kA==
Date: Tue, 30 Mar 2021 14:44:14 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <BEC32350-FB95-4EA8-8F01-754104D706D9@getmailspring.com>
Subject: Get PR value of another recipe
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfDVC7xIILxf9ZiRhcCwDqLNLzP5PUWUoMB9sbSD6fHlN8mvJuqgyB9a8zf/dI3IseWo4Nc+VR/dHlvlkTjyBoGhzszw/U/O//rWW+cLnEkqH79I1HOEr
 1VVnxMtnh0x6v/uCwqATuS9/hPux483tbJUzKIswCMxoNSJkh8kYlpdH
Content-Type: multipart/alternative; boundary="60631d1e_ec734d4_48b5"

--60631d1e_ec734d4_48b5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.

From an image recipe a-image_1.0.bb with IMAGE_INSTALL_append = " a " defined, can I get the PR value of recipe a?
a_1.0.bb:
PR="r5"

a-image_1.0.bb:
A_PR_VALUE := " <get PR of >"

MZ
Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--60631d1e_ec734d4_48b5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><br><div>=46rom an image recipe a-image=5F1.0.bb with I=
MAGE=5FINSTALL=5Fappend =3D =22 a =22 defined, can I get the PR value of&=
nbsp; recipe a=3F</div><br><div>a=5F1.0.bb:&nbsp;&nbsp; </div><div>&nbsp;=
&nbsp;&nbsp;&nbsp; PR=3D=22r5=22</div><br><div>a-image=5F1.0.bb:</div><di=
v>A=5FPR=5FVALUE :<span data-emoji-typing=3D=22true=22>=3D</span>&nbsp;=22=
 &lt;get PR of &gt;=22</div><br><div>MZ</div><br><div><signature id=3D=22=
initial=22><div><div>Sent from <a href=3D=22https://getmailspring.com/=22=
>Mailspring</a>, the best free email app for work</div></div></signature>=
</div>

--60631d1e_ec734d4_48b5--
