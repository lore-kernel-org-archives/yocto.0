Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4466.1607338202139281138
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 02:50:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8FA9A38C140D
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2020 10:50:01 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:56424 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kmE5f-00063Y-Oh
	for yocto@yoctoproject.org; Mon, 07 Dec 2020 05:50:00 -0500
Date: Mon, 7 Dec 2020 05:49:57 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: "cleanest" way to resolve python2/python3 recipe file install conflicts?
Message-ID: <392a1f8a-d8e1-d29e-c9f-3087e97f3e96@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-1323146725-1607338199=:7157"

--8323328-1323146725-1607338199=:7157
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable


  was recently presented with the following issue involving a
zeus-based (actually, wind river LTS19-based -- effectively much the
same) issue.

  group wants to move many python2 recipes to python3, but there is
apparently a need to keep python2, including quite a number of the
same recipes that will also be installed as python3 versions, which is
causing the following problem.

  as a single example, in trying to install both versions of
"python{2,3}-chardet", it's entirely unsurprising for there to be a
file install conflict as both recipes want to install the same file
"/usr/bin/chardetect":

   Error: Transaction check error:

=A0   file /usr/bin/chardetect conflicts between attempted installs of
      python-chardet-3.0.4-r0.core2_64and python3-chardet-3.0.4-r0.core2_=
64

  until now, there were very few examples of that, and it was
"resolved" by do_install_append()ing one of the recipes to simply
delete its copy of that executable, leaving the other one. yuck.

  given the many more examples of that now showing up, i don't want to
have to start doing that for every recipe conflict. my initial
reaction was to grumble, "are you really, really sure you need both
versions of the same recipe? really? seriously?"

  am i overlooking something here? it seems that there are going to be
many dozen examples of that shortly, and i don't want to have to
bbappend every one of them in such a hacky way.

  thoughts?

rday

--8323328-1323146725-1607338199=:7157--
