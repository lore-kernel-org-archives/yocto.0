Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.7270.1583931282321098515
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 05:54:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from [127.0.0.1] (port=50954 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jC0si-0009z5-LE
	for yocto@lists.yoctoproject.org; Wed, 11 Mar 2020 08:54:41 -0400
Received: from [66.129.241.14] ([66.129.241.14]) by crashcourse.ca (Horde
 Framework) with HTTPS; Wed, 11 Mar 2020 08:54:40 -0400
Date: Wed, 11 Mar 2020 08:54:40 -0400
Message-ID: <20200311085440.Horde.UYz97gOO_siffWv6y2YsPxU@crashcourse.ca>
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
References: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
 <20200310113348.GT104502@korppu>
 <da7cd1ba55525b1f63884bd83286555d1dd72218.camel@linuxfoundation.org>
 <20200311124520.GX104502@korppu>
In-Reply-To: <20200311124520.GX104502@korppu>
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
Content-Transfer-Encoding: 8bit


Quoting Mikko Rapeli <mikko.rapeli@bmw.de>:

> On Tue, Mar 10, 2020 at 11:37:55AM +0000, Richard Purdie wrote:
>> On Tue, 2020-03-10 at 11:33 +0000, Mikko.Rapeli@bmw.de wrote:
>> > On Fri, Feb 28, 2020 at 11:25:59PM +0000, Richard Purdie wrote:
>> > > On Fri, 2020-02-28 at 22:51 +0000, Sean McKay wrote:
>> > > > This is probably a fairly short question (I hope):
>> > > > I’m working on a branch based on zeus. I found a bug in the way that
>> > > > one of our recipes was handling something during do_configure (which
>> > > > caused an error to pop up in a do_compile task). When I modified the
>> > > > do_configure task (do_configure_append, actually) to behave properly
>> > > > (which involved changing the actual commands run in that function)
>> > > > and reran bitbake -c compile <recipe>, the do_configure task wasn’t
>> > > > rerun despite the change to the function’s code.
>> > > >
>> > > > Is it safe to assume this means we’ve done something to mess up the
>> > > > way our system is processing things? Or is that expected behavior
>> > >
>> > > Its not expected behaviour and yes, it sounds like something is messed
>> > > up...
>> >
>> > This is what I've come to expect with yocto 2.0 jethro, 2.5 sumo and
>> > 3.0 zeus.
>> >
>> > That's why I always write:
>> >
>> > $ bitbake -c clean recipe && bitbake -c cleansstate && bitbake -c  
>> compile recipe
>> >
>> > when debugging changes in recipes to_compile and other dependent tasks.
>> > I'm also cleaning up sstate to be sure it's not corrupt or filled with
>> > somehow bad data.
>>
>> This is bad and shouldn't be happening. Can anyone provide some
>> examples I can look at?
>>
>> You shouldn't ever need to run cleansstate in particular. If you have
>> to, there is another underlying bug that should get fixed.
>
> Sadly custom bbclasses and BSP layers have this effect on my builds and I
> can't fully trust local incremental builds. Hence I clean sstate cache
> often.

Have you verified with "bitbake -e" that the configure task was really
appended to WRT the build? That's the first thing I would check.

rday

