Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web10.59667.1594047617903481652
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 08:00:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:59076 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jsSbQ-000ZX7-8z
	for yocto@lists.yoctoproject.org; Mon, 06 Jul 2020 11:00:16 -0400
Received: from [66.129.241.11] ([66.129.241.11]) by crashcourse.ca (Horde
 Framework) with HTTPS; Mon, 06 Jul 2020 11:00:16 -0400
Date: Mon, 06 Jul 2020 11:00:16 -0400
Message-ID: <20200706110016.Horde.b7JEU4y-rh5sjVGjH_PyAlF@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: how does the recipe search resolve a recipe name? eg., "opencryptoki"?
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

i've run across this on occasion -- using  
http://layers.openembedded.org/ to find a given recipe sometimes  
produces answers that don't actually point to the recipe (this seems  
to be a good entry for a FAQ).

went looking for "opencryptoki", and got here:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=opencryptoki

none of which actually take one to a recipe for that software.  
granted, the summary explains that, "the package contains commands to  
utilize some of the capabilities available in the TPM PKCS#11  
interface implemented in the openCryptoki project," but that's not the  
same thing.

is there some sort of rationale for the search results one might get  
for a given recipe name?

rday



