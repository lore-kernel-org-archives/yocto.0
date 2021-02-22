Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web10.38050.1614013943293406913
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 09:12:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: cybernetics.com, ip: 173.71.130.66, mailfrom: btv1==68764a42a91==cbing@cybernetics.com)
X-ASG-Debug-ID: 1614013941-0fb3b02a6f01ae0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id 1B8XG80jrXFt30B2 for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 12:12:21 -0500 (EST)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.4.126
X-ASG-Whitelist: Client
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 5.1.14)
  with ESMTP id 10568203 for yocto@lists.yoctoproject.org; Mon, 22 Feb 2021 12:12:21 -0500
To: yocto@lists.yoctoproject.org
X-Barracuda-RBL-Trusted-Forwarder: 10.157.1.18
From: "Claude Bing" <cbing@cybernetics.com>
Subject: Updating Yocto
Message-ID: <60430e1e-0c5d-9cc4-5496-a6f4152ec976@cybernetics.com>
X-ASG-Orig-Subj: Updating Yocto
Date: Mon, 22 Feb 2021 12:12:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1614013941
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 1446
X-Barracuda-BRTS-Status: 1
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello all. My organization has been working with Yocto recently, and we
have noticed that there are often weird errors encountered after
updating revisions within a release branch (e.g., 3.1.3 -> 3.1.5). Is
there an accepted process to merging in upstream changes?  Here is a
distillation of our workflow:

* Yocto releases 3.1.0 / dunfell

* Create a local tracking branch for the Yocto release
  "sample-yocto-dunfell" based on upstream 3.1.0 tag / dunfell branch.
  This is necessary because some of our local tooling is located in the
  top level directory and it is a pain to copy the files each time.

* Create firmware with Yocto

* Yocto releases 3.1.x

* Merge upstream yocto-3.1.x tag into local tracking branch

* Create firmware with Yocto

Sometimes, after this last step, we encounter problems where patches
cannot be applied, or files cannot be found when bitbake tries to build
the recipes. We have tried deleting build/{tmp,sstate-cache} whenever we
merge upstream changes, but random errors still persist.  For each of
these packages, if we run "bitbake -c cleanall", the error goes away.

Most of the time, these recipes have not been extended in our project,
so they are purely meta-oe / meta packages.

Are we doing something wrong, or is there a more acceptable way to
handle updates?

How tightly should meta-openembedded be tied to the core Yocto release?

-- 
Regards,

Claude Bing
