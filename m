Return-Path: <tim.bird@am.sony.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe004.messaging.microsoft.com [213.199.154.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D77FE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 11:51:07 -0700 (PDT)
Received: from mail82-db3-R.bigfish.com (10.3.81.237) by
	DB3EHSOBE005.bigfish.com (10.3.84.25) with Microsoft SMTP Server id
	14.1.225.23; Tue, 26 Jun 2012 18:49:24 +0000
Received: from mail82-db3 (localhost [127.0.0.1])	by mail82-db3-R.bigfish.com
	(Postfix) with ESMTP id 5A9BF4402F4;
	Tue, 26 Jun 2012 18:49:24 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail01.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1202hzzz2fh2a8h668h839h93fhd25hf0ah)
Received-SPF: pass (mail82-db3: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail82-db3 (localhost.localdomain [127.0.0.1]) by mail82-db3
	(MessageSwitch) id 1340736562400536_21571;
	Tue, 26 Jun 2012 18:49:22 +0000 (UTC)
Received: from DB3EHSMHS002.bigfish.com (unknown [10.3.81.243])	by
	mail82-db3.bigfish.com (Postfix) with ESMTP id 5DC433A0233;
	Tue, 26 Jun 2012 18:49:22 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	DB3EHSMHS002.bigfish.com (10.3.87.102) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Tue, 26 Jun 2012 18:49:21 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5QIp10r032494
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 26 Jun 2012 18:51:01 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5QIox9h004369
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 26 Jun 2012 18:51:00 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q5QIonRW018479;	Tue, 26 Jun 2012 18:50:49 GMT
Message-ID: <4FEA0505.6010108@am.sony.com>
Date: Tue, 26 Jun 2012 11:52:53 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com>
In-Reply-To: <4FE9EEF6.7050001@r-finger.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 18:51:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 06/26/2012 10:18 AM, Tomas Frydrych wrote:
> On 26/06/12 17:53, Robert P. J. Day wrote:
>>   and if you want major industry players to take yocto seriously, the
>> last thing you want to do is answer their heartfelt pleas for
>> assistance with, "i'm sorry, that's technically not a yocto question,
>> you should try another mailing list."
> 
> That's never been case on this list as far as I recall, folk here are
> pretty responsive to questions being asked.
> 
> At the same time, OE/Poky/Yocto is a fairly complex framework and nobody
> should expect that the necessary expertize to build a commercial grade
> products with it can be acquired by simply reading a FAQ, no matter how
> well written, or by just endlessly asking questions on a mailing list.
> As a commercial player you are either prepared to make the in house
> investment that is necessary to acquire that expertize (reading the
> documentation and studying the source code, etc.), or you you can buy
> the expertize on commercial basis from someone who has it.

Well, granted that OE/Poky/Yocto is fairly complex.  I've followed
OE for years (though never successfully built anything with it).
I had my first successful build of (Poky?, Yocto?) just recently,
with a build image I got from Dave Stewart at LinuxCon Japan.
(Thanks very much Dave!).

However, complexity is no excuse for terrible FAQs.  And the FAQ
on the wiki is pretty bad.  For example, after reading various FAQs
I still have no idea what kind of thing "Poky" is.  I know
that bitbake is a build tool.  I know that OE is a package
meta-information project.  Yocto Project is an umbrella project
for a lot of tools and technologies (Poky among them).  But is
Poky a distro (sample/reference or otherwise?) or something else?

When I ran my recently-built image, my target /etc/issue had this content:
"Yocto (Built by Poky 7.0) 1.2"

Is Poky a build system?  A distro? a managed set of package sources
and build information?

I don't even know what to make of this.  And this is from a developer
pushing Yocto inside my company (where we are making the "in-house
investment" that is claimed to be needed to do something with this.)

Now, here's my disclaimer: I read the manuals in the past
and found them hard to follow, and thus finding my desire to
read them again somewhat diminished, I haven't done so lately.
Also, I don't mean to pick on "Poky" - that's just the thing du-jour
that I'm not clear about within the Yocto Project.
Maybe the definition of Poky is crystal clear somewhere in the docs.
If so, sorry for the rant.

But yeah, a FAQ cleanup and build-out would be good.  I think one
problem is that various people who are qualified to make FAQ entries
are so close to the project that certain features and terminology
are second-nature to them, and go unspoken or unclarified in the
entries. I'm not in this category, so if I find some time I'll
try to make a few FAQ entries that address the points of
confusion I've seen.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


