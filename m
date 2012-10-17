Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8BBAE01300
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 01:49:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2012 01:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,599,1344236400"; d="scan'208";a="234943487"
Received: from unknown (HELO helios.localnet) ([10.252.122.85])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2012 01:49:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tim O'Callaghan <tocallaghan@meyn.com>
Date: Wed, 17 Oct 2012 09:49:37 +0100
Message-ID: <2287710.4FdqJpfmq4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
References: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to avoid re-creating a recipe (+my meta-bucket approach)
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
X-List-Received-Date: Wed, 17 Oct 2012 08:49:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 October 2012 08:39:36 Tim O'Callaghan wrote:
> After seeing the lmsensors thread float by I thought it about time I started
> the discussion on how people manage to avoid re-inventing recipes, and to
> get the ball rolling, I thought I would describe mine.
> 
> As I do not have the any idea what recipes may be kicking about, I devised
> what I call the meta-bucket approach. It is pretty simple, I have a script
> that clones every existing OE/Yocto repository I know about into one easily
> grep-able place[1].
> 
> The to the main question, how are others managing this?

I clone the layer repositories most likely to hold new recipes and then use 
some scripts I wrote to process them into a list of recipes that can be easily 
searched using grep. I wouldn't mind sharing those scripts if some people 
would find them useful.

However, what I hope we can do in the 1.4 timeframe would be to implement my 
proposal here:

 https://bugzilla.yoctoproject.org/show_bug.cgi?id=3272

This would provide us with a way to search all published layers down to the 
recipe level from the web.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

