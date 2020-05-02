Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7602.1588434965389121801
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 08:56:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1A92E01ACD; Sat,  2 May 2020 08:56:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A662DE01ACB
	for <yocto@yoctoproject.org>; Sat,  2 May 2020 08:56:03 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:54306 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jUuUk-007viG-Du
	for yocto@yoctoproject.org; Sat, 02 May 2020 11:56:02 -0400
Date: Sat, 2 May 2020 11:55:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: short form for unpacking recursively into WORKDIR?
Message-ID: <alpine.LFD.2.21.2005021150090.931595@localhost.localdomain>
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


  was playing with shadow and PAM stuff, and noticed this in
shadow.inc:

# Additional Policy files for PAM
PAM_SRC_URI = "file://pam.d/chfn \
               file://pam.d/chpasswd \
               file://pam.d/chsh \
               file://pam.d/login \
               file://pam.d/newusers \
               file://pam.d/passwd \
               file://pam.d/su"

which results in that pam.d/ directory (and the identified files)
being copied into pam.d/ in WORKDIR. but since the above is the entire
contents of that directory under files/, i wondered if one could just
refer to the directory alone and it would unpack recursively, and it
seems to work fine using:

  PAM_SRC_URI = "file://pam.d/"

i'd never noticed that before, and am not sure if that's actually
mentioned in the docs (is it?). in any event, if the above shortcut is
officially supported, is there a reason to spell it out in full anyway
as is done in shadow.inc? (i mean, other than to be selective and
cherry-pick what you want unpacked.)

rday
