Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web10.34932.1593946255425344499
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 03:50:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:41632 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1js2EX-000crO-Tt
	for yocto@lists.yoctoproject.org; Sun, 05 Jul 2020 06:50:54 -0400
Received: from [66.129.241.12] ([66.129.241.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Sun, 05 Jul 2020 06:50:53 -0400
Date: Sun, 05 Jul 2020 06:50:53 -0400
Message-ID: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
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

colleague asked what should have been an easy question, but as i've  
never spent a lot of time digging into the intricacies of generating  
SDKs (i guess i will now), i didn't have an immediate answer.

   current SDK manual in section 3 regarding standard SDKs states  
that, "The Standard SDK provides a cross-development toolchain and  
libraries tailored to the contents of a specific image." ok, saying  
the SDK is tailored to the contents of a specific image makes sense if  
one generates the SDK by selecting a particular image, say:

   $ bitbake -c populate_sdk core-image-minimal
   $ bitbake -c populate_sdk core-image-sato

in those cases, one is identifying an image to use as the basis for  
the generated SDK, and i'm assuming that those image definitions can  
affect the final SDK generation by, perhaps, defining  
TOOLCHAIN_HOST_TASK and TOOLCHAIN_TARGET_TASK and so on.

   however, one can also generate a standard SDK with the generic  
(image-independent):

   $ bitbake meta-toolchain

which clearly does not identify an image (all that recipe does,  
really, is "inherit populate_sdk"), so i *guessed* that using that  
command will generate a standard SDK based only on what can be found  
in the various .conf files and associated variables (MACHINE, DISTRO,  
etc.) without being tied to a particular image.

   just about to dive into the details, but is the above at least a  
simplistic way of looking at it?

rday


