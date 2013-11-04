Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97380E017AB
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 05:51:47 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Nov 2013 05:51:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="429506518"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.96])
	by orsmga002.jf.intel.com with ESMTP; 04 Nov 2013 05:51:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 04 Nov 2013 13:51:45 +0000
Message-ID: <1450063.buI5QxrpXB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311030529100.31130@oneiric>
References: <alpine.DEB.2.02.1311030529100.31130@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: numerous questions about some ref manual variable glossary entries
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Nov 2013 13:51:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Sunday 03 November 2013 05:53:54 Robert P. J. Day wrote:
>   wasn't sure what to do about some of these so i'd appreciate some
> clarification. and away we go, mostly in alphabetical order ...
> 
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBLAY
> ERS_NON_REMOVABLE
> 
>   that entry *really* implies you need the meta-yocto and
> meta-yocto-bsp layers for a successful build, which clearly isn't true
> as lots of layers work with simply oe-core. can/should that
> explanation be reworded to not be quite so emphatic?

Yes, agreed. The entry should mention that this variable is only actually used 
by Hob as well.

> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-INITS
> CRIPT_NAME
>
>   reference to ${etcdir} ... how exactly does that differ from
> ${sysconfdir}? i've always understood that developers should use
> ${sysconfdir} in their recipe files.

I don't know where this came from but it is wrong. It should say ${sysconfdir} 
instead.
 
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-NO_RE
> COMMENDATIONS
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACK
> AGE_EXCLUDE
> 
>   both of those claim no support for DEB packaging, is that still
> true? i still don't know enough python to check the actual code but
> i'm getting there.

Yes, these were only introduced recently and AFAIK this is still the case.

> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-RPROV
> IDES
> 
>   claims that a package's own name is already implicitly provided in
> its RPROVIDES list. doesn't seem that way -- it's true for PROVIDES,
> but doesn't seem true for RPROVIDES. thoughts?

It was me who got Scott to add this - I did so after seeing a number of people 
trying to do RPROVIDES_${PN} = "recipename" in the hope of fixing some problem 
they were having; but this won't do anything. What makes you think it isn't 
the case?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

