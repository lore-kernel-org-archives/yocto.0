Return-Path: <SRS0=g/qsrl=BO=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout20.eigbox.net (bosmailout20.eigbox.net [66.96.184.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427DEE013A2
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2012 08:17:58 -0800 (PST)
Received: from bosmailscan14.eigbox.net ([10.20.15.14])
	by bosmailout20.eigbox.net with esmtp (Exim) id 1S5JYr-0007Gk-8m
	for yocto@yoctoproject.org; Wed, 07 Mar 2012 11:17:57 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan14.eigbox.net with esmtp (Exim)
	id 1S5JYq-0003q1-Eo; Wed, 07 Mar 2012 11:17:56 -0500
Received: from bosauthsmtp03.eigbox.net ([10.20.18.3])
	by bosimpout02.eigbox.net with NO UCE
	id igHw1i00C03yW7601gHwVX; Wed, 07 Mar 2012 11:17:56 -0500
X-Authority-Analysis: v=2.0 cv=OOmQK1mB c=1 sm=1
	a=DyN8zkliAUdISGavr0A7eg==:17 a=RkJJVanpCRMA:10 a=y6CmfMN_vBIA:10
	a=lTTjtg2vYlcA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=iGHA9ds3AAAA:8
	a=Ed0hb09d_H0Kbi02cG0A:9 a=-P2666WiQaV-O50IoxEA:7 a=wPNLvfGTeEIA:10
	a=1j3ssBldpPsA:10 a=6uKCkKhFq2wXOH2GoQX8aA==:117
X-EN-OrigOutIP: 10.20.18.3
X-EN-IMPSID: igHw1i00C03yW7601gHwVX
Received: from pool-108-25-200-43.atclnj.east.verizon.net ([108.25.200.43]
	helo=[192.168.1.3]) by bosauthsmtp03.eigbox.net with esmtpa (Exim)
	id 1S5JYg-0003cJ-It; Wed, 07 Mar 2012 11:17:46 -0500
Message-ID: <4F578A22.6060602@mindchasers.com>
Date: Wed, 07 Mar 2012 11:17:38 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <alpine.DEB.2.02.1203070557520.29783@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B7443EA@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1203071039080.8310@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B744443@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123793B744443@ORSMSX101.amr.corp.intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.200.43
X-EN-OrigHost: pool-108-25-200-43.atclnj.east.verizon.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual has broken "git workflows" link, what should replace it?
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
X-List-Received-Date: Wed, 07 Mar 2012 16:17:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Robert has done a great job pointing out issues and problems with the 
documentation.  Shouldn't the issues that are clearly breaks (like a 
broken link) be entered into bugzilla?

https://bugzilla.yoctoproject.org/describecomponents.cgi?product=Documentation






On 03/07/2012 11:10 AM, Rifenbark, Scott M wrote:
> I sent an email requesting a merge/pull from yocto-docs into poky/documentation yesterday.  I looked at the last documentation commit in poky/documentation and it was dated January 6.  They are quite a bit out of sync.
>
> Scott
>
> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Wednesday, March 07, 2012 9:41 AM
> To: Rifenbark, Scott M
> Cc: Yocto discussion list
> Subject: RE: [yocto] dev manual has broken "git workflows" link, what should replace it?
>
> On Wed, 7 Mar 2012, Rifenbark, Scott M wrote:
>
>> This area in the document has been re-worked and the bad link does
>> not exist in the
>> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html
>> version (master) of the document.
>
>    i'm sure you've answered this before, but how far behind is the docs
> repo from the general yocto dev repo?  i simply use the yocto
> development checkout for my work, so that's what i'm picking up for
> docs.  and give that it's development, it would seem that commits
> shouldn't languish very long in the docs repo before being pushed.
>
>    what's the general time lag?
>
> rday
>


