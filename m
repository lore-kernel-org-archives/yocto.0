Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8713.1581419595021994244
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 03:13:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0800E01674; Tue, 11 Feb 2020 03:13:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8946CE01672
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 03:13:13 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:54048 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1TTc-00Etyj-3Q
	for yocto@yoctoproject.org; Tue, 11 Feb 2020 06:13:12 -0500
Date: Tue, 11 Feb 2020 06:13:09 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: reviving an old suggestion about YP docs markup
Message-ID: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
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


  with the recent loss of scott rifenbark, since i used to be fairly
active in working on the docs, i figure it's time to get off my a**
and get involved again and contribute. to that end, i once made a
suggestion about being more precise about the docbook markup being
used in the YP manuals.

  in many cases, a number of types of entities in the docs are marked
up simply as <filename> which, when generating HTML, renders as
simple italics. so in cases like generating HTML, there's no
difference in whether the entity being marked up is actually a
filename, or a command, or something just being emphasized, and so on.
but when one thinks of generating more refined output (PDF, for
example), it would be useful if those entities really had the
potential to be rendered differently. here are some examples.

  first, yes, if something is a filename, then <filename> is the
obvious markup.

  on the other hand, variables should properly be marked up as
<variable>, which they currently aren't. a good example is in the
reference manual, the variables, where glossary definitions all use
the <filename> markup for variables. again, it may make no difference
in the ultimate rendering to something as trivial as HTML but, some
day, it will be useful to be able to render things differently
depending on the choice of output.

  options should be tagged as <option>, which actually does look nicer
even in HTML output; at the moment, most options are simply quoted, as
in:

    To ensure consistent behavior, BitBake's "-r" and "-R" ...

  another woefully underused tag is <firstitem>, meant to emphasize
the first time a term is being used to grab the reader's attention.
again, for HTML, that renders simply as italics, but who knows what
might happen in the future. also, using the <firstterm> tag provides a
simple way to collect all such expressions in the docs, perhaps for
index generation.

  a final example is command markup, which ideally would use the
<command> tag. i tested that and, in the current doc processing
toolchain, it shows up in HTML as a fairly aggressive bolding. but
even if that seems unsightly, the proper approach would be to use
proper markup, then tweak the stylesheets to define how it *should* be
rendered.

  obviously, this is not a high priority as the docs are in great
shape as it is, but i think at some point it would be useful to start
using appropriate markup, and adjust the backend XSL stylesheets to
define the rendering.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
