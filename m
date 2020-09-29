Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.19625.1601382481329404825
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:28:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=53048 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kNEjf-005YOe-Ny
	for yocto@lists.yoctoproject.org; Tue, 29 Sep 2020 08:28:00 -0400
Received: from [66.129.241.14] ([66.129.241.14]) by crashcourse.ca (Horde
 Framework) with HTTPS; Tue, 29 Sep 2020 08:27:59 -0400
Date: Tue, 29 Sep 2020 08:27:59 -0400
Message-ID: <20200929082759.Horde.TYlC4caMUY-Rk62IhVDYg3I@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] File collision: same path from 2 recipes
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
 <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
In-Reply-To: <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
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


Quoting Laurent Gauthier <laurent.gauthier@soccasys.com>:

> Hi Mauro,
>
> From my experience there should be an error reported during the image
> creation as long as the two *packages* that contain a file with the same
> name are BOTH installed in the root filesystem.
>
> If you don't receive an error I would suspect that for some reason the file
> is really only installed by one of the two packages.
>
> Another source of your issue is that there can be more than one package
> created by one recipe, and maybe you are not installing the package which
> contains the contentious file.
>
> Kind Regards, Laurent.
>
> On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
>> Hi all.
>>
>> There is a QA to test if 2 recipes try to install a file with the same
>> path?
>>
>> In my BSP 2 recipes try install the file
>> ${D}/etc/network/if-up,d/hostapd_restart
>>
>>
>> I'd like receive an error from bitbale

   I was just about to weigh in on this as I was just educated by
Richard Purdie as to the (im)proper use of SSTATE_DUPWHITELIST.
If two packages were truly trying to install the same file, I would
have assumed that you would have received an error to that effect,
so the fact that you aren't suggests one of:

  * they're not really trying to install the same file
  * you're installing only one of the packages
  * perhaps there is a do_install_append() that is manually
    removing the conflicting file from one of the recipes

   My opinion, FWIW.

rday

