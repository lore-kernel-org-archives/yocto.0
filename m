Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6360.1579166309268362767
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 01:18:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 265ECE01449; Thu, 16 Jan 2020 01:18:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFBD6E01445
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 01:18:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Jan 2020 01:18:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,325,1574150400"; 
   d="scan'208";a="423951163"
Received: from changmh-mobl1.gar.corp.intel.com (HELO shodan.localnet) ([10.255.137.144])
  by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 01:18:23 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: "Teemu K." <maillinglists18@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Root login not working with Warrior
Date: Thu, 16 Jan 2020 22:18:21 +1300
Message-ID: <2215947.trNLT8xFBc@shodan>
Organization: Intel Corporation
In-Reply-To: <3521303.F0PmLzlIRM@shodan>
References: <CAAmVmrptcat5-BZa4f=ntcsZYgH=Rn3Xt9zK6K=1ykXZwOwcig@mail.gmail.com> <3521303.F0PmLzlIRM@shodan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 16 January 2020 10:14:42 PM NZDT Paul Eggleton wrote:
> Hi Teemu
> 
> On Tuesday, 14 January 2020 4:37:29 AM NZDT Teemu K. wrote:
> > I have Yocto image that was originally made with Thud - version of
> > Yocto. It was working fine and I was able to login as root via serial
> > console.
> > 
> > Then I updated Yocto to Warrior and now for some reason when I try to
> > login as root via serial console it says 'login incorrect' when I
> > enter 'root' as a user and press enter. It doesn't even ask any
> > passwords before saying that. I tried enabling debug-tweaks and still
> > the same. Can't login as a root.
> > 
> > I have another user that I can login just fine and with sudo I can
> > also use root access. I just can't login as root.
> > 
> > I looked through /etc/passwd and /etc/shadow and they looked okay. Has
> > something changed in Warrior regarding this? I tried googling, but
> > didn't find anything.
> 
> Is there an /etc/securetty file and if so what does it contain?

Or perhaps more reasonably, does it contain the name of the device you are 
attempting to log in via?

Cheers
Paul


-- 

Paul Eggleton
Intel System Software Products


