Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12539.1608226585175006773
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 09:36:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 71DEF38C0857
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2020 17:36:24 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:33812 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kpxCQ-00086B-Tj
	for yocto@yoctoproject.org; Thu, 17 Dec 2020 12:36:23 -0500
Date: Thu, 17 Dec 2020 12:36:21 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to install/package debug version of library *not* in /usr/lib64/.debug?
Message-ID: <21b822f5-d4db-1fda-caea-a76dff2f3f3b@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  just got an interesting request from a colleague ... for reasons i
will explain shortly, it's necessary to build both the normal and
debug versions of a library, but for the debug version to be installed
in any directory other than one where the final pathname component is
".debug".

  the reason is that yocto is used for the first part of the build
process, but the final result is then grabbed by an internal packaging
system that promptly untar's the YP-generated rootfs, and does a bunch
more proprietary post-processing, and one of those unskippable steps
is to manually delete the directory /usr/lib64/.debug/, so the request
is, if the recipe is for "fubar-dbg", then it's fine if that
debug-enabled shared library is installed under, say,
/usr/lib64/fubar-dbg/ (or whatever they choose to call that last
pathname component, as long as it's not ".debug").

  i'm sure there are simple do_package_append() or do_install_append()
functions that would do it; i took a look at package.bbclass, and
noticed the split_and_strip_files() routine, with the snippet:

    if d.getVar('PACKAGE_DEBUG_SPLIT_STYLE') == 'debug-file-directory':
        # Single debug-file-directory style debug info
        debugappend = ".debug"
        debugstaticappend = ""
        debugdir = ""
        debugstaticdir = ""
        debuglibdir = "/usr/lib/debug"
        debugstaticlibdir = "/usr/lib/debug-static"
        debugsrcdir = "/usr/src/debug"

with the setting of "debuglibdir", but in our case, the dest dir is
/usr/lib64 (although symlinks might make that distinction irrelevant,
i'd have to check).

  am i overthinking this? what's the cleverest way to do this? (hoping
i've described this sufficiently clearly.)

rday

