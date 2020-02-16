Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11370.1581856570706475735
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 04:36:11 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A85AE0085D; Sun, 16 Feb 2020 04:36:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98530E007D4
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 04:36:09 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:60018 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j3J9Z-001vPJ-28; Sun, 16 Feb 2020 07:36:05 -0500
Date: Sun, 16 Feb 2020 07:36:02 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
cc: Martin Jansa <Martin.Jansa@gmail.com>, 
    Rudolf J Streif <rudolf.streif@ibeeto.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
In-Reply-To: <b0131c98d689481f9e2e4c1f312ca806@XBOX03.axis.com>
Message-ID: <alpine.LFD.2.21.2002160734250.2279565@localhost.localdomain>
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain> <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com> <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com> <b0131c98d689481f9e2e4c1f312ca806@XBOX03.axis.com>
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
Content-Type: multipart/mixed; boundary="8323328-839189902-1581856565=:2279565"

--8323328-839189902-1581856565=:2279565
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Sun, 16 Feb 2020, Peter Kjellerstedt wrote:

> We use tags in SRCREV for our own recipes since we have control over
> them and know that the tags won=E2=80=99t move. If one sets BB_SRCREV_P=
OLICY
> =3D "cache", then bitbake will not do `git ls-remote` for the tags
> more than once. So as long as you have built once you can then build
> again without network. (Setting BB_SRCREV_POLICY =3D "cache" currently
> breaks ${AUTOREV}, but I sent patches for that the other day.)

  ah, this is useful to know, and probably belongs in a YP manual
somewhere; perhaps in a section called, "cool things that no one ever
mentions." :-)

rday

--8323328-839189902-1581856565=:2279565--
