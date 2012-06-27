Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1BAEE0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:28:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Jun 2012 09:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116597926"
Received: from unknown (HELO helios.localnet) ([10.252.120.185])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jun 2012 09:27:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Date: Wed, 27 Jun 2012 17:27:58 +0100
Message-ID: <4427881.ZDyEgbkgV4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FEB2521.3020203@communistcode.co.uk>
References: <20317992.tBZ1YY1I5v@helios> <4FEB2521.3020203@communistcode.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: LAMP layer
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
X-List-Received-Date: Wed, 27 Jun 2012 16:28:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 27 June 2012 16:22:09 Jack Mitchell wrote:
> I think this is a fantastic idea in general and if I remember correctly
> someone from Linaro was attempting to do something similar to this the
> other day - so I can't only be me who would appreciate something like this.

Indeed, I saw Marcin's earlier thread - at the time I wasn't far enough along 
to reply unfortunately (was just an item on my todo list), but at least 
there's interest :)
 
> The one issue I have (initially) is why should it be limited to the
> Apache web server? There are a couple of good web servers out there
> which lend themselves much more to an embedded style development than
> (IMO) the bloat that is Apache.
> 
> For example:
> 
> Lighttpd (already in core)
> nginx
> Hiawatha (my personal favourite - I have a recipe I already use in
> conjunction with PHP)

I agree Apache is not something you would typically consider to be embedded-
friendly, however if you've already got something web-based that is built on 
top of Apache or relies on functionality that only Apache can provide, and you 
want to integrate that into an embedded product, then nothing else will really 
suffice.

However I do think there's scope to include these other alternatives 
particularly if the layer turns into more of a generic web server layer, but I 
can't commit to maintaining (specifically, updating and testing) the additional 
recipes on my own.
 
> I also remember someone from WindRiver posted recently regarding a
> meta-networking layer, which I also thought was a great idea if not only
> for (in my use case) tftp/net-snmp support all rolled up and supported.
> Maybe this could be a layer with that "section"?
> 
> i.e.
> 
> meta-networking
>      meta-webserver (meta-l*mp?)
>          recipes-*
>          recipes-*
>      meta-*
>          ....
>          ....

Whenever a new layer is introduced there's always the question of where it 
should be physically located. I worry more about the confusion that multi-
level layers cause - particularly when they're named the same thing - than I 
do about multiple repositories, but I realise others have different viewpoints. 
If they are in separate repositories there's still nothing stopping them being 
used together.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

