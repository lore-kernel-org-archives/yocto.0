Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.295.1623081669506117055
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jun 2021 09:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=g3BMd3ZV;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd0642.aruba.it (smtpcmd0642.aruba.it [62.149.156.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id A68AB38C060F
	for <yocto@yoctoproject.org>; Mon,  7 Jun 2021 16:01:08 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id qHgYlqzG0jj2KqHgYlfQII; Mon, 07 Jun 2021 18:01:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1623081666; bh=MotpLRcBUqn0/k79J2K12srWQUMDxUOyQ1sQW/oScdA=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=g3BMd3ZVuBhlthLTZQ4sTdG2N5Ph6oYmvc8Jm5mHk4lrXNavDqUa+h/+ZEUql1sgQ
	 N4HSb0baPjfr6BlQJBiFtyqC7681fWE8fhDhpv1ls3YZ4jbYCiQYGEM2E6ilDZBr0A
	 CmF31wNHmufHYQlI2htLN1s8lVhH1/aw9HVOZ7eGnzcpHvdcnc9T237eGbxh12e4NX
	 J+0weKJtdNcVeRmWhCJnIEMwl7ni5oourTPyyIuLpKvRXssAwxWLoHK9rbmRJjDm1A
	 pTJ/Ct7FvI9ABHFU+8F4eRHzvXQpEgakIiye1a/Iuu+/XRMJsUf+kJO+y+aOTeQnxV
	 5bXG1Ait6HvJw==
Date: Mon, 7 Jun 2021 18:01:05 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <B2B34E45-5936-4670-A189-8E686F499F87@getmailspring.com>
Subject: How to use debug symbols from recipe-dbg package?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfOFBrTH5c3N8oYaR/XkKsCh6Kkp9y1Ky9PDdyNny2jOxtew7bGhgvtYYu2jca3StF2aXGKds4PAaCUIV6cCIsy73CwD8j/0qRY3zbl4moTu7DuuDBf8x
 KNX5FFamGuZNzuPJ4VrF2QEowzv2FEP2h7Oejyw4OwRM6czKT4SHqX6r
Content-Type: multipart/alternative; boundary="60be42c1_66fb54cc_13cf"

--60be42c1_66fb54cc_13cf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.
I have the recipe myapp.bb, and I get from it the debian packages myapp_1.0-r0_armhf.deb and myapp-dbg_1.0-r0_armhf.deb

How can I use the debug symbols in myapp-dbg_1.0-r0_armhf.deb with gdb and the application in myapp_1.0-r0_armhf.deb package?

Best regards,
MZ

Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--60be42c1_66fb54cc_13cf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><div>I have the recipe myapp.bb, and I get from it the =
debian packages <a href=3D=22myapp=5F1.0-r0=5Farmhf.deb=22 title=3D=22mya=
pp=5F1.0-r0=5Farmhf.deb=22>myapp=5F1.0-r0=5Farmhf.deb</a>&nbsp;and myapp-=
dbg=5F1.0-r0=5Farmhf.deb</div><br><div>How can I use the debug symbols in=
 <a href=3D=22myapp-dbg=5F1.0-r0=5Farmhf.deb=22 title=3D=22myapp-dbg=5F1.=
0-r0=5Farmhf.deb=22>myapp-dbg=5F1.0-r0=5Farmhf.deb</a>&nbsp;with gdb and =
the application in <a href=3D=22myapp=5F1.0-r0=5Farmhf.deb=22 title=3D=22=
myapp=5F1.0-r0=5Farmhf.deb=22>myapp=5F1.0-r0=5Farmhf.deb</a>&nbsp;package=
=3F</div><br><br><div>Best regards,</div><div>&nbsp; MZ</div><br><div><si=
gnature id=3D=22initial=22><div><div>Sent from <a href=3D=22https://getma=
ilspring.com/=22>Mailspring</a>, the best free email app for work</div></=
div></signature></div>

--60be42c1_66fb54cc_13cf--
