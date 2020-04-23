Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4993.1587644096944477683
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2020 05:14:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8516BE01A0C; Thu, 23 Apr 2020 05:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13CE5E01A0A
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2020 05:14:55 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:56238 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jRako-002Ndq-H6; Thu, 23 Apr 2020 08:14:55 -0400
Date: Thu, 23 Apr 2020 08:14:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] inconsistencies with selecting systemd as init manager?
In-Reply-To: <CAP71WjxZp+b_YWAUSWvoJqFo9rcze_66z=+oQOwdHLsaE_-6SA@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2004230812410.14835@localhost.localdomain>
References: <alpine.LFD.2.21.2004230713330.10937@localhost.localdomain> <CAP71WjxZp+b_YWAUSWvoJqFo9rcze_66z=+oQOwdHLsaE_-6SA@mail.gmail.com>
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
Content-Type: multipart/mixed; BOUNDARY="8323328-724352238-1587644000=:14835"
Content-ID: <alpine.LFD.2.21.2004230813300.14835@localhost.localdomain>

--8323328-724352238-1587644000=:14835
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-ID: <alpine.LFD.2.21.2004230813301.14835@localhost.localdomain>
Content-Transfer-Encoding: quoted-printable

On Thu, 23 Apr 2020, Nicolas Dechesne wrote:

>
>
> On Thu, Apr 23, 2020 at 1:18 PM Robert P. J. Day <rpjday@crashcourse.ca=
> wrote:
>
>       =A0 just noticed that, given that since YP 3.0 one could select s=
ystemd
>       as the init manager via the single variable INIT_MANAGER, which p=
ulled
>       in init-manager-systemd.inc:
>
>       # Use systemd for system initialization
>       DISTRO_FEATURES_append =3D " systemd"
>       DISTRO_FEATURES_BACKFILL_CONSIDERED_append =3D " sysvinit"
>       VIRTUAL-RUNTIME_init_manager ??=3D "systemd"
>       VIRTUAL-RUNTIME_initscripts ??=3D "systemd-compat-units"
>       VIRTUAL-RUNTIME_login_manager ??=3D "shadow-base"
>
>
> INIT_MANAGER was added in 3.0, see:
> https://git.openembedded.org/openembedded-core/commit/?id=3D8d0b4704a52=
6a48cd5e67df6
> 1b613424bbbdccde

  i know, that's what i mentioned above.

>       =A0 this doesn't quite seem to match this snippet from
>       meta/lib/oeqa/selftest/cases/imagefeatures.py:
>
>       # Switch to systemd
>       DISTRO_FEATURES +=3D "systemd"
>       VIRTUAL-RUNTIME_init_manager =3D "systemd"
>       VIRTUAL-RUNTIME_initscripts =3D ""
>       VIRTUAL-RUNTIME_syslog =3D ""
>       VIRTUAL-RUNTIME_login_manager =3D "shadow-base"
>       DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>
>
> this is the 'old' (pre 3.0) method, and it can (and should) be
> replaced with INIT_MANAGER, i believe.

  i suspected as much, i just wanted to point out that those two
snippets are not *exactly* equivalent so someone should make sure that
INIT_MANAGER usage is precisely defined.

rday

--8323328-724352238-1587644000=:14835--
