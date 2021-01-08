Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.75.1610128431368915385
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 09:53:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A336838C05C4
	for <yocto@yoctoproject.org>; Fri,  8 Jan 2021 17:53:50 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:50882 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kxvxM-0006qf-Rp
	for yocto@yoctoproject.org; Fri, 08 Jan 2021 12:53:49 -0500
Date: Fri, 8 Jan 2021 12:53:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: why would "file" command not print out "ISO 9660" for .iso image?
Message-ID: <79d166ab-29a0-1635-cf6b-d2674059d453@crashcourse.ca>
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


  was just handed this little puzzler and, before i dive into it,
perhaps someone has an answer.

  in working WRL9/morty system, the "file" command (file_5.28.bb) is
used to determine whether a file is a valid ISO image, by running
"file" against the image file, expecting to get output like:

  rday.iso: DOS/MBR boot sector ISO 9660 ... etc etc ...

and doing a tacky string comparison simply looking for the substring
"ISO" and, so far, it's worked just fine.

  now, moving to an LTS19/zeus system -- same ISO image -- that shell
string comparison fails, apparently because the output from
file_5.37.bb for precisely the same ISO image file is only:

  rday.iso: DOS/MBR boot sector

as in, that's the entire output, hence no "ISO" substring, hence
failed comparison.

  i'm about to verify that all is as i've been told, then try to
figure out why the newer file command is dropping all the rest of that
output. (it's even possible that the developers put in a weird, custom
magic file but that's just speculation.)

  does the above sound familiar to anyone? is the newer "file" command
sufficiently different as to have dropped that "ISO ..." part of the
output? and is there an option to restore it?

  thanks for any hints.

rday
