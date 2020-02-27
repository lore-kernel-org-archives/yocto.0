Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.400.1582836629700102464
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2020 12:50:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 141BBE0170D; Thu, 27 Feb 2020 12:50:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6031E008D9
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2020 12:50:26 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:50934 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j7Q6z-00Fl8H-7q
	for yocto@yoctoproject.org; Thu, 27 Feb 2020 15:50:25 -0500
Date: Thu, 27 Feb 2020 15:50:22 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: morty: ruby gem, "undefined method `name' for nil:NilClass"
Message-ID: <alpine.LFD.2.21.2002271536100.12088@localhost.localdomain>
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
Content-Type: multipart/mixed; boundary="8323328-1504495453-1582836625=:12088"

--8323328-1504495453-1582836625=:12088
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable


  i was just handed an issue that pops up under wind river linux 9
(effectively, "morty", YP 2.2), so i was hoping someone here might
have some thoughts.

  there are a small number of ruby recipes that are part of this build
that, intermittently, choke during the install stage. one example is
something called nokogiri, and here's the relevant part of the
diagnostic:


21:09:28 ERROR: nokogiri-1.7.2-r0 do_install: Function failed:
do_install (log file is located
at/build/jenkins/workspace/WRL9-build/daily/tmp/work/core2-64-poky-linux/=
nokogiri/1.7.2-r0/temp/l
og.do_install.31503)
21:09:28 ERROR: Logfile of failure stored
in:/build/jenkins/workspace/WRL9-build/daily/tmp/work/cor>
og.do_install.31503
21:09:28 Log data follows:
21:09:28 | DEBUG: Executing shell function do_install
21:09:28 | Building native extensions.=A0 This could take a while...
21:09:28 | ERROR:=A0 While executing gem ... (NoMethodError)
21:09:28 |=A0=A0=A0=A0 undefined method `name' for nil:NilClass
21:09:28 |
WARNING:/build/jenkins/workspace/WRL9-build/daily/tmp/work/core2-64-poky-=
linux/nokogiri/>
un.do_install.31503:1 exit 1 from 'gem install --ignore-dependencies
--local --env-shebang
--install-dir/build/jenkins/workspace/WRL9-build/daily/tmp/work/core2-64-=
poky-linux/nokogiri/1.7.2->
/usr/lib64/ruby/gems/2.2.0/ $gem'
21:09:28 | ERROR: Function failed: do_install (log file is located
at/build/jenkins/workspace/WRL9->
og.do_install.31503)
21:09:28 NOTE: recipe nokogiri-1.7.2-r0: task do_install: Failed


there are a couple other recipes that exhibit the same behaviour --
again, intermittently, which is the maddening part.

  it's inconvenient that this forces one to rewind all the way back to
morty, so i've been poking around online and, somewhere (trying to
find the link again), someone suggested that the "bundler" program had
a bug, and the issue was solved by upgrading to a newer version.
again, this goes back a few years, so it would not be surprising if
this sort of thing just never happens these days.

  thoughts? anyone remember something like this from a few years back,
and how it was resolved? i'm going to keep looking, but i am most
emphatically *not* a ruby person of any kind, so i'm not sure what i'm
even looking for.

rday

--8323328-1504495453-1582836625=:12088--
