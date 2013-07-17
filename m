Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC1DE01466
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 06:04:11 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Jul 2013 06:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,684,1367996400"; d="scan'208";a="269463781"
Received: from unknown (HELO helios.localnet) ([10.252.122.65])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Jul 2013 06:03:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Wed, 17 Jul 2013 14:03:41 +0100
Message-ID: <1443099.tO82y7b3tx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAFZh4h9NzZwLSm5wmnqs8WU5A1hfpBY4z8ryH14eg724QhZvQg@mail.gmail.com>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<59742333.4mCOApeMVS@helios>
	<CAFZh4h9NzZwLSm5wmnqs8WU5A1hfpBY4z8ryH14eg724QhZvQg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Wed, 17 Jul 2013 13:04:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 July 2013 08:56:34 Brian Hutchinson wrote:
> Thanks Paul, I worried about mixing branches since I've never tried that
> before.  The only reason I picked Denzil is because I need ti816x support
> and Dylan and Danny don't have machine confs for it in meta-ti.  So what
> would be easier, getting the machine support I need in Dylan or back
> porting the net-snmp recipe to Denzil?

I don't have a feel for the former - if the reason is not already clear you'd 
probably want to ask the meta-ti folks why that machine isn't supported in 
later branches and how hard it would be to update support. This might be worth 
doing if you're starting something new with denzil, since that's two versions 
behind current stable.

Having said that, backporting the net-snmp recipe should be fairly trivial 
though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

