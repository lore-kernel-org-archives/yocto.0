Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.6761.1624354875344301633
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 02:41:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=OCarpHad;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd03117.aruba.it (smtpcmd03117.aruba.it [62.149.158.117])
	by mail.yoctoproject.org (Postfix) with ESMTP id 1907138C062C
	for <yocto@yoctoproject.org>; Tue, 22 Jun 2021 09:41:13 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id vcu8l87O9SODOvcu8lQ393; Tue, 22 Jun 2021 11:41:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1624354872; bh=Pak1SW7N83LcOTokQGcdgtq3+2NUEwhNFpHLeO57on8=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=OCarpHadHoaRKKi+58ewIxtdtQY9iZITeNu9mJ9XE1QIr+Om3WAtxR6FOdJI0+lPr
	 UMexlkbTtw1Udyzrpr0ca16FqKoElE+L07AzZg/qvego+nqw/LG1pT3AfrKh2HhED4
	 DNz4mMJocyG++S2ZHuQOysO+WUfnOLpBDAEo1BVFNRmoHjb8cckVjZcFtqeMqjRu/t
	 pp52cxkYoYi86DXJ2X53+wKQKAcPmpgfWDiNAyHdlln6XD/4W0cYfb1KaxR0tO9f8L
	 DBOs9JkIeW7J5sOXO3jWa1l7A9qwVqEU+fg5YbaNNTcqjXywlbc6OqUPAxsgPyoedG
	 wKFfL4DPjoWfg==
Date: Tue, 22 Jun 2021 11:41:11 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <9F10B0D4-D2B0-4407-809F-C6F21D4F258A@getmailspring.com>
Subject: Update APTCONF_TARGET manually
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfO977fKqukvbJWKgwWaH7rvD48tXgyqW12bBimCXOexdKpBD8w4WLT8hvK5x5vCuEwAYjr+avU+4ypHZZLoBYHbb78Q7hxUWu+EVEwrii2DCYp5tAjOi
 bCSc7C0PXG4pu1xttln7n7S4yuWbFOeLSQZzVDP6vJmkazTontqk0Sd8
Content-Type: multipart/alternative; boundary="60d1b037_7eee69cf_496d"

--60d1b037_7eee69cf_496d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all
I move all TMPDIR in another folder
The EXTRA_DISTRO_FETAURES += "package_managent"
PACKAGE_CLASS := " package_deb "

When I build the image the package_manager try to find the debs in the older folder.
I see that this problem is in apt/apt.conf of image working dir.
How can I change manually the value of APTCONF_TARGET?
Where the APTCONF_TARGET value is stored?
Best regards,
MZ

Sent from Mailspring (https://getmailspring.com/), the best free email app for work

--60d1b037_7eee69cf_496d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all</div><div>I move all TMPDIR in another folder</div><div>The E=
XTRA=5FDISTRO=5F=46ETAURES +=3D =22package=5Fmanagent=22</div><div>PACKAG=
E=5FCLASS :<span data-emoji-typing=3D=22true=22>=3D</span>&nbsp;=22 packa=
ge=5Fdeb =22</div><br><div>When I build the image the package=5Fmanager t=
ry to find the debs in the older folder.</div><br><div>I see that this pr=
oblem is in apt/apt.conf of image working dir.</div><br><div>How can I ch=
ange manually the value of APTCON=46=5FTARGET=3F</div><br><div>Where the =
APTCON=46=5FTARGET value is stored=3F</div><br><div>Best regards, </div><=
div>&nbsp; MZ</div><br><div><signature id=3D=22initial=22><div><div>Sent =
from <a href=3D=22https://getmailspring.com/=22>Mailspring</a>, the best =
free email app for work</div></div></signature></div>

--60d1b037_7eee69cf_496d--
