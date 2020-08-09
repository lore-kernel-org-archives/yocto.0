Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web10.24392.1596981516894246479
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Aug 2020 06:58:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:51694 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1k4lqN-000TFl-Eb
	for yocto@lists.yoctoproject.org; Sun, 09 Aug 2020 09:58:35 -0400
Received: from [66.129.241.12] ([66.129.241.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Sun, 09 Aug 2020 09:58:35 -0400
Date: Sun, 09 Aug 2020 09:58:35 -0400
Message-ID: <20200809095835.Horde.LFrANHyOAmp9opF98CjOidg@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: dunfell: what would cause "ERROR: Nothing PROVIDES 'coreutils-native'."?
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline

migrating from zeus to dunfell and, suddenly, some "ndisc"-related recipes no
longer build with:

   ERROR: Nothing PROVIDES 'coreutils-native'.

the offending recipe is from meta-networking/recipes-support, ndisc6_git.bb,
clearly at the line:

   DEPENDS = "coreutils-native"

whereupon "git blame" informs me that that line comes from here:

   commit 51272d11594e8609237e0e049b1f97ff95ab7d19
   Author: Sumit Garg <sumit.garg@linaro.org>
   Date:   Tue Jan 21 14:26:11 2020 +0530

     ndisc6: fix coreutils-native tool dependency

     coreutils-native tool dependency was implicitly met while building with
     source GCC tool-set which isn't the case with external tool-set.

     Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
     Signed-off-by: Khem Raj <raj.khem@gmail.com>

i've examined dunfell's coreutils recipe and i see nothing that suggests
i shouldn't be able to bitbake the native recipe -- BBCLASSEXTEND clearly
extends the recipe to include "native." so now i'm looking at the local
layer to see if there is something in a .conf file that deactivates the
native building of coreutils but i don't see anything suspicious.

   i'm sure i'm missing something obvious but i'm at a loss. thoughts?

rday

