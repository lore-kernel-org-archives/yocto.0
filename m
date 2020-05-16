Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9838.1589653184793624107
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2020 11:19:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D8ACE01B7A; Sat, 16 May 2020 11:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFF59E01B78
	for <yocto@yoctoproject.org>; Sat, 16 May 2020 11:19:42 -0700 (PDT)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:43494 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ja1PR-00HMd6-22
	for yocto@yoctoproject.org; Sat, 16 May 2020 14:19:41 -0400
Date: Sat, 16 May 2020 14:19:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: numerous superfluous PYPI_PACKAGE assignments in meta-python?
Message-ID: <alpine.LFD.2.21.2005161418350.18447@localhost.localdomain>
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


  in aid of docs, currently poring over python-based recipes to
document how one builds python recipe files, and noticed that numerous
recipe files contain an assignment of the form:

  python3-smbus2_0.3.0.bb:PYPI_PACKAGE = "smbus2"

which seems superfluous given that pypi.bbclass contains:

  def pypi_package(d):
    bpn = d.getVar('BPN')
    if bpn.startswith('python-'):
        return bpn[7:]
    elif bpn.startswith('python3-'):
        return bpn[8:]
    return bpn

  PYPI_PACKAGE ?= "${@pypi_package(d)}"

clearly harmless but, in the above example, unnecessary, no?

  there are, of course, numerous recipes that require an assignment of
that form as the actual PyPI package name is some annoying variation,
such as:

 python3-sqlalchemy_1.3.12.bb:PYPI_PACKAGE = "SQLAlchemy"
 python3-websocket-client_0.56.0.bb:PYPI_PACKAGE = "websocket_client"
 python-django-south.inc:PYPI_PACKAGE = "South"

and so on, i just want to be able to write that as long as the recipe
file name *exactly* matches the PyPI package name, that assignment is
unnecessary. (i'm a minimalist.)

rday

p.s. on that note, i was curious about the recipe file
python3-twitter_3.8.0.bb, which contained the line:

  PYPI_PACKAGE = "tweepy"

under the circumstances, why not have just named the recipe file
python3-tweepy...?
