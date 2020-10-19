Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.12693.1603112801407735160
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 06:06:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=36528 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kUUs3-006kjb-Lw
	for yocto@lists.yoctoproject.org; Mon, 19 Oct 2020 09:06:40 -0400
Received: from [66.129.241.11] ([66.129.241.11]) by crashcourse.ca (Horde
 Framework) with HTTPS; Mon, 19 Oct 2020 09:06:39 -0400
Date: Mon, 19 Oct 2020 09:06:39 -0400
Message-ID: <20201019090639.Horde.Tqhv0ILpUhAkZNsSAVutZ0r@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Using RDEPENDS in bbappend files to install additional packages?
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline

Another question regarding recipe/coding style (based on actual
examples I run across in existing code bases).

In one vendor's layer, in file "lighttpd_1.4.%.bbappend", I read:

   RDEPENDS_${PN} += " \
         lighttpd-module-alias \
         lighttpd-module-auth \
         lighttpd-module-cgi \
         lighttpd-module-compress \
         lighttpd-module-evasive \
         lighttpd-module-evhost \
         ... sizable snip of many ore modules ...

There's little question that this is being used to incorporate a
number of optional modules into the final image, but I'm assuming
that this is really not the recommended way to do it.

The YP reference manual defines RDEPENDS as identifying "other
packages that must be installed in order for the package to function
correctly," which suggests that it's the base recipe that should
define actual runtime dependencies.

I would have thought that the natural way to do the above would
be to either use IMAGE_INSTALL_append or (my preference) define
a packagegroup that includes all those packages, then simply
include the packagegroup.

In short, am I reasonable in assuming that bbappend files should
not (ab)use RDEPENDS in the above way?

rday



