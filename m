Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6348.1593254569221232091
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Jun 2020 03:42:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB9D5E01D97; Sat, 27 Jun 2020 03:42:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BE1E01D94
	for <yocto@yoctoproject.org>; Sat, 27 Jun 2020 03:42:47 -0700 (PDT)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:46596 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jp8IF-002fm5-Me
	for yocto@yoctoproject.org; Sat, 27 Jun 2020 06:42:46 -0400
Date: Sat, 27 Jun 2020 06:42:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: starting a quest to make some ruby recipes buildable/installable
Message-ID: <alpine.LFD.2.21.2006270636560.2237067@localhost.localdomain>
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


  followup to yesterday's cry for help, i've built a
core-image-minimal for x86_64 using "zeus" layers and, at this point,
i'm simply going to start trying to bitbake and IMAGE_INSTALL_append
various ruby gems.

  things did not start out well as the very first attempt blew up:

  $ bitbake json

but it appears that (zeus-supplied) version 1.8.3 of that recipe has
known issues, so i grabbed the recipe from
meta-cloud-services/meta-openstack (where, for some baffling reason,
many of these ruby gems live), tweaked it thusly:

BPV = "2.3.0"
SRCREV = "92cf5c451a6ec0f3a00e291eb909e57cf38fbea4"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8a960b08d972f43f91ae84a6f00dcbfb"

whereupon it failed on the packaging step thusly:

ERROR: json-2.3.0-r0 do_package_qa: QA Issue:
/usr/lib/ruby/gems/2.5.0/gems/json-2.3.0/lib/json/ext/generator.so
contained in package json requires libcrypt.so.2()(64bit), but no
providers found in RDEPENDS_json? [file-rdeps]
ERROR: json-2.3.0-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: Logfile of failure stored in:
/home/rpjday/oe/builds/zeus/chef/tmp/work/core2-64-poky-linux/json/2.3.0-r0/temp/log.do_package_qa.2236511
ERROR: Task
(/home/rpjday/oe/dist/layers/meta-cloud-services/meta-openstack/recipes-devtools/ruby/json_git.bb:do_package_qa)
failed with exit code '1'

  i don't know enough about ruby recipes to know how to resolve that
libcrypt.so packaging error, so i'm open to suggestions. in the
meantime, i'm going to work my way through numerous recipes and see
how many i can get to build.

rday
