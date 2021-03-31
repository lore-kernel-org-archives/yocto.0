Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8072.1617203432397550196
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Mar 2021 08:10:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=FVMizB8Y;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by mail.yoctoproject.org (Postfix) with ESMTP id 727FC38C1186
	for <yocto@yoctoproject.org>; Wed, 31 Mar 2021 15:10:31 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id RcUGlrYKakeOqRcUHlrI6A; Wed, 31 Mar 2021 17:10:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1617203429; bh=zXTc0cuV7xXvGGt/6SnBmfo8f3Lsz69HRrKwqNTwW/I=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=FVMizB8Yril+10Koq98CRcEDAf8d0xi5YKVa4Ho1YY+yU3eIAeY4RuuLHc+akbn2+
	 DlpxkLSbuSf0NQHDwz6/Vq7/7eFcnhbsoaDkAqRX1MkSrzSO/bXZWh/auN4Ew3tBzL
	 MTIVF/9mePW5cBPKDIRX1f0Ht11ZiPeJkBOSQOzqiSSFj5F59DiRCBrfsGYoP2RPz+
	 Wgll6TJDOta504dnnRC7mMsXc5rvZIvLWng8h2CrccsnwrmS4Ef0L7RPz1WLrp6TJv
	 E6IoRmw85eCBPrTd+cyt0ECcAi7gChVLWrgCsznce4J6pZ0aJgIVkmRx6YVImz5Ez7
	 hn3mL8i85UtnQ==
Date: Wed, 31 Mar 2021 17:10:28 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <1D155196-CC74-45EF-9131-80B170F07897@getmailspring.com>
Subject: Speed up the build
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfAoYfWOA1fH2e2NWOytGenUwg8Ex2CQtrZWz8EPt6Vw3OQJ46GHxL56kE+WOisQZeNSYzoJ8k7rvbHIBabuad1VsiMd6roabszH66LdL7ZfTy0ldAArz
 SuoAEGObUsFxiLAcY+eomAaeEbxWW8u5B/T6XWwb1ayfYXfs7An9IJ0I
Content-Type: multipart/alternative; boundary="606490e4_3f86a498_dc8"

--606490e4_3f86a498_dc8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all

I need to speedup the build.
I use package_deb as package method.

I see that the bottlenek is gzip
When yocto runs gzip the cpu runs to 100%, with xz 600% (the pc has 6 core (12threads))

I'd like to use pigz to parallelize "gzip" too.
Is it possible?
MZ

--606490e4_3f86a498_dc8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all</div><br><div>I need to speedup the build.</div><div>I use pa=
ckage=5Fdeb as package method.</div><br><div>I see that the bottlenek is =
gzip</div><div>When yocto runs gzip the cpu runs to 100%, with xz 600% (t=
he pc has 6 core (12threads))</div><br><div>I'd like to use pigz to paral=
lelize =22gzip=22 too.</div><br><div>Is it possible=3F</div><br><div>MZ</=
div><img class=3D=22mailspring-open=22 alt=3D=22Sent from Mailspring=22 w=
idth=3D=220=22 height=3D=220=22 style=3D=22border:0; width:0; height:0;=22=
 src=3D=22https://link.getmailspring.com/open/1D155196-CC74-45E=46-9131-8=
0B170=4607897=40getmailspring.com=3Fme=3Ddc68e679&amp;recipient=3DeW9jdG9=
AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D=22>

--606490e4_3f86a498_dc8--
