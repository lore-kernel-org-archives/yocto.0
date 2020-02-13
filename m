Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8850.1581612151695146685
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 08:42:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4CB2E016E9; Thu, 13 Feb 2020 08:42:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30C7E006EC
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 08:42:29 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:54834 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2HZM-003IU0-F3
	for yocto@yoctoproject.org; Thu, 13 Feb 2020 11:42:29 -0500
Date: Thu, 13 Feb 2020 11:42:27 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [PATCH] dev-manual: layer priority takes precedence over PV
Message-ID: <alpine.LFD.2.21.2002131139370.2831500@localhost.localdomain>
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

Clarify that if there are multiple recipes with the same name, the
recipe with the highest PV from the highest priority layer will be the
one selected.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'm using docbook's <emphasis> markup here, which renders in HTML as
both bold and italic.

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 1e6addde4..951263291 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -825,9 +825,11 @@
             </para>

             <note>
-                <para>It is possible for a recipe with a lower version number
+                <para>If the same recipe exists in several layers, the recipe
+                with the highest value of
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-PV'><filename>PV</filename></ulink>
-                in a layer that has a higher priority to take precedence.</para>
+                <emphasis>from the layer with the
+                highest priority</emphasis> will be selected.</para>
                 <para>Also, the layer priority does not currently affect the
                 precedence order of <filename>.conf</filename>
                 or <filename>.bbclass</filename> files.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
