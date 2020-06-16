Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1203.1592330817697951420
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 11:06:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BB20E01D11; Tue, 16 Jun 2020 11:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8D1E01D0D
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 11:06:55 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:37516 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jlFz4-002SDh-Bb
	for yocto@yoctoproject.org; Tue, 16 Jun 2020 14:06:55 -0400
Date: Tue, 16 Jun 2020 14:06:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: easiest way to enumerate DEPENDS/RDEPENDS for new python3 recipes?
Message-ID: <alpine.LFD.2.21.2006161354070.28232@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  apparently, i and a couple other people are responsible for whipping
up a bunch of python3 recipes that currently do not exist; we're going
to standardize on what seems to be the most popular format -- recipes
that inherit both "pypi" and "setuptools3", which make the recipes
pretty straightforward, except for figuring out the proper build and
run-time dependencies in some cases.

  as one example, there is no recipe in the OE layers for
python3-foolscap, but if one pops over to pypi.org, then follows to
the online source:

  https://github.com/warner/foolscap/

the "setup.py" file gives away the RDEPENDS with:

  "install_requires": ["six", "twisted[tls] >= 16.0.0", "pyOpenSSL"],

the other trick i found is to use "pipoe" and see what it comes up
with and, sure enough, for foolscap, pipoe generates a recipe
containing the matching line:

  RDEPENDS_${PN} = "python3-six python3-twisted python3-pyopenssl"

  in other cases, though, it's not at all obvious, for instance with
the existing recipe python3-lxml from meta-python, which spells out
the dependencies:

  DEPENDS += "libxml2 libxslt"
  RDEPENDS_${PN} += "libxml2 libxslt ${PYTHON_PN}-compression"

however, the source for python3-lxml has no informative
"install_requires", whereupon pipoe fails similarly by generating:

  RDEPENDS_${PN} = ""

so, other than trial and error, is there a standard strategy to
determine the dependencies of a new python3 package is the setup.py
file is not forthcoming? (i'm still working my way through learning
python.)

rday

