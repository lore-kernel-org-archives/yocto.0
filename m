Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.12091.1623158267237455458
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 06:17:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=J4FTY5yE;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by mail.yoctoproject.org (Postfix) with ESMTP id 4044438C08EA
	for <yocto@yoctoproject.org>; Tue,  8 Jun 2021 13:17:46 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id qbbzlNFJEhNX8qbbzlQ8O4; Tue, 08 Jun 2021 15:17:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1623158264; bh=QOqFpl5jjoHseliphKLKfTNbPWG/eYcyDx4KoMvE6Rs=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=J4FTY5yEemn576BbkWAyiPbJqHL3s0PHY/uB5BBzrleitw0QVuPp1XaKcIuaPO3YX
	 OaR3HEb9uh8q1+qu22jYWfvRjRek3AUPNBOwl53vS/2NJcCrU2kuRH8qZUdlXV+I7S
	 0kqeH3FWpZVGiwZjypRjoEhA4b7BbPxV1es9z1dQXrSTV+w7u/u1inmYA+CNpVT+uA
	 NXRHiJRBuWuKlpFcwslXjNsTLfvqmx3GCxoZonst2Madkr/iLbmaifVjN3kRZ3mYg8
	 1CROZ8ve6SOx7y6kFOrDSMvsmfxnCiFkwrr0JHCZJRhyBOfjF4w0xpquQXS5IQ5S5L
	 PxHlcVyWEGO+A==
Date: Tue, 8 Jun 2021 15:17:43 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <B5712FE8-0796-4209-924F-1EC873F82B9C@getmailspring.com>
Subject: Managing chinese text input
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMykr8mEAYBkxzeyV/QggxXZ5QH1nLbJbJxpEIsSvhZLeagmIKczza5dHwHqz+W+4MS3fvnn/Z5nPKNm8ywwsKWdVBri86V4++BNGE7dBSDvmubIRdV8
 URu9VHxb9GONM+NACJAP7qc2zUyXkauio/Htd/3DuzLSM3QGL21nF2hQ
Content-Type: multipart/alternative; boundary="60bf6df7_2a0a455f_1797"

--60bf6df7_2a0a455f_1797
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.
I'm coding my own keyboard for a touch screen device based on Qt/Qml 5.6.
I'd like to implement a chinese input method.
The keyboard is embedded in the software and it is activated only inside the software.

The system is based on an old mix of Jethro/Krogoth
I know there ibus framework for this, but it is not included in yocto bsp.
Any idea about?
Best regards,
MZ

Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--60bf6df7_2a0a455f_1797
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><div>I'm coding my own keyboard for a touch screen devi=
ce based on Qt/Qml 5.6.</div><div>I'd like to implement a chinese input m=
ethod.</div><div>The keyboard is embedded in the software and it is activ=
ated only inside the software.</div><br><div>The system is based on an ol=
d mix of Jethro/Krogoth</div><br><div>I know there ibus framework for thi=
s, but it is not included in yocto bsp.</div><br><div>Any idea about=3F</=
div><br><div>Best regards,</div><div>&nbsp;&nbsp; MZ</div><br><div><signa=
ture id=3D=22initial=22><div><div>Sent from <a href=3D=22https://getmails=
pring.com/=22>Mailspring</a>, the best free email app for work</div></div=
></signature></div><img class=3D=22mailspring-open=22 alt=3D=22Sent from =
Mailspring=22 width=3D=220=22 height=3D=220=22 style=3D=22border:0; width=
:0; height:0;=22 src=3D=22https://link.getmailspring.com/open/B5712=46E8-=
0796-4209-924=46-1EC873=4682B9C=40getmailspring.com=3Fme=3Ddc68e679&amp;r=
ecipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D=22>

--60bf6df7_2a0a455f_1797--
