Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F976E01304
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:18:43 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YrFDd4lHGz3hhlj;
	Tue, 22 Jan 2013 17:18:41 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YrFDd39XgzbbhD;
	Tue, 22 Jan 2013 17:18:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 9b9jyP5pKfl3; Tue, 22 Jan 2013 17:18:07 +0100 (CET)
X-Auth-Info: kR8DkyOngkT6SmRo8zprqm/EtkcMcQ0o4GTNj1O8miI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 22 Jan 2013 17:18:39 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id A7F5C1A14C6;
	Tue, 22 Jan 2013 17:18:39 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 766E1202D54;
	Tue, 22 Jan 2013 17:18:39 +0100 (CET)
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAPhnLPCk8byBnRSEB2aMOBPEmZQRfWpNSJ+xj+uX4BVvHKMf=Q@mail.gmail.com>
References: <20130122070331.C3B6120DA8C@gemini.denx.de>
	<33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
	<20130122112628.E460120DA8C@gemini.denx.de>
	<CAPhnLPCk8byBnRSEB2aMOBPEmZQRfWpNSJ+xj+uX4BVvHKMf=Q@mail.gmail.com>
Comments: In-reply-to "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
	message dated "Tue, 22 Jan 2013 08:01:08 -0800."
Date: Tue, 22 Jan 2013 17:18:39 +0100
Message-Id: <20130122161839.766E1202D54@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: M2, M3, M4 milestones available?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Jan 2013 16:18:43 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Elizabeth,

In message <CAPhnLPCk8byBnRSEB2aMOBPEmZQRfWpNSJ+xj+uX4BVvHKMf=Q@mail.gmail.com> you wrote:
>
> >> 1.4 M2 was kind of blurry because it landed during charismas and new
> >> year thus many of us were on vacation.
> >
> > So what exactly is the git commit ID of the 1.4 M2 milestone release?
> > I cannot see any matching tag in the git repository?
> 
> That is because we have merged M2 and M3. See:
> 
> http://article.gmane.org/gmane.linux.embedded.yocto.general/11075/match=merging+m2

I see - thanks for the information.

All this is pretty much frustrating. I mean, you cannot really expect
people who are looking for release information to scan the mailing
list archives for such bits of scattered information?

Especially since what appears to the the Yocto Project's "official"
web site claims that there _has_ been a M2-RC1, M2-RC2 and M2, see [1]:

	 M2 Stabilize schedule

	 Release Candidate and Milestone Release schedule (Full Pass
	 QA test follows every RC build)

	     RC1: 12/26/12
	     RC2: 1/2/13
	     M2 release: 1/11/13 

[1] https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule#M2_Stabilize_schedule


It would so nice if we had somewhere, publicly visible at a well known
location (like the above page), some correct and useful information.

Thanks.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"If you are afraid of loneliness, don't marry."             - Chekhov

