Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.949.1600806087186645698
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 13:21:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=43358 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kKomz-00FOBe-In
	for yocto@lists.yoctoproject.org; Tue, 22 Sep 2020 16:21:25 -0400
Received: from [66.129.242.12] ([66.129.242.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Tue, 22 Sep 2020 16:21:25 -0400
Date: Tue, 22 Sep 2020 16:21:25 -0400
Message-ID: <20200922162125.Horde.4jOmiDX-nqN2AAqCc8XBUC0@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: How to *properly* use SSTATE_DUPWHITELIST?
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

Never had cause to dig into SSTATE_DUPWHITELIST until now,
so a couple questions. (Side Note: This variable is not listed
in the YP Reference Manual variable glossary -- should it be?)

Ran across this as current project incorporates recipes
grpc-python and python-grpcio, which is problematic as the
latter is simply the renamed version of the former so, yeah,
that's definitely going to generate a ton of file install
conflicts.

The solution selected (and, yes, I know this is tacky and
gross and this should be fixed the right way) was to add
the line:

SSTATE_DUPWHITELIST = "/"

to python-grpcio.inc, which *seemed* to fix the problem,
until I started playing this morning to clarify what different
variations of this solution would do.

First oddity was that, after I added or deleted that line,
it seemed it made no difference in the rebuild of the
incorporating image, until I noticed this in
sstate.bbclass:

sstate_install[vardepsexclude] += "SSTATE_DUPWHITELIST ..."

which suggests that the sstate doesn't check dependency
based on SSTATE_DUPWHITELIST, so to get the change to kick in,
I did a "bitbake -c cleanall ..." on those recipes first,
and that seemed to do it.

But even that showed some weirdly non-deterministic behaviour,
as there seemed to be a difference based on which recipe I
added that line to, and which recipe I cleaned. So the
obvious question is, if I have two recipes that clash in
terms of installed files like these two, does one add that
line to either or both of the recipes? What does it mean to
add it to only one, and if that happens (as it did here),
how does that affect the eventual install? Does ordering then
matter?

In a general case, if I have, say, 5 recipes all of which
clash in the same place, do I add that line to all 5 recipes?
And if I don't, do I get undefined behaviour?

rday

