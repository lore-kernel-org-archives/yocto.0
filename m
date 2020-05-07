Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.405.1588874477338539137
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2020 11:01:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDA3DE01B0C; Thu,  7 May 2020 11:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24321E01B0A
	for <yocto@yoctoproject.org>; Thu,  7 May 2020 11:01:15 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:48768 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jWkpe-0061dX-Dm
	for yocto@yoctoproject.org; Thu, 07 May 2020 14:01:15 -0400
Date: Thu, 7 May 2020 14:01:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to list python3 built-in and core modules supplied by python3?
Message-ID: <alpine.LFD.2.21.2005071224280.2004419@localhost.localdomain>
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


  colleague recently asked how to list the built-in/core modules that
come with just installing python3, to know which additional python3
modules would require running around looking for actual recipes, all
of this without having to boot the actual image. had to think about
this for a second, and came up with this -- open to suggestions,
criticism or gales of wild laughter.

  as a working example to demonstrate this, i'm building a
core-image-minimal for qemux86_64 (with "package_rpm"), so i can use
that as a starting point, and i want to identify the python modules
that go into the image without having to boot the image -- that is,
just based on what i can poke at under tmp/deploy/.

  so, after building a core-image-minimal, i simply:

  IMAGE_INSTALL_append = " python3"

build again, and start looking around to see what that added.

  first, i can check the image manifest, where i can see a pile of
python3 stuff that will now be part of the image:

python3-2to3 core2_64 3.8.2
python3-asyncio core2_64 3.8.2
python3-audio core2_64 3.8.2
python3-codecs core2_64 3.8.2
python3-compile core2_64 3.8.2
python3-compression core2_64 3.8.2
python3-core core2_64 3.8.2
python3-crypt core2_64 3.8.2
... and so on and so on ...

  starting with the python3-core package, i can list the built-in
modules via:

  $ rpm2cpio python3-core-3.8.2-r0.core2_64.rpm | cpio -itv

where i can get an idea of the built-in modules:

...
./usr/lib/python3.8/linecache.py
./usr/lib/python3.8/locale.py
./usr/lib/python3.8/lzma.py
./usr/lib/python3.8/ntpath.py
./usr/lib/python3.8/opcode.py
./usr/lib/python3.8/operator.py
./usr/lib/python3.8/optparse.py
./usr/lib/python3.8/os.py
...

  is that the right/easiest way to see the built-in modules? is there
a simpler way? would that be a complete list or would i be missing
something?

  and second, the manifest (as seen above) would also list the
packages for the various python core modules, as in:

...
python3-email core2_64 3.8.2
python3-fcntl core2_64 3.8.2
python3-html core2_64 3.8.2
python3-idle core2_64 3.8.2
python3-image core2_64 3.8.2
python3-io core2_64 3.8.2
python3-json core2_64 3.8.2
python3-logging core2_64 3.8.2
...

  at this point, would this be a comprehensive list of the modules
that would be installed by having done nothing but installed
"python3"? am i missing any? the point of this is to clarify what's
there to know if one then has to look externally for a given module to
be added.

  thanks for any pointers.

rday
