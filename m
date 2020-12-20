Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.23810.1608471989584792264
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 05:46:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=41548 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kqz2a-0005re-3M
	for yocto@lists.yoctoproject.org; Sun, 20 Dec 2020 08:46:28 -0500
Received: from [66.129.241.14] ([66.129.241.14]) by crashcourse.ca (Horde
 Framework) with HTTPS; Sun, 20 Dec 2020 08:46:27 -0500
Date: Sun, 20 Dec 2020 08:46:27 -0500
Message-ID: <20201220084627.Horde.bD0u6njbQfLERYjsoqBMhWn@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Can a single recipe .bb file be used to generate both Python2 and Python3 packages?
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

Strange request earlier this week -- I was asked how *one* Python
recipe file could be used to generate both Python2 and Python3
packages to be installed in the final image.

I had never heard of such a thing, but the colleague asking this
was convinced she had seen this before somewhere (but couldn't
remember where).

My immediate response was that the standard approach was to define
two recipe files -- say, python-fubar.bb and python3-fubar.bb --
where the entire difference was "inherit setuptools" in the former
and "inherit setuptools3" in the latter.

I mentioned that it used to be common to have just that, and for
both recipes to then include all the common content in the file
"python-fubar.inc" (I do see how a couple folks are cleaning all
that up since, if there is now only the Python3 version being
supported, it's pointless to still have a ".inc" file).

I asked if that is what she was thinking of, but she was adamant
that she remembers a single recipe .bb file that could do this.
Is there such a thing? I suspect one could hack something up,
but is such an approach considered standard? Or even doable?

rday


