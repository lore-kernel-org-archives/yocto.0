Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4983.1617789975178202017
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 03:06:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=BDIM/sL2;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd01-sp1.aruba.it (smtpcmd01-sp1.aruba.it [62.149.158.218])
	by mail.yoctoproject.org (Postfix) with ESMTP id B506A38C0530
	for <yocto@yoctoproject.org>; Wed,  7 Apr 2021 10:06:13 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id U54cljAoaTIb1U54dlIt34; Wed, 07 Apr 2021 12:06:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1617789972; bh=hbDvKhwu36iGwPR02lTI5fZV/arrRoAiqhcrRFc08T8=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=BDIM/sL2Q+4vevhlsFBsko48F3UanIB+X2eXnXLw1kHFD73GnQKLddwWK3Ug9Ptwd
	 RmUAYUV+PeC9HvnB+63oG/4cnvigPufFnFffq49b6YHR1pijM0pYkrfJBhpZYfgGPc
	 Dqgr89KS3nl3s4WPOWEdx8Hzb7823wD1nb0kecxBuqggKjIgfXYBlZTm9bsh5nqDqC
	 ldWes09v86AFd0IveIU432RnYLQ/xLunen2l/8skwcYzeBz54Z24WEC9yURl3Ca3CA
	 XumeDBD+8zbnEhQ01KukJunwKhgUrDh3OYYXiURkoGPbbRYNXswSjB3AaDIj96Z9lG
	 ydlku1InFo3Hg==
Date: Wed, 7 Apr 2021 12:06:10 +0200
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <412C5A1E-455B-4640-A54E-5465F84D546F@getmailspring.com>
Subject: dpkg-scanpackages from my recipe
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfJu4YzA+7rC/34POFYCmgjrFPEo3RLTulSk8YC0sBT7i1ail9jBUF5xI7gW/36qxyqa8tSnYSQ68iiB/FCUDkmkwMmJDPyLLHjmnqR0/99W7biL7PSzA
 eXKfsPvr5qN22KlqcuIrCq72G6LJzIwE4YLE3HPKqox0YsgXfUY3ZYi+
Content-Type: multipart/alternative; boundary="606d8412_751230e1_15d5"

--606d8412_751230e1_15d5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.
I'd like to use dpkg-scanpackages inside my recipe

The recipe copies some deb package into my folder ${D}/myfolder
Then I'd like to apply dpkg-scanpackages to ${D}/myfolder

I miss last step.
Running dpkg-scanpackages ${D}/myfolder ends with and error.
Dpkg.pm missing

How can I "install" Dpkg.pm so I can use dpkg-scanpackages directly from my recipe?
Best regards,
MZ

--606d8412_751230e1_15d5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><div>I'd like to use dpkg-scanpackages inside my recipe=
</div><br><div>The recipe copies some deb package into my folder =24=7BD=7D=
/myfolder</div><div>Then I'd like to apply dpkg-scanpackages to =24=7BD=7D=
/myfolder</div><br><br><div>I miss last step.</div><div>Running dpkg-scan=
packages =24=7BD=7D/myfolder ends with and error.</div><div>Dpkg.pm missi=
ng</div><br><div>How can I =22install=22 Dpkg.pm so I can use dpkg-scanpa=
ckages directly from my recipe=3F</div><br><div>Best regards,</div><div>&=
nbsp; MZ</div>

--606d8412_751230e1_15d5--
