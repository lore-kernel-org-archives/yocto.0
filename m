Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.51855.1590504351406827308
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 07:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4849BE01B88; Tue, 26 May 2020 07:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,URIBL_RED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED4D5E01B6C
	for <yocto@yoctoproject.org>; Tue, 26 May 2020 07:45:49 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:38588 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jdapw-00CHlz-LJ; Tue, 26 May 2020 10:45:49 -0400
Date: Tue, 26 May 2020 10:45:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: ayoub.zaki@googlemail.com
cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] Overwrite a bblcass globally
In-Reply-To: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2005261043510.24908@localhost.localdomain>
References: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="8323328-1049427121-1590504348=:24908"

--8323328-1049427121-1590504348=:24908
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 26 May 2020, Ayoub Zaki via lists.yoctoproject.org wrote:

> Hi,

> I would like to make changes=C2=A0on systemd.bblcass=C2=A0in my layer.=C2=
=A0
>
> I can create new one e.g my-systemd.bbclass to overwrite the default
> one but this will not work since I want that ALL recipes in all
> layers I'm using to make usage of it.
>
> are there ways to achieve this?

  aside from whether there is a good way to do this, this seems to be
a really bad idea since recipes that inherit what they *think* is the
systemd class file will be getting something different; that's just
inviting all sorts of unintended bugs.

rday

--8323328-1049427121-1590504348=:24908--
