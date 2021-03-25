Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4869.1616657945287830291
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 00:39:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=WGuyubHA;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by mail.yoctoproject.org (Postfix) with ESMTP id 0AFFC38C0887
	for <yocto@yoctoproject.org>; Thu, 25 Mar 2021 07:39:03 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id PKa5lXoKMkeOqPKa6lIWKR; Thu, 25 Mar 2021 08:39:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1616657942; bh=XK3nt2yDE2+cZBTwGmlEEzwj2I+FQTN+ATLN4bRdwJM=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=WGuyubHAsyU6Vvcfh+Enz8eiKMx9yvBAQ8tEUqhIseB3sRSaOXKjeuFKHDHZPaWzy
	 kPDJOegNjHgcglYqFvBmwXVCiF1IfKgC8l/uwAOzNLtdNriRT925avWrdy4mWSTeXp
	 Y3vYX/QdV4evgVQJ21oROJnUuWieZcDBBbJ4wccngMdIgAS4+szVqOPETzpCSEwowm
	 frBWS0yBs6J2vtmjOOdMMrDiCyFJEMnbpu/s5djm9SQQ93xwmUvUZ0Nt+bquhJhqIL
	 mTJp0Ayx8m+FDauW9jrtbUkvs0gR0/zs5Cr0xT8hyXnWIWOMP3h+ahLQkrLIG7ri7A
	 tcHscd2vOcPYg==
Date: Thu, 25 Mar 2021 08:39:01 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <6E1D18A1-A316-4C1D-BD83-2B5AB07A2187@getmailspring.com>
Subject: Howto read bitbake -g files?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfNdyWBEmLdVvyZz04MLclt/ISfSLPEJZPUluMkamYJJTKUUyB2aBVn9KIzB9NGGFVMhgFzYQteITfg0uWRNL7/nq2jBvJKGKm5tgKf3YfSkIH5Bkl0Pe
 xlmflEcV0GLEeDw1YuNDGrXVKMoIng+xFnsfDQoH2Gtz9L9q968tajiB
Content-Type: multipart/alternative; boundary="605c3e15_326af1f1_126c"

--605c3e15_326af1f1_126c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all

I have to look for the recipes put in my image the *-dev packages.
I removed dev-pkgs and dng-pkgs from IMAGE_FEATURES and debug tweaks from DISTRO_FEATURES.
I don't IMAGE_INSTALL_append any *-dev packages

I generate bitbake -g image, but I don't produce the PDF because is unreadable.
So I read the dot source. I use dot and I know the syntax.
But I don't how to read the graph.

MZ

Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--605c3e15_326af1f1_126c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all</div><br><div>I have to look for the recipes put in my image =
the *-dev packages.</div><br><div>I removed dev-pkgs and dng-pkgs from IM=
AGE=5F=46EATURES and debug tweaks from DISTRO=5F=46EATURES.</div><div>I d=
on't IMAGE=5FINSTALL=5Fappend any *-dev packages</div><br><div>I generate=
 bitbake&nbsp; -g image, but I don't produce the PD=46 because is unreada=
ble.</div><br><div>So I read the dot source. I use dot and I know the syn=
tax.</div><br><div>But I don't how to read the graph.</div><br><br><div>M=
Z</div><br><br><br><br><div><signature id=3D=22initial=22><div><div>Sent =
from <a href=3D=22https://getmailspring.com/=22>Mailspring</a>, the best =
free email app for work</div></div></signature></div>

--605c3e15_326af1f1_126c--
