Return-Path: <eha@dev.doredevelopment.dk>
Received: from eha.ulstruplund.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB8664C800A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 02:55:37 -0500 (CDT)
Received: by eha.ulstruplund.dk (Postfix, from userid 1000)
	id B7D34207D1; Mon, 20 Jun 2011 09:55:36 +0200 (CEST)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Koen Kooi <koen@dominion.thruhere.net>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
	<1308513728.2527.2.camel@eha.ulstruplund.dk>
	<BANLkTi=taLE4t=1WDxEGoW-DsKRUrB04cQ@mail.gmail.com>
	<1308545617.2527.10.camel@eha.ulstruplund.dk>
	<A4210A7B-2830-4447-A056-FD55F35D2E33@dominion.thruhere.net>
Date: Mon, 20 Jun 2011 09:55:36 +0200
In-Reply-To: <A4210A7B-2830-4447-A056-FD55F35D2E33@dominion.thruhere.net>
	(Koen Kooi's message of "Mon, 20 Jun 2011 09:38:39 +0200")
Message-ID: <87pqm9c4xz.fsf@eha.ulstruplund.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.2 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
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
X-List-Received-Date: Mon, 20 Jun 2011 07:55:38 -0000
Content-Type: text/plain; charset=us-ascii

Koen Kooi <koen@dominion.thruhere.net> writes:

>> Yes. OE-lite: http://oe-lite.org
>> 
>> And it works so well, that I cannot understand why OE do not have a plan
>> for how to achieve the same. 
>
> So why not send a patch to make OE-core have per recipe staging?

Several good/bad reasons:

1. Communications so far has been rather clear that OE does not want
this kind of change, at least not at this point in time.

2. Implementing per recipe staging in OE-core, without dropping vital
features of OE (most prominently package feeds) requires additional work
that I do not have the manpower to do, nor any particular motivation
given that chances of acceptance seems so low.

So for now, all I can do is to raise attention to the benefits of doing
per recipe staging sometime in the future, hoping to inspire some people
to be willing to help get there.

Given the current community/project situation around OE, an undertaking
like this does not seem feasible within OE without YP behind it.

/Esben

